-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Jan 25 20:06:36 2019
-- Host        : AsusP8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Xilinx/Vivado/projects/pl2ps_interrupt_example/pl2ps_interrupt_example.srcs/sources_1/bd/design_1/ip/design_1_axi_gyro_hsi_0_0/design_1_axi_gyro_hsi_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_gyro_hsi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_Packetizer_fsm is
  port (
    DBG3 : out STD_LOGIC;
    shift : out STD_LOGIC;
    inj_bit : out STD_LOGIC;
    \out_reg[8]\ : out STD_LOGIC;
    ctl_out : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_Packetizer_fsm : entity is "Packetizer_fsm";
end design_1_axi_gyro_hsi_0_0_Packetizer_fsm;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_Packetizer_fsm is
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S0:00,S1:01,S3:11,S2:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S0:00,S1:01,S3:11,S2:10";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
begin
DBG3_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => DBG3
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1140"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => ctl_out(1),
      I3 => ctl_out(0),
      O => next_state(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => next_state(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => next_state(0),
      Q => state(0),
      R => s00_axi_aresetn_0
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => next_state(1),
      Q => state(1),
      R => s00_axi_aresetn_0
    );
\out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222F222222202"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => state(1),
      I3 => state(0),
      I4 => q,
      I5 => s00_axi_aclk,
      O => shift
    );
\out[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => s00_axi_aresetn,
      O => \out_reg[8]\
    );
\out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => inj_bit
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_StreamGenerator_fsm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    en_cntr_data : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg_reg[6]\ : out STD_LOGIC;
    \r_reg_reg[4]_P\ : out STD_LOGIC;
    \r_reg_reg[0]_C\ : out STD_LOGIC;
    \r_reg_reg[1]_C\ : out STD_LOGIC;
    \r_reg_reg[2]_C\ : out STD_LOGIC;
    \r_reg_reg[3]_C\ : out STD_LOGIC;
    \r_reg_reg[4]_C\ : out STD_LOGIC;
    \r_reg_reg[5]_C\ : out STD_LOGIC;
    \r_reg_reg[6]_C\ : out STD_LOGIC;
    \r_reg_reg[7]_C\ : out STD_LOGIC;
    \r_reg_reg[8]_C\ : out STD_LOGIC;
    \r_reg_reg[9]_C\ : out STD_LOGIC;
    \r_reg_reg[10]_C\ : out STD_LOGIC;
    \r_reg_reg[11]_C\ : out STD_LOGIC;
    \r_reg_reg[12]_C\ : out STD_LOGIC;
    \r_reg_reg[13]_C\ : out STD_LOGIC;
    \r_reg_reg[14]_C\ : out STD_LOGIC;
    \r_reg_reg[15]_C\ : out STD_LOGIC;
    \r_reg_reg[0]_P\ : out STD_LOGIC;
    \r_reg_reg[1]_P\ : out STD_LOGIC;
    \r_reg_reg[2]_P\ : out STD_LOGIC;
    \r_reg_reg[3]_P\ : out STD_LOGIC;
    \r_reg_reg[4]_P_0\ : out STD_LOGIC;
    \r_reg_reg[5]_P\ : out STD_LOGIC;
    \r_reg_reg[6]_P\ : out STD_LOGIC;
    \r_reg_reg[7]_P\ : out STD_LOGIC;
    \r_reg_reg[8]_P\ : out STD_LOGIC;
    \r_reg_reg[9]_P\ : out STD_LOGIC;
    \r_reg_reg[10]_P\ : out STD_LOGIC;
    \r_reg_reg[11]_P\ : out STD_LOGIC;
    \r_reg_reg[12]_P\ : out STD_LOGIC;
    \r_reg_reg[13]_P\ : out STD_LOGIC;
    \r_reg_reg[14]_P\ : out STD_LOGIC;
    \r_reg_reg[15]_P\ : out STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    start_int : in STD_LOGIC;
    stop_int : in STD_LOGIC;
    \data_out_reg[0]\ : in STD_LOGIC;
    \r_reg_reg[6]_P_0\ : in STD_LOGIC;
    \r_reg_reg[2]\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    \slv_reg0_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \data_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_StreamGenerator_fsm : entity is "StreamGenerator_fsm";
end design_1_axi_gyro_hsi_0_0_StreamGenerator_fsm;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_StreamGenerator_fsm is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[4]_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[10]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[11]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[8]\ : signal is "yes";
  signal load_state_data_reg_i_1_n_0 : STD_LOGIC;
  signal load_state_data_reg_i_2_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[10]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[11]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[12]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[12]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[7]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[8]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "S4:0000000100000,S3:0000000010000,S2:0000000001000,S11:0100000000000,S12:0000000000010,S10:1000000000000,S1:0000000000100,S0:0000000000001,S9:0010000000000,S7:0000100000000,S8:0001000000000,S6:0000010000000,S5:0000001000000";
  attribute KEEP of \FSM_onehot_state_reg[9]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of load_state_data_reg : label is "LD";
begin
  \FSM_onehot_state_reg[4]_0\ <= \^fsm_onehot_state_reg[4]_0\;
  \out\(6 downto 0) <= \^out\(6 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F454"
    )
        port map (
      I0 => start_int,
      I1 => \^out\(6),
      I2 => \^out\(0),
      I3 => stop_int,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q,
      I1 => \FSM_onehot_state_reg_n_0_[11]\,
      I2 => \^out\(5),
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[11]\,
      I1 => Q,
      I2 => \FSM_onehot_state_reg_n_0_[10]\,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => Q,
      O => \^fsm_onehot_state_reg[4]_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^fsm_onehot_state_reg[4]_0\,
      I2 => \data_out_reg[0]\,
      I3 => \r_reg_reg[6]_P_0\,
      I4 => stop_int,
      I5 => \r_reg_reg[2]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \^out\(0),
      S => SR(0)
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[11]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[11]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q_reg(3),
      Q => \^out\(6),
      R => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q_reg(0),
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \^out\(1),
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^out\(1),
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \^out\(2),
      R => SR(0)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^out\(2),
      Q => \^out\(3),
      R => SR(0)
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q_reg(1),
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \^out\(4),
      R => SR(0)
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Q_reg(2),
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \^out\(5),
      R => SR(0)
    );
HSICKA0_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(0),
      I1 => \slv_reg3_reg[31]\(1),
      I2 => \^out\(2),
      I3 => \slv_reg3_reg[31]\(2),
      O => HSICKA0
    );
HSICKA1_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(0),
      I1 => \slv_reg3_reg[31]\(1),
      I2 => \^out\(2),
      I3 => \slv_reg3_reg[31]\(2),
      O => HSICKA1
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^out\(6),
      I1 => \slv_reg3_reg[31]\(2),
      I2 => \slv_reg0_reg[31]\(0),
      I3 => axi_araddr(1),
      I4 => axi_araddr(0),
      I5 => \slv_reg1_reg[31]\(0),
      O => D(0)
    );
load_state_data_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      G => load_state_data_reg_i_1_n_0,
      GE => '1',
      Q => CLK
    );
load_state_data_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => load_state_data_reg_i_2_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \^out\(6),
      I3 => \^out\(0),
      I4 => \^out\(1),
      I5 => \^out\(3),
      O => load_state_data_reg_i_1_n_0
    );
load_state_data_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \FSM_onehot_state_reg_n_0_[8]\,
      I2 => \^out\(2),
      I3 => \^out\(4),
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => load_state_data_reg_i_2_n_0
    );
\r_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(3),
      I2 => \^out\(4),
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => en_cntr_data
    );
\r_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(5),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[6]\
    );
\r_reg_reg[0]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(0),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[0]_P\
    );
\r_reg_reg[0]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(0),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[0]_C\
    );
\r_reg_reg[10]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(10),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[10]_P\
    );
\r_reg_reg[10]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(10),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[10]_C\
    );
\r_reg_reg[11]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(11),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[11]_P\
    );
\r_reg_reg[11]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(11),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[11]_C\
    );
\r_reg_reg[12]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(12),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[12]_P\
    );
\r_reg_reg[12]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(12),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[12]_C\
    );
\r_reg_reg[13]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(13),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[13]_P\
    );
\r_reg_reg[13]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(13),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[13]_C\
    );
\r_reg_reg[14]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(14),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[14]_P\
    );
\r_reg_reg[14]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(14),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[14]_C\
    );
\r_reg_reg[15]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(15),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[15]_P\
    );
\r_reg_reg[15]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(15),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[15]_C\
    );
\r_reg_reg[1]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(1),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[1]_P\
    );
\r_reg_reg[1]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(1),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[1]_C\
    );
\r_reg_reg[2]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(2),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[2]_P\
    );
\r_reg_reg[2]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(2),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[2]_C\
    );
\r_reg_reg[3]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(3),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[3]_P\
    );
\r_reg_reg[3]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(3),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[3]_C\
    );
\r_reg_reg[4]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(4),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[4]_P_0\
    );
\r_reg_reg[4]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(4),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[4]_C\
    );
\r_reg_reg[5]_LDC_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \^out\(5),
      I3 => \^out\(1),
      O => \r_reg_reg[4]_P\
    );
\r_reg_reg[5]_LDC_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(5),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[5]_P\
    );
\r_reg_reg[5]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(5),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[5]_C\
    );
\r_reg_reg[6]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(6),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[6]_P\
    );
\r_reg_reg[6]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(6),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[6]_C\
    );
\r_reg_reg[7]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(7),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[7]_P\
    );
\r_reg_reg[7]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(7),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[7]_C\
    );
\r_reg_reg[8]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(8),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[8]_P\
    );
\r_reg_reg[8]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(8),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[8]_C\
    );
\r_reg_reg[9]_LDC_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \data_out_reg[15]\(9),
      I1 => s00_axi_aresetn,
      I2 => \^out\(1),
      I3 => \^out\(6),
      O => \r_reg_reg[9]_P\
    );
\r_reg_reg[9]_LDC_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => \data_out_reg[15]\(9),
      I1 => \^out\(1),
      I2 => \^out\(6),
      I3 => s00_axi_aresetn,
      O => \r_reg_reg[9]_C\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_Tokenizer_fsm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : out STD_LOGIC;
    DBG2 : out STD_LOGIC;
    \r_reg_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_Tokenizer_fsm : entity is "Tokenizer_fsm";
end design_1_axi_gyro_hsi_0_0_Tokenizer_fsm;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_Tokenizer_fsm is
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S0:00,S3:11,S1:01,S2:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S0:00,S3:11,S1:01,S2:10";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
begin
  \out\(1 downto 0) <= \^out\(1 downto 0);
