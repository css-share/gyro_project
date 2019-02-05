-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Feb  4 15:32:23 2019
-- Host        : AsusP8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Xilinx/Vivado/projects/project_GYRO_Feb_04_2019/project_GYRO_Feb_04_2019.srcs/sources_1/bd/design_1/ip/design_1_SPI_ip_0_1/design_1_SPI_ip_0_1_sim_netlist.vhdl
-- Design      : design_1_SPI_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_SPI_fsm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    \r_reg_reg[16]_C\ : out STD_LOGIC;
    \r_reg_reg[17]_C\ : out STD_LOGIC;
    \r_reg_reg[18]_C\ : out STD_LOGIC;
    \r_reg_reg[19]_C\ : out STD_LOGIC;
    \r_reg_reg[20]_C\ : out STD_LOGIC;
    \r_reg_reg[21]_C\ : out STD_LOGIC;
    \r_reg_reg[22]_C\ : out STD_LOGIC;
    \r_reg_reg[23]_C\ : out STD_LOGIC;
    \r_reg_reg[24]\ : out STD_LOGIC;
    \r_reg_reg[23]_P\ : out STD_LOGIC;
    \r_reg_reg[22]_P\ : out STD_LOGIC;
    \r_reg_reg[21]_P\ : out STD_LOGIC;
    \r_reg_reg[20]_P\ : out STD_LOGIC;
    \r_reg_reg[19]_P\ : out STD_LOGIC;
    \r_reg_reg[18]_P\ : out STD_LOGIC;
    \r_reg_reg[17]_P\ : out STD_LOGIC;
    \r_reg_reg[16]_P\ : out STD_LOGIC;
    \r_reg_reg[15]_P\ : out STD_LOGIC;
    \r_reg_reg[14]_P\ : out STD_LOGIC;
    \r_reg_reg[13]_P\ : out STD_LOGIC;
    \r_reg_reg[12]_P\ : out STD_LOGIC;
    \r_reg_reg[11]_P\ : out STD_LOGIC;
    \r_reg_reg[10]_P\ : out STD_LOGIC;
    \r_reg_reg[9]_P\ : out STD_LOGIC;
    \r_reg_reg[8]_P\ : out STD_LOGIC;
    \r_reg_reg[7]_P\ : out STD_LOGIC;
    \r_reg_reg[6]_P\ : out STD_LOGIC;
    \r_reg_reg[5]_P\ : out STD_LOGIC;
    \r_reg_reg[4]_P\ : out STD_LOGIC;
    \r_reg_reg[3]_P\ : out STD_LOGIC;
    \r_reg_reg[2]_P\ : out STD_LOGIC;
    \r_reg_reg[1]_P\ : out STD_LOGIC;
    \r_reg_reg[0]_P\ : out STD_LOGIC;
    \r_reg_reg[4]_P_0\ : out STD_LOGIC;
    SPI_SCK : out STD_LOGIC;
    SPI_MOSI : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    MOSI_int : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_SPI_fsm : entity is "SPI_fsm";
end design_1_SPI_ip_0_1_SPI_fsm;

architecture STRUCTURE of design_1_SPI_ip_0_1_SPI_fsm is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal load : STD_LOGIC;
  attribute RTL_KEEP of load : signal is "yes";
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S2:000100,S3:001000,S1:000010,S4:100000,S0:000001,S5:010000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S2:000100,S3:001000,S1:000010,S4:100000,S0:000001,S5:010000";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S2:000100,S3:001000,S1:000010,S4:100000,S0:000001,S5:010000";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S2:000100,S3:001000,S1:000010,S4:100000,S0:000001,S5:010000";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "S2:000100,S3:001000,S1:000010,S4:100000,S0:000001,S5:010000";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "S2:000100,S3:001000,S1:000010,S4:100000,S0:000001,S5:010000";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
begin
  \out\(2 downto 0) <= \^out\(2 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => Q(24),
      I2 => \^out\(1),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => Q(24),
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^out\(2),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => load,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => load,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \^out\(0),
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state_reg[3]_0\(0),
      Q => \^out\(1),
      R => SR(0)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_state_reg[3]_0\(1),
      Q => \^out\(2),
      R => SR(0)
    );
SPI_CS_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => load,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^out\(1),
      O => SPI_CS
    );
SPI_MOSI_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => MOSI_int,
      I1 => \^out\(1),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => load,
      O => SPI_MOSI
    );
SPI_SCK_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out\(2),
      I1 => \slv_reg3_reg[31]\(0),
      O => SPI_SCK
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[31]\(0),
      I1 => \^out\(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[31]\(0),
      I4 => axi_araddr(1),
      I5 => Q(24),
      O => D(0)
    );
\r_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => load,
      I1 => s00_axi_aresetn,
      O => \r_reg_reg[24]\
    );
\r_reg_reg[0]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(0),
      O => \r_reg_reg[0]_P\
    );
\r_reg_reg[0]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(0),
      O => \r_reg_reg[0]_C\
    );
\r_reg_reg[10]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(10),
      O => \r_reg_reg[10]_P\
    );
\r_reg_reg[10]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(10),
      O => \r_reg_reg[10]_C\
    );
\r_reg_reg[11]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(11),
      O => \r_reg_reg[11]_P\
    );
\r_reg_reg[11]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(11),
      O => \r_reg_reg[11]_C\
    );
\r_reg_reg[12]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(12),
      O => \r_reg_reg[12]_P\
    );
\r_reg_reg[12]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(12),
      O => \r_reg_reg[12]_C\
    );
\r_reg_reg[13]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(13),
      O => \r_reg_reg[13]_P\
    );
\r_reg_reg[13]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(13),
      O => \r_reg_reg[13]_C\
    );
\r_reg_reg[14]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(14),
      O => \r_reg_reg[14]_P\
    );
\r_reg_reg[14]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(14),
      O => \r_reg_reg[14]_C\
    );
\r_reg_reg[15]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(15),
      O => \r_reg_reg[15]_P\
    );
\r_reg_reg[15]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(15),
      O => \r_reg_reg[15]_C\
    );
\r_reg_reg[16]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(16),
      O => \r_reg_reg[16]_P\
    );
\r_reg_reg[16]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(16),
      O => \r_reg_reg[16]_C\
    );
\r_reg_reg[17]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(17),
      O => \r_reg_reg[17]_P\
    );
\r_reg_reg[17]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(17),
      O => \r_reg_reg[17]_C\
    );
\r_reg_reg[18]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(18),
      O => \r_reg_reg[18]_P\
    );
\r_reg_reg[18]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(18),
      O => \r_reg_reg[18]_C\
    );
\r_reg_reg[19]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(19),
      O => \r_reg_reg[19]_P\
    );
\r_reg_reg[19]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(19),
      O => \r_reg_reg[19]_C\
    );
\r_reg_reg[1]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(1),
      O => \r_reg_reg[1]_P\
    );
\r_reg_reg[1]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(1),
      O => \r_reg_reg[1]_C\
    );
\r_reg_reg[20]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(20),
      O => \r_reg_reg[20]_P\
    );
\r_reg_reg[20]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(20),
      O => \r_reg_reg[20]_C\
    );
