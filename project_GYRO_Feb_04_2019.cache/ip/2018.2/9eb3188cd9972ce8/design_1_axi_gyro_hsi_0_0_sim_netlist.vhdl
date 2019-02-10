-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Feb 10 01:56:56 2019
-- Host        : DESKTOP-KC9HGNO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_gyro_hsi_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_gyro_hsi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer_fsm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    inj_bit : out STD_LOGIC;
    valid_fsm : out STD_LOGIC;
    \out_reg[8]\ : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer_fsm is
  signal next_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S0:00,S1:01,S3:11,S2:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S0:00,S1:01,S3:11,S2:10";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
begin
  \out\(1 downto 0) <= \^out\(1 downto 0);
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      O => next_state(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn_0,
      D => D(0),
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
\Q_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      O => inj_bit
    );
\Q_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      O => valid_fsm
    );
\out[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => s00_axi_aresetn,
      O => \out_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator_fsm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    en_cntr_data : out STD_LOGIC;
    \FSM_onehot_state_reg[4]_0\ : out STD_LOGIC;
    \r_reg_reg[32]\ : out STD_LOGIC;
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
    \r_reg_reg[4]_P_1\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \data_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aresetn_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator_fsm is
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
      I5 => \r_reg_reg[4]_P_1\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \^out\(0),
      S => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state[11]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[11]\,
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => D(3),
      Q => \^out\(6),
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => D(0),
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[1]\,
      Q => \^out\(1),
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \^out\(1),
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \^out\(2),
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \^out\(2),
      Q => \^out\(3),
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => D(1),
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[6]\,
      Q => \^out\(4),
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => D(2),
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => s00_axi_aresetn_0
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg,
      CE => '1',
      D => \FSM_onehot_state_reg_n_0_[8]\,
      Q => \^out\(5),
      R => s00_axi_aresetn_0
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
\r_reg[32]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(2),
      O => \r_reg_reg[32]\
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff is
  port (
    \data_out_reg[31]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => Q(0),
      Q => \data_out_reg[31]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 is
  port (
    valid_out : out STD_LOGIC;
    \r_reg_reg[1]\ : out STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0 is
  signal \^valid_out\ : STD_LOGIC;
begin
  valid_out <= \^valid_out\;
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn_0,
      D => Q_reg_0,
      Q => \^valid_out\
    );
\r_reg[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^valid_out\,
      I1 => s00_axi_aresetn,
      O => \r_reg_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 is
  port (
    start_int : out STD_LOGIC;
    \FSM_onehot_state_reg[12]\ : out STD_LOGIC;
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1 is
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
      CLR => s00_axi_aresetn,
      D => \slv_reg2_reg[31]\(0),
      Q => \^start_int\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2 is
  port (
    stop_int : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    start_int : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2 is
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
      O => D(0)
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg2_reg[30]\(0),
      Q => \^stop_int\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_20 is
  port (
    MCK : out STD_LOGIC;
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_20 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_20 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => clk0,
      Q => MCK
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3 is
  port (
    Q : out STD_LOGIC;
    \slv_reg2_reg[29]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg2_reg[29]\(0),
      Q => Q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4 is
  port (
    \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5\ : out STD_LOGIC;
    inj_bit : in STD_LOGIC;
    clock0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => inj_bit,
      Q => \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5 is
  port (
    shift : out STD_LOGIC;
    D0 : in STD_LOGIC;
    clock0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    valid_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5 is
  signal shift_sel_sync : STD_LOGIC;
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D0,
      Q => shift_sel_sync
    );
\out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_aclk,
      I1 => shift_sel_sync,
      I2 => valid_out,
      O => shift
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6 is
  port (
    tlast : out STD_LOGIC;
    last : in STD_LOGIC;
    clock0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => last,
      Q => tlast
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7 is
  port (
    tvalid : out STD_LOGIC;
    clock0_0 : out STD_LOGIC;
    valid_fsm : in STD_LOGIC;
    clock0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7 : entity is "dff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7 is
  signal \^tvalid\ : STD_LOGIC;
begin
  tvalid <= \^tvalid\;
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => valid_fsm,
      Q => \^tvalid\
    );
\r_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^tvalid\,
      I1 => s00_axi_aclk,
      O => clock0_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter16Bits is
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
    clk0 : in STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter16Bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter16Bits is
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
  attribute SOFT_HLUTNM of \r_reg[0]_C_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_reg[10]_C_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_reg[11]_C_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_reg[12]_C_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_reg[13]_C_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_reg[14]_C_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_reg[15]_C_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_reg[1]_C_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_reg[2]_C_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_reg[3]_C_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_reg[4]_C_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_reg[5]_C_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_reg[6]_C_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_reg[7]_C_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_reg[8]_C_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_reg[9]_C_i_1\ : label is "soft_lutpair25";
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
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(0),
      PRE => \data_out_reg[0]\,
      Q => \r_reg_reg[0]_P_n_0\
    );
\r_reg_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(10),
      PRE => \data_out_reg[10]\,
      Q => \r_reg_reg[10]_P_n_0\
    );
\r_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(11),
      PRE => \data_out_reg[11]\,
      Q => \r_reg_reg[11]_P_n_0\
    );
\r_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(12),
      PRE => \data_out_reg[12]\,
      Q => \r_reg_reg[12]_P_n_0\
    );
\r_reg_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(13),
      PRE => \data_out_reg[13]\,
      Q => \r_reg_reg[13]_P_n_0\
    );
\r_reg_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(14),
      PRE => \data_out_reg[14]\,
      Q => \r_reg_reg[14]_P_n_0\
    );
\r_reg_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(15),
      PRE => \data_out_reg[15]\,
      Q => \r_reg_reg[15]_P_n_0\
    );
\r_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(1),
      PRE => \data_out_reg[1]\,
      Q => \r_reg_reg[1]_P_n_0\
    );
\r_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(2),
      PRE => \data_out_reg[2]\,
      Q => \r_reg_reg[2]_P_n_0\
    );
\r_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(3),
      PRE => \data_out_reg[3]\,
      Q => \r_reg_reg[3]_P_n_0\
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(4),
      PRE => \data_out_reg[4]\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(5),
      PRE => \data_out_reg[5]\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(6),
      PRE => \data_out_reg[6]\,
      Q => \r_reg_reg[6]_P_n_0\
    );
\r_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(7),
      PRE => \data_out_reg[7]\,
      Q => \r_reg_reg[7]_P_n_0\
    );
\r_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
      CE => \out\(1),
      D => r_reg(8),
      PRE => \data_out_reg[8]\,
      Q => \r_reg_reg[8]_P_n_0\
    );
\r_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
      C => clk0,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter8Bits is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    en_cntr_data : in STD_LOGIC;
    clk0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter8Bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter8Bits is
  signal \FSM_onehot_state[8]_i_2_n_0\ : STD_LOGIC;
  signal r_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg[4]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[4]_C_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[5]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal r_reg_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[5]_P_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_reg[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_reg[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_reg[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_reg[4]_C_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_reg[5]_P_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_reg[7]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_reg[7]_i_6\ : label is "soft_lutpair18";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[5]_LDC\ : label is "LDC";
begin
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4700000000"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      I3 => \FSM_onehot_state[8]_i_2_n_0\,
      I4 => r_reg(2),
      I5 => \out\(0),
      O => \FSM_onehot_state_reg[4]\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA2AAA2"
    )
        port map (
      I0 => \out\(1),
      I1 => r_reg(2),
      I2 => \FSM_onehot_state[8]_i_2_n_0\,
      I3 => r_reg(4),
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
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => r_reg(3),
      I1 => r_reg(0),
      I2 => r_reg(1),
      I3 => r_reg(7),
      I4 => r_reg(5),
      I5 => r_reg(6),
      O => \FSM_onehot_state[8]_i_2_n_0\
    );
\r_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[7]_i_4_n_0\,
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
      I2 => \r_reg[7]_i_4_n_0\,
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
      I3 => \r_reg[7]_i_4_n_0\,
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
      I4 => \r_reg[7]_i_4_n_0\,
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
      I3 => \r_reg[7]_i_4_n_0\,
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
      I5 => \r_reg[7]_i_4_n_0\,
      O => r_reg_0(4)
    );
\r_reg[5]_C_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600FFFF95000000"
    )
        port map (
      I0 => \r_reg[7]_i_5_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_P_n_0\,
      I3 => \r_reg[7]_i_4_n_0\,
      I4 => en_cntr_data,
      I5 => \r_reg_reg[5]_C_n_0\,
      O => \r_reg[5]_C_i_1__0_n_0\
    );
\r_reg[5]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9590000"
    )
        port map (
      I0 => \r_reg[7]_i_5_n_0\,
      I1 => \r_reg_reg[5]_C_n_0\,
      I2 => \r_reg_reg[5]_LDC_n_0\,
      I3 => \r_reg_reg[5]_P_n_0\,
      I4 => \r_reg[7]_i_4_n_0\,
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
      I4 => \r_reg[7]_i_5_n_0\,
      I5 => \r_reg[7]_i_4_n_0\,
      O => r_reg_0(6)
    );
\r_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A082"
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
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => r_reg(2),
      I1 => \FSM_onehot_state[8]_i_2_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      I3 => \r_reg_reg[5]_LDC_n_0\,
      I4 => \r_reg_reg[4]_P_n_0\,
      O => \r_reg[7]_i_4_n_0\
    );
\r_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => r_reg(3),
      I1 => r_reg(1),
      I2 => r_reg(0),
      I3 => r_reg(2),
      I4 => r_reg(4),
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
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(0),
      Q => r_reg(0)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(1),
      Q => r_reg(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(2),
      Q => r_reg(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(3),
      Q => r_reg(3)
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg[4]_C_i_1__0_n_0\,
      Q => \r_reg_reg[4]_C_n_0\
    );
\r_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk0,
      CE => en_cntr_data,
      D => r_reg_0(4),
      PRE => \FSM_onehot_state_reg[3]\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg[5]_C_i_1__0_n_0\,
      Q => \r_reg_reg[5]_C_n_0\
    );
\r_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => '1',
      G => \FSM_onehot_state_reg[3]\,
      GE => '1',
      Q => \r_reg_reg[5]_LDC_n_0\
    );
