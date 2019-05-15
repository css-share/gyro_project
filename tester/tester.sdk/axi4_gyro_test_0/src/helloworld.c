#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xbasic_types.h"
#include "xscugic.h"
#include "xuartps.h"
#include "xuartps_hw.h"
#include "xil_exception.h"

//#define FAKE_IC		//used to send data back when no IC present
#define FAKE_DATA	//used to create an array of data for COM test

/* ===== Code to deal with the DMA IP ===== */

#include "xaxidma.h"
#include "xdebug.h"

#ifdef __aarch64__
#include "xil_mmu.h"
#endif

#if defined(XPAR_UARTNS550_0_BASEADDR)
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif


/******************** Constant Definitions **********************************/
#define INTC				XScuGic
#define UARTPS_DEVICE_ID	XPAR_XUARTPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define UART_INT_IRQ_ID		XPAR_XUARTPS_1_INTR
#define UART_BASEADDR		XPAR_XUARTPS_0_BASEADDR
#define RX_BUFFER_SIZE		30
#define TX_BUFFER_SIZE		1000

// possible states for main while loop used to drive actions
#define SERVICE_UART		0x04

#define CMD_READ_DATA				0x61	// read data from tester - should be followed by
											// 4 bytes(unsigned int) for num words to be
											// sent (msbyte first)
#define CMD_LOAD_SAWTOOTH_UP_DATA	0x62	// load test data1(sawtooth up) into TxData array
#define CMD_LOAD_SAWTOOTH_DOWN_DATA	0x63	// load test data1(sawtooth down) into TxData array
#define CMD_READ_ADDRESS			0x41	// read 16-bit contents of gyro ic register
#define CMD_WRITE_ADDRESS			0x42	// write 16-bit value to gyro ic register



#ifdef FAKE_DATA
static void load_sawtooth_up_data(void);
static void load_sawtooth_down_data(void);
static void load_sawtooth_data(void);
#define SAWTOOTH_MAX_VALUE 100
#define SAWTOOTH_STEP_VALUE 1
#endif
/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
			DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BD_SPACE_BASE	(MEM_BASE_ADDR)
#define TX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x00000FFF)
#define RX_BD_SPACE_BASE	(MEM_BASE_ADDR + 0x00001000)
#define RX_BD_SPACE_HIGH	(MEM_BASE_ADDR + 0x00001FFF)
#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)


#define MAX_PKT_LEN		0x20
#define MARK_UNCACHEABLE        0x701

#define TEST_START_VALUE	0xC

// ---------------

#define INTC_INTERRUPT_ID_0 63 // IRQ_F2P[2:2]
#define INTC_INTERRUPT_ID_1 64 // IRQ_F2P[3:3]
#define INTC_INTERRUPT_ID_2 65 // IRQ_F2P[4:4]

// instance of interrupt controller
static XScuGic intc;

// address of AXI PL interrupt generator
Xuint32* baseaddr_p           = (Xuint32*) XPAR_AXI4_PL_INTERRUPT_GE_0_S00_AXI_BASEADDR;
Xuint32* baseaddr_spi         = (Xuint32*) 0x43C10000;
Xuint32* baseaddr_channel     = (Xuint32*) 0x43C20000;
Xuint32* baseaddr_rx_fifo     = (Xuint32*) 0x43C30000;
Xuint32* baseaddr_tx_fifo     = (Xuint32*) 0x43C40000;

int flag;
int setup_interrupt_system();
int Status;
unsigned int state = 0;
static XScuGic interrupt_controller;	//instance of the interrupt controller
XUartPs UartPs;							// Instance of the UART Device

static u8 UartRxData[RX_BUFFER_SIZE];	// Buffer for Receiving Data
static u8 UartTxData[TX_BUFFER_SIZE];	// Buffer for Transmitting Data


void isr0 (void *intc_inst_ptr);
void isr1 (void *intc_inst_ptr);
void isr2 (void *intc_inst_ptr);
void nops(unsigned int num);

/**************************** Type Definitions *******************************/
/***************** Macros (Inline Functions) Definitions *********************/
/************************** Function Prototypes ******************************/

#if defined(XPAR_UARTNS550_0_BASEADDR)
static void Uart550_Setup(void);
#endif

static int  initSPI();
static void readSPIStatus();
static void setSPIControl(Xuint32 v);
void modify_register(unsigned int *data, unsigned int address,
					unsigned int newVal);

static int RxSetup(XAxiDma * AxiDmaInstPtr);
static int TxSetup(XAxiDma * AxiDmaInstPtr);
static int SendPacket(XAxiDma * AxiDmaInstPtr, int id);
static int ReceivePacket(XAxiDma * AxiDmaInstPtr);
static int CheckData(int debug_mode);
static int CheckDmaResult(XAxiDma * AxiDmaInstPtr, int debug_mode, int skip);

static int readGyroTxFIFODebugData();
static int readGyroRxFIFODebugData();

static int resetGyroTxFIFO();
static int resetGyroRxFIFO();

static int  initGyroChannel();
static void readGyroChannelStatus();
static int  readGyroChannelDebugData();
static int  setGyroChannelConfiguration(unsigned int v);
static int  setGyroChannelControl(unsigned int v);

static int 	SetupUartPs(INTC *IntcInstPtr, XUartPs *UartInstPtr,
					u16 DeviceId, u16 UartIntrId);
static void UartPsISR(void *CallBackRef, u32 Event, unsigned int EventData);
static int 	SetupUartInterruptSystem(INTC *IntcInstancePtr,
					XUartPs *UartInstancePtr,
					u16 UartIntrId);
static void read_uart_bytes(void);
static unsigned int get_num_data_points(u8 *RxData);
static void send_Tx_data_over_UART(unsigned int num_points_to_send);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;

/*
 * Buffer for transmit packet. Must be 32-bit aligned to be used by DMA.
 */
u32 *Packet = (u32 *) TX_BUFFER_BASE;

// -------------------------------------------------------------------
int initGyroChannel(){
  // --- clear GYRO stream channel registers
  *(baseaddr_channel+0) = 0x80000000; // reset
  *(baseaddr_channel+0) = 0x00000000;
  *(baseaddr_channel+1) = 0x00000000;
  *(baseaddr_channel+2) = 0x00000000;
  *(baseaddr_channel+3) = 0x00000000;
  return 0;
}