DBG2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      O => DBG2
    );
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => Q(0),
      I1 => \^out\(1),
      I2 => \^out\(0),
      O => next_state(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => Q(0),
      O => next_state(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn_0,
      D => next_state(0),
      Q => \^out\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn_0,
      D => next_state(1),
      Q => \^out\(1)
    );
\r_reg[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10DF"
    )
        port map (
      I0 => \FSM_onehot_state_reg[4]\(0),
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \slv_reg3_reg[31]\(0),
      O => CLK
    );
\r_reg[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => s00_axi_aresetn,
      O => \r_reg_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_dff is
  port (
    start_int : out STD_LOGIC;
    \FSM_onehot_state_reg[12]\ : out STD_LOGIC;
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_dff : entity is "dff";
end design_1_axi_gyro_hsi_0_0_dff;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_dff is
  signal \^start_int\ : STD_LOGIC;
begin
  start_int <= \^start_int\;
\FSM_onehot_state[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^start_int\,
      I1 => \out\(0),
      O => \FSM_onehot_state_reg[12]\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => SR(0),
      D => \slv_reg2_reg[31]\(0),
      Q => \^start_int\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_dff_0 is
  port (
    stop_int : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_int : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_dff_0 : entity is "dff";
end design_1_axi_gyro_hsi_0_0_dff_0;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_dff_0 is
  signal \^stop_int\ : STD_LOGIC;
begin
  stop_int <= \^stop_int\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^stop_int\,
      I1 => start_int,
      I2 => \out\(0),
      O => \FSM_onehot_state_reg[1]\(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => SR(0),
      D => \slv_reg2_reg[30]\(0),
      Q => \^stop_int\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_dff_1 is
  port (
    Q : out STD_LOGIC;
    \slv_reg2_reg[29]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_dff_1 : entity is "dff";
end design_1_axi_gyro_hsi_0_0_dff_1;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_dff_1 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => SR(0),
      D => \slv_reg2_reg[29]\(0),
      Q => Q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_dff_2 is
  port (
    q : out STD_LOGIC;
    DBG3 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_dff_2 : entity is "dff";
end design_1_axi_gyro_hsi_0_0_dff_2;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_dff_2 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => DBG3,
      Q => q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_downCounter16Bits is
  port (
    \r_reg_reg[0]_P_0\ : out STD_LOGIC;
    \r_reg_reg[1]_P_0\ : out STD_LOGIC;
    \r_reg_reg[1]_C_0\ : out STD_LOGIC;
    \r_reg_reg[2]_C_0\ : out STD_LOGIC;
    \r_reg_reg[3]_C_0\ : out STD_LOGIC;
    \r_reg_reg[4]_C_0\ : out STD_LOGIC;
    \r_reg_reg[5]_C_0\ : out STD_LOGIC;
    \r_reg_reg[6]_C_0\ : out STD_LOGIC;
    \r_reg_reg[7]_C_0\ : out STD_LOGIC;
    \r_reg_reg[8]_C_0\ : out STD_LOGIC;
    \r_reg_reg[9]_C_0\ : out STD_LOGIC;
    \r_reg_reg[10]_C_0\ : out STD_LOGIC;
    \r_reg_reg[11]_C_0\ : out STD_LOGIC;
    \r_reg_reg[12]_C_0\ : out STD_LOGIC;
    \r_reg_reg[13]_C_0\ : out STD_LOGIC;
    \r_reg_reg[14]_C_0\ : out STD_LOGIC;
    \r_reg_reg[15]_C_0\ : out STD_LOGIC;
    \r_reg_reg[0]_P_1\ : out STD_LOGIC;
    \r_reg_reg[1]_P_1\ : out STD_LOGIC;
    \r_reg_reg[2]_P_0\ : out STD_LOGIC;
    \r_reg_reg[3]_P_0\ : out STD_LOGIC;
    \r_reg_reg[4]_P_0\ : out STD_LOGIC;
    \r_reg_reg[5]_P_0\ : out STD_LOGIC;
    \r_reg_reg[6]_P_0\ : out STD_LOGIC;
    \r_reg_reg[7]_P_0\ : out STD_LOGIC;
    \r_reg_reg[8]_P_0\ : out STD_LOGIC;
    \r_reg_reg[9]_P_0\ : out STD_LOGIC;
    \r_reg_reg[10]_P_0\ : out STD_LOGIC;
    \r_reg_reg[11]_P_0\ : out STD_LOGIC;
    \r_reg_reg[12]_P_0\ : out STD_LOGIC;
    \r_reg_reg[13]_P_0\ : out STD_LOGIC;
    \r_reg_reg[14]_P_0\ : out STD_LOGIC;
    \r_reg_reg[15]_P_0\ : out STD_LOGIC;
    \data_out_reg[15]\ : in STD_LOGIC;
    \data_out_reg[15]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \data_out_reg[14]\ : in STD_LOGIC;
    \data_out_reg[14]_0\ : in STD_LOGIC;
    \data_out_reg[13]\ : in STD_LOGIC;
    \data_out_reg[13]_0\ : in STD_LOGIC;
    \data_out_reg[12]\ : in STD_LOGIC;
    \data_out_reg[12]_0\ : in STD_LOGIC;
    \data_out_reg[11]\ : in STD_LOGIC;
    \data_out_reg[11]_0\ : in STD_LOGIC;
    \data_out_reg[10]\ : in STD_LOGIC;
    \data_out_reg[10]_0\ : in STD_LOGIC;
    \data_out_reg[9]\ : in STD_LOGIC;
    \data_out_reg[9]_0\ : in STD_LOGIC;
    \data_out_reg[8]\ : in STD_LOGIC;
    \data_out_reg[8]_0\ : in STD_LOGIC;
    \data_out_reg[7]\ : in STD_LOGIC;
    \data_out_reg[7]_0\ : in STD_LOGIC;
    \data_out_reg[6]\ : in STD_LOGIC;
    \data_out_reg[6]_0\ : in STD_LOGIC;
    \data_out_reg[5]\ : in STD_LOGIC;
    \data_out_reg[5]_0\ : in STD_LOGIC;
    \data_out_reg[4]\ : in STD_LOGIC;
    \data_out_reg[4]_0\ : in STD_LOGIC;
    \data_out_reg[3]\ : in STD_LOGIC;
    \data_out_reg[3]_0\ : in STD_LOGIC;
    \data_out_reg[2]\ : in STD_LOGIC;
    \data_out_reg[2]_0\ : in STD_LOGIC;
    \data_out_reg[1]\ : in STD_LOGIC;
    \data_out_reg[1]_0\ : in STD_LOGIC;
    \data_out_reg[0]\ : in STD_LOGIC;
    \data_out_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_downCounter16Bits : entity is "downCounter16Bits";
end design_1_axi_gyro_hsi_0_0_downCounter16Bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_downCounter16Bits is
  signal \FSM_onehot_state[12]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_9_n_0\ : STD_LOGIC;
  signal count_samples : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \r_next_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_n_0\ : STD_LOGIC;
  signal \r_next_carry__0_n_1\ : STD_LOGIC;
  signal \r_next_carry__0_n_2\ : STD_LOGIC;
  signal \r_next_carry__0_n_3\ : STD_LOGIC;
  signal \r_next_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_n_0\ : STD_LOGIC;
  signal \r_next_carry__1_n_1\ : STD_LOGIC;
  signal \r_next_carry__1_n_2\ : STD_LOGIC;
  signal \r_next_carry__1_n_3\ : STD_LOGIC;
  signal \r_next_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_next_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_next_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \r_next_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \r_next_carry__2_n_2\ : STD_LOGIC;
  signal \r_next_carry__2_n_3\ : STD_LOGIC;
  signal r_next_carry_i_2_n_0 : STD_LOGIC;
  signal r_next_carry_i_3_n_0 : STD_LOGIC;
  signal r_next_carry_i_4_n_0 : STD_LOGIC;
  signal r_next_carry_i_5_n_0 : STD_LOGIC;
  signal r_next_carry_i_6_n_0 : STD_LOGIC;
  signal r_next_carry_i_7_n_0 : STD_LOGIC;
  signal r_next_carry_i_8_n_0 : STD_LOGIC;
  signal r_next_carry_i_9_n_0 : STD_LOGIC;
  signal r_next_carry_n_0 : STD_LOGIC;
  signal r_next_carry_n_1 : STD_LOGIC;
  signal r_next_carry_n_2 : STD_LOGIC;
  signal r_next_carry_n_3 : STD_LOGIC;
  signal r_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_reg_reg[0]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \^r_reg_reg[0]_p_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[10]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[10]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[11]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[11]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[12]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[12]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[13]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[13]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[13]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[14]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[14]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[14]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[15]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[15]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[2]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[2]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[6]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[6]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[7]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[7]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[9]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[9]_P_n_0\ : STD_LOGIC;
  signal \NLW_r_next_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_next_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_reg[0]_C_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_reg[10]_C_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_reg[11]_C_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_reg[12]_C_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_reg[13]_C_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_reg[14]_C_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_reg[15]_C_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_reg[1]_C_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_reg[2]_C_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_reg[3]_C_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_reg[4]_C_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_reg[5]_C_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_reg[6]_C_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_reg[7]_C_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_reg[8]_C_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_reg[9]_C_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[9]_LDC\ : label is "LDC";
begin
  \r_reg_reg[0]_P_0\ <= \^r_reg_reg[0]_p_0\;
\FSM_onehot_state[12]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[7]_P_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_C_n_0\,
      O => count_samples(7)
    );
\FSM_onehot_state[12]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      O => count_samples(5)
    );
\FSM_onehot_state[12]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => count_samples(4)
    );
\FSM_onehot_state[12]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[12]_P_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_C_n_0\,
      O => count_samples(12)
    );
\FSM_onehot_state[12]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[13]_P_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_C_n_0\,
      O => count_samples(13)
    );
\FSM_onehot_state[12]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001D1D1D001D"
    )
        port map (
      I0 => \r_reg_reg[14]_C_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_P_n_0\,
      I3 => \r_reg_reg[15]_C_n_0\,
      I4 => \r_reg_reg[15]_LDC_n_0\,
      I5 => \r_reg_reg[15]_P_n_0\,
      O => \FSM_onehot_state[12]_i_15_n_0\
    );
\FSM_onehot_state[12]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001D1D1D001D"
    )
        port map (
      I0 => \r_reg_reg[8]_C_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_P_n_0\,
      I3 => \r_reg_reg[9]_C_n_0\,
      I4 => \r_reg_reg[9]_LDC_n_0\,
      I5 => \r_reg_reg[9]_P_n_0\,
      O => \FSM_onehot_state[12]_i_16_n_0\
    );
\FSM_onehot_state[12]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[10]_P_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_C_n_0\,
      O => count_samples(10)
    );
\FSM_onehot_state[12]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[11]_P_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_C_n_0\,
      O => count_samples(11)
    );
\FSM_onehot_state[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \FSM_onehot_state[12]_i_5_n_0\,
      I1 => count_samples(1),
      I2 => count_samples(0),
      I3 => count_samples(3),
      I4 => count_samples(2),
      I5 => \FSM_onehot_state[12]_i_9_n_0\,
      O => \^r_reg_reg[0]_p_0\
    );
\FSM_onehot_state[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001015"
    )
        port map (
      I0 => count_samples(7),
      I1 => \r_reg_reg[6]_P_n_0\,
      I2 => \r_reg_reg[6]_LDC_n_0\,
      I3 => \r_reg_reg[6]_C_n_0\,
      I4 => count_samples(5),
      I5 => count_samples(4),
      O => \FSM_onehot_state[12]_i_5_n_0\
    );
\FSM_onehot_state[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[1]_P_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_C_n_0\,
      O => count_samples(1)
    );
\FSM_onehot_state[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      O => count_samples(3)
    );
\FSM_onehot_state[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[2]_P_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_C_n_0\,
      O => count_samples(2)
    );
\FSM_onehot_state[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => count_samples(12),
      I1 => count_samples(13),
      I2 => \FSM_onehot_state[12]_i_15_n_0\,
      I3 => \FSM_onehot_state[12]_i_16_n_0\,
      I4 => count_samples(10),
      I5 => count_samples(11),
      O => \FSM_onehot_state[12]_i_9_n_0\
    );
r_next_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_next_carry_n_0,
      CO(2) => r_next_carry_n_1,
      CO(1) => r_next_carry_n_2,
      CO(0) => r_next_carry_n_3,
      CYINIT => count_samples(0),
      DI(3) => r_next_carry_i_2_n_0,
      DI(2) => r_next_carry_i_3_n_0,
      DI(1) => r_next_carry_i_4_n_0,
      DI(0) => r_next_carry_i_5_n_0,
      O(3 downto 0) => data0(4 downto 1),
      S(3) => r_next_carry_i_6_n_0,
      S(2) => r_next_carry_i_7_n_0,
      S(1) => r_next_carry_i_8_n_0,
      S(0) => r_next_carry_i_9_n_0
    );
\r_next_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_next_carry_n_0,
      CO(3) => \r_next_carry__0_n_0\,
      CO(2) => \r_next_carry__0_n_1\,
      CO(1) => \r_next_carry__0_n_2\,
      CO(0) => \r_next_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => count_samples(8),
      DI(2) => \r_next_carry__0_i_2_n_0\,
      DI(1) => count_samples(6),
      DI(0) => \r_next_carry__0_i_4_n_0\,
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \r_next_carry__0_i_5_n_0\,
      S(2) => \r_next_carry__0_i_6_n_0\,
      S(1) => \r_next_carry__0_i_7_n_0\,
      S(0) => \r_next_carry__0_i_8_n_0\
    );
\r_next_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[8]_P_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_C_n_0\,
      O => count_samples(8)
    );
\r_next_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[7]_P_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_C_n_0\,
      O => \r_next_carry__0_i_2_n_0\
    );
\r_next_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[6]_P_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_C_n_0\,
      O => count_samples(6)
    );
\r_next_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      O => \r_next_carry__0_i_4_n_0\
    );
\r_next_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[8]_C_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_P_n_0\,
      O => \r_next_carry__0_i_5_n_0\
    );
\r_next_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[7]_C_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_P_n_0\,
      O => \r_next_carry__0_i_6_n_0\
    );
\r_next_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[6]_C_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_P_n_0\,
      O => \r_next_carry__0_i_7_n_0\
    );
\r_next_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[5]_C_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_P_n_0\,
      O => \r_next_carry__0_i_8_n_0\
    );
\r_next_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next_carry__0_n_0\,
      CO(3) => \r_next_carry__1_n_0\,
      CO(2) => \r_next_carry__1_n_1\,
      CO(1) => \r_next_carry__1_n_2\,
      CO(0) => \r_next_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \r_next_carry__1_i_1_n_0\,
      DI(2) => \r_next_carry__1_i_2_n_0\,
      DI(1) => \r_next_carry__1_i_3_n_0\,
      DI(0) => count_samples(9),
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \r_next_carry__1_i_5_n_0\,
      S(2) => \r_next_carry__1_i_6_n_0\,
      S(1) => \r_next_carry__1_i_7_n_0\,
      S(0) => \r_next_carry__1_i_8_n_0\
    );