\r_reg_reg[21]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(21),
      O => \r_reg_reg[21]_P\
    );
\r_reg_reg[21]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(21),
      O => \r_reg_reg[21]_C\
    );
\r_reg_reg[22]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(22),
      O => \r_reg_reg[22]_P\
    );
\r_reg_reg[22]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(22),
      O => \r_reg_reg[22]_C\
    );
\r_reg_reg[23]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(23),
      O => \r_reg_reg[23]_P\
    );
\r_reg_reg[23]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(23),
      O => \r_reg_reg[23]_C\
    );
\r_reg_reg[2]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(2),
      O => \r_reg_reg[2]_P\
    );
\r_reg_reg[2]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(2),
      O => \r_reg_reg[2]_C\
    );
\r_reg_reg[3]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(3),
      O => \r_reg_reg[3]_P\
    );
\r_reg_reg[3]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(3),
      O => \r_reg_reg[3]_C\
    );
\r_reg_reg[4]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(4),
      O => \r_reg_reg[4]_P\
    );
\r_reg_reg[4]_LDC_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      O => \r_reg_reg[4]_P_0\
    );
\r_reg_reg[4]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(4),
      O => \r_reg_reg[4]_C\
    );
\r_reg_reg[5]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(5),
      O => \r_reg_reg[5]_P\
    );
\r_reg_reg[5]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(5),
      O => \r_reg_reg[5]_C\
    );
\r_reg_reg[6]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(6),
      O => \r_reg_reg[6]_P\
    );
\r_reg_reg[6]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(6),
      O => \r_reg_reg[6]_C\
    );
\r_reg_reg[7]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(7),
      O => \r_reg_reg[7]_P\
    );
\r_reg_reg[7]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(7),
      O => \r_reg_reg[7]_C\
    );
\r_reg_reg[8]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(8),
      O => \r_reg_reg[8]_P\
    );
\r_reg_reg[8]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(8),
      O => \r_reg_reg[8]_C\
    );
\r_reg_reg[9]_LDC_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(9),
      O => \r_reg_reg[9]_P\
    );
\r_reg_reg[9]_LDC_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => load,
      I2 => Q(9),
      O => \r_reg_reg[9]_C\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff is
  port (
    Q_int_0 : out STD_LOGIC;
    Q_reg_0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff : entity is "dff";
end design_1_SPI_ip_0_1_dff;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff is
  signal D0 : STD_LOGIC;
  signal \^q_int_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
begin
  Q_int_0 <= \^q_int_0\;
  Q_reg_0 <= \^q_reg_0\;
Q_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_0\,
      O => D0
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^q_reg_0\,
      D => D0,
      Q => \^q_int_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_0 is
  port (
    Q_int_1 : out STD_LOGIC;
    Q_int_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_0 : entity is "dff";
end design_1_SPI_ip_0_1_dff_0;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_0 is
  signal \Q_i_1__0_n_0\ : STD_LOGIC;
  signal \^q_int_1\ : STD_LOGIC;
begin
  Q_int_1 <= \^q_int_1\;
\Q_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_1\,
      O => \Q_i_1__0_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_0,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__0_n_0\,
      Q => \^q_int_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_1 is
  port (
    Q_int_2 : out STD_LOGIC;
    Q_int_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_1 : entity is "dff";
end design_1_SPI_ip_0_1_dff_1;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_1 is
  signal \Q_i_1__1_n_0\ : STD_LOGIC;
  signal \^q_int_2\ : STD_LOGIC;
begin
  Q_int_2 <= \^q_int_2\;
\Q_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_2\,
      O => \Q_i_1__1_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_1,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__1_n_0\,
      Q => \^q_int_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_2 is
  port (
    Q_int_3 : out STD_LOGIC;
    CLK : out STD_LOGIC;
    Q_int_2 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q_reg_0 : in STD_LOGIC;
    Q_int_1 : in STD_LOGIC;
    Q_int_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_2 : entity is "dff";
end design_1_SPI_ip_0_1_dff_2;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_2 is
  signal \FSM_onehot_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \Q_i_1__2_n_0\ : STD_LOGIC;
  signal \^q_int_3\ : STD_LOGIC;
begin
  Q_int_3 <= \^q_int_3\;
\FSM_onehot_state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_int_3\,
      I1 => Q_int_2,
      I2 => \slv_reg3_reg[2]\(1),
      I3 => Q_int_1,
      I4 => \slv_reg3_reg[2]\(0),
      I5 => Q_int_0,
      O => \FSM_onehot_state[5]_i_5_n_0\
    );
\FSM_onehot_state_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_onehot_state[5]_i_5_n_0\,
      I1 => Q_reg_0,
      O => CLK,
      S => \slv_reg3_reg[2]\(2)
    );
\Q_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_3\,
      O => \Q_i_1__2_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_2,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__2_n_0\,
      Q => \^q_int_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_3 is
  port (
    Q_int_4 : out STD_LOGIC;
    Q_int_3 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_3 : entity is "dff";
end design_1_SPI_ip_0_1_dff_3;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_3 is
  signal \Q_i_1__3_n_0\ : STD_LOGIC;
  signal \^q_int_4\ : STD_LOGIC;
begin
  Q_int_4 <= \^q_int_4\;
\Q_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_4\,
      O => \Q_i_1__3_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_3,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__3_n_0\,
      Q => \^q_int_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_4 is
  port (
    Q_int_5 : out STD_LOGIC;
    Q_int_4 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_4 : entity is "dff";
end design_1_SPI_ip_0_1_dff_4;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_4 is
  signal \Q_i_1__4_n_0\ : STD_LOGIC;
  signal \^q_int_5\ : STD_LOGIC;
begin
  Q_int_5 <= \^q_int_5\;
\Q_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_5\,
      O => \Q_i_1__4_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_4,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__4_n_0\,
      Q => \^q_int_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_5 is
  port (
    Q_int_6 : out STD_LOGIC;
    Q_int_5 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_5 : entity is "dff";
end design_1_SPI_ip_0_1_dff_5;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_5 is
  signal \Q_i_1__5_n_0\ : STD_LOGIC;
  signal \^q_int_6\ : STD_LOGIC;
begin
  Q_int_6 <= \^q_int_6\;
\Q_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_int_6\,
      O => \Q_i_1__5_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_5,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__5_n_0\,
      Q => \^q_int_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_dff_6 is
  port (
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    Q_int_6 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_int_5 : in STD_LOGIC;
    Q_int_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_dff_6 : entity is "dff";
end design_1_SPI_ip_0_1_dff_6;

architecture STRUCTURE of design_1_SPI_ip_0_1_dff_6 is
  signal \Q_i_1__6_n_0\ : STD_LOGIC;
  signal Q_int_7 : STD_LOGIC;
begin
\FSM_onehot_state[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q_int_7,
      I1 => Q_int_6,
      I2 => \slv_reg3_reg[1]\(1),
      I3 => Q_int_5,
      I4 => \slv_reg3_reg[1]\(0),
      I5 => Q_int_4,
      O => \FSM_onehot_state_reg[0]\
    );
\Q_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q_int_7,
      O => \Q_i_1__6_n_0\
    );
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => Q_int_6,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \Q_i_1__6_n_0\,
      Q => Q_int_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_downCounter5Bits is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_downCounter5Bits : entity is "downCounter5Bits";
end design_1_SPI_ip_0_1_downCounter5Bits;

architecture STRUCTURE of design_1_SPI_ip_0_1_downCounter5Bits is
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[3]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[4]_P_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_reg[3]_C_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_reg[4]_C_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[4]_LDC\ : label is "LDC";
begin
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => count(3),
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => \out\(0),
      I3 => Q(0),
      I4 => \out\(1),
      O => D(0)
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEA"
    )
        port map (
      I0 => count(2),
      I1 => \r_reg_reg[4]_P_n_0\,
      I2 => \r_reg_reg[4]_LDC_n_0\,
      I3 => \r_reg_reg[4]_C_n_0\,
      I4 => count(0),
      I5 => count(1),
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \out\(0),
      I1 => count(2),
      I2 => count(4),
      I3 => count(0),
      I4 => count(1),
      I5 => count(3),
      O => D(1)
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => count(4)
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      O => count(3)
    );
\r_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => count(2),
      I1 => count(4),
      I2 => count(1),
      I3 => count(3),
      I4 => count(0),
      O => \r_reg[0]_i_1_n_0\
    );
\r_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000FE"
    )
        port map (
      I0 => count(2),
      I1 => count(4),
      I2 => count(3),
      I3 => count(1),
      I4 => count(0),
      O => \r_reg[1]_i_1_n_0\
    );
\r_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F00E"
    )
        port map (
      I0 => count(4),
      I1 => count(3),
      I2 => count(2),
      I3 => count(0),
      I4 => count(1),
      O => \r_reg[2]_i_1_n_0\
    );
\r_reg[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCC2"
    )
        port map (
      I0 => count(4),
      I1 => count(3),
      I2 => count(1),
      I3 => count(0),
      I4 => count(2),
      O => \r_reg[3]_C_i_1_n_0\
    );
\r_reg[4]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => count(4),
      I1 => count(2),
      I2 => count(0),
      I3 => count(1),
      I4 => count(3),
      O => \r_reg[4]_C_i_1_n_0\
    );