// -------------------------------------------------------------------
void readGyroChannelStatus(){
  xil_printf("Gyro Channel reg0: 0x%08x\n\r", *(baseaddr_channel+0));
  xil_printf("Gyro Channel reg1: 0x%08x\n\r", *(baseaddr_channel+1));
  xil_printf("Gyro Channel reg2: 0x%08x\n\r", *(baseaddr_channel+2));
  xil_printf("Gyro Channel reg3: 0x%08x\n\r", *(baseaddr_channel+3));
}

// -------------------------------------------------------------------
int setGyroChannelConfiguration(unsigned int v){
  // --- clear GYRO stream channel registers
	Xuint32 x;
    x = (Xuint32)(v);
  *(baseaddr_channel+0) = x;
  return 0;
}

// -------------------------------------------------------------------
int setGyroChannelControl(unsigned int v){
  // --- clear GYRO stream channel registers
	Xuint32 x;
    x = (Xuint32)(v);
  *(baseaddr_channel+1) = x;
  return 0;
}
// -------------------------------------------------------------------
int readGyroChannelDebugData(){
  // ---
  xil_printf("Gyro Channel Buffer Info: 0x%08x\n\r", *(baseaddr_channel+2));
  xil_printf("Gyro Channel ClkGen Info: 0x%08x\n\r", *(baseaddr_channel+3));
  return 0;
}
// -------------------------------------------------------------------
int readGyroRxFIFODebugData(){
  // ---
  xil_printf("Gyro RxFIFO Debug Word 0: 0x%08x\n\r", *(baseaddr_rx_fifo+0));
  xil_printf("Gyro RxFIFO Debug Word 1: 0x%08x\n\r", *(baseaddr_rx_fifo+1));
  xil_printf("Gyro RxFIFO Debug Word 2: 0x%08x\n\r", *(baseaddr_rx_fifo+2));
  xil_printf("Gyro RxFIFO Debug Word 3: 0x%08x\n\r", *(baseaddr_rx_fifo+3));
  return 0;
}
// -------------------------------------------------------------------
int readGyroTxFIFODebugData(){
  // ---
  xil_printf("Gyro TxFIFO Debug Word 0: 0x%08x\n\r", *(baseaddr_tx_fifo+0));
  xil_printf("Gyro TxFIFO Debug Word 1: 0x%08x\n\r", *(baseaddr_tx_fifo+1));
  xil_printf("Gyro TxFIFO Debug Word 2: 0x%08x\n\r", *(baseaddr_tx_fifo+2));
  xil_printf("Gyro TxFIFO Debug Word 3: 0x%08x\n\r", *(baseaddr_tx_fifo+3));
  return 0;
}

// -------------------------------------------------------------------
int resetGyroTxFIFO(){
	*(baseaddr_tx_fifo+0) = 0x00000001;
	*(baseaddr_tx_fifo+0) = 0x00000000;
	  return 0;
}

// -------------------------------------------------------------------
int resetGyroRxFIFO(){
	*(baseaddr_rx_fifo+0) = 0x00000001;
	*(baseaddr_rx_fifo+0) = 0x00000000;
	  return 0;
}

// -------------------------------------------------------------------
//   SPI FUNCTIONS
// -------------------------------------------------------------------
int initSPI(){
    // clear SPI registers
    *(baseaddr_spi+0) = 0x00000000;
    *(baseaddr_spi+1) = 0x00000000;
    *(baseaddr_spi+2) = 0x00000000;
    *(baseaddr_spi+3) = 0x00000000;
    return 0;
}

// -------------------------------------------------------------------
void readSPIStatus(){
    xil_printf("baseaddr_spi+0: 0x%08x\n", *(baseaddr_spi+0));
    xil_printf("baseaddr_spi+1: 0x%08x\n", *(baseaddr_spi+1));
    xil_printf("baseaddr_spi+2: 0x%08x\n", *(baseaddr_spi+2));
    xil_printf("baseaddr_spi+3: 0x%08x\n\n", *(baseaddr_spi+3));
}

// -------------------------------------------------------------------
void setSPIControl(Xuint32 v){
	*(baseaddr_spi+3) = v;
}

// -------------------------------------------------------------------
 void setSPIClockDivision(unsigned int v){
   Xuint32 x;

   x = (Xuint32)(v & 0x00000007);
   *(baseaddr_spi+3) = x;
}

 // -------------------------------------------------------------------
  int readSPIClockDivision(){
     Xuint32 x;
     x = *(baseaddr_spi+3);
     return (((int)x) & 0x00000007);
}

// -------------------------------------------------------------------
int writeSPI_blocking(unsigned int address, unsigned int data){
	Xuint32 d, m;
	int x, y, v;

	x = (address & 0x0000007f) << 16;
	y = ((0x0000FFFF) & data);
	v = 0x80000000 | (x | y);
    m = (Xuint32)v;
    xil_printf("== m  0x%08x \n",m);
	*(baseaddr_spi+0) = m;
	while(1){
	  d = *(baseaddr_spi+1);
	  xil_printf("== read d  0x%08x \n",d);

	  v = (unsigned int)d;
	  if(v & 0x80000000){
		break;
	  }

    }
    *(baseaddr_spi+0) = 0x00000000;
    return 0;
}
// -------------------------------------------------------------------
 int writeSPI_non_blocking(unsigned int address, unsigned int data){
    Xuint32 d, m;
    int i, x, y, v;
    int clk_div, delay;

    clk_div = readSPIClockDivision(); // binary representation
    delay = 16000;

    x = (address & 0x0000007f) << 16;
    y = ((0x0000FFFF) & data);
    v = 0x80000000 | (x | y);
    m = (Xuint32)v;

   *(baseaddr_spi+0) = m;
   //*(baseaddr_spi+0) = 0x80800F57; // debug only...

   for(i = 0; i <= clk_div; i++){
     nops(delay << i);
     d = *(baseaddr_spi+1);
     v = (unsigned int)d;
     if(v & 0x80000000){
       *(baseaddr_spi+0) = 0x00000000;
       return 0;
     }
   }
   *(baseaddr_spi+0) = 0x00000000;
   return 1;
 }

 // -------------------------------------------------------------------
