connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vivado/projects/project_GYRO_Jan_25_2019/project_GYRO_Jan_25_2019.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA3C5B"} -index 0
loadhw -hw C:/Xilinx/Vivado/projects/project_GYRO_Jan_25_2019/project_GYRO_Jan_25_2019.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248AA3C5B"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AA3C5B"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AA3C5B"} -index 0
dow C:/Xilinx/Vivado/projects/project_GYRO_Jan_25_2019/project_GYRO_Jan_25_2019.sdk/axi4_pl_interrupt_generator_test/Debug/axi4_pl_interrupt_generator_test.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248AA3C5B"} -index 0
con