\r_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \out\(2),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_0\,
      D => \r_reg[0]_i_1_n_0\,
      Q => count(0)
    );
\r_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \out\(2),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_0\,
      D => \r_reg[1]_i_1_n_0\,
      Q => count(1)
    );
\r_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \out\(2),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_0\,
      D => \r_reg[2]_i_1_n_0\,
      Q => count(2)
    );
\r_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(2),
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg[3]_C_i_1_n_0\,
      Q => \r_reg_reg[3]_C_n_0\
    );
\r_reg_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(2),
      CE => '1',
      D => \r_reg[3]_C_i_1_n_0\,
      PRE => \FSM_onehot_state_reg[1]\,
      Q => \r_reg_reg[3]_P_n_0\
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(2),
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \r_reg[4]_C_i_1_n_0\,
      Q => \r_reg_reg[4]_C_n_0\
    );
\r_reg_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s00_axi_aresetn,
      D => '1',
      G => \FSM_onehot_state_reg[1]\,
      GE => '1',
      Q => \r_reg_reg[4]_LDC_n_0\
    );
\r_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(2),
      CE => '1',
      D => \r_reg[4]_C_i_1_n_0\,
      PRE => \FSM_onehot_state_reg[1]\,
      Q => \r_reg_reg[4]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_leftShiftRegister25bits is
  port (
    MOSI_int : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_4\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_5\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_6\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_7\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_8\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_9\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_10\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_11\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_12\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_13\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_14\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_15\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_16\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_17\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_18\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_19\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_20\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_21\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_22\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_23\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_24\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_25\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_26\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_27\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_28\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_29\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_30\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_31\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_32\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_33\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_34\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_35\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_36\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_37\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_38\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_39\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_40\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_41\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_42\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_43\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_44\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_45\ : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_46\ : in STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_47\ : in STD_LOGIC;
    \slv_reg3_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_leftShiftRegister25bits : entity is "leftShiftRegister25bits";
end design_1_SPI_ip_0_1_leftShiftRegister25bits;

architecture STRUCTURE of design_1_SPI_ip_0_1_leftShiftRegister25bits is
  signal r_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \r_reg_reg[0]_C_n_0\ : STD_LOGIC;
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
  signal \r_reg_reg[16]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[16]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[16]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[17]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[17]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[17]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[18]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[18]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[18]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[19]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[19]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[19]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[1]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[20]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[20]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[20]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[21]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[21]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[21]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[22]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[22]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[22]_P_n_0\ : STD_LOGIC;
  signal \r_reg_reg[23]_C_n_0\ : STD_LOGIC;
  signal \r_reg_reg[23]_LDC_n_0\ : STD_LOGIC;
  signal \r_reg_reg[23]_P_n_0\ : STD_LOGIC;
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
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[16]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[17]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[18]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[19]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[20]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[21]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[22]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[23]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \r_reg_reg[9]_LDC\ : label is "LDC";
begin
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(0),
      I1 => r_reg(0),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(0),
      I4 => axi_araddr(1),
      I5 => Q(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(10),
      I1 => r_reg(10),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(10),
      I4 => axi_araddr(1),
      I5 => Q(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(11),
      I1 => r_reg(11),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(11),
      I4 => axi_araddr(1),
      I5 => Q(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(12),
      I1 => r_reg(12),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(12),
      I4 => axi_araddr(1),
      I5 => Q(12),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(13),
      I1 => r_reg(13),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(13),
      I4 => axi_araddr(1),
      I5 => Q(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(14),
      I1 => r_reg(14),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(14),
      I4 => axi_araddr(1),
      I5 => Q(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(15),
      I1 => r_reg(15),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(15),
      I4 => axi_araddr(1),
      I5 => Q(15),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(16),
      I1 => r_reg(16),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(16),
      I4 => axi_araddr(1),
      I5 => Q(16),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(17),
      I1 => r_reg(17),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(17),
      I4 => axi_araddr(1),
      I5 => Q(17),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(18),
      I1 => r_reg(18),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(18),
      I4 => axi_araddr(1),
      I5 => Q(18),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(19),
      I1 => r_reg(19),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(19),
      I4 => axi_araddr(1),
      I5 => Q(19),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(1),
      I1 => r_reg(1),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(1),
      I4 => axi_araddr(1),
      I5 => Q(1),
      O => D(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(20),
      I1 => r_reg(20),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(20),
      I4 => axi_araddr(1),
      I5 => Q(20),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(21),
      I1 => r_reg(21),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(21),
      I4 => axi_araddr(1),
      I5 => Q(21),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(22),
      I1 => r_reg(22),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(22),
      I4 => axi_araddr(1),
      I5 => Q(22),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(23),
      I1 => r_reg(23),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(23),
      I4 => axi_araddr(1),
      I5 => Q(23),
      O => D(23)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(2),
      I1 => r_reg(2),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(2),
      I4 => axi_araddr(1),
      I5 => Q(2),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(3),
      I1 => r_reg(3),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(3),
      I4 => axi_araddr(1),
      I5 => Q(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(4),
      I1 => r_reg(4),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(4),
      I4 => axi_araddr(1),
      I5 => Q(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(5),
      I1 => r_reg(5),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(5),
      I4 => axi_araddr(1),
      I5 => Q(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(6),
      I1 => r_reg(6),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(6),
      I4 => axi_araddr(1),
      I5 => Q(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(7),
      I1 => r_reg(7),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(7),
      I4 => axi_araddr(1),
      I5 => Q(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(8),
      I1 => r_reg(8),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(8),
      I4 => axi_araddr(1),
      I5 => Q(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg[23]\(9),
      I1 => r_reg(9),
      I2 => axi_araddr(0),
      I3 => \slv_reg2_reg[23]\(9),
      I4 => axi_araddr(1),
      I5 => Q(9),
      O => D(9)
    );
\r_reg[10]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[9]_P_n_0\,
      I1 => \r_reg_reg[9]_LDC_n_0\,
      I2 => \r_reg_reg[9]_C_n_0\,
      O => r_reg(9)
    );
\r_reg[11]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[10]_P_n_0\,
      I1 => \r_reg_reg[10]_LDC_n_0\,
      I2 => \r_reg_reg[10]_C_n_0\,
      O => r_reg(10)
    );
\r_reg[12]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[11]_P_n_0\,
      I1 => \r_reg_reg[11]_LDC_n_0\,
      I2 => \r_reg_reg[11]_C_n_0\,
      O => r_reg(11)
    );
\r_reg[13]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[12]_P_n_0\,
      I1 => \r_reg_reg[12]_LDC_n_0\,
      I2 => \r_reg_reg[12]_C_n_0\,
      O => r_reg(12)
    );
\r_reg[14]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[13]_P_n_0\,
      I1 => \r_reg_reg[13]_LDC_n_0\,
      I2 => \r_reg_reg[13]_C_n_0\,
      O => r_reg(13)
    );
\r_reg[15]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[14]_P_n_0\,
      I1 => \r_reg_reg[14]_LDC_n_0\,
      I2 => \r_reg_reg[14]_C_n_0\,
      O => r_reg(14)
    );
\r_reg[16]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[15]_P_n_0\,
      I1 => \r_reg_reg[15]_LDC_n_0\,
      I2 => \r_reg_reg[15]_C_n_0\,
      O => r_reg(15)
    );
\r_reg[17]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[16]_P_n_0\,
      I1 => \r_reg_reg[16]_LDC_n_0\,
      I2 => \r_reg_reg[16]_C_n_0\,
      O => r_reg(16)
    );
\r_reg[18]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[17]_P_n_0\,
      I1 => \r_reg_reg[17]_LDC_n_0\,
      I2 => \r_reg_reg[17]_C_n_0\,
      O => r_reg(17)
    );
\r_reg[19]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[18]_P_n_0\,
      I1 => \r_reg_reg[18]_LDC_n_0\,
      I2 => \r_reg_reg[18]_C_n_0\,
      O => r_reg(18)
    );
\r_reg[1]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[0]_P_n_0\,
      I1 => \r_reg_reg[0]_LDC_n_0\,
      I2 => \r_reg_reg[0]_C_n_0\,
      O => r_reg(0)
    );
\r_reg[20]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[19]_P_n_0\,
      I1 => \r_reg_reg[19]_LDC_n_0\,
      I2 => \r_reg_reg[19]_C_n_0\,
      O => r_reg(19)
    );