\r_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => clk0,
      CE => en_cntr_data,
      D => r_reg_0(5),
      PRE => \FSM_onehot_state_reg[3]\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
      CE => en_cntr_data,
      CLR => \FSM_onehot_state_reg[2]\,
      D => r_reg_0(6),
      Q => r_reg(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk0,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_16bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \slv_reg3_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_16bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_16bits is
begin
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(0),
      Q => Q(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(10),
      Q => Q(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(11),
      Q => Q(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(12),
      Q => Q(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(13),
      Q => Q(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(14),
      Q => Q(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(15),
      Q => Q(15)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(1),
      Q => Q(1)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(2),
      Q => Q(2)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(3),
      Q => Q(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(4),
      Q => Q(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(5),
      Q => Q(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(6),
      Q => Q(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(7),
      Q => Q(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(8),
      Q => Q(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[15]\(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_2bits is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[4]\ : out STD_LOGIC;
    stop_int : in STD_LOGIC;
    \r_reg_reg[6]_P\ : in STD_LOGIC;
    \FSM_onehot_state_reg[10]\ : in STD_LOGIC;
    Q_reg : in STD_LOGIC;
    \slv_reg3_reg[30]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_2bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_2bits is
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
      O => D(0)
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
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[30]\(0),
      Q => mode_int(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \slv_reg3_reg[30]\(1),
      Q => mode_int(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \r_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q_reg : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits is
begin
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(0),
      Q => Q(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(10),
      Q => Q(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(11),
      Q => Q(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(12),
      Q => Q(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(13),
      Q => Q(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(14),
      Q => Q(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(15),
      Q => Q(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(16),
      Q => Q(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(17),
      Q => Q(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(18),
      Q => Q(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(19),
      Q => Q(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(1),
      Q => Q(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(20),
      Q => Q(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(21),
      Q => Q(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(22),
      Q => Q(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(23),
      Q => Q(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(24),
      Q => Q(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(25),
      Q => Q(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(26),
      Q => Q(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(27),
      Q => Q(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(28),
      Q => Q(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(29),
      Q => Q(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(2),
      Q => Q(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(30),
      Q => Q(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(31),
      Q => Q(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(3),
      Q => Q(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(4),
      Q => Q(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(5),
      Q => Q(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(6),
      Q => Q(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(7),
      Q => Q(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(8),
      Q => Q(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg_reg[31]\(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10 is
begin
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => '1',
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    data_out_reg_c_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11 is
begin
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_1,
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    data_out_reg_c_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12 is
begin
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_1,
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    data_out_reg_c_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13 is
begin
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_1,
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    data_out_reg_c_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14 is
begin
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_1,
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_15 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    data_out_reg_c_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_15 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_15 is
begin
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_1,
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_16 is
  port (
    data_out_reg_c_0 : out STD_LOGIC;
    \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : out STD_LOGIC;
    data_out_reg_c_1 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_16 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_16 is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \data_out_reg[0]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name : string;
  attribute srl_name of \data_out_reg[0]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[0]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[10]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[10]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[10]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[11]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[11]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[11]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[12]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[12]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[12]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[13]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[13]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[13]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[14]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[14]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[14]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[15]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[15]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[15]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[16]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[16]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[16]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[17]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[17]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[17]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[18]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[18]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[18]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[19]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[19]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[19]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[1]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[1]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[1]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[20]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[20]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[20]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[21]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[21]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[21]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[22]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[22]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[22]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[23]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[23]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[23]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[24]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[24]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[24]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[25]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[25]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[25]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[26]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[26]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[26]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[27]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[27]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[27]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[28]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[28]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[28]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[29]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[29]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[29]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[2]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[2]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[2]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[30]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[30]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[30]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[31]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[31]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[31]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[3]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[3]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[3]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[4]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[4]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[4]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[5]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[5]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[5]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[6]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[6]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[6]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[7]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[7]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[7]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[8]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[8]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[8]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
  attribute srl_bus_name of \data_out_reg[9]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg ";
  attribute srl_name of \data_out_reg[9]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/delayLine/Reg6/data_out_reg[9]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c ";
begin
\data_out_reg[0]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(0),
      Q => \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[10]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(10),
      Q => \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[11]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(11),
      Q => \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[12]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(12),
      Q => \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[13]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(13),
      Q => \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[14]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(14),
      Q => \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[15]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(15),
      Q => \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[16]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(16),
      Q => \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[17]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(17),
      Q => \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[18]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(18),
      Q => \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[19]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(19),
      Q => \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[1]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(1),
      Q => \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[20]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(20),
      Q => \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[21]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(21),
      Q => \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[22]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(22),
      Q => \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[23]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(23),
      Q => \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[24]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(24),
      Q => \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[25]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(25),
      Q => \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[26]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(26),
      Q => \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[27]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(27),
      Q => \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[28]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(28),
      Q => \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[29]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(29),
      Q => \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[2]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(2),
      Q => \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[30]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(30),
      Q => \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[31]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(31),
      Q => \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[3]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(3),
      Q => \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[4]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(4),
      Q => \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[5]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(5),
      Q => \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[6]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(6),
      Q => \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[7]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(7),
      Q => \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[8]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(8),
      Q => \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
\data_out_reg[9]_srl7_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg6_data_out_reg_c\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q(9),
      Q => \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\
    );
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_1,
      Q => data_out_reg_c_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_17 is
  port (
    \data_out_reg[31]\ : out STD_LOGIC;
    \data_out_reg[30]\ : out STD_LOGIC;
    \data_out_reg[29]\ : out STD_LOGIC;
    \data_out_reg[28]\ : out STD_LOGIC;
    \data_out_reg[27]\ : out STD_LOGIC;
    \data_out_reg[26]\ : out STD_LOGIC;
    \data_out_reg[25]\ : out STD_LOGIC;
    \data_out_reg[24]\ : out STD_LOGIC;
    \data_out_reg[23]\ : out STD_LOGIC;
    \data_out_reg[22]\ : out STD_LOGIC;
    \data_out_reg[21]\ : out STD_LOGIC;
    \data_out_reg[20]\ : out STD_LOGIC;
    \data_out_reg[19]\ : out STD_LOGIC;
    \data_out_reg[18]\ : out STD_LOGIC;
    \data_out_reg[17]\ : out STD_LOGIC;
    \data_out_reg[16]\ : out STD_LOGIC;
    \data_out_reg[15]\ : out STD_LOGIC;
    \data_out_reg[14]\ : out STD_LOGIC;
    \data_out_reg[13]\ : out STD_LOGIC;
    \data_out_reg[12]\ : out STD_LOGIC;
    \data_out_reg[11]\ : out STD_LOGIC;
    \data_out_reg[10]\ : out STD_LOGIC;
    \data_out_reg[9]\ : out STD_LOGIC;
    \data_out_reg[8]\ : out STD_LOGIC;
    \data_out_reg[7]\ : out STD_LOGIC;
    \data_out_reg[6]\ : out STD_LOGIC;
    \data_out_reg[5]\ : out STD_LOGIC;
    \data_out_reg[4]\ : out STD_LOGIC;
    \data_out_reg[3]\ : out STD_LOGIC;
    \data_out_reg[2]\ : out STD_LOGIC;
    \data_out_reg[1]\ : out STD_LOGIC;
    \data_out_reg[0]\ : out STD_LOGIC;
    data_out_reg_c_0 : in STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \data_out_reg[31]_0\ : in STD_LOGIC;
    \data_out_reg[30]_0\ : in STD_LOGIC;
    \data_out_reg[29]_0\ : in STD_LOGIC;
    \data_out_reg[28]_0\ : in STD_LOGIC;
    \data_out_reg[27]_0\ : in STD_LOGIC;
    \data_out_reg[26]_0\ : in STD_LOGIC;
    \data_out_reg[25]_0\ : in STD_LOGIC;
    \data_out_reg[24]_0\ : in STD_LOGIC;
    \data_out_reg[23]_0\ : in STD_LOGIC;
    \data_out_reg[22]_0\ : in STD_LOGIC;
    \data_out_reg[21]_0\ : in STD_LOGIC;
    \data_out_reg[20]_0\ : in STD_LOGIC;
    \data_out_reg[19]_0\ : in STD_LOGIC;
    \data_out_reg[18]_0\ : in STD_LOGIC;
    \data_out_reg[17]_0\ : in STD_LOGIC;
    \data_out_reg[16]_0\ : in STD_LOGIC;
    \data_out_reg[15]_0\ : in STD_LOGIC;
    \data_out_reg[14]_0\ : in STD_LOGIC;
    \data_out_reg[13]_0\ : in STD_LOGIC;
    \data_out_reg[12]_0\ : in STD_LOGIC;
    \data_out_reg[11]_0\ : in STD_LOGIC;
    \data_out_reg[10]_0\ : in STD_LOGIC;
    \data_out_reg[9]_0\ : in STD_LOGIC;
    \data_out_reg[8]_0\ : in STD_LOGIC;
    \data_out_reg[7]_0\ : in STD_LOGIC;
    \data_out_reg[6]_0\ : in STD_LOGIC;
    \data_out_reg[5]_0\ : in STD_LOGIC;
    \data_out_reg[4]_0\ : in STD_LOGIC;
    \data_out_reg[3]_0\ : in STD_LOGIC;
    \data_out_reg[2]_0\ : in STD_LOGIC;
    \data_out_reg[1]_0\ : in STD_LOGIC;
    \data_out_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_17 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_17 is
  signal \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\ : STD_LOGIC;
  signal data_out_reg_c_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_out_reg_gate : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out_reg_gate__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out_reg_gate__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out_reg_gate__10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out_reg_gate__11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out_reg_gate__12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out_reg_gate__13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out_reg_gate__14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out_reg_gate__15\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out_reg_gate__16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out_reg_gate__17\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out_reg_gate__18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out_reg_gate__19\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out_reg_gate__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out_reg_gate__20\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out_reg_gate__21\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out_reg_gate__22\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out_reg_gate__23\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out_reg_gate__24\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out_reg_gate__25\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out_reg_gate__26\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out_reg_gate__27\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out_reg_gate__28\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out_reg_gate__29\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_reg_gate__3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out_reg_gate__30\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_reg_gate__4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out_reg_gate__5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out_reg_gate__6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out_reg_gate__7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out_reg_gate__8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out_reg_gate__9\ : label is "soft_lutpair6";
begin
\data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[0]_0\,
      Q => \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[10]_0\,
      Q => \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[11]_0\,
      Q => \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[12]_0\,
      Q => \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[13]_0\,
      Q => \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[14]_0\,
      Q => \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[15]_0\,
      Q => \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[16]_0\,
      Q => \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[17]_0\,
      Q => \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[18]_0\,
      Q => \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[19]_0\,
      Q => \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[1]_0\,
      Q => \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[20]_0\,
      Q => \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[21]_0\,
      Q => \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[22]_0\,
      Q => \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[23]_0\,
      Q => \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[24]_0\,
      Q => \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[25]_0\,
      Q => \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[26]_0\,
      Q => \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[27]_0\,
      Q => \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[28]_0\,
      Q => \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[29]_0\,
      Q => \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[2]_0\,
      Q => \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[30]_0\,
      Q => \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[31]_0\,
      Q => \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[3]_0\,
      Q => \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[4]_0\,
      Q => \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[5]_0\,
      Q => \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[6]_0\,
      Q => \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[7]_0\,
      Q => \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[8]_0\,
      Q => \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
\data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\: unisim.vcomponents.FDRE
     port map (
      C => shift,
      CE => '1',
      D => \data_out_reg[9]_0\,
      Q => \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      R => '0'
    );
data_out_reg_c: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => data_out_reg_c_0,
      Q => data_out_reg_c_n_0
    );
data_out_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[31]\
    );
\data_out_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[30]\
    );
\data_out_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[29]\
    );
\data_out_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[20]\
    );
\data_out_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[19]\
    );
\data_out_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[18]\
    );
\data_out_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[17]\
    );
\data_out_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[16]\
    );
\data_out_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[15]\
    );
\data_out_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[14]\
    );
\data_out_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[13]\
    );
\data_out_reg_gate__18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[12]\
    );
\data_out_reg_gate__19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[11]\
    );
\data_out_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[28]\
    );
\data_out_reg_gate__20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[10]\
    );
\data_out_reg_gate__21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[9]\
    );
\data_out_reg_gate__22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[8]\
    );
\data_out_reg_gate__23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[7]\
    );
\data_out_reg_gate__24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[6]\
    );
\data_out_reg_gate__25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[5]\
    );
\data_out_reg_gate__26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[4]\
    );
\data_out_reg_gate__27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[3]\
    );
\data_out_reg_gate__28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[2]\
    );
\data_out_reg_gate__29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[1]\
    );
\data_out_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[27]\
    );
\data_out_reg_gate__30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[0]\
    );
\data_out_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[26]\
    );
\data_out_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[25]\
    );
\data_out_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[24]\
    );
\data_out_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[23]\
    );
\data_out_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[22]\
    );
\data_out_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c_n_0\,
      I1 => data_out_reg_c_n_0,
      O => \data_out_reg[21]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8 is
  port (
    tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clock0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8 is
begin
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(0),
      Q => tdata(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(10),
      Q => tdata(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(11),
      Q => tdata(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(12),
      Q => tdata(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(13),
      Q => tdata(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(14),
      Q => tdata(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(15),
      Q => tdata(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(16),
      Q => tdata(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(17),
      Q => tdata(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(18),
      Q => tdata(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(19),
      Q => tdata(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(1),
      Q => tdata(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(20),
      Q => tdata(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(21),
      Q => tdata(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(22),
      Q => tdata(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(23),
      Q => tdata(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(24),
      Q => tdata(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(25),
      Q => tdata(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(26),
      Q => tdata(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(27),
      Q => tdata(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(28),
      Q => tdata(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(29),
      Q => tdata(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(2),
      Q => tdata(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(30),
      Q => tdata(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(31),
      Q => tdata(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(3),
      Q => tdata(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(4),
      Q => tdata(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(5),
      Q => tdata(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(6),
      Q => tdata(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(7),
      Q => tdata(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(8),
      Q => tdata(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => D(9),
      Q => tdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_out_reg[31]_0\ : out STD_LOGIC;
    \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    shift : in STD_LOGIC;
    \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9 : entity is "register_32bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9 is
  signal \^data_out_reg[31]_0\ : STD_LOGIC;
begin
  \data_out_reg[31]_0\ <= \^data_out_reg[31]_0\;
Q_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^data_out_reg[31]_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \^data_out_reg[31]_0\,
      D => \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\,
      Q => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serializer17bits is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serializer17bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serializer17bits is
  signal HSDATA_int : STD_LOGIC;
  signal \r_reg[10]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[11]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[12]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[13]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[14]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[15]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[1]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[2]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[3]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[4]_C_i_1__1_n_0\ : STD_LOGIC;
  signal \r_reg[5]_C_i_1__1_n_0\ : STD_LOGIC;
  signal \r_reg[6]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[7]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[8]_C_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg[9]_C_i_1__0_n_0\ : STD_LOGIC;
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
\r_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \slv_reg3_reg[25]\(1),
      I1 => \slv_reg3_reg[25]\(0),
      I2 => HSDATA_int,
      O => D(0)
    );
\r_reg[10]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[9]_P_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_C_n_0\,
      O => \r_reg[10]_C_i_1__0_n_0\
    );
\r_reg[11]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[10]_P_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_C_n_0\,
      O => \r_reg[11]_C_i_1__0_n_0\
    );
\r_reg[12]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[11]_P_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_C_n_0\,
      O => \r_reg[12]_C_i_1__0_n_0\
    );
\r_reg[13]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[12]_P_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_C_n_0\,
      O => \r_reg[13]_C_i_1__0_n_0\
    );
\r_reg[14]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[13]_P_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_C_n_0\,
      O => \r_reg[14]_C_i_1__0_n_0\
    );
\r_reg[15]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[14]_P_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_C_n_0\,
      O => \r_reg[15]_C_i_1__0_n_0\
    );
\r_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[15]_P_n_0\,
      I1 => \r_reg_reg[15]_LDC_n_0\,
      I2 => \r_reg_reg[15]_C_n_0\,
      O => \r_reg[16]_i_1_n_0\
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
      O => \r_reg[1]_C_i_1__0_n_0\
    );
\r_reg[2]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[1]_P_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_C_n_0\,
      O => \r_reg[2]_C_i_1__0_n_0\
    );
\r_reg[3]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[2]_P_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_C_n_0\,
      O => \r_reg[3]_C_i_1__0_n_0\
    );
\r_reg[4]_C_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      O => \r_reg[4]_C_i_1__1_n_0\
    );
\r_reg[5]_C_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => \r_reg[5]_C_i_1__1_n_0\
    );
\r_reg[6]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      O => \r_reg[6]_C_i_1__0_n_0\
    );
\r_reg[7]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[6]_P_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_C_n_0\,
      O => \r_reg[7]_C_i_1__0_n_0\
    );
\r_reg[8]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[7]_P_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_C_n_0\,
      O => \r_reg[8]_C_i_1__0_n_0\
    );
\r_reg[9]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[8]_P_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_C_n_0\,
      O => \r_reg[9]_C_i_1__0_n_0\
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
      D => \r_reg[10]_C_i_1__0_n_0\,
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
      D => \r_reg[10]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[10]_C_0\,
      Q => \r_reg_reg[10]_P_n_0\
    );
\r_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[11]_P_0\,
      D => \r_reg[11]_C_i_1__0_n_0\,
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
      D => \r_reg[11]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[11]_C_0\,
      Q => \r_reg_reg[11]_P_n_0\
    );
\r_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[12]_P_0\,
      D => \r_reg[12]_C_i_1__0_n_0\,
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
      D => \r_reg[12]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[12]_C_0\,
      Q => \r_reg_reg[12]_P_n_0\
    );
\r_reg_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[13]_P_0\,
      D => \r_reg[13]_C_i_1__0_n_0\,
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
      D => \r_reg[13]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[13]_C_0\,
      Q => \r_reg_reg[13]_P_n_0\
    );
\r_reg_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[14]_P_0\,
      D => \r_reg[14]_C_i_1__0_n_0\,
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
      D => \r_reg[14]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[14]_C_0\,
      Q => \r_reg_reg[14]_P_n_0\
    );
\r_reg_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[15]_P_0\,
      D => \r_reg[15]_C_i_1__0_n_0\,
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
      D => \r_reg[15]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[15]_C_0\,
      Q => \r_reg_reg[15]_P_n_0\
    );
\r_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg[16]_i_2_n_0\,
      D => \r_reg[16]_i_1_n_0\,
      Q => HSDATA_int
    );
\r_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[1]_P_0\,
      D => \r_reg[1]_C_i_1__0_n_0\,
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
      D => \r_reg[1]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[1]_C_0\,
      Q => \r_reg_reg[1]_P_n_0\
    );
\r_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[2]_P_0\,
      D => \r_reg[2]_C_i_1__0_n_0\,
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
      D => \r_reg[2]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[2]_C_0\,
      Q => \r_reg_reg[2]_P_n_0\
    );
\r_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[3]_P_0\,
      D => \r_reg[3]_C_i_1__0_n_0\,
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
      D => \r_reg[3]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[3]_C_0\,
      Q => \r_reg_reg[3]_P_n_0\
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[4]_P_0\,
      D => \r_reg[4]_C_i_1__1_n_0\,
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
      D => \r_reg[4]_C_i_1__1_n_0\,
      PRE => \r_reg_reg[4]_C_0\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[5]_P_0\,
      D => \r_reg[5]_C_i_1__1_n_0\,
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
      D => \r_reg[5]_C_i_1__1_n_0\,
      PRE => \r_reg_reg[5]_C_0\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[6]_P_0\,
      D => \r_reg[6]_C_i_1__0_n_0\,
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
      D => \r_reg[6]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[6]_C_0\,
      Q => \r_reg_reg[6]_P_n_0\
    );
\r_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[7]_P_0\,
      D => \r_reg[7]_C_i_1__0_n_0\,
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
      D => \r_reg[7]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[7]_C_0\,
      Q => \r_reg_reg[7]_P_n_0\
    );
\r_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[8]_P_0\,
      D => \r_reg[8]_C_i_1__0_n_0\,
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
      D => \r_reg[8]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[8]_C_0\,
      Q => \r_reg_reg[8]_P_n_0\
    );
\r_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(1),
      CE => '1',
      CLR => \r_reg_reg[9]_P_0\,
      D => \r_reg[9]_C_i_1__0_n_0\,
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
      D => \r_reg[9]_C_i_1__0_n_0\,
      PRE => \r_reg_reg[9]_C_0\,
      Q => \r_reg_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_reg_9bits is
  port (
    D0 : out STD_LOGIC;
    last : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    shift : in STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    Q_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_reg_9bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_reg_9bits is
  signal ctl_out : STD_LOGIC_VECTOR ( 8 downto 7 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Q_i_1 : label is "soft_lutpair0";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/SR9/out_reg ";
  attribute srl_name : string;
  attribute srl_name of \out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4\ : label is "\inst/axi_gyro_hsi_v1_0_S00_AXI_inst/GYRO_ADC_OUT_STREAM/GYRO_Packetizer/SR9/out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4 ";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004A"
    )
        port map (
      I0 => ctl_out(7),
      I1 => ctl_out(8),
      I2 => \out\(1),
      I3 => \out\(0),
      O => D(0)
    );
Q_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DD0"
    )
        port map (
      I0 => ctl_out(8),
      I1 => ctl_out(7),
      I2 => \out\(1),
      I3 => \out\(0),
      O => D0
    );
\Q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctl_out(8),
      I1 => ctl_out(7),
      O => last
    );
\out_reg[5]_srl6_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => shift,
      D => Q_reg,
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
      Q => ctl_out(7)
    );
\out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => shift,
      CE => '1',
      CLR => \FSM_sequential_state_reg[0]\,
      D => ctl_out(7),
      Q => ctl_out(8)
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tokenizerShiftRegister32bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    Q_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tokenizerShiftRegister32bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tokenizerShiftRegister32bits is
  signal \^q\ : STD_LOGIC_VECTOR ( 32 downto 0 );
begin
  Q(32 downto 0) <= \^q\(32 downto 0);
\r_reg_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      D => D(0),
      PRE => Q_reg,
      Q => \^q\(0)
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(9),
      Q => \^q\(10)
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(10),
      Q => \^q\(11)
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(11),
      Q => \^q\(12)
    );
\r_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(12),
      Q => \^q\(13)
    );
\r_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(13),
      Q => \^q\(14)
    );
\r_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(14),
      Q => \^q\(15)
    );
\r_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(15),
      Q => \^q\(16)
    );
\r_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(16),
      Q => \^q\(17)
    );
\r_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(17),
      Q => \^q\(18)
    );
\r_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(18),
      Q => \^q\(19)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(0),
      Q => \^q\(1)
    );
\r_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(19),
      Q => \^q\(20)
    );
\r_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(20),
      Q => \^q\(21)
    );
\r_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(21),
      Q => \^q\(22)
    );
\r_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(22),
      Q => \^q\(23)
    );
\r_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(23),
      Q => \^q\(24)
    );
\r_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(24),
      Q => \^q\(25)
    );
\r_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(25),
      Q => \^q\(26)
    );
\r_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(26),
      Q => \^q\(27)
    );
\r_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(27),
      Q => \^q\(28)
    );
\r_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(28),
      Q => \^q\(29)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(1),
      Q => \^q\(2)
    );
\r_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(29),
      Q => \^q\(30)
    );
\r_reg_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(30),
      Q => \^q\(31)
    );