\r_next_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[12]_P_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_C_n_0\,
      O => \r_next_carry__1_i_1_n_0\
    );
\r_next_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[11]_P_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_C_n_0\,
      O => \r_next_carry__1_i_2_n_0\
    );
\r_next_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[10]_P_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_C_n_0\,
      O => \r_next_carry__1_i_3_n_0\
    );
\r_next_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[9]_P_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_C_n_0\,
      O => count_samples(9)
    );
\r_next_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[12]_C_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_P_n_0\,
      O => \r_next_carry__1_i_5_n_0\
    );
\r_next_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[11]_C_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_P_n_0\,
      O => \r_next_carry__1_i_6_n_0\
    );
\r_next_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[10]_C_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_P_n_0\,
      O => \r_next_carry__1_i_7_n_0\
    );
\r_next_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[9]_C_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_P_n_0\,
      O => \r_next_carry__1_i_8_n_0\
    );
\r_next_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_next_carry__1_n_0\,
      CO(3 downto 2) => \NLW_r_next_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_next_carry__2_n_2\,
      CO(0) => \r_next_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => count_samples(14),
      DI(0) => \r_next_carry__2_i_2_n_0\,
      O(3) => \NLW_r_next_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2) => \r_next_carry__2_i_3_n_0\,
      S(1) => \r_next_carry__2_i_4_n_0\,
      S(0) => \r_next_carry__2_i_5_n_0\
    );
\r_next_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[14]_P_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_C_n_0\,
      O => count_samples(14)
    );
\r_next_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[13]_P_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_C_n_0\,
      O => \r_next_carry__2_i_2_n_0\
    );
\r_next_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[15]_C_n_0\,
      I1 => \r_reg_reg[15]_LDC_n_0\,
      I2 => \r_reg_reg[15]_P_n_0\,
      O => \r_next_carry__2_i_3_n_0\
    );
\r_next_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[14]_C_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_P_n_0\,
      O => \r_next_carry__2_i_4_n_0\
    );
\r_next_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[13]_C_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_P_n_0\,
      O => \r_next_carry__2_i_5_n_0\
    );
r_next_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[0]_P_n_0\,
      I1 => \r_reg_reg[0]_LDC_n_0\,
      I2 => \r_reg_reg[0]_C_n_0\,
      O => count_samples(0)
    );
r_next_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => r_next_carry_i_2_n_0
    );
r_next_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      O => r_next_carry_i_3_n_0
    );
r_next_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[2]_P_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_C_n_0\,
      O => r_next_carry_i_4_n_0
    );
r_next_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[1]_P_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_C_n_0\,
      O => r_next_carry_i_5_n_0
    );
r_next_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[4]_C_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_P_n_0\,
      O => r_next_carry_i_6_n_0
    );
r_next_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[3]_C_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_P_n_0\,
      O => r_next_carry_i_7_n_0
    );
r_next_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[2]_C_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_P_n_0\,
      O => r_next_carry_i_8_n_0
    );
r_next_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \r_reg_reg[1]_C_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_P_n_0\,
      O => r_next_carry_i_9_n_0
    );
\r_reg[0]_C_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => \^r_reg_reg[0]_p_0\,
      I1 => \r_reg_reg[0]_C_n_0\,
      I2 => \r_reg_reg[0]_LDC_n_0\,
      I3 => \r_reg_reg[0]_P_n_0\,
      O => r_reg(0)
    );
\r_reg[10]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(10)
    );
\r_reg[11]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(11)
    );
\r_reg[12]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(12)
    );
\r_reg[13]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(13)
    );
\r_reg[14]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(14)
    );
\r_reg[15]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(15)
    );
\r_reg[1]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(1)
    );
\r_reg[2]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(2)
    );
\r_reg[3]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(3)
    );
\r_reg[4]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(4)
    );
\r_reg[5]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(5)
    );
\r_reg[6]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(6)
    );
\r_reg[7]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(7)
    );
\r_reg[8]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(8)
    );
\r_reg[9]_C_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \^r_reg_reg[0]_p_0\,
      O => r_reg(9)
    );
\r_reg_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[0]_0\,
      D => r_reg(0),
      Q => \r_reg_reg[0]_C_n_0\
    );
\r_reg_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[0]_0\,
      D => '1',
      G => \data_out_reg[0]\,
      GE => '1',
      Q => \r_reg_reg[0]_LDC_n_0\
    );
\r_reg_reg[0]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[0]_C_n_0\,
      I1 => \r_reg_reg[0]_LDC_n_0\,
      I2 => \r_reg_reg[0]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[0]_P_1\
    );
\r_reg_reg[0]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[0]_P_n_0\,
      I1 => \r_reg_reg[0]_LDC_n_0\,
      I2 => \r_reg_reg[0]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[1]_P_0\
    );
\r_reg_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(0),
      PRE => \data_out_reg[0]\,
      Q => \r_reg_reg[0]_P_n_0\
    );
\r_reg_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[10]_0\,
      D => r_reg(10),
      Q => \r_reg_reg[10]_C_n_0\
    );
\r_reg_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[10]_0\,
      D => '1',
      G => \data_out_reg[10]\,
      GE => '1',
      Q => \r_reg_reg[10]_LDC_n_0\
    );
\r_reg_reg[10]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[10]_C_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[10]_P_0\
    );
\r_reg_reg[10]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[10]_P_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[10]_C_0\
    );
\r_reg_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(10),
      PRE => \data_out_reg[10]\,
      Q => \r_reg_reg[10]_P_n_0\
    );
\r_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[11]_0\,
      D => r_reg(11),
      Q => \r_reg_reg[11]_C_n_0\
    );
\r_reg_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[11]_0\,
      D => '1',
      G => \data_out_reg[11]\,
      GE => '1',
      Q => \r_reg_reg[11]_LDC_n_0\
    );
\r_reg_reg[11]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[11]_C_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[11]_P_0\
    );
\r_reg_reg[11]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[11]_P_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[11]_C_0\
    );
\r_reg_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(11),
      PRE => \data_out_reg[11]\,
      Q => \r_reg_reg[11]_P_n_0\
    );
\r_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[12]_0\,
      D => r_reg(12),
      Q => \r_reg_reg[12]_C_n_0\
    );
\r_reg_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[12]_0\,
      D => '1',
      G => \data_out_reg[12]\,
      GE => '1',
      Q => \r_reg_reg[12]_LDC_n_0\
    );
\r_reg_reg[12]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[12]_C_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[12]_P_0\
    );
\r_reg_reg[12]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[12]_P_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[12]_C_0\
    );
\r_reg_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(12),
      PRE => \data_out_reg[12]\,
      Q => \r_reg_reg[12]_P_n_0\
    );
\r_reg_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[13]_0\,
      D => r_reg(13),
      Q => \r_reg_reg[13]_C_n_0\
    );
\r_reg_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[13]_0\,
      D => '1',
      G => \data_out_reg[13]\,
      GE => '1',
      Q => \r_reg_reg[13]_LDC_n_0\
    );
\r_reg_reg[13]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[13]_C_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[13]_P_0\
    );
\r_reg_reg[13]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[13]_P_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[13]_C_0\
    );
\r_reg_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(13),
      PRE => \data_out_reg[13]\,
      Q => \r_reg_reg[13]_P_n_0\
    );
\r_reg_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[14]_0\,
      D => r_reg(14),
      Q => \r_reg_reg[14]_C_n_0\
    );
\r_reg_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[14]_0\,
      D => '1',
      G => \data_out_reg[14]\,
      GE => '1',
      Q => \r_reg_reg[14]_LDC_n_0\
    );
\r_reg_reg[14]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[14]_C_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[14]_P_0\
    );
\r_reg_reg[14]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[14]_P_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[14]_C_0\
    );
\r_reg_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(14),
      PRE => \data_out_reg[14]\,
      Q => \r_reg_reg[14]_P_n_0\
    );
\r_reg_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[15]_0\,
      D => r_reg(15),
      Q => \r_reg_reg[15]_C_n_0\
    );
\r_reg_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[15]_0\,
      D => '1',
      G => \data_out_reg[15]\,
      GE => '1',
      Q => \r_reg_reg[15]_LDC_n_0\
    );
\r_reg_reg[15]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[15]_C_n_0\,
      I1 => \r_reg_reg[15]_LDC_n_0\,
      I2 => \r_reg_reg[15]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[15]_P_0\
    );
\r_reg_reg[15]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[15]_P_n_0\,
      I1 => \r_reg_reg[15]_LDC_n_0\,
      I2 => \r_reg_reg[15]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[15]_C_0\
    );
\r_reg_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(15),
      PRE => \data_out_reg[15]\,
      Q => \r_reg_reg[15]_P_n_0\
    );
\r_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[1]_0\,
      D => r_reg(1),
      Q => \r_reg_reg[1]_C_n_0\
    );
\r_reg_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[1]_0\,
      D => '1',
      G => \data_out_reg[1]\,
      GE => '1',
      Q => \r_reg_reg[1]_LDC_n_0\
    );
\r_reg_reg[1]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[1]_C_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[1]_P_1\
    );
\r_reg_reg[1]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[1]_P_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[1]_C_0\
    );
\r_reg_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(1),
      PRE => \data_out_reg[1]\,
      Q => \r_reg_reg[1]_P_n_0\
    );
\r_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[2]_0\,
      D => r_reg(2),
      Q => \r_reg_reg[2]_C_n_0\
    );
\r_reg_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[2]_0\,
      D => '1',
      G => \data_out_reg[2]\,
      GE => '1',
      Q => \r_reg_reg[2]_LDC_n_0\
    );
\r_reg_reg[2]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[2]_C_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[2]_P_0\
    );
\r_reg_reg[2]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[2]_P_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[2]_C_0\
    );
\r_reg_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(2),
      PRE => \data_out_reg[2]\,
      Q => \r_reg_reg[2]_P_n_0\
    );
\r_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[3]_0\,
      D => r_reg(3),
      Q => \r_reg_reg[3]_C_n_0\
    );
\r_reg_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[3]_0\,
      D => '1',
      G => \data_out_reg[3]\,
      GE => '1',
      Q => \r_reg_reg[3]_LDC_n_0\
    );
\r_reg_reg[3]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[3]_C_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[3]_P_0\
    );
\r_reg_reg[3]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[3]_C_0\
    );
\r_reg_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(3),
      PRE => \data_out_reg[3]\,
      Q => \r_reg_reg[3]_P_n_0\
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[4]_0\,
      D => r_reg(4),
      Q => \r_reg_reg[4]_C_n_0\
    );
\r_reg_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[4]_0\,
      D => '1',
      G => \data_out_reg[4]\,
      GE => '1',
      Q => \r_reg_reg[4]_LDC_n_0\
    );
\r_reg_reg[4]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[4]_C_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[4]_P_0\
    );
\r_reg_reg[4]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[4]_C_0\
    );
\r_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(4),
      PRE => \data_out_reg[4]\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[5]_0\,
      D => r_reg(5),
      Q => \r_reg_reg[5]_C_n_0\
    );
\r_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[5]_0\,
      D => '1',
      G => \data_out_reg[5]\,
      GE => '1',
      Q => \r_reg_reg[5]_LDC_n_0\
    );
\r_reg_reg[5]_LDC_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[5]_C_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[5]_P_0\
    );
\r_reg_reg[5]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[5]_C_0\
    );
\r_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(5),
      PRE => \data_out_reg[5]\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[6]_0\,
      D => r_reg(6),
      Q => \r_reg_reg[6]_C_n_0\
    );
\r_reg_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[6]_0\,
      D => '1',
      G => \data_out_reg[6]\,
      GE => '1',
      Q => \r_reg_reg[6]_LDC_n_0\
    );
\r_reg_reg[6]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[6]_C_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[6]_P_0\
    );
\r_reg_reg[6]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[6]_P_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[6]_C_0\
    );
\r_reg_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(6),
      PRE => \data_out_reg[6]\,
      Q => \r_reg_reg[6]_P_n_0\
    );
\r_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[7]_0\,
      D => r_reg(7),
      Q => \r_reg_reg[7]_C_n_0\
    );
\r_reg_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[7]_0\,
      D => '1',
      G => \data_out_reg[7]\,
      GE => '1',
      Q => \r_reg_reg[7]_LDC_n_0\
    );
\r_reg_reg[7]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[7]_C_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[7]_P_0\
    );
\r_reg_reg[7]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[7]_P_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[7]_C_0\
    );
\r_reg_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(7),
      PRE => \data_out_reg[7]\,
      Q => \r_reg_reg[7]_P_n_0\
    );
\r_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[8]_0\,
      D => r_reg(8),
      Q => \r_reg_reg[8]_C_n_0\
    );
\r_reg_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[8]_0\,
      D => '1',
      G => \data_out_reg[8]\,
      GE => '1',
      Q => \r_reg_reg[8]_LDC_n_0\
    );