\r_reg[21]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[20]_P_n_0\,
      I1 => \r_reg_reg[20]_LDC_n_0\,
      I2 => \r_reg_reg[20]_C_n_0\,
      O => r_reg(20)
    );
\r_reg[22]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[21]_P_n_0\,
      I1 => \r_reg_reg[21]_LDC_n_0\,
      I2 => \r_reg_reg[21]_C_n_0\,
      O => r_reg(21)
    );
\r_reg[23]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[22]_P_n_0\,
      I1 => \r_reg_reg[22]_LDC_n_0\,
      I2 => \r_reg_reg[22]_C_n_0\,
      O => r_reg(22)
    );
\r_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[23]_P_n_0\,
      I1 => \r_reg_reg[23]_LDC_n_0\,
      I2 => \r_reg_reg[23]_C_n_0\,
      O => r_reg(23)
    );
\r_reg[2]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[1]_P_n_0\,
      I1 => \r_reg_reg[1]_LDC_n_0\,
      I2 => \r_reg_reg[1]_C_n_0\,
      O => r_reg(1)
    );
\r_reg[3]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[2]_P_n_0\,
      I1 => \r_reg_reg[2]_LDC_n_0\,
      I2 => \r_reg_reg[2]_C_n_0\,
      O => r_reg(2)
    );
\r_reg[4]_C_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[3]_P_n_0\,
      I1 => \r_reg_reg[3]_LDC_n_0\,
      I2 => \r_reg_reg[3]_C_n_0\,
      O => r_reg(3)
    );
\r_reg[5]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[4]_P_n_0\,
      I1 => \r_reg_reg[4]_LDC_n_0\,
      I2 => \r_reg_reg[4]_C_n_0\,
      O => r_reg(4)
    );
\r_reg[6]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[5]_P_n_0\,
      I1 => \r_reg_reg[5]_LDC_n_0\,
      I2 => \r_reg_reg[5]_C_n_0\,
      O => r_reg(5)
    );
\r_reg[7]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[6]_P_n_0\,
      I1 => \r_reg_reg[6]_LDC_n_0\,
      I2 => \r_reg_reg[6]_C_n_0\,
      O => r_reg(6)
    );
\r_reg[8]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[7]_P_n_0\,
      I1 => \r_reg_reg[7]_LDC_n_0\,
      I2 => \r_reg_reg[7]_C_n_0\,
      O => r_reg(7)
    );
\r_reg[9]_C_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg_reg[8]_P_n_0\,
      I1 => \r_reg_reg[8]_LDC_n_0\,
      I2 => \r_reg_reg[8]_C_n_0\,
      O => r_reg(8)
    );
\r_reg_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_46\,
      D => SPI_MISO,
      Q => \r_reg_reg[0]_C_n_0\
    );
\r_reg_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_46\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_45\,
      GE => '1',
      Q => \r_reg_reg[0]_LDC_n_0\
    );
\r_reg_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => SPI_MISO,
      PRE => \FSM_onehot_state_reg[1]_45\,
      Q => \r_reg_reg[0]_P_n_0\
    );
\r_reg_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_26\,
      D => r_reg(9),
      Q => \r_reg_reg[10]_C_n_0\
    );
\r_reg_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_26\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_25\,
      GE => '1',
      Q => \r_reg_reg[10]_LDC_n_0\
    );
\r_reg_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(9),
      PRE => \FSM_onehot_state_reg[1]_25\,
      Q => \r_reg_reg[10]_P_n_0\
    );
\r_reg_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_24\,
      D => r_reg(10),
      Q => \r_reg_reg[11]_C_n_0\
    );