int writeSPI_non_blocking_orig(unsigned int address, unsigned int data){
	Xuint32 d, m;
	int i, x, y, v;
	int delay;

	delay = 2000;
	x = (address & 0x0000007f) << 16;
	y = ((0x0000FFFF) & data);
	v = 0x80000000 | (x | y);
    m = (Xuint32)v;
    //xil_printf("== m  0x%08x \n\r",m);
	*(baseaddr_spi+0) = m;
    //*(baseaddr_spi+0) = 0x80800F51; // debug only....
    for(i = 0; i < 5; i++){
    	nops(delay << i);
	  d = *(baseaddr_spi+1);
	   //xil_printf("== read d  0x%08x \n\r",d);
	  v = (unsigned int)d;
	  if(v & 0x80000000){
		*(baseaddr_spi+0) = 0x00000000;
		return 0;
	  }
    }
    *(baseaddr_spi+0) = 0x00000000;
    return 1;
}

// -------------------------------------------------------------------
int readSPI(unsigned int *data, unsigned int address){
  Xuint32 d, m;
  int i, x, v, r;
  int res, delay, clk_div;

  clk_div = readSPIClockDivision(); // binary representation
  delay = 16000;

  res = 1;
  *data = 0x00000000;           // clears result
  x = ((address & 0x0000007F) << 16) | 0x00808043;	// DEBUG: the 8F51 is a test pattern
  v = (0x80000000 | x);         // set the start bit
  m = (Xuint32)v;
  *(baseaddr_spi+0) = m;
  for(i = 0; i < clk_div; i++){
    nops(delay << i);
    d = *(baseaddr_spi+1);
    r = (unsigned int)d;
    if(r & 0x80000000){
      *data = (0x0000FFFF & r); // only lower 16 bits matter
      res = 0;
#ifdef FAKE_IC
      *data = (0x0000ABCD);
#endif
      break;
    }
  }
  v = (0x7FFFFFFF & x);
  m = (Xuint32)v;
  *(baseaddr_spi+0) = m;        // clear start
  return res;
}


// -------------------------------------------------------------------
void modify_register(unsigned int *data, unsigned int address, unsigned int newVal)
{
	readSPI(data,address);
	xil_printf("\n   reading reg %d: 0x%04x\n",address,*data);
	writeSPI_non_blocking_orig(address,newVal);
	xil_printf("   wrote a 0x%04x to reg%d\n",newVal,address);
	readSPI(data,address);
	xil_printf("   reading reg %d: 0x%04x\n",address,*data);
}

// -------------------------------------------------------------------

// -------------------------------------------------------------------
// NOTE: old code for the FEB_04 project where we had a sample generator
// inside the FPGA.
//
/*
void sendGyroPacket(int nsamples){

*(baseaddr_channel+3) = 0x23000010;
*(baseaddr_channel+2) = 0x80000000;
 nops(100000);
*(baseaddr_channel+2) = 0x00000000;

 }
*/

// -------------------------------------------------------------------
// interrupt service routine for IRQ_F2P[0:0]
void isr0 (void *intc_inst_ptr) {
    xil_printf("isr0 called\n\r");
    *(baseaddr_p+0) = 0x00000000;
}

// interrupt service routine for IRQ_F2P[1:1]
void isr1 (void *intc_inst_ptr) {
    xil_printf("isr1 called\n\r");
    *(baseaddr_p+1) = 0x00000000;
}

// interrupt service routine for IRQ_F2P[2:2]
void isr2 (void *intc_inst_ptr) {
    xil_printf("isr2 called\n\r");
    *(baseaddr_p+2) = 0x00000000;
    xil_printf("read inside isr2:    slv_reg3: 0x%08x\n\r", *(baseaddr_p+3));
    flag = 0;
}

// sets up the interrupt system and enables interrupts for IRQ_F2P[1:0]
int setup_interrupt_system() {

    int result;
    XScuGic *intc_instance_ptr = &intc;
    XScuGic_Config *intc_config;

    // get config for interrupt controller
    intc_config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if (NULL == intc_config) {
        return XST_FAILURE;
    }

    // initialize the interrupt controller driver
    result = XScuGic_CfgInitialize(intc_instance_ptr, intc_config, intc_config->CpuBaseAddress);

    if (result != XST_SUCCESS) {
        return result;
    }

    // set the priority of IRQ_F2P[0:0] to 0xA0 (highest 0xF8, lowest 0x00) and a trigger for a rising edge 0x3.
    XScuGic_SetPriorityTriggerType(intc_instance_ptr, INTC_INTERRUPT_ID_0, 0xA0, 0x3);
    xil_printf("slv_reg3: 0x%08x\n\r", *(baseaddr_p+3));
    // connect the interrupt service routine isr0 to the interrupt controller
    result = XScuGic_Connect(intc_instance_ptr, INTC_INTERRUPT_ID_0, (Xil_ExceptionHandler)isr0, (void *)&intc);

    if (result != XST_SUCCESS) {
        return result;
    }

    // enable interrupts for IRQ_F2P[0:0]
    XScuGic_Enable(intc_instance_ptr, INTC_INTERRUPT_ID_0);

    // set the priority of IRQ_F2P[1:1] to 0xA8 (highest 0xF8, lowest 0x00) and a trigger for a rising edge 0x3.
    XScuGic_SetPriorityTriggerType(intc_instance_ptr, INTC_INTERRUPT_ID_1, 0xA8, 0x3);

    // connect the interrupt service routine isr1 to the interrupt controller
    result = XScuGic_Connect(intc_instance_ptr, INTC_INTERRUPT_ID_1, (Xil_ExceptionHandler)isr1, (void *)&intc);

    if (result != XST_SUCCESS) {
        return result;
    }

    // enable interrupts for IRQ_F2P[1:1]
    XScuGic_Enable(intc_instance_ptr, INTC_INTERRUPT_ID_1);


    // set the priority of IRQ_F2P[1:1] to 0xA8 (highest 0xF8, lowest 0x00) and a trigger for a rising edge 0x3.
    XScuGic_SetPriorityTriggerType(intc_instance_ptr, INTC_INTERRUPT_ID_2, 0xA8, 0x3);
    // connect the interrupt service routine isr1 to the interrupt controller
    result = XScuGic_Connect(intc_instance_ptr, INTC_INTERRUPT_ID_2, (Xil_ExceptionHandler)isr2, (void *)&intc);

    if (result != XST_SUCCESS) {
        return result;
    }
    // enable interrupts for IRQ_F2P[2:2]
    XScuGic_Enable(intc_instance_ptr, INTC_INTERRUPT_ID_2);

    // initialize the exception table and register the interrupt controller handler with the exception table
    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, intc_instance_ptr);

    // enable non-critical exceptions
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