\r_reg_reg[8]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[8]_C_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[8]_P_0\
    );
\r_reg_reg[8]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[8]_P_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[8]_C_0\
    );
\r_reg_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(8),
      PRE => \data_out_reg[8]\,
      Q => \r_reg_reg[8]_P_n_0\
    );
\r_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      CLR => \data_out_reg[9]_0\,
      D => r_reg(9),
      Q => \r_reg_reg[9]_C_n_0\
    );
\r_reg_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \data_out_reg[9]_0\,
      D => '1',
      G => \data_out_reg[9]\,
      GE => '1',
      Q => \r_reg_reg[9]_LDC_n_0\
    );
\r_reg_reg[9]_LDC_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E200E2000000"
    )
        port map (
      I0 => \r_reg_reg[9]_C_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_P_n_0\,
      I3 => s00_axi_aresetn,
      I4 => \out\(1),
      I5 => \out\(0),
      O => \r_reg_reg[9]_P_0\
    );
\r_reg_reg[9]_LDC_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474700FFFFFFFF"
    )
        port map (
      I0 => \r_reg_reg[9]_P_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_C_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => s00_axi_aresetn,
      O => \r_reg_reg[9]_C_0\
    );
\r_reg_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \out\(1),
      D => r_reg(9),
      PRE => \data_out_reg[9]\,
      Q => \r_reg_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_downCounter8Bits is
  port (
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    en_cntr_data : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_downCounter8Bits : entity is "downCounter8Bits";
end design_1_axi_gyro_hsi_0_0_downCounter8Bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_downCounter8Bits is
  signal \FSM_onehot_state[8]_i_2_n_0\ : STD_LOGIC;
  signal r_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg[4]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[4]_C_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[5]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal r_reg_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_P_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_reg[4]_C_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_reg[5]_P_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[7]_i_6\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[5]_LDC\ : label is "LDC";
begin
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFEF00000000"
    )
        port map (
      I0 => \FSM_onehot_state[8]_i_2_n_0\,
      I1 => r_reg(2),
      I2 => \r_reg_reg[4]_C_n_0\,
      I3 => \r_reg_reg[5]_LDC_n_0\,
      I4 => \r_reg_reg[4]_P_n_0\,
      I5 => \out\(0),
      O => \FSM_onehot_state_reg[4]\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8EAA8A"
    )
        port map (
      I0 => \out\(1),
      I1 => r_reg(4),
      I2 => r_reg(2),
      I3 => \FSM_onehot_state[8]_i_2_n_0\,
      I4 => \out\(0),
      O => D(0)
    );
\FSM_onehot_state[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => r_reg(4)
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => \out\(1),
      I1 => \FSM_onehot_state[8]_i_2_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      I3 => \r_reg_reg[5]_LDC_n_0\,
      I4 => \r_reg_reg[4]_P_n_0\,
      I5 => r_reg(2),
      O => D(1)
    );
\FSM_onehot_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => r_reg(0),
      I1 => r_reg(1),
      I2 => r_reg(3),
      I3 => r_reg(6),
      I4 => r_reg(5),
      I5 => r_reg(7),
      O => \FSM_onehot_state[8]_i_2_n_0\
    );
\r_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[7]_i_5_n_0\,
      I1 => r_reg(0),
      O => r_reg_0(0)
    );
\r_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => r_reg(0),
      I1 => r_reg(1),
      I2 => \r_reg[7]_i_5_n_0\,
      O => r_reg_0(1)
    );
\r_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => r_reg(1),
      I1 => r_reg(0),
      I2 => r_reg(2),
      I3 => \r_reg[7]_i_5_n_0\,
      O => r_reg_0(2)
    );
\r_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE010000"
    )
        port map (
      I0 => r_reg(2),
      I1 => r_reg(0),
      I2 => r_reg(1),
      I3 => r_reg(3),
      I4 => \r_reg[7]_i_5_n_0\,
      O => r_reg_0(3)
    );
\r_reg[4]_C_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600FFFF95000000"
    )
        port map (
      I0 => \r_reg[4]_C_i_2_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[4]_P_n_0\,
      I3 => \r_reg[7]_i_5_n_0\,
      I4 => en_cntr_data,
      I5 => \r_reg_reg[4]_C_n_0\,
      O => \r_reg[4]_C_i_1__0_n_0\
    );
\r_reg[4]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_reg(2),
      I1 => r_reg(0),
      I2 => r_reg(1),
      I3 => r_reg(3),
      O => \r_reg[4]_C_i_2_n_0\
    );
\r_reg[4]_P_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000100000000"
    )
        port map (
      I0 => r_reg(3),
      I1 => r_reg(1),
      I2 => r_reg(0),
      I3 => r_reg(2),
      I4 => r_reg(4),
      I5 => \r_reg[7]_i_5_n_0\,
      O => r_reg_0(4)
    );
\r_reg[5]_C_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600FFFF95000000"
    )
        port map (
      I0 => \r_reg[7]_i_4_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_P_n_0\,
      I3 => \r_reg[7]_i_5_n_0\,
      I4 => en_cntr_data,
      I5 => \r_reg_reg[5]_C_n_0\,
      O => \r_reg[5]_C_i_1__0_n_0\
    );
\r_reg[5]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9590000"
    )
        port map (
      I0 => \r_reg[7]_i_4_n_0\,
      I1 => \r_reg_reg[5]_C_n_0\,
      I2 => \r_reg_reg[5]_LDC_n_0\,
      I3 => \r_reg_reg[5]_P_n_0\,
      I4 => \r_reg[7]_i_5_n_0\,
      O => r_reg_0(5)
    );
\r_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA9A9500000000"
    )
        port map (
      I0 => r_reg(6),
      I1 => \r_reg_reg[5]_P_n_0\,
      I2 => \r_reg_reg[5]_LDC_n_0\,
      I3 => \r_reg_reg[5]_C_n_0\,
      I4 => \r_reg[7]_i_4_n_0\,
      I5 => \r_reg[7]_i_5_n_0\,
      O => r_reg_0(6)
    );
\r_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0C084"
    )
        port map (
      I0 => \r_reg[7]_i_4_n_0\,
      I1 => \r_reg[7]_i_5_n_0\,
      I2 => r_reg(7),
      I3 => r_reg(5),
      I4 => r_reg(6),
      O => r_reg_0(7)
    );
\r_reg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_reg(3),
      I1 => r_reg(1),
      I2 => r_reg(0),
      I3 => r_reg(2),
      I4 => r_reg(4),
      O => \r_reg[7]_i_4_n_0\
    );
\r_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_reg(4),
      I1 => r_reg(1),
      I2 => r_reg(0),
      I3 => r_reg(2),
      I4 => \r_reg[7]_i_7_n_0\,
      O => \r_reg[7]_i_5_n_0\
    );
\r_reg[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      O => r_reg(5)
    );
\r_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAE"
    )
        port map (
      I0 => r_reg(7),
      I1 => \r_reg_reg[5]_C_n_0\,
      I2 => \r_reg_reg[5]_LDC_n_0\,
      I3 => \r_reg_reg[5]_P_n_0\,
      I4 => r_reg(6),
      I5 => r_reg(3),
      O => \r_reg[7]_i_7_n_0\
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(0),
      Q => r_reg(0)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(1),
      Q => r_reg(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(2),
      Q => r_reg(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(3),
      Q => r_reg(3)
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \r_reg[4]_C_i_1__0_n_0\,
      Q => \r_reg_reg[4]_C_n_0\
    );
\r_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      D => r_reg_0(4),
      PRE => \FSM_onehot_state_reg[3]\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \r_reg[5]_C_i_1__0_n_0\,
      Q => \r_reg_reg[5]_C_n_0\
    );
\r_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => SR(0),
      D => '1',
      G => \FSM_onehot_state_reg[3]\,
      GE => '1',
      Q => \r_reg_reg[5]_LDC_n_0\
    );
\r_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      D => r_reg_0(5),
      PRE => \FSM_onehot_state_reg[3]\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(6),
      Q => r_reg(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(7),
      Q => r_reg(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_register_16bits is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_register_16bits : entity is "register_16bits";
end design_1_axi_gyro_hsi_0_0_register_16bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_register_16bits is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(0),
      Q => Q(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(10),
      Q => Q(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(11),
      Q => Q(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(12),
      Q => Q(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(13),
      Q => Q(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(14),
      Q => Q(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(15),
      Q => Q(15)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(1),
      Q => Q(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(2),
      Q => Q(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(3),
      Q => Q(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(4),
      Q => Q(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(5),
      Q => Q(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(6),
      Q => Q(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(7),
      Q => Q(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(8),
      Q => Q(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^sr\(0),
      D => \slv_reg3_reg[15]\(9),
      Q => Q(9)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_register_2bits is
  port (
    \FSM_onehot_state_reg[12]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC;
    stop_int : in STD_LOGIC;
    \r_reg_reg[6]_P\ : in STD_LOGIC;
    \FSM_onehot_state_reg[10]\ : in STD_LOGIC;
    Q_reg : in STD_LOGIC;
    \slv_reg3_reg[30]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_register_2bits : entity is "register_2bits";
end design_1_axi_gyro_hsi_0_0_register_2bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_register_2bits is
  signal mode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\FSM_onehot_state[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEA0000"
    )
        port map (
      I0 => stop_int,
      I1 => \r_reg_reg[6]_P\,
      I2 => mode_int(0),
      I3 => mode_int(1),
      I4 => \FSM_onehot_state_reg[10]\,
      I5 => Q_reg,
      O => \FSM_onehot_state_reg[12]\(0)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mode_int(0),
      I1 => mode_int(1),
      O => \FSM_onehot_state_reg[4]\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SR(0),
      D => \slv_reg3_reg[30]\(0),
      Q => mode_int(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => SR(0),
      D => \slv_reg3_reg[30]\(1),
      Q => mode_int(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_serializer17bits is
  port (
    DBG1 : out STD_LOGIC;
    \r_reg_reg[15]_C_0\ : in STD_LOGIC;
    \r_reg_reg[15]_P_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_reg_reg[14]_C_0\ : in STD_LOGIC;
    \r_reg_reg[14]_P_0\ : in STD_LOGIC;
    \r_reg_reg[13]_C_0\ : in STD_LOGIC;
    \r_reg_reg[13]_P_0\ : in STD_LOGIC;
    \r_reg_reg[12]_C_0\ : in STD_LOGIC;
    \r_reg_reg[12]_P_0\ : in STD_LOGIC;
    \r_reg_reg[11]_C_0\ : in STD_LOGIC;
    \r_reg_reg[11]_P_0\ : in STD_LOGIC;
    \r_reg_reg[10]_C_0\ : in STD_LOGIC;
    \r_reg_reg[10]_P_0\ : in STD_LOGIC;
    \r_reg_reg[9]_C_0\ : in STD_LOGIC;
    \r_reg_reg[9]_P_0\ : in STD_LOGIC;
    \r_reg_reg[8]_C_0\ : in STD_LOGIC;
    \r_reg_reg[8]_P_0\ : in STD_LOGIC;
    \r_reg_reg[7]_C_0\ : in STD_LOGIC;
    \r_reg_reg[7]_P_0\ : in STD_LOGIC;
    \r_reg_reg[6]_C_0\ : in STD_LOGIC;
    \r_reg_reg[6]_P_0\ : in STD_LOGIC;
    \r_reg_reg[5]_C_0\ : in STD_LOGIC;
    \r_reg_reg[5]_P_0\ : in STD_LOGIC;
    \r_reg_reg[4]_C_0\ : in STD_LOGIC;
    \r_reg_reg[4]_P_0\ : in STD_LOGIC;
    \r_reg_reg[3]_C_0\ : in STD_LOGIC;
    \r_reg_reg[3]_P_0\ : in STD_LOGIC;
    \r_reg_reg[2]_C_0\ : in STD_LOGIC;
    \r_reg_reg[2]_P_0\ : in STD_LOGIC;
    \r_reg_reg[1]_C_0\ : in STD_LOGIC;
    \r_reg_reg[1]_P_0\ : in STD_LOGIC;
    \r_reg_reg[0]_C\ : in STD_LOGIC;
    \r_reg_reg[0]_P_0\ : in STD_LOGIC;
    \slv_reg3_reg[25]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_serializer17bits : entity is "serializer17bits";
end design_1_axi_gyro_hsi_0_0_serializer17bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_serializer17bits is
  signal HSDATA_int : STD_LOGIC;
  signal r_next : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \r_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[10]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[10]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[11]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[11]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[12]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[12]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[13]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[13]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[13]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[14]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[14]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[14]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[15]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[15]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[2]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[2]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[6]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[6]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[7]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[7]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[9]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[9]_P_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[9]_LDC\ : label is "LDC";
begin
DBG1_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \slv_reg3_reg[25]\(1),
      I1 => \slv_reg3_reg[25]\(0),
      I2 => HSDATA_int,
      O => DBG1
    );
\r_reg[10]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[9]_P_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_C_n_0\,
      O => r_next(10)
    );
\r_reg[11]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[10]_P_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_C_n_0\,
      O => r_next(11)
    );
\r_reg[12]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[11]_P_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_C_n_0\,
      O => r_next(12)
    );
\r_reg[13]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[12]_P_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_C_n_0\,
      O => r_next(13)
    );
\r_reg[14]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[13]_P_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_C_n_0\,
      O => r_next(14)
    );
\r_reg[15]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[14]_P_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_C_n_0\,
      O => r_next(15)
    );
\r_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[15]_P_n_0\,
      I1 => \r_reg_reg[15]_LDC_n_0\,
      I2 => \r_reg_reg[15]_C_n_0\,
      O => r_next(16)
    );
\r_reg[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => s00_axi_aresetn,
      O => \r_reg[16]_i_2_n_0\
    );
\r_reg[1]_C_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_reg_reg[0]_LDC_n_0\,
      I1 => \r_reg_reg[0]_P_n_0\,
      O => r_next(1)
    );
\r_reg[2]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[1]_P_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_C_n_0\,
      O => r_next(2)
    );
\r_reg[3]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[2]_P_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_C_n_0\,
      O => r_next(3)
    );
\r_reg[4]_C_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      O => r_next(4)
    );
\r_reg[5]_C_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => r_next(5)
    );
\r_reg[6]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      O => r_next(6)
    );
\r_reg[7]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[6]_P_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_C_n_0\,
      O => r_next(7)
    );
\r_reg[8]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[7]_P_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_C_n_0\,
      O => r_next(8)
    );
\r_reg[9]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[8]_P_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_C_n_0\,
      O => r_next(9)
    );
\r_reg_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[0]_P_0\,
      D => '1',
      G => \r_reg_reg[0]_C\,
      GE => '1',
      Q => \r_reg_reg[0]_LDC_n_0\
    );
\r_reg_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => '0',
      PRE => \r_reg_reg[0]_C\,
      Q => \r_reg_reg[0]_P_n_0\
    );
\r_reg_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[10]_P_0\,
      D => r_next(10),
      Q => \r_reg_reg[10]_C_n_0\
    );
\r_reg_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[10]_P_0\,
      D => '1',
      G => \r_reg_reg[10]_C_0\,
      GE => '1',
      Q => \r_reg_reg[10]_LDC_n_0\
    );