\r_reg_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_24\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_23\,
      GE => '1',
      Q => \r_reg_reg[11]_LDC_n_0\
    );
\r_reg_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(10),
      PRE => \FSM_onehot_state_reg[1]_23\,
      Q => \r_reg_reg[11]_P_n_0\
    );
\r_reg_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_22\,
      D => r_reg(11),
      Q => \r_reg_reg[12]_C_n_0\
    );
\r_reg_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_22\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_21\,
      GE => '1',
      Q => \r_reg_reg[12]_LDC_n_0\
    );
\r_reg_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(11),
      PRE => \FSM_onehot_state_reg[1]_21\,
      Q => \r_reg_reg[12]_P_n_0\
    );
\r_reg_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_20\,
      D => r_reg(12),
      Q => \r_reg_reg[13]_C_n_0\
    );
\r_reg_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_20\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_19\,
      GE => '1',
      Q => \r_reg_reg[13]_LDC_n_0\
    );
\r_reg_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(12),
      PRE => \FSM_onehot_state_reg[1]_19\,
      Q => \r_reg_reg[13]_P_n_0\
    );
\r_reg_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_18\,
      D => r_reg(13),
      Q => \r_reg_reg[14]_C_n_0\
    );
\r_reg_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_18\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_17\,
      GE => '1',
      Q => \r_reg_reg[14]_LDC_n_0\
    );
\r_reg_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(13),
      PRE => \FSM_onehot_state_reg[1]_17\,
      Q => \r_reg_reg[14]_P_n_0\
    );
\r_reg_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_16\,
      D => r_reg(14),
      Q => \r_reg_reg[15]_C_n_0\
    );
\r_reg_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_16\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_15\,
      GE => '1',
      Q => \r_reg_reg[15]_LDC_n_0\
    );
\r_reg_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(14),
      PRE => \FSM_onehot_state_reg[1]_15\,
      Q => \r_reg_reg[15]_P_n_0\
    );
\r_reg_reg[16]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_14\,
      D => r_reg(15),
      Q => \r_reg_reg[16]_C_n_0\
    );
\r_reg_reg[16]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_14\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_13\,
      GE => '1',
      Q => \r_reg_reg[16]_LDC_n_0\
    );
\r_reg_reg[16]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(15),
      PRE => \FSM_onehot_state_reg[1]_13\,
      Q => \r_reg_reg[16]_P_n_0\
    );
\r_reg_reg[17]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_12\,
      D => r_reg(16),
      Q => \r_reg_reg[17]_C_n_0\
    );
\r_reg_reg[17]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_12\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_11\,
      GE => '1',
      Q => \r_reg_reg[17]_LDC_n_0\
    );
\r_reg_reg[17]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(16),
      PRE => \FSM_onehot_state_reg[1]_11\,
      Q => \r_reg_reg[17]_P_n_0\
    );
\r_reg_reg[18]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_10\,
      D => r_reg(17),
      Q => \r_reg_reg[18]_C_n_0\
    );
\r_reg_reg[18]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_10\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_9\,
      GE => '1',
      Q => \r_reg_reg[18]_LDC_n_0\
    );
\r_reg_reg[18]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(17),
      PRE => \FSM_onehot_state_reg[1]_9\,
      Q => \r_reg_reg[18]_P_n_0\
    );
\r_reg_reg[19]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_8\,
      D => r_reg(18),
      Q => \r_reg_reg[19]_C_n_0\
    );
\r_reg_reg[19]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_8\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_7\,
      GE => '1',
      Q => \r_reg_reg[19]_LDC_n_0\
    );
\r_reg_reg[19]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(18),
      PRE => \FSM_onehot_state_reg[1]_7\,
      Q => \r_reg_reg[19]_P_n_0\
    );
\r_reg_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_44\,
      D => r_reg(0),
      Q => \r_reg_reg[1]_C_n_0\
    );
\r_reg_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_44\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_43\,
      GE => '1',
      Q => \r_reg_reg[1]_LDC_n_0\
    );
\r_reg_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(0),
      PRE => \FSM_onehot_state_reg[1]_43\,
      Q => \r_reg_reg[1]_P_n_0\
    );
\r_reg_reg[20]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_6\,
      D => r_reg(19),
      Q => \r_reg_reg[20]_C_n_0\
    );
\r_reg_reg[20]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_6\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_5\,
      GE => '1',
      Q => \r_reg_reg[20]_LDC_n_0\
    );
\r_reg_reg[20]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(19),
      PRE => \FSM_onehot_state_reg[1]_5\,
      Q => \r_reg_reg[20]_P_n_0\
    );
\r_reg_reg[21]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_4\,
      D => r_reg(20),
      Q => \r_reg_reg[21]_C_n_0\
    );
\r_reg_reg[21]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_4\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_3\,
      GE => '1',
      Q => \r_reg_reg[21]_LDC_n_0\
    );
\r_reg_reg[21]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(20),
      PRE => \FSM_onehot_state_reg[1]_3\,
      Q => \r_reg_reg[21]_P_n_0\
    );
\r_reg_reg[22]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_2\,
      D => r_reg(21),
      Q => \r_reg_reg[22]_C_n_0\
    );
\r_reg_reg[22]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_2\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_1\,
      GE => '1',
      Q => \r_reg_reg[22]_LDC_n_0\
    );
\r_reg_reg[22]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(21),
      PRE => \FSM_onehot_state_reg[1]_1\,
      Q => \r_reg_reg[22]_P_n_0\
    );
\r_reg_reg[23]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_0\,
      D => r_reg(22),
      Q => \r_reg_reg[23]_C_n_0\
    );
\r_reg_reg[23]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_0\,
      D => '1',
      G => \FSM_onehot_state_reg[1]\,
      GE => '1',
      Q => \r_reg_reg[23]_LDC_n_0\
    );
\r_reg_reg[23]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(22),
      PRE => \FSM_onehot_state_reg[1]\,
      Q => \r_reg_reg[23]_P_n_0\
    );
\r_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_47\,
      D => r_reg(23),
      Q => MOSI_int
    );
\r_reg_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_42\,
      D => r_reg(1),
      Q => \r_reg_reg[2]_C_n_0\
    );
\r_reg_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_42\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_41\,
      GE => '1',
      Q => \r_reg_reg[2]_LDC_n_0\
    );
\r_reg_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(1),
      PRE => \FSM_onehot_state_reg[1]_41\,
      Q => \r_reg_reg[2]_P_n_0\
    );
\r_reg_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_40\,
      D => r_reg(2),
      Q => \r_reg_reg[3]_C_n_0\
    );
\r_reg_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_40\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_39\,
      GE => '1',
      Q => \r_reg_reg[3]_LDC_n_0\
    );
\r_reg_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(2),
      PRE => \FSM_onehot_state_reg[1]_39\,
      Q => \r_reg_reg[3]_P_n_0\
    );
\r_reg_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_38\,
      D => r_reg(3),
      Q => \r_reg_reg[4]_C_n_0\
    );
\r_reg_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_38\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_37\,
      GE => '1',
      Q => \r_reg_reg[4]_LDC_n_0\
    );