\r_reg_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(31),
      Q => \^q\(32)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(2),
      Q => \^q\(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(3),
      Q => \^q\(4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(4),
      Q => \^q\(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(5),
      Q => \^q\(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(6),
      Q => \^q\(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(7),
      Q => \^q\(8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \FSM_onehot_state_reg[4]\,
      CE => '1',
      CLR => Q_reg,
      D => \^q\(8),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : in STD_LOGIC;
    \slv_reg2_reg[28]\ : in STD_LOGIC;
    \slv_reg2_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \slv_reg3_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    r_reg_reg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits is
  signal \r_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__1_n_7\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal r_reg_reg_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_r_reg_reg[12]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(0),
      I1 => \slv_reg3_reg[15]\(0),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(0),
      I5 => r_reg_reg(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(10),
      I1 => \slv_reg3_reg[15]\(10),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(10),
      I5 => r_reg_reg(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(11),
      I1 => \slv_reg3_reg[15]\(11),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(11),
      I5 => r_reg_reg(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(12),
      I1 => \slv_reg3_reg[15]\(12),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(12),
      I5 => r_reg_reg(12),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(13),
      I1 => \slv_reg3_reg[15]\(13),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(13),
      I5 => r_reg_reg(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(14),
      I1 => \slv_reg3_reg[15]\(14),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(14),
      I5 => r_reg_reg(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(15),
      I1 => \slv_reg3_reg[15]\(15),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(15),
      I5 => r_reg_reg(15),
      O => D(15)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(1),
      I1 => \slv_reg3_reg[15]\(1),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(1),
      I5 => r_reg_reg(1),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(2),
      I1 => \slv_reg3_reg[15]\(2),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(2),
      I5 => r_reg_reg(2),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(3),
      I1 => \slv_reg3_reg[15]\(3),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(3),
      I5 => r_reg_reg(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(4),
      I1 => \slv_reg3_reg[15]\(4),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(4),
      I5 => r_reg_reg(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(5),
      I1 => \slv_reg3_reg[15]\(5),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(5),
      I5 => r_reg_reg(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(6),
      I1 => \slv_reg3_reg[15]\(6),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(6),
      I5 => r_reg_reg(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(7),
      I1 => \slv_reg3_reg[15]\(7),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(7),
      I5 => r_reg_reg(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(8),
      I1 => \slv_reg3_reg[15]\(8),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(8),
      I5 => r_reg_reg(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \slv_reg2_reg[15]\(9),
      I1 => \slv_reg3_reg[15]\(9),
      I2 => axi_araddr(1),
      I3 => axi_araddr(0),
      I4 => r_reg_reg_0(9),
      I5 => r_reg_reg(9),
      O => D(9)
    );
\r_reg[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_reg_reg_0(0),
      O => \r_reg[0]_i_2__0_n_0\
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1__1_n_7\,
      Q => r_reg_reg_0(0)
    );
\r_reg_reg[0]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg_reg[0]_i_1__1_n_0\,
      CO(2) => \r_reg_reg[0]_i_1__1_n_1\,
      CO(1) => \r_reg_reg[0]_i_1__1_n_2\,
      CO(0) => \r_reg_reg[0]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_reg_reg[0]_i_1__1_n_4\,
      O(2) => \r_reg_reg[0]_i_1__1_n_5\,
      O(1) => \r_reg_reg[0]_i_1__1_n_6\,
      O(0) => \r_reg_reg[0]_i_1__1_n_7\,
      S(3 downto 1) => r_reg_reg_0(3 downto 1),
      S(0) => \r_reg[0]_i_2__0_n_0\
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1__1_n_5\,
      Q => r_reg_reg_0(10)
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1__1_n_4\,
      Q => r_reg_reg_0(11)
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1__1_n_7\,
      Q => r_reg_reg_0(12)
    );
\r_reg_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[8]_i_1__1_n_0\,
      CO(3) => \NLW_r_reg_reg[12]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \r_reg_reg[12]_i_1__1_n_1\,
      CO(1) => \r_reg_reg[12]_i_1__1_n_2\,
      CO(0) => \r_reg_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[12]_i_1__1_n_4\,
      O(2) => \r_reg_reg[12]_i_1__1_n_5\,
      O(1) => \r_reg_reg[12]_i_1__1_n_6\,
      O(0) => \r_reg_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => r_reg_reg_0(15 downto 12)
    );
\r_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1__1_n_6\,
      Q => r_reg_reg_0(13)
    );
\r_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1__1_n_5\,
      Q => r_reg_reg_0(14)
    );
\r_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1__1_n_4\,
      Q => r_reg_reg_0(15)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1__1_n_6\,
      Q => r_reg_reg_0(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1__1_n_5\,
      Q => r_reg_reg_0(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1__1_n_4\,
      Q => r_reg_reg_0(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1__1_n_7\,
      Q => r_reg_reg_0(4)
    );
\r_reg_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[0]_i_1__1_n_0\,
      CO(3) => \r_reg_reg[4]_i_1__1_n_0\,
      CO(2) => \r_reg_reg[4]_i_1__1_n_1\,
      CO(1) => \r_reg_reg[4]_i_1__1_n_2\,
      CO(0) => \r_reg_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[4]_i_1__1_n_4\,
      O(2) => \r_reg_reg[4]_i_1__1_n_5\,
      O(1) => \r_reg_reg[4]_i_1__1_n_6\,
      O(0) => \r_reg_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => r_reg_reg_0(7 downto 4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1__1_n_6\,
      Q => r_reg_reg_0(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1__1_n_5\,
      Q => r_reg_reg_0(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1__1_n_4\,
      Q => r_reg_reg_0(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1__1_n_7\,
      Q => r_reg_reg_0(8)
    );
\r_reg_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[4]_i_1__1_n_0\,
      CO(3) => \r_reg_reg[8]_i_1__1_n_0\,
      CO(2) => \r_reg_reg[8]_i_1__1_n_1\,
      CO(1) => \r_reg_reg[8]_i_1__1_n_2\,
      CO(0) => \r_reg_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[8]_i_1__1_n_4\,
      O(2) => \r_reg_reg[8]_i_1__1_n_5\,
      O(1) => \r_reg_reg[8]_i_1__1_n_6\,
      O(0) => \r_reg_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => r_reg_reg_0(11 downto 8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => valid_out,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1__1_n_6\,
      Q => r_reg_reg_0(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_18 is
  port (
    r_reg_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q_reg : in STD_LOGIC;
    \slv_reg2_reg[28]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_18 : entity is "upCounter16Bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_18 is
  signal \r_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \^r_reg_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  r_reg_reg(15 downto 0) <= \^r_reg_reg\(15 downto 0);
\r_reg[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg_reg\(0),
      O => \r_reg[0]_i_3_n_0\
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1_n_7\,
      Q => \^r_reg_reg\(0)
    );
\r_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg_reg[0]_i_1_n_0\,
      CO(2) => \r_reg_reg[0]_i_1_n_1\,
      CO(1) => \r_reg_reg[0]_i_1_n_2\,
      CO(0) => \r_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_reg_reg[0]_i_1_n_4\,
      O(2) => \r_reg_reg[0]_i_1_n_5\,
      O(1) => \r_reg_reg[0]_i_1_n_6\,
      O(0) => \r_reg_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^r_reg_reg\(3 downto 1),
      S(0) => \r_reg[0]_i_3_n_0\
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1_n_5\,
      Q => \^r_reg_reg\(10)
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1_n_4\,
      Q => \^r_reg_reg\(11)
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1_n_7\,
      Q => \^r_reg_reg\(12)
    );
\r_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[8]_i_1_n_0\,
      CO(3) => \NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_reg_reg[12]_i_1_n_1\,
      CO(1) => \r_reg_reg[12]_i_1_n_2\,
      CO(0) => \r_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[12]_i_1_n_4\,
      O(2) => \r_reg_reg[12]_i_1_n_5\,
      O(1) => \r_reg_reg[12]_i_1_n_6\,
      O(0) => \r_reg_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^r_reg_reg\(15 downto 12)
    );
\r_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1_n_6\,
      Q => \^r_reg_reg\(13)
    );
\r_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1_n_5\,
      Q => \^r_reg_reg\(14)
    );
\r_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[12]_i_1_n_4\,
      Q => \^r_reg_reg\(15)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1_n_6\,
      Q => \^r_reg_reg\(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1_n_5\,
      Q => \^r_reg_reg\(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[0]_i_1_n_4\,
      Q => \^r_reg_reg\(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1_n_7\,
      Q => \^r_reg_reg\(4)
    );
\r_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[0]_i_1_n_0\,
      CO(3) => \r_reg_reg[4]_i_1_n_0\,
      CO(2) => \r_reg_reg[4]_i_1_n_1\,
      CO(1) => \r_reg_reg[4]_i_1_n_2\,
      CO(0) => \r_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[4]_i_1_n_4\,
      O(2) => \r_reg_reg[4]_i_1_n_5\,
      O(1) => \r_reg_reg[4]_i_1_n_6\,
      O(0) => \r_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^r_reg_reg\(7 downto 4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1_n_6\,
      Q => \^r_reg_reg\(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1_n_5\,
      Q => \^r_reg_reg\(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[4]_i_1_n_4\,
      Q => \^r_reg_reg\(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1_n_7\,
      Q => \^r_reg_reg\(8)
    );
\r_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[4]_i_1_n_0\,
      CO(3) => \r_reg_reg[8]_i_1_n_0\,
      CO(2) => \r_reg_reg[8]_i_1_n_1\,
      CO(1) => \r_reg_reg[8]_i_1_n_2\,
      CO(0) => \r_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[8]_i_1_n_4\,
      O(2) => \r_reg_reg[8]_i_1_n_5\,
      O(1) => \r_reg_reg[8]_i_1_n_6\,
      O(0) => \r_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^r_reg_reg\(11 downto 8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => Q_reg,
      CE => '1',
      CLR => \slv_reg2_reg[28]\,
      D => \r_reg_reg[8]_i_1_n_6\,
      Q => \^r_reg_reg\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_19 is
  port (
    \r_reg_reg[15]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clock0 : in STD_LOGIC;
    \slv_reg2_reg[30]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_19 : entity is "upCounter16Bits";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_19 is
  signal \r_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal r_reg_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r_reg_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_reg_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_reg_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \^r_reg_reg[15]_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_reg_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \r_reg_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_r_reg_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \r_reg_reg[15]_0\ <= \^r_reg_reg[15]_0\;
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(0),
      I1 => \slv_reg2_reg[30]\(0),
      I2 => \slv_reg3_reg[31]\(0),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(0)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(1),
      I1 => \slv_reg2_reg[30]\(1),
      I2 => \slv_reg3_reg[31]\(1),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(1)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(2),
      I1 => \slv_reg2_reg[30]\(2),
      I2 => \slv_reg3_reg[31]\(2),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(2)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(3),
      I1 => \slv_reg2_reg[30]\(3),
      I2 => \slv_reg3_reg[31]\(3),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(3)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(4),
      I1 => \slv_reg2_reg[30]\(4),
      I2 => \slv_reg3_reg[31]\(4),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(4)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(5),
      I1 => \slv_reg2_reg[30]\(5),
      I2 => \slv_reg3_reg[31]\(5),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(5)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(6),
      I1 => \slv_reg2_reg[30]\(6),
      I2 => \slv_reg3_reg[31]\(6),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(6)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(7),
      I1 => \slv_reg2_reg[30]\(7),
      I2 => \slv_reg3_reg[31]\(7),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(7)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(8),
      I1 => \slv_reg2_reg[30]\(8),
      I2 => \slv_reg3_reg[31]\(8),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(8)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(9),
      I1 => \slv_reg2_reg[30]\(9),
      I2 => \slv_reg3_reg[31]\(9),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(9)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(10),
      I1 => \slv_reg2_reg[30]\(10),
      I2 => \slv_reg3_reg[31]\(10),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(10)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(11),
      I1 => \slv_reg2_reg[30]\(11),
      I2 => \slv_reg3_reg[31]\(11),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(11)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(12),
      I1 => \slv_reg2_reg[30]\(12),
      I2 => \slv_reg3_reg[31]\(12),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(12)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(13),
      I1 => \slv_reg2_reg[30]\(13),
      I2 => \slv_reg3_reg[31]\(13),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(13)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(14),
      I1 => \slv_reg2_reg[30]\(14),
      I2 => \slv_reg3_reg[31]\(14),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(14)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => r_reg_reg(15),
      I1 => \out\(0),
      I2 => \slv_reg3_reg[31]\(15),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(15)
    );
\r_reg[0]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \slv_reg2_reg[30]\(12),
      I1 => s00_axi_aresetn,
      O => \^r_reg_reg[15]_0\
    );
\r_reg[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_reg_reg(0),
      O => \r_reg[0]_i_3__0_n_0\
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[0]_i_1__0_n_7\,
      Q => r_reg_reg(0)
    );
\r_reg_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg_reg[0]_i_1__0_n_0\,
      CO(2) => \r_reg_reg[0]_i_1__0_n_1\,
      CO(1) => \r_reg_reg[0]_i_1__0_n_2\,
      CO(0) => \r_reg_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_reg_reg[0]_i_1__0_n_4\,
      O(2) => \r_reg_reg[0]_i_1__0_n_5\,
      O(1) => \r_reg_reg[0]_i_1__0_n_6\,
      O(0) => \r_reg_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => r_reg_reg(3 downto 1),
      S(0) => \r_reg[0]_i_3__0_n_0\
    );
\r_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[8]_i_1__0_n_5\,
      Q => r_reg_reg(10)
    );
\r_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[8]_i_1__0_n_4\,
      Q => r_reg_reg(11)
    );
\r_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[12]_i_1__0_n_7\,
      Q => r_reg_reg(12)
    );
\r_reg_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_r_reg_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \r_reg_reg[12]_i_1__0_n_1\,
      CO(1) => \r_reg_reg[12]_i_1__0_n_2\,
      CO(0) => \r_reg_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[12]_i_1__0_n_4\,
      O(2) => \r_reg_reg[12]_i_1__0_n_5\,
      O(1) => \r_reg_reg[12]_i_1__0_n_6\,
      O(0) => \r_reg_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => r_reg_reg(15 downto 12)
    );
\r_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[12]_i_1__0_n_6\,
      Q => r_reg_reg(13)
    );
\r_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[12]_i_1__0_n_5\,
      Q => r_reg_reg(14)
    );
\r_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[12]_i_1__0_n_4\,
      Q => r_reg_reg(15)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[0]_i_1__0_n_6\,
      Q => r_reg_reg(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[0]_i_1__0_n_5\,
      Q => r_reg_reg(2)
    );
\r_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[0]_i_1__0_n_4\,
      Q => r_reg_reg(3)
    );
\r_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[4]_i_1__0_n_7\,
      Q => r_reg_reg(4)
    );
\r_reg_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[0]_i_1__0_n_0\,
      CO(3) => \r_reg_reg[4]_i_1__0_n_0\,
      CO(2) => \r_reg_reg[4]_i_1__0_n_1\,
      CO(1) => \r_reg_reg[4]_i_1__0_n_2\,
      CO(0) => \r_reg_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[4]_i_1__0_n_4\,
      O(2) => \r_reg_reg[4]_i_1__0_n_5\,
      O(1) => \r_reg_reg[4]_i_1__0_n_6\,
      O(0) => \r_reg_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => r_reg_reg(7 downto 4)
    );
\r_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[4]_i_1__0_n_6\,
      Q => r_reg_reg(5)
    );
\r_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[4]_i_1__0_n_5\,
      Q => r_reg_reg(6)
    );
\r_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[4]_i_1__0_n_4\,
      Q => r_reg_reg(7)
    );
\r_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[8]_i_1__0_n_7\,
      Q => r_reg_reg(8)
    );
\r_reg_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg_reg[4]_i_1__0_n_0\,
      CO(3) => \r_reg_reg[8]_i_1__0_n_0\,
      CO(2) => \r_reg_reg[8]_i_1__0_n_1\,
      CO(1) => \r_reg_reg[8]_i_1__0_n_2\,
      CO(0) => \r_reg_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg_reg[8]_i_1__0_n_4\,
      O(2) => \r_reg_reg[8]_i_1__0_n_5\,
      O(1) => \r_reg_reg[8]_i_1__0_n_6\,
      O(0) => \r_reg_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => r_reg_reg(11 downto 8)
    );
\r_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clock0,
      CE => '1',
      CLR => \^r_reg_reg[15]_0\,
      D => \r_reg_reg[8]_i_1__0_n_6\,
      Q => r_reg_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamDebugger is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q_reg : in STD_LOGIC;
    clock0 : in STD_LOGIC;
    valid_out : in STD_LOGIC;
    \slv_reg2_reg[30]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamDebugger;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamDebugger is
  signal CNTR2_n_0 : STD_LOGIC;
  signal r_reg_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
CNTR0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits
     port map (
      D(15 downto 0) => D(15 downto 0),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      r_reg_reg(15 downto 0) => r_reg_reg(15 downto 0),
      \slv_reg2_reg[15]\(15 downto 0) => \slv_reg2_reg[30]\(15 downto 0),
      \slv_reg2_reg[28]\ => CNTR2_n_0,
      \slv_reg3_reg[15]\(15 downto 0) => \slv_reg3_reg[31]\(15 downto 0),
      valid_out => valid_out
    );
CNTR1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_18
     port map (
      Q_reg => Q_reg,
      r_reg_reg(15 downto 0) => r_reg_reg(15 downto 0),
      \slv_reg2_reg[28]\ => CNTR2_n_0
    );
CNTR2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_upCounter16Bits_19
     port map (
      D(15 downto 0) => D(31 downto 16),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      clock0 => clock0,
      \out\(0) => \out\(0),
      \r_reg_reg[15]_0\ => CNTR2_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg2_reg[30]\(14 downto 0) => \slv_reg2_reg[30]\(30 downto 16),
      \slv_reg3_reg[31]\(15 downto 0) => \slv_reg3_reg[31]\(31 downto 16)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : out STD_LOGIC;
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 20 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator is
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
  signal HSCK_int : STD_LOGIC;
  signal NSAMPLES_REG_n_0 : STD_LOGIC;
  signal NSAMPLES_REG_n_1 : STD_LOGIC;
  signal NSAMPLES_REG_n_10 : STD_LOGIC;
  signal NSAMPLES_REG_n_11 : STD_LOGIC;
  signal NSAMPLES_REG_n_12 : STD_LOGIC;
  signal NSAMPLES_REG_n_13 : STD_LOGIC;
  signal NSAMPLES_REG_n_14 : STD_LOGIC;
  signal NSAMPLES_REG_n_15 : STD_LOGIC;
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
  signal en_cntr_data : STD_LOGIC;
  signal en_cntr_samples : STD_LOGIC;
  signal ff0_n_1 : STD_LOGIC;
  signal ff1_n_1 : STD_LOGIC;
  signal load_state_data : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal start_int : STD_LOGIC;
  signal stop_int : STD_LOGIC;
begin
  \out\(0) <= \^out\(0);
CNTR_DATA: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter8Bits
     port map (
      D(1) => CNTR_DATA_n_0,
      D(0) => CNTR_DATA_n_1,
      \FSM_onehot_state_reg[2]\ => FSM_n_13,
      \FSM_onehot_state_reg[3]\ => FSM_n_14,
      \FSM_onehot_state_reg[4]\ => CNTR_DATA_n_2,
      clk0 => clk0,
      en_cntr_data => en_cntr_data,
      \out\(1) => FSM_n_2,
      \out\(0) => FSM_n_3,
      s00_axi_aresetn => s00_axi_aresetn_0
    );
CNTR_SAMPLES: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downCounter16Bits
     port map (
      clk0 => clk0,
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
      s00_axi_aresetn => s00_axi_aresetn
    );
FSM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator_fsm
     port map (
      CLK => load_state_data,
      D(3) => STATE_REG_n_0,
      D(2) => CNTR_DATA_n_0,
      D(1) => CNTR_DATA_n_1,
      D(0) => ff1_n_1,
      \FSM_onehot_state_reg[4]_0\ => FSM_n_11,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      Q => Q,
      Q_reg => Q_reg,
      \data_out_reg[0]\ => STATE_REG_n_1,
      \data_out_reg[15]\(15) => NSAMPLES_REG_n_0,
      \data_out_reg[15]\(14) => NSAMPLES_REG_n_1,
      \data_out_reg[15]\(13) => NSAMPLES_REG_n_2,
      \data_out_reg[15]\(12) => NSAMPLES_REG_n_3,
      \data_out_reg[15]\(11) => NSAMPLES_REG_n_4,
      \data_out_reg[15]\(10) => NSAMPLES_REG_n_5,
      \data_out_reg[15]\(9) => NSAMPLES_REG_n_6,
      \data_out_reg[15]\(8) => NSAMPLES_REG_n_7,
      \data_out_reg[15]\(7) => NSAMPLES_REG_n_8,
      \data_out_reg[15]\(6) => NSAMPLES_REG_n_9,
      \data_out_reg[15]\(5) => NSAMPLES_REG_n_10,
      \data_out_reg[15]\(4) => NSAMPLES_REG_n_11,
      \data_out_reg[15]\(3) => NSAMPLES_REG_n_12,
      \data_out_reg[15]\(2) => NSAMPLES_REG_n_13,
      \data_out_reg[15]\(1) => NSAMPLES_REG_n_14,
      \data_out_reg[15]\(0) => NSAMPLES_REG_n_15,
      en_cntr_data => en_cntr_data,
      \out\(6) => \^out\(0),
      \out\(5) => en_cntr_samples,
      \out\(4) => FSM_n_2,
      \out\(3) => FSM_n_3,
      \out\(2) => HSCK_int,
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
      \r_reg_reg[2]_C\ => FSM_n_17,
      \r_reg_reg[2]_P\ => FSM_n_33,
      \r_reg_reg[32]\ => CLK,
      \r_reg_reg[3]_C\ => FSM_n_18,
      \r_reg_reg[3]_P\ => FSM_n_34,
      \r_reg_reg[4]_C\ => FSM_n_19,
      \r_reg_reg[4]_P\ => FSM_n_14,
      \r_reg_reg[4]_P_0\ => FSM_n_35,
      \r_reg_reg[4]_P_1\ => CNTR_DATA_n_2,
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
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => s00_axi_aresetn_0,
      \slv_reg3_reg[31]\(2) => \slv_reg3_reg[31]\(20),
      \slv_reg3_reg[31]\(1 downto 0) => \slv_reg3_reg[31]\(17 downto 16),
      start_int => start_int,
      stop_int => stop_int
    );
NSAMPLES_REG: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_16bits
     port map (
      CLK => load_state_data,
      Q(15) => NSAMPLES_REG_n_0,
      Q(14) => NSAMPLES_REG_n_1,
      Q(13) => NSAMPLES_REG_n_2,
      Q(12) => NSAMPLES_REG_n_3,
      Q(11) => NSAMPLES_REG_n_4,
      Q(10) => NSAMPLES_REG_n_5,
      Q(9) => NSAMPLES_REG_n_6,
      Q(8) => NSAMPLES_REG_n_7,
      Q(7) => NSAMPLES_REG_n_8,
      Q(6) => NSAMPLES_REG_n_9,
      Q(5) => NSAMPLES_REG_n_10,
      Q(4) => NSAMPLES_REG_n_11,
      Q(3) => NSAMPLES_REG_n_12,
      Q(2) => NSAMPLES_REG_n_13,
      Q(1) => NSAMPLES_REG_n_14,
      Q(0) => NSAMPLES_REG_n_15,
      s00_axi_aresetn => s00_axi_aresetn_0,
      \slv_reg3_reg[15]\(15 downto 0) => \slv_reg3_reg[31]\(15 downto 0)
    );
SR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serializer17bits
     port map (
      D(0) => D(0),
      \out\(2) => en_cntr_samples,
      \out\(1) => HSCK_int,
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
STATE_REG: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_2bits
     port map (
      CLK => load_state_data,
      D(0) => STATE_REG_n_0,
      \FSM_onehot_state_reg[10]\ => FSM_n_11,
      \FSM_onehot_state_reg[4]\ => STATE_REG_n_1,
      Q_reg => ff0_n_1,
      \r_reg_reg[6]_P\ => CNTR_SAMPLES_n_0,
      s00_axi_aresetn => s00_axi_aresetn_0,
      \slv_reg3_reg[30]\(1 downto 0) => \slv_reg3_reg[31]\(19 downto 18),
      stop_int => stop_int
    );
ff0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_1
     port map (
      \FSM_onehot_state_reg[12]\ => ff0_n_1,
      clk0 => clk0,
      \out\(0) => \^out\(0),
      s00_axi_aresetn => s00_axi_aresetn_0,
      \slv_reg2_reg[31]\(0) => \slv_reg2_reg[31]\(2),
      start_int => start_int
    );
ff1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2
     port map (
      D(0) => ff1_n_1,
      clk0 => clk0,
      \out\(0) => FSM_n_6,
      s00_axi_aresetn => s00_axi_aresetn_0,
      \slv_reg2_reg[30]\(0) => \slv_reg2_reg[31]\(1),
      start_int => start_int,
      stop_int => stop_int
    );
ff2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_3
     port map (
      Q => Q,
      clk0 => clk0,
      s00_axi_aresetn => s00_axi_aresetn_0,
      \slv_reg2_reg[29]\(0) => \slv_reg2_reg[31]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Tokenizer is
  port (
    valid_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aresetn_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \FSM_onehot_state_reg[4]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Tokenizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Tokenizer is
  signal FF0_n_0 : STD_LOGIC;
  signal FF1_n_1 : STD_LOGIC;
  signal SR_n_0 : STD_LOGIC;
  signal SR_n_1 : STD_LOGIC;
  signal SR_n_10 : STD_LOGIC;
  signal SR_n_11 : STD_LOGIC;
  signal SR_n_12 : STD_LOGIC;
  signal SR_n_13 : STD_LOGIC;
  signal SR_n_14 : STD_LOGIC;
  signal SR_n_15 : STD_LOGIC;
  signal SR_n_16 : STD_LOGIC;
  signal SR_n_17 : STD_LOGIC;
  signal SR_n_18 : STD_LOGIC;
  signal SR_n_19 : STD_LOGIC;
  signal SR_n_2 : STD_LOGIC;
  signal SR_n_20 : STD_LOGIC;
  signal SR_n_21 : STD_LOGIC;
  signal SR_n_22 : STD_LOGIC;
  signal SR_n_23 : STD_LOGIC;
  signal SR_n_24 : STD_LOGIC;
  signal SR_n_25 : STD_LOGIC;
  signal SR_n_26 : STD_LOGIC;
  signal SR_n_27 : STD_LOGIC;
  signal SR_n_28 : STD_LOGIC;
  signal SR_n_29 : STD_LOGIC;
  signal SR_n_3 : STD_LOGIC;
  signal SR_n_30 : STD_LOGIC;
  signal SR_n_31 : STD_LOGIC;
  signal SR_n_32 : STD_LOGIC;
  signal SR_n_4 : STD_LOGIC;
  signal SR_n_5 : STD_LOGIC;
  signal SR_n_6 : STD_LOGIC;
  signal SR_n_7 : STD_LOGIC;
  signal SR_n_8 : STD_LOGIC;
  signal SR_n_9 : STD_LOGIC;
begin
FF0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff
     port map (
      Q(0) => SR_n_0,
      clk0 => clk0,
      \data_out_reg[31]\ => FF0_n_0,
      s00_axi_aresetn => s00_axi_aresetn_0
    );
FF1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_0
     port map (
      CLK => CLK,
      Q_reg_0 => FF0_n_0,
      \r_reg_reg[1]\ => FF1_n_1,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => s00_axi_aresetn_0,
      valid_out => valid_out
    );
R: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      Q_reg => FF0_n_0,
      \r_reg_reg[31]\(31) => SR_n_1,
      \r_reg_reg[31]\(30) => SR_n_2,
      \r_reg_reg[31]\(29) => SR_n_3,
      \r_reg_reg[31]\(28) => SR_n_4,
      \r_reg_reg[31]\(27) => SR_n_5,
      \r_reg_reg[31]\(26) => SR_n_6,
      \r_reg_reg[31]\(25) => SR_n_7,
      \r_reg_reg[31]\(24) => SR_n_8,
      \r_reg_reg[31]\(23) => SR_n_9,
      \r_reg_reg[31]\(22) => SR_n_10,
      \r_reg_reg[31]\(21) => SR_n_11,
      \r_reg_reg[31]\(20) => SR_n_12,
      \r_reg_reg[31]\(19) => SR_n_13,
      \r_reg_reg[31]\(18) => SR_n_14,
      \r_reg_reg[31]\(17) => SR_n_15,
      \r_reg_reg[31]\(16) => SR_n_16,
      \r_reg_reg[31]\(15) => SR_n_17,
      \r_reg_reg[31]\(14) => SR_n_18,
      \r_reg_reg[31]\(13) => SR_n_19,
      \r_reg_reg[31]\(12) => SR_n_20,
      \r_reg_reg[31]\(11) => SR_n_21,
      \r_reg_reg[31]\(10) => SR_n_22,
      \r_reg_reg[31]\(9) => SR_n_23,
      \r_reg_reg[31]\(8) => SR_n_24,
      \r_reg_reg[31]\(7) => SR_n_25,
      \r_reg_reg[31]\(6) => SR_n_26,
      \r_reg_reg[31]\(5) => SR_n_27,
      \r_reg_reg[31]\(4) => SR_n_28,
      \r_reg_reg[31]\(3) => SR_n_29,
      \r_reg_reg[31]\(2) => SR_n_30,
      \r_reg_reg[31]\(1) => SR_n_31,
      \r_reg_reg[31]\(0) => SR_n_32,
      s00_axi_aresetn => s00_axi_aresetn_0
    );
SR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tokenizerShiftRegister32bits
     port map (
      D(0) => D(0),
      \FSM_onehot_state_reg[4]\ => \FSM_onehot_state_reg[4]\,
      Q(32) => SR_n_0,
      Q(31) => SR_n_1,
      Q(30) => SR_n_2,
      Q(29) => SR_n_3,
      Q(28) => SR_n_4,
      Q(27) => SR_n_5,
      Q(26) => SR_n_6,
      Q(25) => SR_n_7,
      Q(24) => SR_n_8,
      Q(23) => SR_n_9,
      Q(22) => SR_n_10,
      Q(21) => SR_n_11,
      Q(20) => SR_n_12,
      Q(19) => SR_n_13,
      Q(18) => SR_n_14,
      Q(17) => SR_n_15,
      Q(16) => SR_n_16,
      Q(15) => SR_n_17,
      Q(14) => SR_n_18,
      Q(13) => SR_n_19,
      Q(12) => SR_n_20,
      Q(11) => SR_n_21,
      Q(10) => SR_n_22,
      Q(9) => SR_n_23,
      Q(8) => SR_n_24,
      Q(7) => SR_n_25,
      Q(6) => SR_n_26,
      Q(5) => SR_n_27,
      Q(4) => SR_n_28,
      Q(3) => SR_n_29,
      Q(2) => SR_n_30,
      Q(1) => SR_n_31,
      Q(0) => SR_n_32,
      Q_reg => FF1_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_by_2 is
  port (
    MCK : out STD_LOGIC;
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_by_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_by_2 is
begin
ff0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_20
     port map (
      MCK => MCK,
      clk0 => clk0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8x32bits is
  port (
    \data_out_reg[31]\ : out STD_LOGIC;
    \data_out_reg[30]\ : out STD_LOGIC;
    \data_out_reg[29]\ : out STD_LOGIC;
    \data_out_reg[28]\ : out STD_LOGIC;
    \data_out_reg[27]\ : out STD_LOGIC;
    \data_out_reg[26]\ : out STD_LOGIC;
    \data_out_reg[25]\ : out STD_LOGIC;
    \data_out_reg[24]\ : out STD_LOGIC;
    \data_out_reg[23]\ : out STD_LOGIC;
    \data_out_reg[22]\ : out STD_LOGIC;
    \data_out_reg[21]\ : out STD_LOGIC;
    \data_out_reg[20]\ : out STD_LOGIC;
    \data_out_reg[19]\ : out STD_LOGIC;
    \data_out_reg[18]\ : out STD_LOGIC;
    \data_out_reg[17]\ : out STD_LOGIC;
    \data_out_reg[16]\ : out STD_LOGIC;
    \data_out_reg[15]\ : out STD_LOGIC;
    \data_out_reg[14]\ : out STD_LOGIC;
    \data_out_reg[13]\ : out STD_LOGIC;
    \data_out_reg[12]\ : out STD_LOGIC;
    \data_out_reg[11]\ : out STD_LOGIC;
    \data_out_reg[10]\ : out STD_LOGIC;
    \data_out_reg[9]\ : out STD_LOGIC;
    \data_out_reg[8]\ : out STD_LOGIC;
    \data_out_reg[7]\ : out STD_LOGIC;
    \data_out_reg[6]\ : out STD_LOGIC;
    \data_out_reg[5]\ : out STD_LOGIC;
    \data_out_reg[4]\ : out STD_LOGIC;
    \data_out_reg[3]\ : out STD_LOGIC;
    \data_out_reg[2]\ : out STD_LOGIC;
    \data_out_reg[1]\ : out STD_LOGIC;
    \data_out_reg[0]\ : out STD_LOGIC;
    shift : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8x32bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8x32bits is
  signal Reg0_n_0 : STD_LOGIC;
  signal Reg1_n_0 : STD_LOGIC;
  signal Reg2_n_0 : STD_LOGIC;
  signal Reg3_n_0 : STD_LOGIC;
  signal Reg4_n_0 : STD_LOGIC;
  signal Reg5_n_0 : STD_LOGIC;
  signal Reg6_n_0 : STD_LOGIC;
  signal Reg6_n_1 : STD_LOGIC;
  signal Reg6_n_10 : STD_LOGIC;
  signal Reg6_n_11 : STD_LOGIC;
  signal Reg6_n_12 : STD_LOGIC;
  signal Reg6_n_13 : STD_LOGIC;
  signal Reg6_n_14 : STD_LOGIC;
  signal Reg6_n_15 : STD_LOGIC;
  signal Reg6_n_16 : STD_LOGIC;
  signal Reg6_n_17 : STD_LOGIC;
  signal Reg6_n_18 : STD_LOGIC;
  signal Reg6_n_19 : STD_LOGIC;
  signal Reg6_n_2 : STD_LOGIC;
  signal Reg6_n_20 : STD_LOGIC;
  signal Reg6_n_21 : STD_LOGIC;
  signal Reg6_n_22 : STD_LOGIC;
  signal Reg6_n_23 : STD_LOGIC;
  signal Reg6_n_24 : STD_LOGIC;
  signal Reg6_n_25 : STD_LOGIC;
  signal Reg6_n_26 : STD_LOGIC;
  signal Reg6_n_27 : STD_LOGIC;
  signal Reg6_n_28 : STD_LOGIC;
  signal Reg6_n_29 : STD_LOGIC;
  signal Reg6_n_3 : STD_LOGIC;
  signal Reg6_n_30 : STD_LOGIC;
  signal Reg6_n_31 : STD_LOGIC;
  signal Reg6_n_32 : STD_LOGIC;
  signal Reg6_n_4 : STD_LOGIC;
  signal Reg6_n_5 : STD_LOGIC;
  signal Reg6_n_6 : STD_LOGIC;
  signal Reg6_n_7 : STD_LOGIC;
  signal Reg6_n_8 : STD_LOGIC;
  signal Reg6_n_9 : STD_LOGIC;
begin
Reg0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_10
     port map (
      data_out_reg_c_0 => Reg0_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_11
     port map (
      data_out_reg_c_0 => Reg1_n_0,
      data_out_reg_c_1 => Reg0_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_12
     port map (
      data_out_reg_c_0 => Reg2_n_0,
      data_out_reg_c_1 => Reg1_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_13
     port map (
      data_out_reg_c_0 => Reg3_n_0,
      data_out_reg_c_1 => Reg2_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_14
     port map (
      data_out_reg_c_0 => Reg4_n_0,
      data_out_reg_c_1 => Reg3_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_15
     port map (
      data_out_reg_c_0 => Reg5_n_0,
      data_out_reg_c_1 => Reg4_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg6: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_16
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_32,
      \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_22,
      \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_21,
      \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_20,
      \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_19,
      \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_18,
      \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_17,
      \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_16,
      \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_15,
      \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_14,
      \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_13,
      \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_31,
      \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_12,
      \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_11,
      \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_10,
      \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_9,
      \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_8,
      \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_7,
      \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_6,
      \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_5,
      \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_4,
      \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_3,
      \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_30,
      \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_2,
      \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_1,
      \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_29,
      \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_28,
      \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_27,
      \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_26,
      \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_25,
      \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_24,
      \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => Reg6_n_23,
      data_out_reg_c_0 => Reg6_n_0,
      data_out_reg_c_1 => Reg5_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
Reg7: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_17
     port map (
      \data_out_reg[0]\ => \data_out_reg[0]\,
      \data_out_reg[0]_0\ => Reg6_n_32,
      \data_out_reg[10]\ => \data_out_reg[10]\,
      \data_out_reg[10]_0\ => Reg6_n_22,
      \data_out_reg[11]\ => \data_out_reg[11]\,
      \data_out_reg[11]_0\ => Reg6_n_21,
      \data_out_reg[12]\ => \data_out_reg[12]\,
      \data_out_reg[12]_0\ => Reg6_n_20,
      \data_out_reg[13]\ => \data_out_reg[13]\,
      \data_out_reg[13]_0\ => Reg6_n_19,
      \data_out_reg[14]\ => \data_out_reg[14]\,
      \data_out_reg[14]_0\ => Reg6_n_18,
      \data_out_reg[15]\ => \data_out_reg[15]\,
      \data_out_reg[15]_0\ => Reg6_n_17,
      \data_out_reg[16]\ => \data_out_reg[16]\,
      \data_out_reg[16]_0\ => Reg6_n_16,
      \data_out_reg[17]\ => \data_out_reg[17]\,
      \data_out_reg[17]_0\ => Reg6_n_15,
      \data_out_reg[18]\ => \data_out_reg[18]\,
      \data_out_reg[18]_0\ => Reg6_n_14,
      \data_out_reg[19]\ => \data_out_reg[19]\,
      \data_out_reg[19]_0\ => Reg6_n_13,
      \data_out_reg[1]\ => \data_out_reg[1]\,
      \data_out_reg[1]_0\ => Reg6_n_31,
      \data_out_reg[20]\ => \data_out_reg[20]\,
      \data_out_reg[20]_0\ => Reg6_n_12,
      \data_out_reg[21]\ => \data_out_reg[21]\,
      \data_out_reg[21]_0\ => Reg6_n_11,
      \data_out_reg[22]\ => \data_out_reg[22]\,
      \data_out_reg[22]_0\ => Reg6_n_10,
      \data_out_reg[23]\ => \data_out_reg[23]\,
      \data_out_reg[23]_0\ => Reg6_n_9,
      \data_out_reg[24]\ => \data_out_reg[24]\,
      \data_out_reg[24]_0\ => Reg6_n_8,
      \data_out_reg[25]\ => \data_out_reg[25]\,
      \data_out_reg[25]_0\ => Reg6_n_7,
      \data_out_reg[26]\ => \data_out_reg[26]\,
      \data_out_reg[26]_0\ => Reg6_n_6,
      \data_out_reg[27]\ => \data_out_reg[27]\,
      \data_out_reg[27]_0\ => Reg6_n_5,
      \data_out_reg[28]\ => \data_out_reg[28]\,
      \data_out_reg[28]_0\ => Reg6_n_4,
      \data_out_reg[29]\ => \data_out_reg[29]\,
      \data_out_reg[29]_0\ => Reg6_n_3,
      \data_out_reg[2]\ => \data_out_reg[2]\,
      \data_out_reg[2]_0\ => Reg6_n_30,
      \data_out_reg[30]\ => \data_out_reg[30]\,
      \data_out_reg[30]_0\ => Reg6_n_2,
      \data_out_reg[31]\ => \data_out_reg[31]\,
      \data_out_reg[31]_0\ => Reg6_n_1,
      \data_out_reg[3]\ => \data_out_reg[3]\,
      \data_out_reg[3]_0\ => Reg6_n_29,
      \data_out_reg[4]\ => \data_out_reg[4]\,
      \data_out_reg[4]_0\ => Reg6_n_28,
      \data_out_reg[5]\ => \data_out_reg[5]\,
      \data_out_reg[5]_0\ => Reg6_n_27,
      \data_out_reg[6]\ => \data_out_reg[6]\,
      \data_out_reg[6]_0\ => Reg6_n_26,
      \data_out_reg[7]\ => \data_out_reg[7]\,
      \data_out_reg[7]_0\ => Reg6_n_25,
      \data_out_reg[8]\ => \data_out_reg[8]\,
      \data_out_reg[8]_0\ => Reg6_n_24,
      \data_out_reg[9]\ => \data_out_reg[9]\,
      \data_out_reg[9]_0\ => Reg6_n_23,
      data_out_reg_c_0 => Reg6_n_0,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer is
  port (
    \data_out_reg[31]\ : out STD_LOGIC;
    tlast : out STD_LOGIC;
    tvalid : out STD_LOGIC;
    clock0_0 : out STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clock0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    valid_out : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer is
  signal D0 : STD_LOGIC;
  signal FF0_n_0 : STD_LOGIC;
  signal FSM_n_0 : STD_LOGIC;
  signal FSM_n_1 : STD_LOGIC;
  signal FSM_n_4 : STD_LOGIC;
  signal Reg9_n_0 : STD_LOGIC;
  signal Reg9_n_1 : STD_LOGIC;
  signal Reg9_n_10 : STD_LOGIC;
  signal Reg9_n_11 : STD_LOGIC;
  signal Reg9_n_12 : STD_LOGIC;
  signal Reg9_n_13 : STD_LOGIC;
  signal Reg9_n_14 : STD_LOGIC;
  signal Reg9_n_15 : STD_LOGIC;
  signal Reg9_n_16 : STD_LOGIC;
  signal Reg9_n_17 : STD_LOGIC;
  signal Reg9_n_18 : STD_LOGIC;
  signal Reg9_n_19 : STD_LOGIC;
  signal Reg9_n_2 : STD_LOGIC;
  signal Reg9_n_20 : STD_LOGIC;
  signal Reg9_n_21 : STD_LOGIC;
  signal Reg9_n_22 : STD_LOGIC;
  signal Reg9_n_23 : STD_LOGIC;
  signal Reg9_n_24 : STD_LOGIC;
  signal Reg9_n_25 : STD_LOGIC;
  signal Reg9_n_26 : STD_LOGIC;
  signal Reg9_n_27 : STD_LOGIC;
  signal Reg9_n_28 : STD_LOGIC;
  signal Reg9_n_29 : STD_LOGIC;
  signal Reg9_n_3 : STD_LOGIC;
  signal Reg9_n_30 : STD_LOGIC;
  signal Reg9_n_31 : STD_LOGIC;
  signal Reg9_n_4 : STD_LOGIC;
  signal Reg9_n_5 : STD_LOGIC;
  signal Reg9_n_6 : STD_LOGIC;
  signal Reg9_n_7 : STD_LOGIC;
  signal Reg9_n_8 : STD_LOGIC;
  signal Reg9_n_9 : STD_LOGIC;
  signal \^data_out_reg[31]\ : STD_LOGIC;
  signal delayLine_n_0 : STD_LOGIC;
  signal delayLine_n_1 : STD_LOGIC;
  signal delayLine_n_10 : STD_LOGIC;
  signal delayLine_n_11 : STD_LOGIC;
  signal delayLine_n_12 : STD_LOGIC;
  signal delayLine_n_13 : STD_LOGIC;
  signal delayLine_n_14 : STD_LOGIC;
  signal delayLine_n_15 : STD_LOGIC;
  signal delayLine_n_16 : STD_LOGIC;
  signal delayLine_n_17 : STD_LOGIC;
  signal delayLine_n_18 : STD_LOGIC;
  signal delayLine_n_19 : STD_LOGIC;
  signal delayLine_n_2 : STD_LOGIC;
  signal delayLine_n_20 : STD_LOGIC;
  signal delayLine_n_21 : STD_LOGIC;
  signal delayLine_n_22 : STD_LOGIC;
  signal delayLine_n_23 : STD_LOGIC;
  signal delayLine_n_24 : STD_LOGIC;
  signal delayLine_n_25 : STD_LOGIC;
  signal delayLine_n_26 : STD_LOGIC;
  signal delayLine_n_27 : STD_LOGIC;
  signal delayLine_n_28 : STD_LOGIC;
  signal delayLine_n_29 : STD_LOGIC;
  signal delayLine_n_3 : STD_LOGIC;
  signal delayLine_n_30 : STD_LOGIC;
  signal delayLine_n_31 : STD_LOGIC;
  signal delayLine_n_4 : STD_LOGIC;
  signal delayLine_n_5 : STD_LOGIC;
  signal delayLine_n_6 : STD_LOGIC;
  signal delayLine_n_7 : STD_LOGIC;
  signal delayLine_n_8 : STD_LOGIC;
  signal delayLine_n_9 : STD_LOGIC;
  signal inj_bit : STD_LOGIC;
  signal last : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal shift : STD_LOGIC;
  signal valid_fsm : STD_LOGIC;
begin
  \data_out_reg[31]\ <= \^data_out_reg[31]\;
FF0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_4
     port map (
      clock0 => clock0,
      inj_bit => inj_bit,
      \out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_SR9_out_reg_c_5\ => FF0_n_0,
      s00_axi_aresetn => \^data_out_reg[31]\
    );
FF1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_5
     port map (
      D0 => D0,
      clock0 => clock0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => \^data_out_reg[31]\,
      shift => shift,
      valid_out => valid_out
    );
FF2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_6
     port map (
      clock0 => clock0,
      last => last,
      s00_axi_aresetn => \^data_out_reg[31]\,
      tlast => tlast
    );
FF3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_7
     port map (
      clock0 => clock0,
      clock0_0 => clock0_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => \^data_out_reg[31]\,
      tvalid => tvalid,
      valid_fsm => valid_fsm
    );
FSM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer_fsm
     port map (
      D(0) => next_state(0),
      inj_bit => inj_bit,
      \out\(1) => FSM_n_0,
      \out\(0) => FSM_n_1,
      \out_reg[8]\ => FSM_n_4,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^data_out_reg[31]\,
      valid_fsm => valid_fsm
    );
Reg10: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_8
     port map (
      D(31) => Reg9_n_0,
      D(30) => Reg9_n_1,
      D(29) => Reg9_n_2,
      D(28) => Reg9_n_3,
      D(27) => Reg9_n_4,
      D(26) => Reg9_n_5,
      D(25) => Reg9_n_6,
      D(24) => Reg9_n_7,
      D(23) => Reg9_n_8,
      D(22) => Reg9_n_9,
      D(21) => Reg9_n_10,
      D(20) => Reg9_n_11,
      D(19) => Reg9_n_12,
      D(18) => Reg9_n_13,
      D(17) => Reg9_n_14,
      D(16) => Reg9_n_15,
      D(15) => Reg9_n_16,
      D(14) => Reg9_n_17,
      D(13) => Reg9_n_18,
      D(12) => Reg9_n_19,
      D(11) => Reg9_n_20,
      D(10) => Reg9_n_21,
      D(9) => Reg9_n_22,
      D(8) => Reg9_n_23,
      D(7) => Reg9_n_24,
      D(6) => Reg9_n_25,
      D(5) => Reg9_n_26,
      D(4) => Reg9_n_27,
      D(3) => Reg9_n_28,
      D(2) => Reg9_n_29,
      D(1) => Reg9_n_30,
      D(0) => Reg9_n_31,
      clock0 => clock0,
      s00_axi_aresetn => \^data_out_reg[31]\,
      tdata(31 downto 0) => tdata(31 downto 0)
    );
Reg9: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_register_32bits_9
     port map (
      D(31) => Reg9_n_0,
      D(30) => Reg9_n_1,
      D(29) => Reg9_n_2,
      D(28) => Reg9_n_3,
      D(27) => Reg9_n_4,
      D(26) => Reg9_n_5,
      D(25) => Reg9_n_6,
      D(24) => Reg9_n_7,
      D(23) => Reg9_n_8,
      D(22) => Reg9_n_9,
      D(21) => Reg9_n_10,
      D(20) => Reg9_n_11,
      D(19) => Reg9_n_12,
      D(18) => Reg9_n_13,
      D(17) => Reg9_n_14,
      D(16) => Reg9_n_15,
      D(15) => Reg9_n_16,
      D(14) => Reg9_n_17,
      D(13) => Reg9_n_18,
      D(12) => Reg9_n_19,
      D(11) => Reg9_n_20,
      D(10) => Reg9_n_21,
      D(9) => Reg9_n_22,
      D(8) => Reg9_n_23,
      D(7) => Reg9_n_24,
      D(6) => Reg9_n_25,
      D(5) => Reg9_n_26,
      D(4) => Reg9_n_27,
      D(3) => Reg9_n_28,
      D(2) => Reg9_n_29,
      D(1) => Reg9_n_30,
      D(0) => Reg9_n_31,
      \data_out_reg[0]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_31,
      \data_out_reg[10]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_21,
      \data_out_reg[11]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_20,
      \data_out_reg[12]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_19,
      \data_out_reg[13]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_18,
      \data_out_reg[14]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_17,
      \data_out_reg[15]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_16,
      \data_out_reg[16]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_15,
      \data_out_reg[17]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_14,
      \data_out_reg[18]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_13,
      \data_out_reg[19]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_12,
      \data_out_reg[1]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_30,
      \data_out_reg[20]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_11,
      \data_out_reg[21]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_10,
      \data_out_reg[22]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_9,
      \data_out_reg[23]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_8,
      \data_out_reg[24]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_7,
      \data_out_reg[25]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_6,
      \data_out_reg[26]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_5,
      \data_out_reg[27]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_4,
      \data_out_reg[28]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_3,
      \data_out_reg[29]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_2,
      \data_out_reg[2]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_29,
      \data_out_reg[30]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_1,
      \data_out_reg[31]_0\ => \^data_out_reg[31]\,
      \data_out_reg[31]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_0,
      \data_out_reg[3]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_28,
      \data_out_reg[4]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_27,
      \data_out_reg[5]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_26,
      \data_out_reg[6]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_25,
      \data_out_reg[7]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_24,
      \data_out_reg[8]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_23,
      \data_out_reg[9]_inst_axi_gyro_hsi_v1_0_S00_AXI_inst_GYRO_ADC_OUT_STREAM_GYRO_Packetizer_delayLine_Reg7_data_out_reg_c\ => delayLine_n_22,
      s00_axi_aresetn => s00_axi_aresetn,
      shift => shift
    );
SR9: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_reg_9bits
     port map (
      D(0) => next_state(0),
      D0 => D0,
      \FSM_sequential_state_reg[0]\ => FSM_n_4,
      Q_reg => FF0_n_0,
      last => last,
      \out\(1) => FSM_n_0,
      \out\(0) => FSM_n_1,
      shift => shift
    );
delayLine: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay_line_8x32bits
     port map (
      Q(31 downto 0) => Q(31 downto 0),
      \data_out_reg[0]\ => delayLine_n_31,
      \data_out_reg[10]\ => delayLine_n_21,
      \data_out_reg[11]\ => delayLine_n_20,
      \data_out_reg[12]\ => delayLine_n_19,
      \data_out_reg[13]\ => delayLine_n_18,
      \data_out_reg[14]\ => delayLine_n_17,
      \data_out_reg[15]\ => delayLine_n_16,
      \data_out_reg[16]\ => delayLine_n_15,
      \data_out_reg[17]\ => delayLine_n_14,
      \data_out_reg[18]\ => delayLine_n_13,
      \data_out_reg[19]\ => delayLine_n_12,
      \data_out_reg[1]\ => delayLine_n_30,
      \data_out_reg[20]\ => delayLine_n_11,
      \data_out_reg[21]\ => delayLine_n_10,
      \data_out_reg[22]\ => delayLine_n_9,
      \data_out_reg[23]\ => delayLine_n_8,
      \data_out_reg[24]\ => delayLine_n_7,
      \data_out_reg[25]\ => delayLine_n_6,
      \data_out_reg[26]\ => delayLine_n_5,
      \data_out_reg[27]\ => delayLine_n_4,
      \data_out_reg[28]\ => delayLine_n_3,
      \data_out_reg[29]\ => delayLine_n_2,
      \data_out_reg[2]\ => delayLine_n_29,
      \data_out_reg[30]\ => delayLine_n_1,
      \data_out_reg[31]\ => delayLine_n_0,
      \data_out_reg[3]\ => delayLine_n_28,
      \data_out_reg[4]\ => delayLine_n_27,
      \data_out_reg[5]\ => delayLine_n_26,
      \data_out_reg[6]\ => delayLine_n_25,
      \data_out_reg[7]\ => delayLine_n_24,
      \data_out_reg[8]\ => delayLine_n_23,
      \data_out_reg[9]\ => delayLine_n_22,
      s00_axi_aresetn => \^data_out_reg[31]\,
      shift => shift
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamPipeline is
  port (
    CLK : out STD_LOGIC;
    \data_out_reg[31]\ : out STD_LOGIC;
    tlast : out STD_LOGIC;
    tvalid : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clock0 : in STD_LOGIC;
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamPipeline;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamPipeline is
  signal \^clk\ : STD_LOGIC;
  signal GYRO_StreamGenerator_n_4 : STD_LOGIC;
  signal GYRO_Tokenizer_n_1 : STD_LOGIC;
  signal GYRO_Tokenizer_n_10 : STD_LOGIC;
  signal GYRO_Tokenizer_n_11 : STD_LOGIC;
  signal GYRO_Tokenizer_n_12 : STD_LOGIC;
  signal GYRO_Tokenizer_n_13 : STD_LOGIC;
  signal GYRO_Tokenizer_n_14 : STD_LOGIC;
  signal GYRO_Tokenizer_n_15 : STD_LOGIC;
  signal GYRO_Tokenizer_n_16 : STD_LOGIC;
  signal GYRO_Tokenizer_n_17 : STD_LOGIC;
  signal GYRO_Tokenizer_n_18 : STD_LOGIC;
  signal GYRO_Tokenizer_n_19 : STD_LOGIC;
  signal GYRO_Tokenizer_n_2 : STD_LOGIC;
  signal GYRO_Tokenizer_n_20 : STD_LOGIC;
  signal GYRO_Tokenizer_n_21 : STD_LOGIC;
  signal GYRO_Tokenizer_n_22 : STD_LOGIC;
  signal GYRO_Tokenizer_n_23 : STD_LOGIC;
  signal GYRO_Tokenizer_n_24 : STD_LOGIC;
  signal GYRO_Tokenizer_n_25 : STD_LOGIC;
  signal GYRO_Tokenizer_n_26 : STD_LOGIC;
  signal GYRO_Tokenizer_n_27 : STD_LOGIC;
  signal GYRO_Tokenizer_n_28 : STD_LOGIC;
  signal GYRO_Tokenizer_n_29 : STD_LOGIC;
  signal GYRO_Tokenizer_n_3 : STD_LOGIC;
  signal GYRO_Tokenizer_n_30 : STD_LOGIC;
  signal GYRO_Tokenizer_n_31 : STD_LOGIC;
  signal GYRO_Tokenizer_n_32 : STD_LOGIC;
  signal GYRO_Tokenizer_n_4 : STD_LOGIC;
  signal GYRO_Tokenizer_n_5 : STD_LOGIC;
  signal GYRO_Tokenizer_n_6 : STD_LOGIC;
  signal GYRO_Tokenizer_n_7 : STD_LOGIC;
  signal GYRO_Tokenizer_n_8 : STD_LOGIC;
  signal GYRO_Tokenizer_n_9 : STD_LOGIC;
  signal HSDATA_int : STD_LOGIC;
  signal clock0_0 : STD_LOGIC;
  signal \^data_out_reg[31]\ : STD_LOGIC;
  signal doneSamples : STD_LOGIC;
  signal \^tlast\ : STD_LOGIC;
  signal valid_out : STD_LOGIC;
begin
  CLK <= \^clk\;
  \data_out_reg[31]\ <= \^data_out_reg[31]\;
  tlast <= \^tlast\;
CLK_DIV2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider_by_2
     port map (
      MCK => \^clk\,
      clk0 => clk0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => \^data_out_reg[31]\
    );
GYRO_Debugger: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamDebugger
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q_reg => \^tlast\,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      clock0 => clock0_0,
      \out\(0) => doneSamples,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg2_reg[30]\(30 downto 0) => \slv_reg2_reg[31]\(30 downto 0),
      \slv_reg3_reg[31]\(31 downto 0) => \slv_reg3_reg[31]\(31 downto 0),
      valid_out => valid_out
    );
GYRO_Packetizer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Packetizer
     port map (
      Q(31) => GYRO_Tokenizer_n_1,
      Q(30) => GYRO_Tokenizer_n_2,
      Q(29) => GYRO_Tokenizer_n_3,
      Q(28) => GYRO_Tokenizer_n_4,
      Q(27) => GYRO_Tokenizer_n_5,
      Q(26) => GYRO_Tokenizer_n_6,
      Q(25) => GYRO_Tokenizer_n_7,
      Q(24) => GYRO_Tokenizer_n_8,
      Q(23) => GYRO_Tokenizer_n_9,
      Q(22) => GYRO_Tokenizer_n_10,
      Q(21) => GYRO_Tokenizer_n_11,
      Q(20) => GYRO_Tokenizer_n_12,
      Q(19) => GYRO_Tokenizer_n_13,
      Q(18) => GYRO_Tokenizer_n_14,
      Q(17) => GYRO_Tokenizer_n_15,
      Q(16) => GYRO_Tokenizer_n_16,
      Q(15) => GYRO_Tokenizer_n_17,
      Q(14) => GYRO_Tokenizer_n_18,
      Q(13) => GYRO_Tokenizer_n_19,
      Q(12) => GYRO_Tokenizer_n_20,
      Q(11) => GYRO_Tokenizer_n_21,
      Q(10) => GYRO_Tokenizer_n_22,
      Q(9) => GYRO_Tokenizer_n_23,
      Q(8) => GYRO_Tokenizer_n_24,
      Q(7) => GYRO_Tokenizer_n_25,
      Q(6) => GYRO_Tokenizer_n_26,
      Q(5) => GYRO_Tokenizer_n_27,
      Q(4) => GYRO_Tokenizer_n_28,
      Q(3) => GYRO_Tokenizer_n_29,
      Q(2) => GYRO_Tokenizer_n_30,
      Q(1) => GYRO_Tokenizer_n_31,
      Q(0) => GYRO_Tokenizer_n_32,
      clock0 => clock0,
      clock0_0 => clock0_0,
      \data_out_reg[31]\ => \^data_out_reg[31]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      tdata(31 downto 0) => tdata(31 downto 0),
      tlast => \^tlast\,
      tvalid => tvalid,
      valid_out => valid_out
    );
GYRO_StreamGenerator: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamGenerator
     port map (
      CLK => GYRO_StreamGenerator_n_4,
      D(0) => HSDATA_int,
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      Q_reg => \^clk\,
      clk0 => clk0,
      \out\(0) => doneSamples,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^data_out_reg[31]\,
      \slv_reg2_reg[31]\(2 downto 0) => \slv_reg2_reg[31]\(31 downto 29),
      \slv_reg3_reg[31]\(20 downto 18) => \slv_reg3_reg[31]\(31 downto 29),
      \slv_reg3_reg[31]\(17 downto 16) => \slv_reg3_reg[31]\(25 downto 24),
      \slv_reg3_reg[31]\(15 downto 0) => \slv_reg3_reg[31]\(15 downto 0)
    );
GYRO_Tokenizer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Tokenizer
     port map (
      CLK => \^clk\,
      D(0) => HSDATA_int,
      \FSM_onehot_state_reg[4]\ => GYRO_StreamGenerator_n_4,
      Q(31) => GYRO_Tokenizer_n_1,
      Q(30) => GYRO_Tokenizer_n_2,
      Q(29) => GYRO_Tokenizer_n_3,
      Q(28) => GYRO_Tokenizer_n_4,
      Q(27) => GYRO_Tokenizer_n_5,
      Q(26) => GYRO_Tokenizer_n_6,
      Q(25) => GYRO_Tokenizer_n_7,
      Q(24) => GYRO_Tokenizer_n_8,
      Q(23) => GYRO_Tokenizer_n_9,
      Q(22) => GYRO_Tokenizer_n_10,
      Q(21) => GYRO_Tokenizer_n_11,
      Q(20) => GYRO_Tokenizer_n_12,
      Q(19) => GYRO_Tokenizer_n_13,
      Q(18) => GYRO_Tokenizer_n_14,
      Q(17) => GYRO_Tokenizer_n_15,
      Q(16) => GYRO_Tokenizer_n_16,
      Q(15) => GYRO_Tokenizer_n_17,
      Q(14) => GYRO_Tokenizer_n_18,
      Q(13) => GYRO_Tokenizer_n_19,
      Q(12) => GYRO_Tokenizer_n_20,
      Q(11) => GYRO_Tokenizer_n_21,
      Q(10) => GYRO_Tokenizer_n_22,
      Q(9) => GYRO_Tokenizer_n_23,
      Q(8) => GYRO_Tokenizer_n_24,
      Q(7) => GYRO_Tokenizer_n_25,
      Q(6) => GYRO_Tokenizer_n_26,
      Q(5) => GYRO_Tokenizer_n_27,
      Q(4) => GYRO_Tokenizer_n_28,
      Q(3) => GYRO_Tokenizer_n_29,
      Q(2) => GYRO_Tokenizer_n_30,
      Q(1) => GYRO_Tokenizer_n_31,
      Q(0) => GYRO_Tokenizer_n_32,
      clk0 => clk0,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^data_out_reg[31]\,
      valid_out => valid_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0_S00_AXI is
  port (
    MCK : out STD_LOGIC;
    tlast : out STD_LOGIC;
    tvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    clock0 : in STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0_S00_AXI is
  signal GYRO_ADC_OUT_STREAM_n_1 : STD_LOGIC;
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
  signal slv_reg2 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair30";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
GYRO_ADC_OUT_STREAM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_StreamPipeline
     port map (
      CLK => MCK,
      D(31 downto 0) => reg_data_out(31 downto 0),
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      clk0 => clk0,
      clock0 => clock0,
      \data_out_reg[31]\ => GYRO_ADC_OUT_STREAM_n_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg2_reg[31]\(31) => \slv_reg2_reg_n_0_[31]\,
      \slv_reg2_reg[31]\(30) => \slv_reg2_reg_n_0_[30]\,
      \slv_reg2_reg[31]\(29) => \slv_reg2_reg_n_0_[29]\,
      \slv_reg2_reg[31]\(28) => slv_reg2(28),
      \slv_reg2_reg[31]\(27) => \slv_reg2_reg_n_0_[27]\,
      \slv_reg2_reg[31]\(26) => \slv_reg2_reg_n_0_[26]\,
      \slv_reg2_reg[31]\(25) => \slv_reg2_reg_n_0_[25]\,
      \slv_reg2_reg[31]\(24) => \slv_reg2_reg_n_0_[24]\,
      \slv_reg2_reg[31]\(23) => \slv_reg2_reg_n_0_[23]\,
      \slv_reg2_reg[31]\(22) => \slv_reg2_reg_n_0_[22]\,
      \slv_reg2_reg[31]\(21) => \slv_reg2_reg_n_0_[21]\,
      \slv_reg2_reg[31]\(20) => \slv_reg2_reg_n_0_[20]\,
      \slv_reg2_reg[31]\(19) => \slv_reg2_reg_n_0_[19]\,
      \slv_reg2_reg[31]\(18) => \slv_reg2_reg_n_0_[18]\,
      \slv_reg2_reg[31]\(17) => \slv_reg2_reg_n_0_[17]\,
      \slv_reg2_reg[31]\(16) => \slv_reg2_reg_n_0_[16]\,
      \slv_reg2_reg[31]\(15) => \slv_reg2_reg_n_0_[15]\,
      \slv_reg2_reg[31]\(14) => \slv_reg2_reg_n_0_[14]\,
      \slv_reg2_reg[31]\(13) => \slv_reg2_reg_n_0_[13]\,
      \slv_reg2_reg[31]\(12) => \slv_reg2_reg_n_0_[12]\,
      \slv_reg2_reg[31]\(11) => \slv_reg2_reg_n_0_[11]\,
      \slv_reg2_reg[31]\(10) => \slv_reg2_reg_n_0_[10]\,
      \slv_reg2_reg[31]\(9) => \slv_reg2_reg_n_0_[9]\,
      \slv_reg2_reg[31]\(8) => \slv_reg2_reg_n_0_[8]\,
      \slv_reg2_reg[31]\(7) => \slv_reg2_reg_n_0_[7]\,
      \slv_reg2_reg[31]\(6) => \slv_reg2_reg_n_0_[6]\,
      \slv_reg2_reg[31]\(5) => \slv_reg2_reg_n_0_[5]\,
      \slv_reg2_reg[31]\(4) => \slv_reg2_reg_n_0_[4]\,
      \slv_reg2_reg[31]\(3) => \slv_reg2_reg_n_0_[3]\,
      \slv_reg2_reg[31]\(2) => \slv_reg2_reg_n_0_[2]\,
      \slv_reg2_reg[31]\(1) => \slv_reg2_reg_n_0_[1]\,
      \slv_reg2_reg[31]\(0) => \slv_reg2_reg_n_0_[0]\,
      \slv_reg3_reg[31]\(31) => slv_reg3(31),
      \slv_reg3_reg[31]\(30 downto 29) => data_in(1 downto 0),
      \slv_reg3_reg[31]\(28) => \slv_reg3_reg_n_0_[28]\,
      \slv_reg3_reg[31]\(27) => \slv_reg3_reg_n_0_[27]\,
      \slv_reg3_reg[31]\(26) => \slv_reg3_reg_n_0_[26]\,
      \slv_reg3_reg[31]\(25 downto 24) => slv_reg3(25 downto 24),
      \slv_reg3_reg[31]\(23) => \slv_reg3_reg_n_0_[23]\,
      \slv_reg3_reg[31]\(22) => \slv_reg3_reg_n_0_[22]\,
      \slv_reg3_reg[31]\(21) => \slv_reg3_reg_n_0_[21]\,
      \slv_reg3_reg[31]\(20) => \slv_reg3_reg_n_0_[20]\,
      \slv_reg3_reg[31]\(19) => \slv_reg3_reg_n_0_[19]\,
      \slv_reg3_reg[31]\(18) => \slv_reg3_reg_n_0_[18]\,
      \slv_reg3_reg[31]\(17) => \slv_reg3_reg_n_0_[17]\,
      \slv_reg3_reg[31]\(16) => \slv_reg3_reg_n_0_[16]\,
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
      \slv_reg3_reg[31]\(0) => \slv_reg3_reg_n_0_[0]\,
      tdata(31 downto 0) => tdata(31 downto 0),
      tlast => tlast,
      tvalid => tvalid
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
      S => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
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
      R => GYRO_ADC_OUT_STREAM_n_1
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
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
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
      Q => \slv_reg2_reg_n_0_[0]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => GYRO_ADC_OUT_STREAM_n_1
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
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
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
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => data_in(0),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => data_in(1),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => GYRO_ADC_OUT_STREAM_n_1
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => GYRO_ADC_OUT_STREAM_n_1
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0 is
  port (
    MCK : out STD_LOGIC;
    tlast : out STD_LOGIC;
    tvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    clock0 : in STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0 is
begin
axi_gyro_hsi_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0_S00_AXI
     port map (
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      MCK => MCK,
      clk0 => clk0,
      clock0 => clock0,
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
      s00_axi_wvalid => s00_axi_wvalid,
      tdata(31 downto 0) => tdata(31 downto 0),
      tlast => tlast,
      tvalid => tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    MCK : out STD_LOGIC;
    HSICKA0 : out STD_LOGIC;
    HSICKA1 : out STD_LOGIC;
    HSIA0 : in STD_LOGIC;
    HSIA1 : in STD_LOGIC;
    tclock : out STD_LOGIC;
    tresetn : out STD_LOGIC;
    tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tvalid : out STD_LOGIC;
    tready : in STD_LOGIC;
    tlast : out STD_LOGIC;
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_gyro_hsi_0_0,axi_gyro_hsi_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_gyro_hsi_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^mck\ : STD_LOGIC;
  signal clk0 : STD_LOGIC;
  signal clock0 : STD_LOGIC;
  signal \^s00_axi_aclk\ : STD_LOGIC;
  signal \^s00_axi_aresetn\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
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
  MCK <= \^mck\;
  \^s00_axi_aclk\ <= s00_axi_aclk;
  \^s00_axi_aresetn\ <= s00_axi_aresetn;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  tclock <= \^s00_axi_aclk\;
  tresetn <= \^s00_axi_aresetn\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Q_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^mck\,
      O => clk0
    );
\data_out_reg[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s00_axi_aclk\,
      O => clock0
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gyro_hsi_v1_0
     port map (
      HSICKA0 => HSICKA0,
      HSICKA1 => HSICKA1,
      MCK => \^mck\,
      clk0 => clk0,
      clock0 => clock0,
      s00_axi_aclk => \^s00_axi_aclk\,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => \^s00_axi_aresetn\,
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
      s00_axi_wvalid => s00_axi_wvalid,
      tdata(31 downto 0) => tdata(31 downto 0),
      tlast => tlast,
      tvalid => tvalid
    );
end STRUCTURE;