\r_reg_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(10),
      PRE => \r_reg_reg[10]_C_0\,
      Q => \r_reg_reg[10]_P_n_0\
    );
\r_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[11]_P_0\,
      D => r_next(11),
      Q => \r_reg_reg[11]_C_n_0\
    );
\r_reg_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[11]_P_0\,
      D => '1',
      G => \r_reg_reg[11]_C_0\,
      GE => '1',
      Q => \r_reg_reg[11]_LDC_n_0\
    );
\r_reg_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(11),
      PRE => \r_reg_reg[11]_C_0\,
      Q => \r_reg_reg[11]_P_n_0\
    );
\r_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[12]_P_0\,
      D => r_next(12),
      Q => \r_reg_reg[12]_C_n_0\
    );
\r_reg_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[12]_P_0\,
      D => '1',
      G => \r_reg_reg[12]_C_0\,
      GE => '1',
      Q => \r_reg_reg[12]_LDC_n_0\
    );
\r_reg_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(12),
      PRE => \r_reg_reg[12]_C_0\,
      Q => \r_reg_reg[12]_P_n_0\
    );
\r_reg_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[13]_P_0\,
      D => r_next(13),
      Q => \r_reg_reg[13]_C_n_0\
    );
\r_reg_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[13]_P_0\,
      D => '1',
      G => \r_reg_reg[13]_C_0\,
      GE => '1',
      Q => \r_reg_reg[13]_LDC_n_0\
    );
\r_reg_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(13),
      PRE => \r_reg_reg[13]_C_0\,
      Q => \r_reg_reg[13]_P_n_0\
    );
\r_reg_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[14]_P_0\,
      D => r_next(14),
      Q => \r_reg_reg[14]_C_n_0\
    );
\r_reg_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[14]_P_0\,
      D => '1',
      G => \r_reg_reg[14]_C_0\,
      GE => '1',
      Q => \r_reg_reg[14]_LDC_n_0\
    );
\r_reg_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(14),
      PRE => \r_reg_reg[14]_C_0\,
      Q => \r_reg_reg[14]_P_n_0\
    );
\r_reg_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[15]_P_0\,
      D => r_next(15),
      Q => \r_reg_reg[15]_C_n_0\
    );
\r_reg_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[15]_P_0\,
      D => '1',
      G => \r_reg_reg[15]_C_0\,
      GE => '1',
      Q => \r_reg_reg[15]_LDC_n_0\
    );
\r_reg_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(15),
      PRE => \r_reg_reg[15]_C_0\,
      Q => \r_reg_reg[15]_P_n_0\
    );
\r_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg[16]_i_2_n_0\,
      D => r_next(16),
      Q => HSDATA_int
    );
\r_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[1]_P_0\,
      D => r_next(1),
      Q => \r_reg_reg[1]_C_n_0\
    );
\r_reg_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[1]_P_0\,
      D => '1',
      G => \r_reg_reg[1]_C_0\,
      GE => '1',
      Q => \r_reg_reg[1]_LDC_n_0\
    );
\r_reg_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(1),
      PRE => \r_reg_reg[1]_C_0\,
      Q => \r_reg_reg[1]_P_n_0\
    );
\r_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[2]_P_0\,
      D => r_next(2),
      Q => \r_reg_reg[2]_C_n_0\
    );
\r_reg_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[2]_P_0\,
      D => '1',
      G => \r_reg_reg[2]_C_0\,
      GE => '1',
      Q => \r_reg_reg[2]_LDC_n_0\
    );
\r_reg_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(2),
      PRE => \r_reg_reg[2]_C_0\,
      Q => \r_reg_reg[2]_P_n_0\
    );
\r_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[3]_P_0\,
      D => r_next(3),
      Q => \r_reg_reg[3]_C_n_0\
    );
\r_reg_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[3]_P_0\,
      D => '1',
      G => \r_reg_reg[3]_C_0\,
      GE => '1',
      Q => \r_reg_reg[3]_LDC_n_0\
    );
\r_reg_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(3),
      PRE => \r_reg_reg[3]_C_0\,
      Q => \r_reg_reg[3]_P_n_0\
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[4]_P_0\,
      D => r_next(4),
      Q => \r_reg_reg[4]_C_n_0\
    );
\r_reg_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[4]_P_0\,
      D => '1',
      G => \r_reg_reg[4]_C_0\,
      GE => '1',
      Q => \r_reg_reg[4]_LDC_n_0\
    );
\r_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(4),
      PRE => \r_reg_reg[4]_C_0\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[5]_P_0\,
      D => r_next(5),
      Q => \r_reg_reg[5]_C_n_0\
    );
\r_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[5]_P_0\,
      D => '1',
      G => \r_reg_reg[5]_C_0\,
      GE => '1',
      Q => \r_reg_reg[5]_LDC_n_0\
    );
\r_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(5),
      PRE => \r_reg_reg[5]_C_0\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[6]_P_0\,
      D => r_next(6),
      Q => \r_reg_reg[6]_C_n_0\
    );
\r_reg_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[6]_P_0\,
      D => '1',
      G => \r_reg_reg[6]_C_0\,
      GE => '1',
      Q => \r_reg_reg[6]_LDC_n_0\
    );
\r_reg_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(6),
      PRE => \r_reg_reg[6]_C_0\,
      Q => \r_reg_reg[6]_P_n_0\
    );
\r_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[7]_P_0\,
      D => r_next(7),
      Q => \r_reg_reg[7]_C_n_0\
    );
\r_reg_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[7]_P_0\,
      D => '1',
      G => \r_reg_reg[7]_C_0\,
      GE => '1',
      Q => \r_reg_reg[7]_LDC_n_0\
    );
\r_reg_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(7),
      PRE => \r_reg_reg[7]_C_0\,
      Q => \r_reg_reg[7]_P_n_0\
    );
\r_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[8]_P_0\,
      D => r_next(8),
      Q => \r_reg_reg[8]_C_n_0\
    );
\r_reg_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[8]_P_0\,
      D => '1',
      G => \r_reg_reg[8]_C_0\,
      GE => '1',
      Q => \r_reg_reg[8]_LDC_n_0\
    );
\r_reg_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(8),
      PRE => \r_reg_reg[8]_C_0\,
      Q => \r_reg_reg[8]_P_n_0\
    );
\r_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[9]_P_0\,
      D => r_next(9),
      Q => \r_reg_reg[9]_C_n_0\
    );
\r_reg_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \r_reg_reg[9]_P_0\,
      D => '1',
      G => \r_reg_reg[9]_C_0\,
      GE => '1',
      Q => \r_reg_reg[9]_LDC_n_0\
    );
\r_reg_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(1),
      CE => '1',
      D => r_next(9),
      PRE => \r_reg_reg[9]_C_0\,
      Q => \r_reg_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_shift_reg_9bits is
  port (
    ctl_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DBG4 : out STD_LOGIC;
    shift : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    inj_bit : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_shift_reg_9bits : entity is "shift_reg_9bits";
end design_1_axi_gyro_hsi_0_0_shift_reg_9bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_shift_reg_9bits is
  signal \^ctl_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_n_0\ : STD_LOGIC;
  signal \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5_n_0\ : STD_LOGIC;
  signal out_reg_c_0_n_0 : STD_LOGIC;
  signal out_reg_c_1_n_0 : STD_LOGIC;
  signal out_reg_c_2_n_0 : STD_LOGIC;
  signal out_reg_c_3_n_0 : STD_LOGIC;
  signal out_reg_c_4_n_0 : STD_LOGIC;
  signal out_reg_c_5_n_0 : STD_LOGIC;
  signal out_reg_c_n_0 : STD_LOGIC;
  signal out_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/SR9/out_reg ";
  attribute srl_name : string;
  attribute srl_name of \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/SR9/out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4 ";
begin
  ctl_out(1 downto 0) <= \^ctl_out\(1 downto 0);
DBG4_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ctl_out\(1),
      I1 => \^ctl_out\(0),
      O => DBG4
    );
\out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => inj_bit,
      Q => \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_n_0\
    );
\out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4_n_0\,
      Q => \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5_n_0\,
      R => '0'
    );
\out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_gate_n_0,
      Q => \^ctl_out\(0)
    );
\out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \^ctl_out\(0),
      Q => \^ctl_out\(1)
    );
out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => '1',
      Q => out_reg_c_n_0
    );
out_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_c_n_0,
      Q => out_reg_c_0_n_0
    );
out_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_c_0_n_0,
      Q => out_reg_c_1_n_0
    );
out_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_c_1_n_0,
      Q => out_reg_c_2_n_0
    );
out_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_c_2_n_0,
      Q => out_reg_c_3_n_0
    );
out_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_c_3_n_0,
      Q => out_reg_c_4_n_0
    );
out_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => out_reg_c_4_n_0,
      Q => out_reg_c_5_n_0
    );
out_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5_n_0\,
      I1 => out_reg_c_5_n_0,
      O => out_reg_gate_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_tokenizerShiftRegister32bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    DBG1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_tokenizerShiftRegister32bits : entity is "tokenizerShiftRegister32bits";
end design_1_axi_gyro_hsi_0_0_tokenizerShiftRegister32bits;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_tokenizerShiftRegister32bits is
  signal \r_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_reg_reg_n_0_[9]\ : STD_LOGIC;
begin
\r_reg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => '1',
      D => DBG1,
      PRE => \FSM_sequential_state_reg[0]\,
      Q => \r_reg_reg_n_0_[0]\
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[9]\,
      Q => \r_reg_reg_n_0_[10]\
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[10]\,
      Q => \r_reg_reg_n_0_[11]\
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[11]\,
      Q => \r_reg_reg_n_0_[12]\
    );
\r_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[12]\,
      Q => \r_reg_reg_n_0_[13]\
    );
\r_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[13]\,
      Q => \r_reg_reg_n_0_[14]\
    );
\r_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[14]\,
      Q => \r_reg_reg_n_0_[15]\
    );
\r_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[15]\,
      Q => \r_reg_reg_n_0_[16]\
    );
\r_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[16]\,
      Q => \r_reg_reg_n_0_[17]\
    );
\r_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[17]\,
      Q => \r_reg_reg_n_0_[18]\
    );
\r_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[18]\,
      Q => \r_reg_reg_n_0_[19]\
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[0]\,
      Q => \r_reg_reg_n_0_[1]\
    );
\r_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[19]\,
      Q => \r_reg_reg_n_0_[20]\
    );
\r_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[20]\,
      Q => \r_reg_reg_n_0_[21]\
    );
\r_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[21]\,
      Q => \r_reg_reg_n_0_[22]\
    );