\r_reg_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(3),
      PRE => \FSM_onehot_state_reg[1]_37\,
      Q => \r_reg_reg[4]_P_n_0\
    );
\r_reg_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_36\,
      D => r_reg(4),
      Q => \r_reg_reg[5]_C_n_0\
    );
\r_reg_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_36\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_35\,
      GE => '1',
      Q => \r_reg_reg[5]_LDC_n_0\
    );
\r_reg_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(4),
      PRE => \FSM_onehot_state_reg[1]_35\,
      Q => \r_reg_reg[5]_P_n_0\
    );
\r_reg_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_34\,
      D => r_reg(5),
      Q => \r_reg_reg[6]_C_n_0\
    );
\r_reg_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_34\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_33\,
      GE => '1',
      Q => \r_reg_reg[6]_LDC_n_0\
    );
\r_reg_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(5),
      PRE => \FSM_onehot_state_reg[1]_33\,
      Q => \r_reg_reg[6]_P_n_0\
    );
\r_reg_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_32\,
      D => r_reg(6),
      Q => \r_reg_reg[7]_C_n_0\
    );
\r_reg_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_32\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_31\,
      GE => '1',
      Q => \r_reg_reg[7]_LDC_n_0\
    );
\r_reg_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(6),
      PRE => \FSM_onehot_state_reg[1]_31\,
      Q => \r_reg_reg[7]_P_n_0\
    );
\r_reg_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_30\,
      D => r_reg(7),
      Q => \r_reg_reg[8]_C_n_0\
    );
\r_reg_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_30\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_29\,
      GE => '1',
      Q => \r_reg_reg[8]_LDC_n_0\
    );
\r_reg_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(7),
      PRE => \FSM_onehot_state_reg[1]_29\,
      Q => \r_reg_reg[8]_P_n_0\
    );
\r_reg_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => \out\(0),
      CE => '1',
      CLR => \FSM_onehot_state_reg[1]_28\,
      D => r_reg(8),
      Q => \r_reg_reg[9]_C_n_0\
    );
\r_reg_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \FSM_onehot_state_reg[1]_28\,
      D => '1',
      G => \FSM_onehot_state_reg[1]_27\,
      GE => '1',
      Q => \r_reg_reg[9]_LDC_n_0\
    );