// -----------------------------------------------------------------------
//   DMA FUNCTIONS
// ---------- functions from dma -----------------------------------------

#if defined(XPAR_UARTNS550_0_BASEADDR)
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600, and data bits to 8
*
*/

static void Uart550_Setup(void){

	/* Set the baudrate to be predictable
	 */
	XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
			XPAR_XUARTNS550_CLOCK_HZ, 9600);

	XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
			XUN_LCR_8_DATA_BITS);

}
#endif

/*****************************************************************************/
/**
*
* This function sets up RX channel of the DMA engine to be ready for packet
* reception
*
* @param	AxiDmaInstPtr is the pointer to the instance of the DMA engine.
*
* @return	XST_SUCCESS if the setup is successful, XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
static int RxSetup(XAxiDma * AxiDmaInstPtr){
	XAxiDma_BdRing *RxRingPtr;
	int Delay = 0;
	int Coalesce = 1;
	int Status;
	XAxiDma_Bd BdTemplate;
	XAxiDma_Bd *BdPtr;
	XAxiDma_Bd *BdCurPtr;
	u32 BdCount;
	u32 FreeBdCount;
	UINTPTR RxBufferPtr;
	int Index;

	RxRingPtr = XAxiDma_GetRxRing(&AxiDma);

	/* Disable all RX interrupts before RxBD space setup */

	XAxiDma_BdRingIntDisable(RxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Set delay and coalescing */
	XAxiDma_BdRingSetCoalesce(RxRingPtr, Coalesce, Delay);

	/* Setup Rx BD space */
	BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
				RX_BD_SPACE_HIGH - RX_BD_SPACE_BASE + 1);

	Status = XAxiDma_BdRingCreate(RxRingPtr, RX_BD_SPACE_BASE,
				RX_BD_SPACE_BASE,
				XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);

	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: RX create BD ring failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/*
	 * Setup an all-zero BD as the template for the Rx channel.
	 */
	XAxiDma_BdClear(&BdTemplate);

	Status = XAxiDma_BdRingClone(RxRingPtr, &BdTemplate);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: RX clone BD failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Attach buffers to RxBD ring so we are ready to receive packets */

	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);

	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: RX alloc BD failed %d\r\n", Status);
		return XST_FAILURE;
	}

	BdCurPtr = BdPtr;
	RxBufferPtr = RX_BUFFER_BASE;
	for (Index = 0; Index < FreeBdCount; Index++) {
		Status = XAxiDma_BdSetBufAddr(BdCurPtr, RxBufferPtr);

		if (Status != XST_SUCCESS) {
		  xil_printf(" *** Error: Set buffer addr %x on BD %x failed %d\r\n",
			(unsigned int)RxBufferPtr,(UINTPTR)BdCurPtr, Status);
		  return XST_FAILURE;
		}

		Status = XAxiDma_BdSetLength(BdCurPtr, MAX_PKT_LEN,
				RxRingPtr->MaxTransferLen);
		if (Status != XST_SUCCESS) {
			xil_printf(" *** Error: Rx set length %d on BD %x failed %d\r\n",
			    MAX_PKT_LEN, (UINTPTR)BdCurPtr, Status);
			return XST_FAILURE;
		}

		/* Receive BDs do not need to set anything for the control
		 * The hardware will set the SOF/EOF bits per stream status
		 */
		XAxiDma_BdSetCtrl(BdCurPtr, 0);
		XAxiDma_BdSetId(BdCurPtr, RxBufferPtr);

		RxBufferPtr += MAX_PKT_LEN;
		BdCurPtr = (XAxiDma_Bd *)XAxiDma_BdRingNext(RxRingPtr, BdCurPtr);
	}

	/* Clear the receive buffer, so we can verify data
	 */
	memset((void *)RX_BUFFER_BASE, 0, MAX_PKT_LEN);

	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: RX submit hw failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Start RX DMA channel */
	Status = XAxiDma_BdRingStart(RxRingPtr);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: RX start hw failed %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function sets up the TX channel of a DMA engine to be ready for packet