\r_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[22]\,
      Q => \r_reg_reg_n_0_[23]\
    );
\r_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[23]\,
      Q => \r_reg_reg_n_0_[24]\
    );
\r_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[24]\,
      Q => \r_reg_reg_n_0_[25]\
    );
\r_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[25]\,
      Q => \r_reg_reg_n_0_[26]\
    );
\r_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[26]\,
      Q => \r_reg_reg_n_0_[27]\
    );
\r_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[27]\,
      Q => \r_reg_reg_n_0_[28]\
    );
\r_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[28]\,
      Q => \r_reg_reg_n_0_[29]\
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[1]\,
      Q => \r_reg_reg_n_0_[2]\
    );
\r_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[29]\,
      Q => \r_reg_reg_n_0_[30]\
    );
\r_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[30]\,
      Q => \r_reg_reg_n_0_[31]\
    );
\r_reg_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[31]\,
      Q => Q(0)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[2]\,
      Q => \r_reg_reg_n_0_[3]\
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[3]\,
      Q => \r_reg_reg_n_0_[4]\
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[4]\,
      Q => \r_reg_reg_n_0_[5]\
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[5]\,
      Q => \r_reg_reg_n_0_[6]\
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[6]\,
      Q => \r_reg_reg_n_0_[7]\
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[7]\,
      Q => \r_reg_reg_n_0_[8]\
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => \r_reg_reg_n_0_[8]\,
      Q => \r_reg_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_StreamGenerator is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_out_reg[14]\ : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    DBG1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg0_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_StreamGenerator : entity is "StreamGenerator";
end design_1_axi_gyro_hsi_0_0_StreamGenerator;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_StreamGenerator is
  signal CNTR_DATA_n_0 : STD_LOGIC;
  signal CNTR_DATA_n_1 : STD_LOGIC;
  signal CNTR_DATA_n_2 : STD_LOGIC;
  signal CNTR_SAMPLES_n_0 : STD_LOGIC;
  signal CNTR_SAMPLES_n_1 : STD_LOGIC;
  signal CNTR_SAMPLES_n_10 : STD_LOGIC;
  signal CNTR_SAMPLES_n_11 : STD_LOGIC;
  signal CNTR_SAMPLES_n_12 : STD_LOGIC;
  signal CNTR_SAMPLES_n_13 : STD_LOGIC;
  signal CNTR_SAMPLES_n_14 : STD_LOGIC;
  signal CNTR_SAMPLES_n_15 : STD_LOGIC;
  signal CNTR_SAMPLES_n_16 : STD_LOGIC;
  signal CNTR_SAMPLES_n_17 : STD_LOGIC;
  signal CNTR_SAMPLES_n_18 : STD_LOGIC;
  signal CNTR_SAMPLES_n_19 : STD_LOGIC;
  signal CNTR_SAMPLES_n_2 : STD_LOGIC;
  signal CNTR_SAMPLES_n_20 : STD_LOGIC;
  signal CNTR_SAMPLES_n_21 : STD_LOGIC;
  signal CNTR_SAMPLES_n_22 : STD_LOGIC;
  signal CNTR_SAMPLES_n_23 : STD_LOGIC;
  signal CNTR_SAMPLES_n_24 : STD_LOGIC;
  signal CNTR_SAMPLES_n_25 : STD_LOGIC;
  signal CNTR_SAMPLES_n_26 : STD_LOGIC;
  signal CNTR_SAMPLES_n_27 : STD_LOGIC;
  signal CNTR_SAMPLES_n_28 : STD_LOGIC;
  signal CNTR_SAMPLES_n_29 : STD_LOGIC;
  signal CNTR_SAMPLES_n_3 : STD_LOGIC;
  signal CNTR_SAMPLES_n_30 : STD_LOGIC;
  signal CNTR_SAMPLES_n_31 : STD_LOGIC;
  signal CNTR_SAMPLES_n_32 : STD_LOGIC;
  signal CNTR_SAMPLES_n_4 : STD_LOGIC;
  signal CNTR_SAMPLES_n_5 : STD_LOGIC;
  signal CNTR_SAMPLES_n_6 : STD_LOGIC;
  signal CNTR_SAMPLES_n_7 : STD_LOGIC;
  signal CNTR_SAMPLES_n_8 : STD_LOGIC;
  signal CNTR_SAMPLES_n_9 : STD_LOGIC;
  signal FSM_n_11 : STD_LOGIC;
  signal FSM_n_13 : STD_LOGIC;
  signal FSM_n_14 : STD_LOGIC;
  signal FSM_n_15 : STD_LOGIC;
  signal FSM_n_16 : STD_LOGIC;
  signal FSM_n_17 : STD_LOGIC;
  signal FSM_n_18 : STD_LOGIC;
  signal FSM_n_19 : STD_LOGIC;
  signal FSM_n_2 : STD_LOGIC;
  signal FSM_n_20 : STD_LOGIC;
  signal FSM_n_21 : STD_LOGIC;
  signal FSM_n_22 : STD_LOGIC;
  signal FSM_n_23 : STD_LOGIC;
  signal FSM_n_24 : STD_LOGIC;
  signal FSM_n_25 : STD_LOGIC;
  signal FSM_n_26 : STD_LOGIC;
  signal FSM_n_27 : STD_LOGIC;
  signal FSM_n_28 : STD_LOGIC;
  signal FSM_n_29 : STD_LOGIC;
  signal FSM_n_3 : STD_LOGIC;
  signal FSM_n_30 : STD_LOGIC;
  signal FSM_n_31 : STD_LOGIC;
  signal FSM_n_32 : STD_LOGIC;
  signal FSM_n_33 : STD_LOGIC;
  signal FSM_n_34 : STD_LOGIC;
  signal FSM_n_35 : STD_LOGIC;
  signal FSM_n_36 : STD_LOGIC;
  signal FSM_n_37 : STD_LOGIC;
  signal FSM_n_38 : STD_LOGIC;
  signal FSM_n_39 : STD_LOGIC;
  signal FSM_n_40 : STD_LOGIC;
  signal FSM_n_41 : STD_LOGIC;
  signal FSM_n_42 : STD_LOGIC;
  signal FSM_n_43 : STD_LOGIC;
  signal FSM_n_44 : STD_LOGIC;
  signal FSM_n_45 : STD_LOGIC;
  signal FSM_n_46 : STD_LOGIC;
  signal FSM_n_5 : STD_LOGIC;
  signal FSM_n_6 : STD_LOGIC;
  signal NSAMPLES_REG_n_1 : STD_LOGIC;
  signal NSAMPLES_REG_n_10 : STD_LOGIC;
  signal NSAMPLES_REG_n_11 : STD_LOGIC;
  signal NSAMPLES_REG_n_12 : STD_LOGIC;
  signal NSAMPLES_REG_n_13 : STD_LOGIC;
  signal NSAMPLES_REG_n_14 : STD_LOGIC;
  signal NSAMPLES_REG_n_15 : STD_LOGIC;
  signal NSAMPLES_REG_n_16 : STD_LOGIC;
  signal NSAMPLES_REG_n_2 : STD_LOGIC;
  signal NSAMPLES_REG_n_3 : STD_LOGIC;
  signal NSAMPLES_REG_n_4 : STD_LOGIC;
  signal NSAMPLES_REG_n_5 : STD_LOGIC;
  signal NSAMPLES_REG_n_6 : STD_LOGIC;
  signal NSAMPLES_REG_n_7 : STD_LOGIC;
  signal NSAMPLES_REG_n_8 : STD_LOGIC;
  signal NSAMPLES_REG_n_9 : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal STATE_REG_n_0 : STD_LOGIC;
  signal STATE_REG_n_1 : STD_LOGIC;
  signal \^data_out_reg[14]\ : STD_LOGIC;
  signal doneSamples : STD_LOGIC;
  signal en_cntr_data : STD_LOGIC;
  signal en_cntr_samples : STD_LOGIC;
  signal ff0_n_1 : STD_LOGIC;
  signal ff1_n_1 : STD_LOGIC;
  signal load_state_data : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal start_int : STD_LOGIC;
  signal stop_int : STD_LOGIC;
begin
  \data_out_reg[14]\ <= \^data_out_reg[14]\;
  \out\(0) <= \^out\(0);
CNTR_DATA: entity work.design_1_axi_gyro_hsi_0_0_downCounter8Bits
     port map (
      D(1) => CNTR_DATA_n_1,
      D(0) => CNTR_DATA_n_2,
      \FSM_onehot_state_reg[2]\ => FSM_n_13,
      \FSM_onehot_state_reg[3]\ => FSM_n_14,
      \FSM_onehot_state_reg[4]\ => CNTR_DATA_n_0,
      SR(0) => \^data_out_reg[14]\,
      en_cntr_data => en_cntr_data,
      \out\(1) => FSM_n_2,
      \out\(0) => FSM_n_3,
      s00_axi_aclk => s00_axi_aclk
    );