\r_reg_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => \out\(0),
      CE => '1',
      D => r_reg(8),
      PRE => \FSM_onehot_state_reg[1]_27\,
      Q => \r_reg_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_clock_divider is
  port (
    Q_reg : out STD_LOGIC;
    CLK : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \slv_reg3_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_clock_divider : entity is "clock_divider";
end design_1_SPI_ip_0_1_clock_divider;

architecture STRUCTURE of design_1_SPI_ip_0_1_clock_divider is
  signal Q_int_0 : STD_LOGIC;
  signal Q_int_1 : STD_LOGIC;
  signal Q_int_2 : STD_LOGIC;
  signal Q_int_3 : STD_LOGIC;
  signal Q_int_4 : STD_LOGIC;
  signal Q_int_5 : STD_LOGIC;
  signal Q_int_6 : STD_LOGIC;
  signal \^q_reg\ : STD_LOGIC;
  signal ff7_n_0 : STD_LOGIC;
begin
  Q_reg <= \^q_reg\;
ff0: entity work.design_1_SPI_ip_0_1_dff
     port map (
      Q_int_0 => Q_int_0,
      Q_reg_0 => \^q_reg\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
ff1: entity work.design_1_SPI_ip_0_1_dff_0
     port map (
      Q_int_0 => Q_int_0,
      Q_int_1 => Q_int_1,
      s00_axi_aresetn => \^q_reg\
    );
ff2: entity work.design_1_SPI_ip_0_1_dff_1
     port map (
      Q_int_1 => Q_int_1,
      Q_int_2 => Q_int_2,
      s00_axi_aresetn => \^q_reg\
    );
ff3: entity work.design_1_SPI_ip_0_1_dff_2
     port map (
      CLK => CLK,
      Q_int_0 => Q_int_0,
      Q_int_1 => Q_int_1,
      Q_int_2 => Q_int_2,
      Q_int_3 => Q_int_3,
      Q_reg_0 => ff7_n_0,
      s00_axi_aresetn => \^q_reg\,
      \slv_reg3_reg[2]\(2 downto 0) => \slv_reg3_reg[2]\(2 downto 0)
    );
ff4: entity work.design_1_SPI_ip_0_1_dff_3
     port map (
      Q_int_3 => Q_int_3,
      Q_int_4 => Q_int_4,
      s00_axi_aresetn => \^q_reg\
    );
ff5: entity work.design_1_SPI_ip_0_1_dff_4
     port map (
      Q_int_4 => Q_int_4,
      Q_int_5 => Q_int_5,
      s00_axi_aresetn => \^q_reg\
    );
ff6: entity work.design_1_SPI_ip_0_1_dff_5
     port map (
      Q_int_5 => Q_int_5,
      Q_int_6 => Q_int_6,
      s00_axi_aresetn => \^q_reg\
    );
ff7: entity work.design_1_SPI_ip_0_1_dff_6
     port map (
      \FSM_onehot_state_reg[0]\ => ff7_n_0,
      Q_int_4 => Q_int_4,
      Q_int_5 => Q_int_5,
      Q_int_6 => Q_int_6,
      s00_axi_aresetn => \^q_reg\,
      \slv_reg3_reg[1]\(1 downto 0) => \slv_reg3_reg[2]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_SPI_Master is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_SCK : out STD_LOGIC;
    SPI_MOSI : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 24 downto 0 );
    SPI_MISO : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \slv_reg3_reg[31]\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg2_reg[31]\ : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_SPI_Master : entity is "SPI_Master";
end design_1_SPI_ip_0_1_SPI_Master;

architecture STRUCTURE of design_1_SPI_ip_0_1_SPI_Master is
  signal DWCNTR_n_0 : STD_LOGIC;
  signal DWCNTR_n_1 : STD_LOGIC;
  signal FSM_n_10 : STD_LOGIC;
  signal FSM_n_11 : STD_LOGIC;
  signal FSM_n_12 : STD_LOGIC;
  signal FSM_n_13 : STD_LOGIC;
  signal FSM_n_14 : STD_LOGIC;
  signal FSM_n_15 : STD_LOGIC;
  signal FSM_n_16 : STD_LOGIC;
  signal FSM_n_17 : STD_LOGIC;
  signal FSM_n_18 : STD_LOGIC;
  signal FSM_n_19 : STD_LOGIC;
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
  signal FSM_n_4 : STD_LOGIC;
  signal FSM_n_40 : STD_LOGIC;
  signal FSM_n_41 : STD_LOGIC;
  signal FSM_n_42 : STD_LOGIC;
  signal FSM_n_43 : STD_LOGIC;
  signal FSM_n_44 : STD_LOGIC;
  signal FSM_n_45 : STD_LOGIC;
  signal FSM_n_46 : STD_LOGIC;
  signal FSM_n_47 : STD_LOGIC;
  signal FSM_n_48 : STD_LOGIC;
  signal FSM_n_49 : STD_LOGIC;
  signal FSM_n_5 : STD_LOGIC;
  signal FSM_n_50 : STD_LOGIC;
  signal FSM_n_51 : STD_LOGIC;
  signal FSM_n_52 : STD_LOGIC;
  signal FSM_n_6 : STD_LOGIC;
  signal FSM_n_7 : STD_LOGIC;
  signal FSM_n_8 : STD_LOGIC;
  signal FSM_n_9 : STD_LOGIC;
  signal MOSI_int : STD_LOGIC;
  signal SCK_int : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clock_int : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal shift : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  \out\(0) <= \^out\(0);
CLOCKDIV: entity work.design_1_SPI_ip_0_1_clock_divider
     port map (
      CLK => clock_int,
      Q_reg => \^sr\(0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg3_reg[2]\(2 downto 0) => \slv_reg3_reg[31]\(2 downto 0)
    );
DWCNTR: entity work.design_1_SPI_ip_0_1_downCounter5Bits
     port map (
      D(1) => DWCNTR_n_0,
      D(0) => DWCNTR_n_1,
      \FSM_onehot_state_reg[1]\ => FSM_n_52,
      \FSM_onehot_state_reg[1]_0\ => FSM_n_27,
      Q(0) => Q(24),
      \out\(2) => SCK_int,
      \out\(1) => \^out\(0),
      \out\(0) => shift,
      s00_axi_aresetn => \^sr\(0)
    );
FSM: entity work.design_1_SPI_ip_0_1_SPI_fsm
     port map (
      CLK => clock_int,
      D(0) => D(24),
      \FSM_onehot_state_reg[3]_0\(1) => DWCNTR_n_0,
      \FSM_onehot_state_reg[3]_0\(0) => DWCNTR_n_1,
      MOSI_int => MOSI_int,
      Q(24 downto 0) => Q(24 downto 0),
      SPI_CS => SPI_CS,
      SPI_MOSI => SPI_MOSI,
      SPI_SCK => SPI_SCK,
      SR(0) => \^sr\(0),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      \out\(2) => SCK_int,
      \out\(1) => \^out\(0),
      \out\(0) => shift,
      \r_reg_reg[0]_C\ => FSM_n_3,
      \r_reg_reg[0]_P\ => FSM_n_51,
      \r_reg_reg[10]_C\ => FSM_n_13,
      \r_reg_reg[10]_P\ => FSM_n_41,
      \r_reg_reg[11]_C\ => FSM_n_14,
      \r_reg_reg[11]_P\ => FSM_n_40,
      \r_reg_reg[12]_C\ => FSM_n_15,
      \r_reg_reg[12]_P\ => FSM_n_39,
      \r_reg_reg[13]_C\ => FSM_n_16,
      \r_reg_reg[13]_P\ => FSM_n_38,
      \r_reg_reg[14]_C\ => FSM_n_17,
      \r_reg_reg[14]_P\ => FSM_n_37,
      \r_reg_reg[15]_C\ => FSM_n_18,
      \r_reg_reg[15]_P\ => FSM_n_36,
      \r_reg_reg[16]_C\ => FSM_n_19,
      \r_reg_reg[16]_P\ => FSM_n_35,
      \r_reg_reg[17]_C\ => FSM_n_20,
      \r_reg_reg[17]_P\ => FSM_n_34,
      \r_reg_reg[18]_C\ => FSM_n_21,
      \r_reg_reg[18]_P\ => FSM_n_33,
      \r_reg_reg[19]_C\ => FSM_n_22,
      \r_reg_reg[19]_P\ => FSM_n_32,
      \r_reg_reg[1]_C\ => FSM_n_4,
      \r_reg_reg[1]_P\ => FSM_n_50,
      \r_reg_reg[20]_C\ => FSM_n_23,
      \r_reg_reg[20]_P\ => FSM_n_31,
      \r_reg_reg[21]_C\ => FSM_n_24,
      \r_reg_reg[21]_P\ => FSM_n_30,
      \r_reg_reg[22]_C\ => FSM_n_25,
      \r_reg_reg[22]_P\ => FSM_n_29,
      \r_reg_reg[23]_C\ => FSM_n_26,
      \r_reg_reg[23]_P\ => FSM_n_28,
      \r_reg_reg[24]\ => FSM_n_27,
      \r_reg_reg[2]_C\ => FSM_n_5,
      \r_reg_reg[2]_P\ => FSM_n_49,
      \r_reg_reg[3]_C\ => FSM_n_6,
      \r_reg_reg[3]_P\ => FSM_n_48,
      \r_reg_reg[4]_C\ => FSM_n_7,
      \r_reg_reg[4]_P\ => FSM_n_47,
      \r_reg_reg[4]_P_0\ => FSM_n_52,
      \r_reg_reg[5]_C\ => FSM_n_8,
      \r_reg_reg[5]_P\ => FSM_n_46,
      \r_reg_reg[6]_C\ => FSM_n_9,
      \r_reg_reg[6]_P\ => FSM_n_45,
      \r_reg_reg[7]_C\ => FSM_n_10,
      \r_reg_reg[7]_P\ => FSM_n_44,
      \r_reg_reg[8]_C\ => FSM_n_11,
      \r_reg_reg[8]_P\ => FSM_n_43,
      \r_reg_reg[9]_C\ => FSM_n_12,
      \r_reg_reg[9]_P\ => FSM_n_42,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg2_reg[31]\(0) => \slv_reg2_reg[31]\(24),
      \slv_reg3_reg[31]\(0) => \slv_reg3_reg[31]\(24)
    );
SR25Bits: entity work.design_1_SPI_ip_0_1_leftShiftRegister25bits
     port map (
      D(23 downto 0) => D(23 downto 0),
      \FSM_onehot_state_reg[1]\ => FSM_n_28,
      \FSM_onehot_state_reg[1]_0\ => FSM_n_26,
      \FSM_onehot_state_reg[1]_1\ => FSM_n_29,
      \FSM_onehot_state_reg[1]_10\ => FSM_n_21,
      \FSM_onehot_state_reg[1]_11\ => FSM_n_34,
      \FSM_onehot_state_reg[1]_12\ => FSM_n_20,
      \FSM_onehot_state_reg[1]_13\ => FSM_n_35,
      \FSM_onehot_state_reg[1]_14\ => FSM_n_19,
      \FSM_onehot_state_reg[1]_15\ => FSM_n_36,
      \FSM_onehot_state_reg[1]_16\ => FSM_n_18,
      \FSM_onehot_state_reg[1]_17\ => FSM_n_37,
      \FSM_onehot_state_reg[1]_18\ => FSM_n_17,
      \FSM_onehot_state_reg[1]_19\ => FSM_n_38,
      \FSM_onehot_state_reg[1]_2\ => FSM_n_25,
      \FSM_onehot_state_reg[1]_20\ => FSM_n_16,
      \FSM_onehot_state_reg[1]_21\ => FSM_n_39,
      \FSM_onehot_state_reg[1]_22\ => FSM_n_15,
      \FSM_onehot_state_reg[1]_23\ => FSM_n_40,
      \FSM_onehot_state_reg[1]_24\ => FSM_n_14,
      \FSM_onehot_state_reg[1]_25\ => FSM_n_41,
      \FSM_onehot_state_reg[1]_26\ => FSM_n_13,
      \FSM_onehot_state_reg[1]_27\ => FSM_n_42,
      \FSM_onehot_state_reg[1]_28\ => FSM_n_12,
      \FSM_onehot_state_reg[1]_29\ => FSM_n_43,
      \FSM_onehot_state_reg[1]_3\ => FSM_n_30,
      \FSM_onehot_state_reg[1]_30\ => FSM_n_11,
      \FSM_onehot_state_reg[1]_31\ => FSM_n_44,
      \FSM_onehot_state_reg[1]_32\ => FSM_n_10,
      \FSM_onehot_state_reg[1]_33\ => FSM_n_45,
      \FSM_onehot_state_reg[1]_34\ => FSM_n_9,
      \FSM_onehot_state_reg[1]_35\ => FSM_n_46,
      \FSM_onehot_state_reg[1]_36\ => FSM_n_8,
      \FSM_onehot_state_reg[1]_37\ => FSM_n_47,
      \FSM_onehot_state_reg[1]_38\ => FSM_n_7,
      \FSM_onehot_state_reg[1]_39\ => FSM_n_48,
      \FSM_onehot_state_reg[1]_4\ => FSM_n_24,
      \FSM_onehot_state_reg[1]_40\ => FSM_n_6,
      \FSM_onehot_state_reg[1]_41\ => FSM_n_49,
      \FSM_onehot_state_reg[1]_42\ => FSM_n_5,
      \FSM_onehot_state_reg[1]_43\ => FSM_n_50,
      \FSM_onehot_state_reg[1]_44\ => FSM_n_4,
      \FSM_onehot_state_reg[1]_45\ => FSM_n_51,
      \FSM_onehot_state_reg[1]_46\ => FSM_n_3,
      \FSM_onehot_state_reg[1]_47\ => FSM_n_27,
      \FSM_onehot_state_reg[1]_5\ => FSM_n_31,
      \FSM_onehot_state_reg[1]_6\ => FSM_n_23,
      \FSM_onehot_state_reg[1]_7\ => FSM_n_32,
      \FSM_onehot_state_reg[1]_8\ => FSM_n_22,
      \FSM_onehot_state_reg[1]_9\ => FSM_n_33,
      MOSI_int => MOSI_int,
      Q(23 downto 0) => Q(23 downto 0),
      SPI_MISO => SPI_MISO,
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      \out\(0) => shift,
      \slv_reg2_reg[23]\(23 downto 0) => \slv_reg2_reg[31]\(23 downto 0),
      \slv_reg3_reg[23]\(23 downto 0) => \slv_reg3_reg[31]\(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_SPI_ip_v1_0_S00_AXI is
  port (
    FSM_DONE : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    FSM_START : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI_SCK : out STD_LOGIC;
    SPI_MOSI : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_SPI_ip_v1_0_S00_AXI : entity is "SPI_ip_v1_0_S00_AXI";
end design_1_SPI_ip_0_1_SPI_ip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_SPI_ip_0_1_SPI_ip_v1_0_S00_AXI is
  signal \^fsm_start\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
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
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal user_SPI_Block_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_3\ : label is "soft_lutpair3";
begin
  FSM_START <= \^fsm_start\;
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
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
      S => user_SPI_Block_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
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
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => user_SPI_Block_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => user_SPI_Block_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => user_SPI_Block_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
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
      I2 => \^s_axi_awready\,
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
      R => user_SPI_Block_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => user_SPI_Block_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => user_SPI_Block_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
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
      R => user_SPI_Block_n_0
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => slv_reg0(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => slv_reg0(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => slv_reg0(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(27),
      I3 => axi_araddr(3),
      I4 => slv_reg0(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(28),
      I3 => axi_araddr(3),
      I4 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => user_SPI_Block_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => user_SPI_Block_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
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
      R => user_SPI_Block_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => user_SPI_Block_n_0
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
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
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
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => s00_axi_wdata(31),
      Q => \^fsm_start\,
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => user_SPI_Block_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => user_SPI_Block_n_0
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
      Q => slv_reg2(0),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => user_SPI_Block_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => user_SPI_Block_n_0
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
      Q => slv_reg3(0),
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => user_SPI_Block_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => user_SPI_Block_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
user_SPI_Block: entity work.design_1_SPI_ip_0_1_SPI_Master
     port map (
      D(24) => reg_data_out(31),
      D(23 downto 0) => reg_data_out(23 downto 0),
      Q(24) => \^fsm_start\,
      Q(23 downto 0) => slv_reg0(23 downto 0),
      SPI_CS => SPI_CS,
      SPI_MISO => SPI_MISO,
      SPI_MOSI => SPI_MOSI,
      SPI_SCK => SPI_SCK,
      SR(0) => user_SPI_Block_n_0,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \out\(0) => FSM_DONE,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg2_reg[31]\(24) => slv_reg2(31),
      \slv_reg2_reg[31]\(23 downto 0) => slv_reg2(23 downto 0),
      \slv_reg3_reg[31]\(24) => slv_reg3(31),
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
      \slv_reg3_reg[31]\(2 downto 0) => slv_reg3(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1_SPI_ip_v1_0 is
  port (
    FSM_DONE : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SPI_SCK : out STD_LOGIC;
    SPI_MOSI : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    SPI_MISO : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPI_ip_0_1_SPI_ip_v1_0 : entity is "SPI_ip_v1_0";
end design_1_SPI_ip_0_1_SPI_ip_v1_0;

architecture STRUCTURE of design_1_SPI_ip_0_1_SPI_ip_v1_0 is
begin
SPI_ip_v1_0_S00_AXI_inst: entity work.design_1_SPI_ip_0_1_SPI_ip_v1_0_S00_AXI
     port map (
      FSM_DONE => FSM_DONE,
      FSM_START => Q(0),
      SPI_CS => SPI_CS,
      SPI_MISO => SPI_MISO,
      SPI_MOSI => SPI_MOSI,
      SPI_SCK => SPI_SCK,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPI_ip_0_1 is
  port (
    SPI_MISO : in STD_LOGIC;
    SPI_MOSI : out STD_LOGIC;
    SPI_SCK : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    FSM_START : out STD_LOGIC;
    FSM_DONE : out STD_LOGIC;
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
  attribute NotValidForBitStream of design_1_SPI_ip_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPI_ip_0_1 : entity is "design_1_SPI_ip_0_1,SPI_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_SPI_ip_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_SPI_ip_0_1 : entity is "SPI_ip_v1_0,Vivado 2018.2";
end design_1_SPI_ip_0_1;

architecture STRUCTURE of design_1_SPI_ip_0_1 is
  signal \<const0>\ : STD_LOGIC;
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
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
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
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_SPI_ip_0_1_SPI_ip_v1_0
     port map (
      FSM_DONE => FSM_DONE,
      Q(0) => FSM_START,
      SPI_CS => SPI_CS,
      SPI_MISO => SPI_MISO,
      SPI_MOSI => SPI_MOSI,
      SPI_SCK => SPI_SCK,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