* transmission
*
* @param	AxiDmaInstPtr is the instance pointer to the DMA engine.
*
* @return	XST_SUCCESS if the setup is successful, XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
static int TxSetup(XAxiDma * AxiDmaInstPtr){
	XAxiDma_BdRing *TxRingPtr;
	XAxiDma_Bd BdTemplate;
	int Delay = 0;
	int Coalesce = 1;
	int Status;
	u32 BdCount;

	TxRingPtr = XAxiDma_GetTxRing(&AxiDma);

	/* Disable all TX interrupts before TxBD space setup */

	XAxiDma_BdRingIntDisable(TxRingPtr, XAXIDMA_IRQ_ALL_MASK);

	/* Set TX delay and coalesce */
	XAxiDma_BdRingSetCoalesce(TxRingPtr, Coalesce, Delay);

	/* Setup TxBD space  */
	BdCount = XAxiDma_BdRingCntCalc(XAXIDMA_BD_MINIMUM_ALIGNMENT,
				TX_BD_SPACE_HIGH - TX_BD_SPACE_BASE + 1);

	Status = XAxiDma_BdRingCreate(TxRingPtr, TX_BD_SPACE_BASE,
				TX_BD_SPACE_BASE,
				XAXIDMA_BD_MINIMUM_ALIGNMENT, BdCount);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: failed to create BD ring in TxSetup\r\n");
		return XST_FAILURE;
	}

	/*
	 * We create an all-zero BD as the template.
	 */
	XAxiDma_BdClear(&BdTemplate);

	Status = XAxiDma_BdRingClone(TxRingPtr, &BdTemplate);
	if (Status != XST_SUCCESS) {
		xil_printf(" ** Error: failed bdring clone in TxSetup %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Start the TX channel */
	Status = XAxiDma_BdRingStart(TxRingPtr);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: failed to start bdring TxSetup %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function transmits one packet non-blockingly through the DMA engine.
*
* @param	AxiDmaInstPtr points to the DMA engine instance
*
* @return	- XST_SUCCESS if the DMA accepts the packet successfully,
*		- XST_FAILURE otherwise.
*
* @note     None.
*
******************************************************************************/
static int SendPacket(XAxiDma * AxiDmaInstPtr, int id){
	XAxiDma_BdRing *TxRingPtr;
	u8 *TxPacket;
	u8 Value;
	XAxiDma_Bd *BdPtr;
	int Status;
	int Index;

	TxRingPtr = XAxiDma_GetTxRing(AxiDmaInstPtr);

	/* Create pattern in the packet to transmit */
	TxPacket = (u8 *) Packet;
	//Value = TEST_START_VALUE;
	Value = 0x01;

	if(id == 0){
	  for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
		TxPacket[Index] = Value;
		  Value = (Value + 1) & 0xFF;
	  }
	} else {
		  for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
			TxPacket[Index] = Value+0x80;
		    Value = (Value + 1) & 0xFF;
		  }
	}

	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((UINTPTR)TxPacket, MAX_PKT_LEN);
#ifdef __aarch64__
	Xil_DCacheFlushRange((UINTPTR)RX_BUFFER_BASE, MAX_PKT_LEN);
#endif


	/* Allocate a BD */
	Status = XAxiDma_BdRingAlloc(TxRingPtr, 1, &BdPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Set up the BD using the information of the packet to transmit */
	Status = XAxiDma_BdSetBufAddr(BdPtr, (UINTPTR) Packet);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: Tx set buffer addr %x on BD %x failed %d\r\n",
		    (UINTPTR)Packet, (UINTPTR)BdPtr, Status);
		return XST_FAILURE;
	}

	Status = XAxiDma_BdSetLength(BdPtr, MAX_PKT_LEN, TxRingPtr->MaxTransferLen);
	if (Status != XST_SUCCESS) {
		xil_printf(" *** Error: Tx set length %d on BD %x failed %d\r\n",
		    MAX_PKT_LEN, (UINTPTR)BdPtr, Status);
		return XST_FAILURE;
	}

#if (XPAR_AXIDMA_0_SG_INCLUDE_STSCNTRL_STRM == 1)
	Status = XAxiDma_BdSetAppWord(BdPtr, XAXIDMA_LAST_APPWORD, MAX_PKT_LEN);

	/* If Set app length failed, it is not fatal */
	if (Status != XST_SUCCESS) {
		xil_printf("Set app word failed with %d\r\n", Status);
	}