CNTR_SAMPLES: entity work.design_1_axi_gyro_hsi_0_0_downCounter16Bits
     port map (
      \data_out_reg[0]\ => FSM_n_31,
      \data_out_reg[0]_0\ => FSM_n_15,
      \data_out_reg[10]\ => FSM_n_41,
      \data_out_reg[10]_0\ => FSM_n_25,
      \data_out_reg[11]\ => FSM_n_42,
      \data_out_reg[11]_0\ => FSM_n_26,
      \data_out_reg[12]\ => FSM_n_43,
      \data_out_reg[12]_0\ => FSM_n_27,
      \data_out_reg[13]\ => FSM_n_44,
      \data_out_reg[13]_0\ => FSM_n_28,
      \data_out_reg[14]\ => FSM_n_45,
      \data_out_reg[14]_0\ => FSM_n_29,
      \data_out_reg[15]\ => FSM_n_46,
      \data_out_reg[15]_0\ => FSM_n_30,
      \data_out_reg[1]\ => FSM_n_32,
      \data_out_reg[1]_0\ => FSM_n_16,
      \data_out_reg[2]\ => FSM_n_33,
      \data_out_reg[2]_0\ => FSM_n_17,
      \data_out_reg[3]\ => FSM_n_34,
      \data_out_reg[3]_0\ => FSM_n_18,
      \data_out_reg[4]\ => FSM_n_35,
      \data_out_reg[4]_0\ => FSM_n_19,
      \data_out_reg[5]\ => FSM_n_36,
      \data_out_reg[5]_0\ => FSM_n_20,
      \data_out_reg[6]\ => FSM_n_37,
      \data_out_reg[6]_0\ => FSM_n_21,
      \data_out_reg[7]\ => FSM_n_38,
      \data_out_reg[7]_0\ => FSM_n_22,
      \data_out_reg[8]\ => FSM_n_39,
      \data_out_reg[8]_0\ => FSM_n_23,
      \data_out_reg[9]\ => FSM_n_40,
      \data_out_reg[9]_0\ => FSM_n_24,
      \out\(1) => en_cntr_samples,
      \out\(0) => FSM_n_5,
      \r_reg_reg[0]_P_0\ => CNTR_SAMPLES_n_0,
      \r_reg_reg[0]_P_1\ => CNTR_SAMPLES_n_17,
      \r_reg_reg[10]_C_0\ => CNTR_SAMPLES_n_11,
      \r_reg_reg[10]_P_0\ => CNTR_SAMPLES_n_27,
      \r_reg_reg[11]_C_0\ => CNTR_SAMPLES_n_12,
      \r_reg_reg[11]_P_0\ => CNTR_SAMPLES_n_28,
      \r_reg_reg[12]_C_0\ => CNTR_SAMPLES_n_13,
      \r_reg_reg[12]_P_0\ => CNTR_SAMPLES_n_29,
      \r_reg_reg[13]_C_0\ => CNTR_SAMPLES_n_14,
      \r_reg_reg[13]_P_0\ => CNTR_SAMPLES_n_30,
      \r_reg_reg[14]_C_0\ => CNTR_SAMPLES_n_15,
      \r_reg_reg[14]_P_0\ => CNTR_SAMPLES_n_31,
      \r_reg_reg[15]_C_0\ => CNTR_SAMPLES_n_16,
      \r_reg_reg[15]_P_0\ => CNTR_SAMPLES_n_32,
      \r_reg_reg[1]_C_0\ => CNTR_SAMPLES_n_2,
      \r_reg_reg[1]_P_0\ => CNTR_SAMPLES_n_1,
      \r_reg_reg[1]_P_1\ => CNTR_SAMPLES_n_18,
      \r_reg_reg[2]_C_0\ => CNTR_SAMPLES_n_3,
      \r_reg_reg[2]_P_0\ => CNTR_SAMPLES_n_19,
      \r_reg_reg[3]_C_0\ => CNTR_SAMPLES_n_4,
      \r_reg_reg[3]_P_0\ => CNTR_SAMPLES_n_20,
      \r_reg_reg[4]_C_0\ => CNTR_SAMPLES_n_5,
      \r_reg_reg[4]_P_0\ => CNTR_SAMPLES_n_21,
      \r_reg_reg[5]_C_0\ => CNTR_SAMPLES_n_6,
      \r_reg_reg[5]_P_0\ => CNTR_SAMPLES_n_22,
      \r_reg_reg[6]_C_0\ => CNTR_SAMPLES_n_7,
      \r_reg_reg[6]_P_0\ => CNTR_SAMPLES_n_23,
      \r_reg_reg[7]_C_0\ => CNTR_SAMPLES_n_8,
      \r_reg_reg[7]_P_0\ => CNTR_SAMPLES_n_24,
      \r_reg_reg[8]_C_0\ => CNTR_SAMPLES_n_9,
      \r_reg_reg[8]_P_0\ => CNTR_SAMPLES_n_25,
      \r_reg_reg[9]_C_0\ => CNTR_SAMPLES_n_10,
      \r_reg_reg[9]_P_0\ => CNTR_SAMPLES_n_26,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
FSM: entity work.design_1_axi_gyro_hsi_0_0_StreamGenerator_fsm
     port map (
      CLK => load_state_data,
      D(0) => D(0),
      \FSM_onehot_state_reg[4]_0\ => FSM_n_11,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      Q => Q,
      Q_reg(3) => STATE_REG_n_0,
      Q_reg(2) => CNTR_DATA_n_1,
      Q_reg(1) => CNTR_DATA_n_2,
      Q_reg(0) => ff1_n_1,
      SR(0) => \^data_out_reg[14]\,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      \data_out_reg[0]\ => STATE_REG_n_1,
      \data_out_reg[15]\(15) => NSAMPLES_REG_n_1,
      \data_out_reg[15]\(14) => NSAMPLES_REG_n_2,
      \data_out_reg[15]\(13) => NSAMPLES_REG_n_3,
      \data_out_reg[15]\(12) => NSAMPLES_REG_n_4,
      \data_out_reg[15]\(11) => NSAMPLES_REG_n_5,
      \data_out_reg[15]\(10) => NSAMPLES_REG_n_6,
      \data_out_reg[15]\(9) => NSAMPLES_REG_n_7,
      \data_out_reg[15]\(8) => NSAMPLES_REG_n_8,
      \data_out_reg[15]\(7) => NSAMPLES_REG_n_9,
      \data_out_reg[15]\(6) => NSAMPLES_REG_n_10,
      \data_out_reg[15]\(5) => NSAMPLES_REG_n_11,
      \data_out_reg[15]\(4) => NSAMPLES_REG_n_12,
      \data_out_reg[15]\(3) => NSAMPLES_REG_n_13,
      \data_out_reg[15]\(2) => NSAMPLES_REG_n_14,
      \data_out_reg[15]\(1) => NSAMPLES_REG_n_15,
      \data_out_reg[15]\(0) => NSAMPLES_REG_n_16,
      en_cntr_data => en_cntr_data,
      \out\(6) => doneSamples,
      \out\(5) => en_cntr_samples,
      \out\(4) => FSM_n_2,
      \out\(3) => FSM_n_3,
      \out\(2) => \^out\(0),
      \out\(1) => FSM_n_5,
      \out\(0) => FSM_n_6,
      \r_reg_reg[0]_C\ => FSM_n_15,
      \r_reg_reg[0]_P\ => FSM_n_31,
      \r_reg_reg[10]_C\ => FSM_n_25,
      \r_reg_reg[10]_P\ => FSM_n_41,
      \r_reg_reg[11]_C\ => FSM_n_26,
      \r_reg_reg[11]_P\ => FSM_n_42,
      \r_reg_reg[12]_C\ => FSM_n_27,
      \r_reg_reg[12]_P\ => FSM_n_43,
      \r_reg_reg[13]_C\ => FSM_n_28,
      \r_reg_reg[13]_P\ => FSM_n_44,
      \r_reg_reg[14]_C\ => FSM_n_29,
      \r_reg_reg[14]_P\ => FSM_n_45,
      \r_reg_reg[15]_C\ => FSM_n_30,
      \r_reg_reg[15]_P\ => FSM_n_46,
      \r_reg_reg[1]_C\ => FSM_n_16,
      \r_reg_reg[1]_P\ => FSM_n_32,
      \r_reg_reg[2]\ => CNTR_DATA_n_0,
      \r_reg_reg[2]_C\ => FSM_n_17,
      \r_reg_reg[2]_P\ => FSM_n_33,
      \r_reg_reg[3]_C\ => FSM_n_18,
      \r_reg_reg[3]_P\ => FSM_n_34,
      \r_reg_reg[4]_C\ => FSM_n_19,
      \r_reg_reg[4]_P\ => FSM_n_14,
      \r_reg_reg[4]_P_0\ => FSM_n_35,
      \r_reg_reg[5]_C\ => FSM_n_20,
      \r_reg_reg[5]_P\ => FSM_n_36,
      \r_reg_reg[6]\ => FSM_n_13,
      \r_reg_reg[6]_C\ => FSM_n_21,
      \r_reg_reg[6]_P\ => FSM_n_37,
      \r_reg_reg[6]_P_0\ => CNTR_SAMPLES_n_0,
      \r_reg_reg[7]_C\ => FSM_n_22,
      \r_reg_reg[7]_P\ => FSM_n_38,
      \r_reg_reg[8]_C\ => FSM_n_23,
      \r_reg_reg[8]_P\ => FSM_n_39,
      \r_reg_reg[9]_C\ => FSM_n_24,
      \r_reg_reg[9]_P\ => FSM_n_40,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg0_reg[31]\(0) => \slv_reg0_reg[31]\(0),
      \slv_reg1_reg[31]\(0) => \slv_reg1_reg[31]\(0),
      \slv_reg3_reg[31]\(2) => \slv_reg3_reg[31]\(20),
      \slv_reg3_reg[31]\(1 downto 0) => \slv_reg3_reg[31]\(17 downto 16),
      start_int => start_int,
      stop_int => stop_int
    );
NSAMPLES_REG: entity work.design_1_axi_gyro_hsi_0_0_register_16bits
     port map (
      CLK => load_state_data,
      Q(15) => NSAMPLES_REG_n_1,
      Q(14) => NSAMPLES_REG_n_2,
      Q(13) => NSAMPLES_REG_n_3,
      Q(12) => NSAMPLES_REG_n_4,
      Q(11) => NSAMPLES_REG_n_5,
      Q(10) => NSAMPLES_REG_n_6,
      Q(9) => NSAMPLES_REG_n_7,
      Q(8) => NSAMPLES_REG_n_8,
      Q(7) => NSAMPLES_REG_n_9,
      Q(6) => NSAMPLES_REG_n_10,
      Q(5) => NSAMPLES_REG_n_11,
      Q(4) => NSAMPLES_REG_n_12,
      Q(3) => NSAMPLES_REG_n_13,
      Q(2) => NSAMPLES_REG_n_14,
      Q(1) => NSAMPLES_REG_n_15,
      Q(0) => NSAMPLES_REG_n_16,
      SR(0) => \^data_out_reg[14]\,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg3_reg[15]\(15 downto 0) => \slv_reg3_reg[31]\(15 downto 0)
    );
SR: entity work.design_1_axi_gyro_hsi_0_0_serializer17bits
     port map (
      DBG1 => DBG1,
      \out\(2) => en_cntr_samples,
      \out\(1) => \^out\(0),
      \out\(0) => FSM_n_5,
      \r_reg_reg[0]_C\ => CNTR_SAMPLES_n_17,
      \r_reg_reg[0]_P_0\ => CNTR_SAMPLES_n_1,
      \r_reg_reg[10]_C_0\ => CNTR_SAMPLES_n_27,
      \r_reg_reg[10]_P_0\ => CNTR_SAMPLES_n_11,
      \r_reg_reg[11]_C_0\ => CNTR_SAMPLES_n_28,
      \r_reg_reg[11]_P_0\ => CNTR_SAMPLES_n_12,
      \r_reg_reg[12]_C_0\ => CNTR_SAMPLES_n_29,
      \r_reg_reg[12]_P_0\ => CNTR_SAMPLES_n_13,
      \r_reg_reg[13]_C_0\ => CNTR_SAMPLES_n_30,
      \r_reg_reg[13]_P_0\ => CNTR_SAMPLES_n_14,
      \r_reg_reg[14]_C_0\ => CNTR_SAMPLES_n_31,
      \r_reg_reg[14]_P_0\ => CNTR_SAMPLES_n_15,
      \r_reg_reg[15]_C_0\ => CNTR_SAMPLES_n_32,
      \r_reg_reg[15]_P_0\ => CNTR_SAMPLES_n_16,
      \r_reg_reg[1]_C_0\ => CNTR_SAMPLES_n_18,
      \r_reg_reg[1]_P_0\ => CNTR_SAMPLES_n_2,
      \r_reg_reg[2]_C_0\ => CNTR_SAMPLES_n_19,
      \r_reg_reg[2]_P_0\ => CNTR_SAMPLES_n_3,
      \r_reg_reg[3]_C_0\ => CNTR_SAMPLES_n_20,
      \r_reg_reg[3]_P_0\ => CNTR_SAMPLES_n_4,
      \r_reg_reg[4]_C_0\ => CNTR_SAMPLES_n_21,
      \r_reg_reg[4]_P_0\ => CNTR_SAMPLES_n_5,
      \r_reg_reg[5]_C_0\ => CNTR_SAMPLES_n_22,
      \r_reg_reg[5]_P_0\ => CNTR_SAMPLES_n_6,
      \r_reg_reg[6]_C_0\ => CNTR_SAMPLES_n_23,
      \r_reg_reg[6]_P_0\ => CNTR_SAMPLES_n_7,
      \r_reg_reg[7]_C_0\ => CNTR_SAMPLES_n_24,
      \r_reg_reg[7]_P_0\ => CNTR_SAMPLES_n_8,
      \r_reg_reg[8]_C_0\ => CNTR_SAMPLES_n_25,
      \r_reg_reg[8]_P_0\ => CNTR_SAMPLES_n_9,
      \r_reg_reg[9]_C_0\ => CNTR_SAMPLES_n_26,
      \r_reg_reg[9]_P_0\ => CNTR_SAMPLES_n_10,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg3_reg[25]\(1 downto 0) => \slv_reg3_reg[31]\(17 downto 16)
    );
STATE_REG: entity work.design_1_axi_gyro_hsi_0_0_register_2bits
     port map (
      CLK => load_state_data,
      \FSM_onehot_state_reg[10]\ => FSM_n_11,
      \FSM_onehot_state_reg[12]\(0) => STATE_REG_n_0,
      \FSM_onehot_state_reg[4]\ => STATE_REG_n_1,
      Q_reg => ff0_n_1,
      SR(0) => \^data_out_reg[14]\,
      \r_reg_reg[6]_P\ => CNTR_SAMPLES_n_0,
      \slv_reg3_reg[30]\(1 downto 0) => \slv_reg3_reg[31]\(19 downto 18),
      stop_int => stop_int
    );
ff0: entity work.design_1_axi_gyro_hsi_0_0_dff
     port map (
      \FSM_onehot_state_reg[12]\ => ff0_n_1,
      SR(0) => \^data_out_reg[14]\,
      clk0 => clk0,
      \out\(0) => doneSamples,
      \slv_reg2_reg[31]\(0) => \slv_reg2_reg[31]\(2),
      start_int => start_int
    );
ff1: entity work.design_1_axi_gyro_hsi_0_0_dff_0
     port map (
      \FSM_onehot_state_reg[1]\(0) => ff1_n_1,
      SR(0) => \^data_out_reg[14]\,
      clk0 => clk0,
      \out\(0) => FSM_n_6,
      \slv_reg2_reg[30]\(0) => \slv_reg2_reg[31]\(1),
      start_int => start_int,
      stop_int => stop_int
    );
ff2: entity work.design_1_axi_gyro_hsi_0_0_dff_1
     port map (
      Q => Q,
      SR(0) => \^data_out_reg[14]\,
      clk0 => clk0,
      \slv_reg2_reg[29]\(0) => \slv_reg2_reg[31]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_Tokenizer is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DBG2 : out STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC;
    DBG1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_Tokenizer : entity is "Tokenizer";
end design_1_axi_gyro_hsi_0_0_Tokenizer;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_Tokenizer is
  signal FSM_n_2 : STD_LOGIC;
  signal FSM_n_4 : STD_LOGIC;
  signal data_out_int : STD_LOGIC_VECTOR ( 32 to 32 );
begin
FSM: entity work.design_1_axi_gyro_hsi_0_0_Tokenizer_fsm
     port map (
      CLK => FSM_n_2,
      DBG2 => DBG2,
      \FSM_onehot_state_reg[4]\(0) => \FSM_onehot_state_reg[4]\(0),
      Q(0) => data_out_int(32),
      \out\(1 downto 0) => \out\(1 downto 0),
      \r_reg_reg[0]\ => FSM_n_4,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => s00_axi_aresetn_0,
      \slv_reg3_reg[31]\(0) => \slv_reg3_reg[31]\(0)
    );
SR: entity work.design_1_axi_gyro_hsi_0_0_tokenizerShiftRegister32bits
     port map (
      CLK => FSM_n_2,
      DBG1 => DBG1,
      \FSM_sequential_state_reg[0]\ => FSM_n_4,
      Q(0) => data_out_int(32)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_select_synchronizer is
  port (
    q : out STD_LOGIC;
    DBG3 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_select_synchronizer : entity is "select_synchronizer";
end design_1_axi_gyro_hsi_0_0_select_synchronizer;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_select_synchronizer is
begin
FF0: entity work.design_1_axi_gyro_hsi_0_0_dff_2
     port map (
      DBG3 => DBG3,
      q => q,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_Packetizer is
  port (
    DBG3 : out STD_LOGIC;
    DBG4 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_Packetizer : entity is "Packetizer";
end design_1_axi_gyro_hsi_0_0_Packetizer;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_Packetizer is
  signal \^dbg3\ : STD_LOGIC;
  signal FSM_n_3 : STD_LOGIC;
  signal ctl_out : STD_LOGIC_VECTOR ( 8 downto 7 );
  signal inj_bit : STD_LOGIC;
  signal q : STD_LOGIC;
  signal shift : STD_LOGIC;
begin
  DBG3 <= \^dbg3\;
FSM: entity work.design_1_axi_gyro_hsi_0_0_Packetizer_fsm
     port map (
      DBG3 => \^dbg3\,
      ctl_out(1 downto 0) => ctl_out(8 downto 7),
      inj_bit => inj_bit,
      \out\(1 downto 0) => \out\(1 downto 0),
      \out_reg[8]\ => FSM_n_3,
      q => q,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => s00_axi_aresetn_0,
      shift => shift
    );
SR9: entity work.design_1_axi_gyro_hsi_0_0_shift_reg_9bits
     port map (
      DBG4 => DBG4,
      \FSM_sequential_state_reg[0]\ => FSM_n_3,
      ctl_out(1 downto 0) => ctl_out(8 downto 7),
      inj_bit => inj_bit,
      shift => shift
    );
syncMuxSel: entity work.design_1_axi_gyro_hsi_0_0_select_synchronizer
     port map (
      DBG3 => \^dbg3\,
      q => q,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_StreamPipeline is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    DBG3 : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    DBG2 : out STD_LOGIC;
    DBG4 : out STD_LOGIC;
    DBG1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg0_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_StreamPipeline : entity is "StreamPipeline";
end design_1_axi_gyro_hsi_0_0_StreamPipeline;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_StreamPipeline is
  signal \^dbg1\ : STD_LOGIC;
  signal GYRO_Tokenizer_n_0 : STD_LOGIC;
  signal GYRO_Tokenizer_n_1 : STD_LOGIC;
  signal HSCK_int : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  DBG1 <= \^dbg1\;
  SR(0) <= \^sr\(0);
GYRO_Packetizer: entity work.design_1_axi_gyro_hsi_0_0_Packetizer
     port map (
      DBG3 => DBG3,
      DBG4 => DBG4,
      \out\(1) => GYRO_Tokenizer_n_0,
      \out\(0) => GYRO_Tokenizer_n_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^sr\(0)
    );
GYRO_StreamGenerator: entity work.design_1_axi_gyro_hsi_0_0_StreamGenerator
     port map (
      D(0) => D(0),
      DBG1 => \^dbg1\,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      clk0 => clk0,
      \data_out_reg[14]\ => \^sr\(0),
      \out\(0) => HSCK_int,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg0_reg[31]\(0) => \slv_reg0_reg[31]\(0),
      \slv_reg1_reg[31]\(0) => \slv_reg1_reg[31]\(0),
      \slv_reg2_reg[31]\(2 downto 0) => \slv_reg2_reg[31]\(2 downto 0),
      \slv_reg3_reg[31]\(20 downto 0) => \slv_reg3_reg[31]\(20 downto 0)
    );
GYRO_Tokenizer: entity work.design_1_axi_gyro_hsi_0_0_Tokenizer
     port map (
      DBG1 => \^dbg1\,
      DBG2 => DBG2,
      \FSM_onehot_state_reg[4]\(0) => HSCK_int,
      \out\(1) => GYRO_Tokenizer_n_0,
      \out\(0) => GYRO_Tokenizer_n_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^sr\(0),
      \slv_reg3_reg[31]\(0) => \slv_reg3_reg[31]\(20)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0_S00_AXI is
  port (
    DBG0 : out STD_LOGIC;
    DBG3 : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    DBG2 : out STD_LOGIC;
    DBG4 : out STD_LOGIC;
    DBG1 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0_S00_AXI : entity is "axi_gyro_hsi_v1_0_S00_AXI";
end design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0_S00_AXI;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0_S00_AXI is
  signal \^dbg0\ : STD_LOGIC;
  signal GYRO_ADC_OUT_STREAM_n_0 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal data_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_3\ : label is "soft_lutpair12";
begin
  DBG0 <= \^dbg0\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
GYRO_ADC_OUT_STREAM: entity work.design_1_axi_gyro_hsi_0_0_StreamPipeline
     port map (
      D(0) => reg_data_out(31),
      DBG1 => DBG1,
      DBG2 => DBG2,
      DBG3 => DBG3,
      DBG4 => DBG4,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      SR(0) => GYRO_ADC_OUT_STREAM_n_0,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      clk0 => clk0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg0_reg[31]\(0) => slv_reg0(31),
      \slv_reg1_reg[31]\(0) => slv_reg1(31),
      \slv_reg2_reg[31]\(2) => \^dbg0\,
      \slv_reg2_reg[31]\(1 downto 0) => slv_reg2(30 downto 29),
      \slv_reg3_reg[31]\(20) => slv_reg3(31),
      \slv_reg3_reg[31]\(19 downto 18) => data_in(1 downto 0),
      \slv_reg3_reg[31]\(17 downto 16) => slv_reg3(25 downto 24),
      \slv_reg3_reg[31]\(15) => \slv_reg3_reg_n_0_[15]\,
      \slv_reg3_reg[31]\(14) => \slv_reg3_reg_n_0_[14]\,
      \slv_reg3_reg[31]\(13) => \slv_reg3_reg_n_0_[13]\,
      \slv_reg3_reg[31]\(12) => \slv_reg3_reg_n_0_[12]\,
      \slv_reg3_reg[31]\(11) => \slv_reg3_reg_n_0_[11]\,
      \slv_reg3_reg[31]\(10) => \slv_reg3_reg_n_0_[10]\,
      \slv_reg3_reg[31]\(9) => \slv_reg3_reg_n_0_[9]\,
      \slv_reg3_reg[31]\(8) => \slv_reg3_reg_n_0_[8]\,
      \slv_reg3_reg[31]\(7) => \slv_reg3_reg_n_0_[7]\,
      \slv_reg3_reg[31]\(6) => \slv_reg3_reg_n_0_[6]\,
      \slv_reg3_reg[31]\(5) => \slv_reg3_reg_n_0_[5]\,
      \slv_reg3_reg[31]\(4) => \slv_reg3_reg_n_0_[4]\,
      \slv_reg3_reg[31]\(3) => \slv_reg3_reg_n_0_[3]\,
      \slv_reg3_reg[31]\(2) => \slv_reg3_reg_n_0_[2]\,
      \slv_reg3_reg[31]\(1) => \slv_reg3_reg_n_0_[1]\,
      \slv_reg3_reg[31]\(0) => \slv_reg3_reg_n_0_[0]\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s00_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(0),
      I1 => \slv_reg3_reg_n_0_[0]\,
      I2 => slv_reg0(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(10),
      I1 => \slv_reg3_reg_n_0_[10]\,
      I2 => slv_reg0(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(11),
      I1 => \slv_reg3_reg_n_0_[11]\,
      I2 => slv_reg0(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(12),
      I1 => \slv_reg3_reg_n_0_[12]\,
      I2 => slv_reg0(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(13),
      I1 => \slv_reg3_reg_n_0_[13]\,
      I2 => slv_reg0(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(14),
      I1 => \slv_reg3_reg_n_0_[14]\,
      I2 => slv_reg0(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(15),
      I1 => \slv_reg3_reg_n_0_[15]\,
      I2 => slv_reg0(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => \slv_reg3_reg_n_0_[16]\,
      I2 => slv_reg0(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => \slv_reg3_reg_n_0_[17]\,
      I2 => slv_reg0(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => \slv_reg3_reg_n_0_[18]\,
      I2 => slv_reg0(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => \slv_reg3_reg_n_0_[19]\,
      I2 => slv_reg0(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(1),
      I1 => \slv_reg3_reg_n_0_[1]\,
      I2 => slv_reg0(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(20),
      I1 => \slv_reg3_reg_n_0_[20]\,
      I2 => slv_reg0(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => \slv_reg3_reg_n_0_[21]\,
      I2 => slv_reg0(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(22),
      I1 => \slv_reg3_reg_n_0_[22]\,
      I2 => slv_reg0(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => \slv_reg3_reg_n_0_[23]\,
      I2 => slv_reg0(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(24),
      I1 => slv_reg3(24),
      I2 => slv_reg0(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(25),
      I1 => slv_reg3(25),
      I2 => slv_reg0(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(26),
      I1 => \slv_reg3_reg_n_0_[26]\,
      I2 => slv_reg0(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => \slv_reg3_reg_n_0_[27]\,
      I2 => slv_reg0(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(28),
      I1 => \slv_reg3_reg_n_0_[28]\,
      I2 => slv_reg0(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(29),
      I1 => data_in(0),
      I2 => slv_reg0(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(2),
      I1 => \slv_reg3_reg_n_0_[2]\,
      I2 => slv_reg0(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(30),
      I1 => data_in(1),
      I2 => slv_reg0(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(30),
      O => reg_data_out(30)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(3),
      I1 => \slv_reg3_reg_n_0_[3]\,
      I2 => slv_reg0(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(4),
      I1 => \slv_reg3_reg_n_0_[4]\,
      I2 => slv_reg0(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(5),
      I1 => \slv_reg3_reg_n_0_[5]\,
      I2 => slv_reg0(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(6),
      I1 => \slv_reg3_reg_n_0_[6]\,
      I2 => slv_reg0(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(7),
      I1 => \slv_reg3_reg_n_0_[7]\,
      I2 => slv_reg0(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(8),
      I1 => \slv_reg3_reg_n_0_[8]\,
      I2 => slv_reg0(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg2(9),
      I1 => \slv_reg3_reg_n_0_[9]\,
      I2 => slv_reg0(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_wready\,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_2_n_0\,
      D => s00_axi_wdata(31),
      Q => \^dbg0\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => data_in(0),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => data_in(1),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => GYRO_ADC_OUT_STREAM_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s00_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0 is
  port (
    DBG0 : out STD_LOGIC;
    DBG3 : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    DBG2 : out STD_LOGIC;
    DBG4 : out STD_LOGIC;
    DBG1 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0 : entity is "axi_gyro_hsi_v1_0";
end design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0 is
begin
axi_gyro_hsi_v1_0_S00_AXI_inst: entity work.design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0_S00_AXI
     port map (
      DBG0 => DBG0,
      DBG1 => DBG1,
      DBG2 => DBG2,
      DBG3 => DBG3,
      DBG4 => DBG4,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      clk0 => clk0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gyro_hsi_0_0 is
  port (
    MCK : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSIA0 : in STD_LOGIC;
    HSIA1 : in STD_LOGIC;
    DBG0 : out STD_LOGIC;
    DBG1 : out STD_LOGIC;
    DBG2 : out STD_LOGIC;
    DBG3 : out STD_LOGIC;
    DBG4 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_gyro_hsi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_gyro_hsi_0_0 : entity is "design_1_axi_gyro_hsi_0_0,axi_gyro_hsi_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi_gyro_hsi_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi_gyro_hsi_0_0 : entity is "axi_gyro_hsi_v1_0,Vivado 2018.2";
end design_1_axi_gyro_hsi_0_0;

architecture STRUCTURE of design_1_axi_gyro_hsi_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal clk0 : STD_LOGIC;
  signal \^s00_axi_aclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  MCK <= \^s00_axi_aclk\;
  \^s00_axi_aclk\ <= s00_axi_aclk;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Q_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s00_axi_aclk\,
      O => clk0
    );
inst: entity work.design_1_axi_gyro_hsi_0_0_axi_gyro_hsi_v1_0
     port map (
      DBG0 => DBG0,
      DBG1 => DBG1,
      DBG2 => DBG2,
      DBG3 => DBG3,
      DBG4 => DBG4,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      clk0 => clk0,
      s00_axi_aclk => \^s00_axi_aclk\,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