#endif

	/* For single packet, both SOF and EOF are to be set
	 */
	XAxiDma_BdSetCtrl(BdPtr, XAXIDMA_BD_CTRL_TXEOF_MASK |
						XAXIDMA_BD_CTRL_TXSOF_MASK);

	XAxiDma_BdSetId(BdPtr, (UINTPTR)Packet);

	/* Give the BD to DMA to kick off the transmission. */
	Status = XAxiDma_BdRingToHw(TxRingPtr, 1, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("to hw failed %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}


/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* @param	None
*
* @return	- XST_SUCCESS if validation is successful
*		- XST_FAILURE if validation is failure.
*
* @note		None.
*
******************************************************************************/
static int CheckData(int debug_mode)
{
	u8 *RxPacket;
	int Index = 0;
	u8 Value;


	RxPacket = (u8 *) RX_BUFFER_BASE;
	Value = TEST_START_VALUE;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
#ifndef __aarch64__
	Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);
#endif

	for(Index = 0; Index < MAX_PKT_LEN; Index++) {
		xil_printf("Data received %d: %x\r\n",
		    Index, (unsigned int)RxPacket[Index]);
		/*
		if (RxPacket[Index] != Value) {
			xil_printf("Data error %d: %x/%x\r\n",
			    Index, (unsigned int)RxPacket[Index],
			    (unsigned int)Value);

			return XST_FAILURE;
		}
		Value = (Value + 1) & 0xFF;
		*/
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function waits until the DMA transaction is finished, checks data,
* and cleans up.
*
* @param	None
*
* @return	- XST_SUCCESS if DMA transfer is successful and data is correct,
*		- XST_FAILURE if fails.
*
* @note		None.
*
******************************************************************************/
static int CheckDmaResult(XAxiDma * AxiDmaInstPtr, int debug_mode, int skip_tx)
{
	XAxiDma_BdRing *TxRingPtr;
	XAxiDma_BdRing *RxRingPtr;
	XAxiDma_Bd *BdPtr;
	int ProcessedBdCount;
	int FreeBdCount;
	int Status;

	TxRingPtr = XAxiDma_GetTxRing(AxiDmaInstPtr);
	RxRingPtr = XAxiDma_GetRxRing(AxiDmaInstPtr);

	if(skip_tx == 0){
	/* Wait until the one BD TX transaction is done */
	while ((ProcessedBdCount = XAxiDma_BdRingFromHw(TxRingPtr,
						       XAXIDMA_ALL_BDS,
						       &BdPtr)) == 0) {  }

	  /* Free all processed TX BDs for future transmission */
	  Status = XAxiDma_BdRingFree(TxRingPtr, ProcessedBdCount, BdPtr);
	  if (Status != XST_SUCCESS) {
		xil_printf("Failed to free %d tx BDs %d\r\n",
		    ProcessedBdCount, Status);
		return XST_FAILURE;
	  }
	}
	/* Wait until the data has been received by the Rx channel */
	while ((ProcessedBdCount = XAxiDma_BdRingFromHw(RxRingPtr,
						       XAXIDMA_ALL_BDS, &BdPtr)) == 0) {
	}

	/* Check received data */
	if (CheckData(1) != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Free all processed RX BDs for future transmission */
	Status = XAxiDma_BdRingFree(RxRingPtr, ProcessedBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to free %d rx BDs %d\r\n",
		    ProcessedBdCount, Status);
		return XST_FAILURE;
	}

	/* Return processed BDs to RX channel so we are ready to receive new
	 * packets:
	 *    - Allocate all free RX BDs
	 *    - Pass the BDs to RX channel
	 */
	FreeBdCount = XAxiDma_BdRingGetFreeCnt(RxRingPtr);
	Status = XAxiDma_BdRingAlloc(RxRingPtr, FreeBdCount, &BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("bd alloc failed\r\n");
		return XST_FAILURE;
	}

	Status = XAxiDma_BdRingToHw(RxRingPtr, FreeBdCount, BdPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Submit %d rx BDs failed %d\r\n", FreeBdCount, Status);
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

// -------------------------------------------------------------------

// -------------------------------------------------------------------
int test_DMA_loopback( int num_packets, int debug_mode){
	int Status, i;
	XAxiDma_Config *Config;

//#if defined(XPAR_UARTNS550_0_BASEADDR)
//	Uart550_Setup();
//#endif

	if(debug_mode != 0){
	  xil_printf("\r\n  --- Entering DMA Loopback Test for %d packets --- \r\n",num_packets);
	}

#ifdef __aarch64__
	Xil_SetTlbAttributes(TX_BD_SPACE_BASE, MARK_UNCACHEABLE);
	Xil_SetTlbAttributes(RX_BD_SPACE_BASE, MARK_UNCACHEABLE);
#endif

	Config = XAxiDma_LookupConfig(DMA_DEV_ID);
	if (!Config) {
		xil_printf(" *** Error: No config found for %d\r\n", DMA_DEV_ID);
		return XST_FAILURE;
	} else {
		xil_printf(" >>> config found for %d\r\n", DMA_DEV_ID);
	}

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(&AxiDma, Config);
	if (Status != XST_SUCCESS) {
	   xil_printf(" *** Error: Initialization failed %d\r\n", Status);
	   return XST_FAILURE;
	} else {
		xil_printf(" >>> Initialization succeeded\r\n");
	}

	if(!XAxiDma_HasSg(&AxiDma)) {
	   xil_printf("Could not configure device as Simple mode \r\n");
	   return XST_FAILURE;
	} else {
		 xil_printf("Device configured as Simple mode \r\n");
	}

	Status = TxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {
	   return XST_FAILURE;
	} else {
		 xil_printf("TxSetup completed. \r\n");
	}

	Status = RxSetup(&AxiDma);
	if (Status != XST_SUCCESS) {
	   return XST_FAILURE;
	}else {
		 xil_printf("RxSetup completed. \r\n");
	}

	for(i = 0; i < num_packets; i++){
	  /* Send a packet */

	  Status = SendPacket(&AxiDma, i);

	  if (Status != XST_SUCCESS) {
		  xil_printf(" Failed sending packet number: %d\r\n",i+1);
		return XST_FAILURE;
	  }


	  if(i == 0){
    setGyroChannelControl(0x00000011);
	  }

	  /* Check DMA transfer result */


			Status = CheckDmaResult(&AxiDma, debug_mode, 1);
	  if (Status != XST_SUCCESS) {
		xil_printf(" Failed reading packet number: %d\r\n",1);
		return XST_FAILURE;
	  }


	}


	xil_printf(" >>> Successfully ran AXI DMA SG Polling Example\r\n");
	xil_printf("--- Exiting DMA Loopback main() --- \r\n");

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

// -------------------------------------------------------------------
void nops(unsigned int num) {
    int i;
    for(i = 0; i < num; i++) {
        asm("nop");
    }
}
// -------------------------------------------------------------------




//------------------------------------------------------------
int SetupUartPs(INTC *IntcInstPtr, XUartPs *UartInstPtr,
			u16 DeviceId, u16 UartIntrId)
{
	int Status;
	XUartPs_Config *Config;
	u32 IntrMask;


	/*
	 * Initialize the UART driver so that it's ready to use
	 * Look up the configuration in the config table, then initialize it.
	 */
	Config = XUartPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XUartPs_CfgInitialize(UartInstPtr, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Check hardware build */
	Status = XUartPs_SelfTest(UartInstPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the UART to the interrupt subsystem such that interrupts
	 * can occur. This function is application specific.
	 */
	Status = SetupUartInterruptSystem(IntcInstPtr, UartInstPtr, UartIntrId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the handlers for the UART that will be called from the
	 * interrupt context when data has been sent and received, specify
	 * a pointer to the UART driver instance as the callback reference
	 * so the handlers are able to access the instance data
	 */
	XUartPs_SetHandler(UartInstPtr, (XUartPs_Handler)UartPsISR, UartInstPtr);

	/*
	 * Enable the interrupt of the UART so interrupts will occur, setup
	 * a local loopback so data that is sent will be received.
	 */
	IntrMask =
		XUARTPS_IXR_TOUT | XUARTPS_IXR_PARITY | XUARTPS_IXR_FRAMING |
		XUARTPS_IXR_OVER | XUARTPS_IXR_TXEMPTY | XUARTPS_IXR_RXFULL |
		XUARTPS_IXR_RXOVR;

	if (UartInstPtr->Platform == XPLAT_ZYNQ_ULTRA_MP) {
		IntrMask |= XUARTPS_IXR_RBRK;
	}

	XUartPs_SetInterruptMask(UartInstPtr, IntrMask);

	XUartPs_SetOperMode(UartInstPtr, XUARTPS_OPER_MODE_NORMAL);

	/*
	 * Set the receiver timeout. If it is not set, and the last few bytes
	 * of data do not trigger the over-water or full interrupt, the bytes
	 * will not be received. By default it is disabled.
	 *
	 * The setting of 8 will timeout after 8 x 4 = 32 character times.
	 * Increase the time out value if baud rate is high, decrease it if
	 * baud rate is low.
	 */
	XUartPs_SetRecvTimeout(UartInstPtr, 8);

	return XST_SUCCESS;
}
//------------------------------------------------------------


//------------------------------------------------------------
void UartPsISR(void *CallBackRef, u32 Event, unsigned int EventData)
{
//	xil_printf("IRQ handler!\n");

	/* All of the data has been sent */
	if (Event == XUARTPS_EVENT_SENT_DATA) {
//		xil_printf("1\n");
	}

	/* All of the data has been received */
	if (Event == XUARTPS_EVENT_RECV_DATA) {
//		xil_printf("2\n");
		state |= SERVICE_UART;
	}

	/*
	 * Data was received, but not the expected number of bytes, a
	 * timeout just indicates the data stopped for 8 character times
	 */
	if (Event == XUARTPS_EVENT_RECV_TOUT) {
//		xil_printf("3\n");
	}

	/*
	 * Data was received with an error, keep the data but determine
	 * what kind of errors occurred
	 */
	if (Event == XUARTPS_EVENT_RECV_ERROR) {
//		xil_printf("4\n");
	}

	/*
	 * Data was received with an parity or frame or break error, keep the data
	 * but determine what kind of errors occurred. Specific to Zynq Ultrascale+
	 * MP.
	 */
	if (Event == XUARTPS_EVENT_PARE_FRAME_BRKE) {
//		xil_printf("5\n");
	}

	/*
	 * Data was received with an overrun error, keep the data but determine
	 * what kind of errors occurred. Specific to Zynq Ultrascale+ MP.
	 */
	if (Event == XUARTPS_EVENT_RECV_ORERR) {
//		xil_printf("6\n");
	}
}
//------------------------------------------------------------


//------------------------------------------------------------
static int SetupUartInterruptSystem(INTC *IntcInstancePtr,
				XUartPs *UartInstancePtr,
				u16 UartIntrId)
{
	int Status;

	XScuGic_Config *IntcConfig; /* Config for interrupt controller */

	/* Initialize the interrupt controller driver */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the
	 * hardware interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler) XScuGic_InterruptHandler,
				IntcInstancePtr);

	/*
	 * Connect a device driver handler that will be called when an
	 * interrupt for the device occurs, the device driver handler
	 * performs the specific interrupt processing for the device
	 */
	Status = XScuGic_Connect(IntcInstancePtr, UartIntrId,
				  (Xil_ExceptionHandler) XUartPs_InterruptHandler,
				  (void *) UartInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Enable the interrupt for the device */
	XScuGic_Enable(IntcInstancePtr, UartIntrId);


	/* Enable interrupts */
	 Xil_ExceptionEnable();


	return XST_SUCCESS;
}
//------------------------------------------------------------


//------------------------------------------------------------
void read_uart_bytes(void)
{
	u8 numBytesReceived = 0;
	unsigned int commandByte,regAddr,regData;

	// loop through Uart Rx buffer and store received data
	while (XUartPs_IsReceiveData(UART_BASEADDR))
	{
		UartRxData[numBytesReceived++] = XUartPs_ReadReg(UART_BASEADDR,
					    					XUARTPS_FIFO_OFFSET);
	}

	//take first received byte as the command
	commandByte = (unsigned int)UartRxData[0];

	// check received byte for valid command
	switch (commandByte){

		case (CMD_READ_DATA):
			send_Tx_data_over_UART(get_num_data_points(UartRxData));
			break;

		case (CMD_LOAD_SAWTOOTH_UP_DATA):
			load_sawtooth_up_data();
			break;

		case (CMD_LOAD_SAWTOOTH_DOWN_DATA):
			load_sawtooth_down_data();
			break;

		case (CMD_READ_ADDRESS):
			//verify address byte was received after command byte
			if (numBytesReceived<2)
			{
				return;
			}
			regAddr = (unsigned int)UartRxData[1];
			readSPI(&regData,regAddr);
			char *c = &regData;
			xil_printf("%c%c",*(c+1),*c); //send high byte first
			//xil_printf("%04x",regData);
			break;

		case (CMD_WRITE_ADDRESS):
			//verify address byte, data bytes(2) received after command byte
			if (numBytesReceived<4)
			{
				return;
			}
			regAddr = (unsigned int)UartRxData[1];
			regData = (UartRxData[2]<<8) | UartRxData[3];
			writeSPI_non_blocking_orig(regAddr,regData);
			break;
	}

}
//------------------------------------------------------------


//------------------------------------------------------------
unsigned int get_num_data_points(u8 *RxData)
{
	unsigned int num_points = 0;

	// most significant byte in number sent first
	num_points += RxData[1];
	num_points = num_points << 8;

	// least significant byte in number sent next
	num_points += RxData[2];

	return num_points;

}
//------------------------------------------------------------



//------------------------------------------------------------
void load_sawtooth_up_data(void)
{
	int i,j;

	UartTxData[0] = 0; // initial array value

	// load the data array with sawtooth data
	for(i=1; i<TX_BUFFER_SIZE; i++)
	{
		j = UartTxData[i-1] + SAWTOOTH_STEP_VALUE;
		if (j>SAWTOOTH_MAX_VALUE)
		{
			UartTxData[i] = 0;
		}
		else{
			UartTxData[i] = j;
		}
	}
}
//------------------------------------------------------------


//------------------------------------------------------------
void load_sawtooth_down_data(void)
{
	int i,j;

	UartTxData[0] = SAWTOOTH_MAX_VALUE; // initial array value

	// load the data array with sawtooth data
	for(i=1; i<TX_BUFFER_SIZE; i++){
		j = UartTxData[i-1] - SAWTOOTH_STEP_VALUE;
		if (j < 0){
			UartTxData[i] = SAWTOOTH_MAX_VALUE;
		} else {
			UartTxData[i] = j;
		}
	}
}
//------------------------------------------------------------


//------------------------------------------------------------
void send_Tx_data_over_UART(unsigned int num_points_to_send)
{
	int i;
	// send the data array to the transmit buffer as space is available
	for (i = 0; i < num_points_to_send; i++) {
		/* Wait until there is space in TX FIFO */
		 while (XUartPs_IsTransmitFull(XPAR_XUARTPS_0_BASEADDR));

		/* Write the byte into the TX FIFO */
		XUartPs_WriteReg(XPAR_XUARTPS_0_BASEADDR, XUARTPS_FIFO_OFFSET,
				UartTxData[i]);
	}
}
//------------------------------------------------------------



// -------------------------------------------------------------------
int main() {
	//int err;
    init_platform();

    Status = SetupUartPs(&interrupt_controller, &UartPs,
    				UARTPS_DEVICE_ID, UART_INT_IRQ_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to set up UartPs\r\n");
		return XST_FAILURE;
	}

	xil_printf("waiting for received UART data...\n");

    unsigned int readVal, writeVal;

    xil_printf("\n\r=====================\n\r");
    xil_printf("== START version 26 ==\n\r");
    // set interrupt_0/1 of AXI PL interrupt generator to 0

    *(baseaddr_p+0) = 0x00000000;
    *(baseaddr_p+1) = 0x00000000;
    *(baseaddr_p+2) = 0x00000000;
    *(baseaddr_p+3) = 0x00000000;

    xil_printf("Checkpoint 1\n\r");

    // set interrupt_0/1 of AXI PL interrupt generator to 1
    *(baseaddr_p+0) = 0x00000001;
    *(baseaddr_p+1) = 0x00000002;

    xil_printf("Checkpoint 2\n\r");
    // read interrupt_0/1 of AXI PL interrupt generator
    xil_printf("slv_reg0: 0x%08x\n\r", *(baseaddr_p+0));
    xil_printf("slv_reg1: 0x%08x\n\r", *(baseaddr_p+1));
    xil_printf("slv_reg2: 0x%08x\n\r", *(baseaddr_p+2));
    xil_printf("slv_reg3: 0x%08x\n\r", *(baseaddr_p+3));


    // clear SPI registers
    initSPI();
    setSPIClockDivision(7);
    readSPIStatus();

    // set interrupt_0/1 of AXI PL interrupt generator to 0
    *(baseaddr_p+0) = 0x00000000;
    *(baseaddr_p+1) = 0x00000000;
    *(baseaddr_p+2) = 0x00000000;

   // xil_printf("Checkpoint 3\n\r");
    // read interrupt_0/1 of AXI PL interrupt generator

/*
    xil_printf("Checkpoint 4\n\r");
    // setup and enable interrupts for IRQ_F2P[1:0]
    int status = setup_interrupt_system();
    if (status != XST_SUCCESS) {
         return XST_FAILURE;
    }

    xil_printf("Checkpoint 5\n\r");
    nops(1000);
    // set interrupt_0 of AXI PL interrupt generator to 1 (isr0 will be called)
    *(baseaddr_p+0) = 0x00000001;

    xil_printf("Checkpoint 6\n\r");
    nops(1000);
    // set interrupt_1 of AXI PL interrupt generator to 1 (isr1 will be called)
    *(baseaddr_p+1) = 0x00000001;
    xil_printf("Reading slv_reg1: 0x%08x\n\r", *(baseaddr_p+1));

    // disable interrupts for IRQ_F2P[1:1]
    XScuGic_Disable(&intc, INTC_INTERRUPT_ID_1);

    xil_printf("Checkpoint 7\n\r");
    nops(1000);
    // set interrupt_0 of AXI PL interrupt generator to 1 (isr0 will be called)
    *(baseaddr_p+0) = 0x00000001;

    xil_printf("Checkpoint 8\n\r");
    nops(10000);
    // set interrupt_1 of AXI PL interrupt generator to 1non
    // (isr1 wont be called since interrupts for IRQ_F2P[1:1] are disabled)
    *(baseaddr_p+1) = 0x00000000;

    xil_printf("Checkpoint 9\n\r");
	nops(1000);
	// set interrupt_0 of AXI PL interrupt generator to 1 (isr0 will be called)
	*(baseaddr_p+2) = 0x00000001;
	nops(10000000);
	*(baseaddr_p+2) = 0x00000000;
    xil_printf("Before Busy-Wait Loop slv_reg3: 0x%08x\n\r", *(baseaddr_p+3));

    flag = 1;
    while(flag == 1){
    	nops(100);
    }
    xil_printf("After Busy-Wait Loop slv_reg3: 0x%08x\n\r", *(baseaddr_p+3));
*/
/*
    xil_printf("== SPI test ==\n\r");
    setControlSPI(0x00000007);		// clock division

    writeVal = 0x00808A51;
    xil_printf(" SPI writing : 0x%08x\n\r", writeVal);
    err = writeSPI_non_blocking(0x00000000, writeVal);		// write operation
    if(err == 0){
    	xil_printf(" Write Success \n\r");
    } else {
    	xil_printf(" Write Fail \n\r");
    }

    err = readSPI(&readVal, 0x00000000);
    xil_printf(" SPI reading : 0x%08x\n\r", readVal);
    xil_printf("After SPI reading 0 done: 0x%08x\n\r", *(baseaddr_spi+0));
    xil_printf("After SPI reading 0 done: 0x%08x\n\r", *(baseaddr_spi+0));

    */

    xil_printf("== GYRO Channel test ==\n\r");

    //readGyroTxFIFODebugData();
    //readGyroRxFIFODebugData();
    resetGyroTxFIFO();
    resetGyroRxFIFO();
    initGyroChannel();

    //configure ADC0, ADC1 here via spi




    // --- loopback mode, POL = 0, in and out channels = 00
    //setGyroChannelConfiguration(0x01000000);
    setGyroChannelConfiguration(0x00000000);
    setGyroChannelControl(0x00000000);

    xil_printf(" - after initialization ==\n\r");

    readGyroChannelStatus();
    readGyroChannelDebugData();
    readGyroTxFIFODebugData();
    readGyroRxFIFODebugData();

    xil_printf("== Starting FIFO / DMA test ++\n\r");
    //setGyroChannelControl(0x00000011); // moved inside loopback
    test_DMA_loopback(1,1);
    // --- stopping both channels
	setGyroChannelControl(0x00000000);

	//readGyroChannelStatus();
	//readGyroChannelDebugData();
	//readGyroTxFIFODebugData();
	//readGyroRxFIFODebugData();

    xil_printf("== After Rx ++\n\r");

    xil_printf("== STOP ==\n\r");
    xil_printf("=====================\n\n\r");



    //#################################################################
    //#################################################################
    // code below here is merged from zedboard project used to develop
    // UART interrupts for received data
    //#################################################################
    //#################################################################
    int looping = 1;

	Status = SetupUartPs(&interrupt_controller, &UartPs,
					UARTPS_DEVICE_ID, UART_INT_IRQ_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed to set up UartPs\r\n");
		return XST_FAILURE;
	}

	xil_printf("  waiting for received UART data...\n");

	while(looping){// loop here and let interrupts drive further actions


		//-------------------------------------------------------------------
		// uart received data so read command
		if (state & SERVICE_UART){

			read_uart_bytes();
			state &= ~SERVICE_UART;
		}
		//-------------------------------------------------------------------


	}


	// end of code for UART interrupts
	//#################################################################
	//#################################################################



    cleanup_platform();
    return 0;
}
