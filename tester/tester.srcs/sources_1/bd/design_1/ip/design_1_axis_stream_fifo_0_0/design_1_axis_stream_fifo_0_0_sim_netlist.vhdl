-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sun Feb 17 02:18:48 2019
-- Host        : DESKTOP-KC9HGNO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_axis_stream_fifo_0_0 -prefix
--               design_1_axis_stream_fifo_0_0_ design_1_axis_stream_fifo_0_0_sim_netlist.vhdl
-- Design      : design_1_axis_stream_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0_S00_AXI is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \wr_ptr_reg_reg[12]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \rd_addr_reg_reg[12]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \wr_ptr_gray_reg_reg[12]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    mem_reg_3 : out STD_LOGIC;
    \rd_addr_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 28 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \rd_ptr_gray_reg_reg[12]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    m00_axis_tvalid_reg_reg : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    mem_read_data_valid_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    dbg_word0_int : in STD_LOGIC_VECTOR ( 14 downto 0 );
    rd_ptr_next0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dbg_word2_int : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_ptr_next0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \wr_ptr_gray_reg_reg[12]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \rd_ptr_gray_sync2_reg_reg[12]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \wr_ptr_gray_reg_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tvalid : in STD_LOGIC;
    \wr_addr_reg_reg[12]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dbg_word1_int : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_rst_sync1_reg : in STD_LOGIC;
    m00_rst_sync1_reg : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0_S00_AXI;

architecture STRUCTURE of design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0_S00_AXI is
  signal \^d\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_wready0__0\ : STD_LOGIC;
  signal \^mem_reg_3\ : STD_LOGIC;
  signal \^rd_addr_reg_reg[12]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_gray_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \wr_addr_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \^wr_ptr_gray_reg_reg[12]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^wr_ptr_reg_reg[12]\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of axi_awready0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[11]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_ptr_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_addr_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wr_addr_reg[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wr_addr_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_addr_reg[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_addr_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_addr_reg[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_addr_reg[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_addr_reg[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_addr_reg[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_addr_reg[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_addr_reg[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_addr_reg[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_addr_reg[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[9]_i_1\ : label is "soft_lutpair11";
begin
  D(12 downto 0) <= \^d\(12 downto 0);
  mem_reg_3 <= \^mem_reg_3\;
  \rd_addr_reg_reg[12]\(12 downto 0) <= \^rd_addr_reg_reg[12]\(12 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
  \wr_ptr_gray_reg_reg[12]\(12 downto 0) <= \^wr_ptr_gray_reg_reg[12]\(12 downto 0);
  \wr_ptr_reg_reg[12]\(12 downto 0) <= \^wr_ptr_reg_reg[12]\(12 downto 0);
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      I3 => aw_en_reg_n_0,
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
      S => axi_awready_i_1_n_0
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
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
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
      R => axi_awready_i_1_n_0
    );
axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \axi_awready0__0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s00_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
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
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(0),
      I1 => \^wr_ptr_reg_reg[12]\(0),
      I2 => \^rd_addr_reg_reg[12]\(0),
      I3 => \^wr_ptr_gray_reg_reg[12]\(0),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(10),
      I1 => \^wr_ptr_reg_reg[12]\(10),
      I2 => \^rd_addr_reg_reg[12]\(10),
      I3 => \^wr_ptr_gray_reg_reg[12]\(10),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(11),
      I1 => \^wr_ptr_reg_reg[12]\(11),
      I2 => \^rd_addr_reg_reg[12]\(11),
      I3 => \^wr_ptr_gray_reg_reg[12]\(11),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \^wr_ptr_reg_reg[12]\(12),
      I1 => \^wr_ptr_gray_reg_reg[12]\(12),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => \^rd_addr_reg_reg[12]\(12),
      I5 => \^d\(12),
      O => reg_data_out(12)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(0),
      I1 => \wr_addr_reg_reg[12]\(0),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(0),
      I5 => dbg_word1_int(0),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(1),
      I1 => \wr_addr_reg_reg[12]\(1),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(1),
      I5 => dbg_word1_int(1),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(2),
      I1 => \wr_addr_reg_reg[12]\(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(2),
      I5 => dbg_word1_int(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(3),
      I1 => \wr_addr_reg_reg[12]\(3),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(3),
      I5 => dbg_word1_int(3),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^wr_ptr_reg_reg[12]\(1),
      I2 => \^rd_addr_reg_reg[12]\(1),
      I3 => \^wr_ptr_gray_reg_reg[12]\(1),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(4),
      I1 => \wr_addr_reg_reg[12]\(4),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(4),
      I5 => dbg_word1_int(4),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(5),
      I1 => \wr_addr_reg_reg[12]\(5),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(5),
      I5 => dbg_word1_int(5),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(6),
      I1 => \wr_addr_reg_reg[12]\(6),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(6),
      I5 => dbg_word1_int(6),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(7),
      I1 => \wr_addr_reg_reg[12]\(7),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(7),
      I5 => dbg_word1_int(7),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(8),
      I1 => \wr_addr_reg_reg[12]\(8),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(8),
      I5 => dbg_word1_int(8),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(9),
      I1 => \wr_addr_reg_reg[12]\(9),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(9),
      I5 => dbg_word1_int(9),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(10),
      I1 => \wr_addr_reg_reg[12]\(10),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(10),
      I5 => dbg_word1_int(10),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(11),
      I1 => \wr_addr_reg_reg[12]\(11),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(11),
      I5 => dbg_word1_int(11),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => dbg_word2_int(12),
      I1 => \wr_addr_reg_reg[12]\(12),
      I2 => axi_araddr(3),
      I3 => axi_araddr(2),
      I4 => dbg_word0_int(12),
      I5 => dbg_word1_int(12),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => SR(0),
      I1 => dbg_word0_int(13),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^wr_ptr_reg_reg[12]\(2),
      I2 => \^rd_addr_reg_reg[12]\(2),
      I3 => \^wr_ptr_gray_reg_reg[12]\(2),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => dbg_word2_int(13),
      I1 => dbg_word0_int(14),
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => s00_rst_sync1_reg,
      I1 => m00_rst_sync1_reg,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(3),
      I1 => \^wr_ptr_reg_reg[12]\(3),
      I2 => \^rd_addr_reg_reg[12]\(3),
      I3 => \^wr_ptr_gray_reg_reg[12]\(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \^wr_ptr_reg_reg[12]\(4),
      I2 => \^rd_addr_reg_reg[12]\(4),
      I3 => \^wr_ptr_gray_reg_reg[12]\(4),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(5),
      I1 => \^wr_ptr_reg_reg[12]\(5),
      I2 => \^rd_addr_reg_reg[12]\(5),
      I3 => \^wr_ptr_gray_reg_reg[12]\(5),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(6),
      I1 => \^wr_ptr_reg_reg[12]\(6),
      I2 => \^rd_addr_reg_reg[12]\(6),
      I3 => \^wr_ptr_gray_reg_reg[12]\(6),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(7),
      I1 => \^wr_ptr_reg_reg[12]\(7),
      I2 => \^rd_addr_reg_reg[12]\(7),
      I3 => \^wr_ptr_gray_reg_reg[12]\(7),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(8),
      I1 => \^wr_ptr_reg_reg[12]\(8),
      I2 => \^rd_addr_reg_reg[12]\(8),
      I3 => \^wr_ptr_gray_reg_reg[12]\(8),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CCCCAAAAF0F0"
    )
        port map (
      I0 => \^d\(9),
      I1 => \^wr_ptr_reg_reg[12]\(9),
      I2 => \^rd_addr_reg_reg[12]\(9),
      I3 => \^wr_ptr_gray_reg_reg[12]\(9),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
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
      R => axi_awready_i_1_n_0
    );
axi_wready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \axi_wready0__0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_wready0__0\,
      Q => \^s00_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\empty_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(12),
      I1 => \rd_ptr_gray_reg_reg[12]\(12),
      O => S(0)
    );
empty_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(10),
      I1 => Q(10),
      I2 => \rd_ptr_gray_reg_reg[12]\(9),
      I3 => Q(9),
      I4 => Q(11),
      I5 => \rd_ptr_gray_reg_reg[12]\(11),
      O => \rd_addr_reg_reg[0]\(3)
    );
empty_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(7),
      I1 => Q(7),
      I2 => \rd_ptr_gray_reg_reg[12]\(6),
      I3 => Q(6),
      I4 => Q(8),
      I5 => \rd_ptr_gray_reg_reg[12]\(8),
      O => \rd_addr_reg_reg[0]\(2)
    );
empty_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(4),
      I1 => Q(4),
      I2 => \rd_ptr_gray_reg_reg[12]\(3),
      I3 => Q(3),
      I4 => Q(5),
      I5 => \rd_ptr_gray_reg_reg[12]\(5),
      O => \rd_addr_reg_reg[0]\(1)
    );
empty_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(1),
      I1 => Q(1),
      I2 => \rd_ptr_gray_reg_reg[12]\(0),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rd_ptr_gray_reg_reg[12]\(2),
      O => \rd_addr_reg_reg[0]\(0)
    );
full0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(9),
      I1 => \rd_ptr_gray_sync2_reg_reg[12]\(9),
      I2 => \rd_ptr_gray_sync2_reg_reg[12]\(10),
      I3 => \wr_ptr_gray_reg_reg[12]_0\(10),
      O => mem_reg_0(3)
    );
full0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(7),
      I1 => \rd_ptr_gray_sync2_reg_reg[12]\(7),
      I2 => \wr_ptr_gray_reg_reg[12]_0\(6),
      I3 => \rd_ptr_gray_sync2_reg_reg[12]\(6),
      I4 => \rd_ptr_gray_sync2_reg_reg[12]\(8),
      I5 => \wr_ptr_gray_reg_reg[12]_0\(8),
      O => mem_reg_0(2)
    );
full0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(4),
      I1 => \rd_ptr_gray_sync2_reg_reg[12]\(4),
      I2 => \wr_ptr_gray_reg_reg[12]_0\(3),
      I3 => \rd_ptr_gray_sync2_reg_reg[12]\(3),
      I4 => \rd_ptr_gray_sync2_reg_reg[12]\(5),
      I5 => \wr_ptr_gray_reg_reg[12]_0\(5),
      O => mem_reg_0(1)
    );
full0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(1),
      I1 => \rd_ptr_gray_sync2_reg_reg[12]\(1),
      I2 => \wr_ptr_gray_reg_reg[12]_0\(0),
      I3 => \rd_ptr_gray_sync2_reg_reg[12]\(0),
      I4 => \rd_ptr_gray_sync2_reg_reg[12]\(2),
      I5 => \wr_ptr_gray_reg_reg[12]_0\(2),
      O => mem_reg_0(0)
    );
mem_reg_3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => m00_axis_tvalid_reg_reg,
      O => \^mem_reg_3\
    );
\rd_ptr_gray_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB88A888A8BBAB"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(0),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => \^mem_reg_3\,
      I4 => rd_ptr_next0(0),
      I5 => dbg_word0_int(0),
      O => \^d\(0)
    );
\rd_ptr_gray_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(10),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(9),
      I3 => rd_ptr_next0(10),
      O => \^d\(10)
    );
\rd_ptr_gray_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(11),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(10),
      I3 => rd_ptr_next0(11),
      O => \^d\(11)
    );
\rd_ptr_gray_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => CO(0),
      I1 => mem_read_data_valid_reg,
      I2 => m00_axis_tready,
      I3 => m00_axis_tvalid_reg_reg,
      O => \rd_ptr_gray_reg[11]_i_2_n_0\
    );
\rd_ptr_gray_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(12),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(11),
      O => \^d\(12)
    );
\rd_ptr_gray_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(1),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(0),
      I3 => rd_ptr_next0(1),
      O => \^d\(1)
    );
\rd_ptr_gray_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(2),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(1),
      I3 => rd_ptr_next0(2),
      O => \^d\(2)
    );
\rd_ptr_gray_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(3),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(2),
      I3 => rd_ptr_next0(3),
      O => \^d\(3)
    );
\rd_ptr_gray_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(4),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(3),
      I3 => rd_ptr_next0(4),
      O => \^d\(4)
    );
\rd_ptr_gray_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(5),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(4),
      I3 => rd_ptr_next0(5),
      O => \^d\(5)
    );
\rd_ptr_gray_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(6),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(5),
      I3 => rd_ptr_next0(6),
      O => \^d\(6)
    );
\rd_ptr_gray_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(7),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(6),
      I3 => rd_ptr_next0(7),
      O => \^d\(7)
    );
\rd_ptr_gray_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(8),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(7),
      I3 => rd_ptr_next0(8),
      O => \^d\(8)
    );
\rd_ptr_gray_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rd_ptr_gray_reg_reg[12]\(9),
      I1 => \rd_ptr_gray_reg[11]_i_2_n_0\,
      I2 => rd_ptr_next0(8),
      I3 => rd_ptr_next0(9),
      O => \^d\(9)
    );
\rd_ptr_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2000DF"
    )
        port map (
      I0 => m00_axis_tvalid_reg_reg,
      I1 => m00_axis_tready,
      I2 => mem_read_data_valid_reg,
      I3 => CO(0),
      I4 => dbg_word0_int(0),
      O => \^rd_addr_reg_reg[12]\(0)
    );
\rd_ptr_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(10),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(9),
      O => \^rd_addr_reg_reg[12]\(10)
    );
\rd_ptr_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(11),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(10),
      O => \^rd_addr_reg_reg[12]\(11)
    );
\rd_ptr_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(12),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(11),
      O => \^rd_addr_reg_reg[12]\(12)
    );
\rd_ptr_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(1),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(0),
      O => \^rd_addr_reg_reg[12]\(1)
    );
\rd_ptr_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(2),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(1),
      O => \^rd_addr_reg_reg[12]\(2)
    );
\rd_ptr_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(3),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(2),
      O => \^rd_addr_reg_reg[12]\(3)
    );
\rd_ptr_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(4),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(3),
      O => \^rd_addr_reg_reg[12]\(4)
    );
\rd_ptr_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(5),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(4),
      O => \^rd_addr_reg_reg[12]\(5)
    );
\rd_ptr_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(6),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(5),
      O => \^rd_addr_reg_reg[12]\(6)
    );
\rd_ptr_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(7),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(6),
      O => \^rd_addr_reg_reg[12]\(7)
    );
\rd_ptr_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(8),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(7),
      O => \^rd_addr_reg_reg[12]\(8)
    );
\rd_ptr_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABBBBB88A88888"
    )
        port map (
      I0 => dbg_word0_int(9),
      I1 => CO(0),
      I2 => mem_read_data_valid_reg,
      I3 => m00_axis_tready,
      I4 => m00_axis_tvalid_reg_reg,
      I5 => rd_ptr_next0(8),
      O => \^rd_addr_reg_reg[12]\(9)
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
\wr_addr_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wr_addr_reg[12]_i_2_n_0\,
      I1 => dbg_word2_int(0),
      O => \^wr_ptr_reg_reg[12]\(0)
    );
\wr_addr_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(10),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(9),
      O => \^wr_ptr_reg_reg[12]\(10)
    );
\wr_addr_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(11),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(10),
      O => \^wr_ptr_reg_reg[12]\(11)
    );
\wr_addr_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(12),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(11),
      O => \^wr_ptr_reg_reg[12]\(12)
    );
\wr_addr_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06600000FFFFFFFF"
    )
        port map (
      I0 => \rd_ptr_gray_sync2_reg_reg[12]\(11),
      I1 => \wr_ptr_gray_reg_reg[12]_0\(11),
      I2 => \wr_ptr_gray_reg_reg[12]_0\(12),
      I3 => \rd_ptr_gray_sync2_reg_reg[12]\(12),
      I4 => \wr_ptr_gray_reg_reg[9]\(0),
      I5 => s00_axis_tvalid,
      O => \wr_addr_reg[12]_i_2_n_0\
    );
\wr_addr_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(1),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(0),
      O => \^wr_ptr_reg_reg[12]\(1)
    );
\wr_addr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(2),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(1),
      O => \^wr_ptr_reg_reg[12]\(2)
    );
\wr_addr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(3),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(2),
      O => \^wr_ptr_reg_reg[12]\(3)
    );
\wr_addr_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(4),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(3),
      O => \^wr_ptr_reg_reg[12]\(4)
    );
\wr_addr_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(5),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(4),
      O => \^wr_ptr_reg_reg[12]\(5)
    );
\wr_addr_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(6),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(5),
      O => \^wr_ptr_reg_reg[12]\(6)
    );
\wr_addr_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(7),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(6),
      O => \^wr_ptr_reg_reg[12]\(7)
    );
\wr_addr_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(8),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(7),
      O => \^wr_ptr_reg_reg[12]\(8)
    );
\wr_addr_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dbg_word2_int(9),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(8),
      O => \^wr_ptr_reg_reg[12]\(9)
    );
\wr_ptr_gray_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(0),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(0),
      I3 => dbg_word2_int(0),
      O => \^wr_ptr_gray_reg_reg[12]\(0)
    );
\wr_ptr_gray_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(10),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(9),
      I3 => wr_ptr_next0(10),
      O => \^wr_ptr_gray_reg_reg[12]\(10)
    );
\wr_ptr_gray_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(11),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(10),
      I3 => wr_ptr_next0(11),
      O => \^wr_ptr_gray_reg_reg[12]\(11)
    );
\wr_ptr_gray_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(12),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(11),
      O => \^wr_ptr_gray_reg_reg[12]\(12)
    );
\wr_ptr_gray_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(1),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(0),
      I3 => wr_ptr_next0(1),
      O => \^wr_ptr_gray_reg_reg[12]\(1)
    );
\wr_ptr_gray_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(2),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(1),
      I3 => wr_ptr_next0(2),
      O => \^wr_ptr_gray_reg_reg[12]\(2)
    );
\wr_ptr_gray_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(3),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(2),
      I3 => wr_ptr_next0(3),
      O => \^wr_ptr_gray_reg_reg[12]\(3)
    );
\wr_ptr_gray_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(4),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(3),
      I3 => wr_ptr_next0(4),
      O => \^wr_ptr_gray_reg_reg[12]\(4)
    );
\wr_ptr_gray_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(5),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(4),
      I3 => wr_ptr_next0(5),
      O => \^wr_ptr_gray_reg_reg[12]\(5)
    );
\wr_ptr_gray_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(6),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(5),
      I3 => wr_ptr_next0(6),
      O => \^wr_ptr_gray_reg_reg[12]\(6)
    );
\wr_ptr_gray_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(7),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(6),
      I3 => wr_ptr_next0(7),
      O => \^wr_ptr_gray_reg_reg[12]\(7)
    );
\wr_ptr_gray_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(8),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(7),
      I3 => wr_ptr_next0(8),
      O => \^wr_ptr_gray_reg_reg[12]\(8)
    );
\wr_ptr_gray_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg[12]_0\(9),
      I1 => \wr_addr_reg[12]_i_2_n_0\,
      I2 => wr_ptr_next0(8),
      I3 => wr_ptr_next0(9),
      O => \^wr_ptr_gray_reg_reg[12]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0 is
  port (
    mem_read_data_reg : out STD_LOGIC_VECTOR ( 32 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 28 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    mem_write_data : in STD_LOGIC_VECTOR ( 32 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0;

architecture STRUCTURE of design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0 is
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_23 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_24 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_25 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_26 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_27 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_28 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_29 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_30 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_31 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_33 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_34 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_35 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_36 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_37 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_38 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_39 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_40 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_41 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_42 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_43 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_44 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_58 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_59 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_60 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_61 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_62 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_63 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_64 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_65 : STD_LOGIC;
  signal axis_stream_fifo_v1_0_S00_AXI_inst_n_66 : STD_LOGIC;
  signal dbg_word0_int : STD_LOGIC_VECTOR ( 30 downto 12 );
  signal dbg_word1_int : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal dbg_word2_int : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal dbg_word3_int : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal empty : STD_LOGIC;
  signal empty_carry_n_0 : STD_LOGIC;
  signal empty_carry_n_1 : STD_LOGIC;
  signal empty_carry_n_2 : STD_LOGIC;
  signal empty_carry_n_3 : STD_LOGIC;
  signal full0 : STD_LOGIC;
  signal full0_carry_n_1 : STD_LOGIC;
  signal full0_carry_n_2 : STD_LOGIC;
  signal full0_carry_n_3 : STD_LOGIC;
  signal \^m00_axis_tvalid\ : STD_LOGIC;
  signal m00_axis_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal m00_rst_sync1_reg : STD_LOGIC;
  signal m00_rst_sync1_reg_i_1_n_0 : STD_LOGIC;
  signal m00_rst_sync2_reg_i_1_n_0 : STD_LOGIC;
  signal m00_rst_sync3_reg_i_1_n_0 : STD_LOGIC;
  signal mem_read_data_valid_reg : STD_LOGIC;
  signal mem_read_data_valid_reg_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal rd_ptr_gray_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rd_ptr_gray_sync1_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal rd_ptr_next0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \rd_ptr_next0_carry__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_next0_carry__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_next0_carry__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_next0_carry__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_next0_carry__1_n_1\ : STD_LOGIC;
  signal \rd_ptr_next0_carry__1_n_2\ : STD_LOGIC;
  signal \rd_ptr_next0_carry__1_n_3\ : STD_LOGIC;
  signal rd_ptr_next0_carry_n_0 : STD_LOGIC;
  signal rd_ptr_next0_carry_n_1 : STD_LOGIC;
  signal rd_ptr_next0_carry_n_2 : STD_LOGIC;
  signal rd_ptr_next0_carry_n_3 : STD_LOGIC;
  signal read1_out : STD_LOGIC;
  signal s00_axis_tready02_in : STD_LOGIC;
  signal s00_rst_sync1_reg : STD_LOGIC;
  signal s00_rst_sync1_reg_i_1_n_0 : STD_LOGIC;
  signal s00_rst_sync2_reg_i_1_n_0 : STD_LOGIC;
  signal s00_rst_sync3_reg : STD_LOGIC;
  signal s00_rst_sync3_reg_i_1_n_0 : STD_LOGIC;
  signal wr_addr_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wr_ptr_gray_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_ptr_gray_sync1_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal wr_ptr_gray_sync2_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal wr_ptr_next0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \wr_ptr_next0_carry__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_next0_carry__0_n_1\ : STD_LOGIC;
  signal \wr_ptr_next0_carry__0_n_2\ : STD_LOGIC;
  signal \wr_ptr_next0_carry__0_n_3\ : STD_LOGIC;
  signal \wr_ptr_next0_carry__1_n_1\ : STD_LOGIC;
  signal \wr_ptr_next0_carry__1_n_2\ : STD_LOGIC;
  signal \wr_ptr_next0_carry__1_n_3\ : STD_LOGIC;
  signal wr_ptr_next0_carry_n_0 : STD_LOGIC;
  signal wr_ptr_next0_carry_n_1 : STD_LOGIC;
  signal wr_ptr_next0_carry_n_2 : STD_LOGIC;
  signal wr_ptr_next0_carry_n_3 : STD_LOGIC;
  signal NLW_empty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_empty_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_empty_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal NLW_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_rd_ptr_next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_ptr_next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m00_axis_tvalid_reg_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of m00_rst_sync2_reg_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of m00_rst_sync3_reg_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of mem_read_data_valid_reg_i_1 : label is "soft_lutpair16";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 139264;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 139264;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "mem";
  attribute bram_addr_begin of mem_reg_1 : label is 0;
  attribute bram_addr_end of mem_reg_1 : label is 4095;
  attribute bram_slice_begin of mem_reg_1 : label is 9;
  attribute bram_slice_end of mem_reg_1 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_2 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_2 : label is "";
  attribute RTL_RAM_BITS of mem_reg_2 : label is 139264;
  attribute RTL_RAM_NAME of mem_reg_2 : label is "mem";
  attribute bram_addr_begin of mem_reg_2 : label is 0;
  attribute bram_addr_end of mem_reg_2 : label is 4095;
  attribute bram_slice_begin of mem_reg_2 : label is 18;
  attribute bram_slice_end of mem_reg_2 : label is 26;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d6";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_3 : label is "p0_d6";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_3 : label is "";
  attribute RTL_RAM_BITS of mem_reg_3 : label is 139264;
  attribute RTL_RAM_NAME of mem_reg_3 : label is "mem";
  attribute bram_addr_begin of mem_reg_3 : label is 0;
  attribute bram_addr_end of mem_reg_3 : label is 4095;
  attribute bram_slice_begin of mem_reg_3 : label is 27;
  attribute bram_slice_end of mem_reg_3 : label is 32;
  attribute SOFT_HLUTNM of s00_rst_sync2_reg_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of s00_rst_sync3_reg_i_1 : label is "soft_lutpair17";
begin
  m00_axis_tvalid <= \^m00_axis_tvalid\;
axis_stream_fifo_v1_0_S00_AXI_inst: entity work.design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0_S00_AXI
     port map (
      CO(0) => empty,
      D(12 downto 0) => dbg_word1_int(12 downto 0),
      Q(12 downto 0) => wr_ptr_gray_sync2_reg(12 downto 0),
      S(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_5,
      SR(0) => s00_rst_sync3_reg,
      dbg_word0_int(14 downto 0) => dbg_word0_int(30 downto 16),
      dbg_word1_int(12 downto 0) => dbg_word1_int(28 downto 16),
      dbg_word2_int(13) => dbg_word2_int(30),
      dbg_word2_int(12 downto 0) => dbg_word2_int(28 downto 16),
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid_reg_reg => \^m00_axis_tvalid\,
      m00_rst_sync1_reg => m00_rst_sync1_reg,
      mem_read_data_valid_reg => mem_read_data_valid_reg,
      mem_reg_0(3) => axis_stream_fifo_v1_0_S00_AXI_inst_n_63,
      mem_reg_0(2) => axis_stream_fifo_v1_0_S00_AXI_inst_n_64,
      mem_reg_0(1) => axis_stream_fifo_v1_0_S00_AXI_inst_n_65,
      mem_reg_0(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_66,
      mem_reg_3 => axis_stream_fifo_v1_0_S00_AXI_inst_n_58,
      \rd_addr_reg_reg[0]\(3) => axis_stream_fifo_v1_0_S00_AXI_inst_n_59,
      \rd_addr_reg_reg[0]\(2) => axis_stream_fifo_v1_0_S00_AXI_inst_n_60,
      \rd_addr_reg_reg[0]\(1) => axis_stream_fifo_v1_0_S00_AXI_inst_n_61,
      \rd_addr_reg_reg[0]\(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_62,
      \rd_addr_reg_reg[12]\(12) => dbg_word0_int(12),
      \rd_addr_reg_reg[12]\(11) => axis_stream_fifo_v1_0_S00_AXI_inst_n_33,
      \rd_addr_reg_reg[12]\(10) => axis_stream_fifo_v1_0_S00_AXI_inst_n_34,
      \rd_addr_reg_reg[12]\(9) => axis_stream_fifo_v1_0_S00_AXI_inst_n_35,
      \rd_addr_reg_reg[12]\(8) => axis_stream_fifo_v1_0_S00_AXI_inst_n_36,
      \rd_addr_reg_reg[12]\(7) => axis_stream_fifo_v1_0_S00_AXI_inst_n_37,
      \rd_addr_reg_reg[12]\(6) => axis_stream_fifo_v1_0_S00_AXI_inst_n_38,
      \rd_addr_reg_reg[12]\(5) => axis_stream_fifo_v1_0_S00_AXI_inst_n_39,
      \rd_addr_reg_reg[12]\(4) => axis_stream_fifo_v1_0_S00_AXI_inst_n_40,
      \rd_addr_reg_reg[12]\(3) => axis_stream_fifo_v1_0_S00_AXI_inst_n_41,
      \rd_addr_reg_reg[12]\(2) => axis_stream_fifo_v1_0_S00_AXI_inst_n_42,
      \rd_addr_reg_reg[12]\(1) => axis_stream_fifo_v1_0_S00_AXI_inst_n_43,
      \rd_addr_reg_reg[12]\(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_44,
      \rd_ptr_gray_reg_reg[12]\(12 downto 0) => rd_ptr_gray_reg(12 downto 0),
      \rd_ptr_gray_sync2_reg_reg[12]\(12) => p_0_in0_in,
      \rd_ptr_gray_sync2_reg_reg[12]\(11) => p_0_in,
      \rd_ptr_gray_sync2_reg_reg[12]\(10) => \rd_ptr_gray_sync2_reg_reg_n_0_[10]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(9) => \rd_ptr_gray_sync2_reg_reg_n_0_[9]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(8) => \rd_ptr_gray_sync2_reg_reg_n_0_[8]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(7) => \rd_ptr_gray_sync2_reg_reg_n_0_[7]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(6) => \rd_ptr_gray_sync2_reg_reg_n_0_[6]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(5) => \rd_ptr_gray_sync2_reg_reg_n_0_[5]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(4) => \rd_ptr_gray_sync2_reg_reg_n_0_[4]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(3) => \rd_ptr_gray_sync2_reg_reg_n_0_[3]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(2) => \rd_ptr_gray_sync2_reg_reg_n_0_[2]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(1) => \rd_ptr_gray_sync2_reg_reg_n_0_[1]\,
      \rd_ptr_gray_sync2_reg_reg[12]\(0) => \rd_ptr_gray_sync2_reg_reg_n_0_[0]\,
      rd_ptr_next0(11 downto 0) => rd_ptr_next0(12 downto 1),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(28 downto 0) => s00_axi_rdata(28 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axis_tvalid => s00_axis_tvalid,
      s00_rst_sync1_reg => s00_rst_sync1_reg,
      \wr_addr_reg_reg[12]\(12 downto 0) => wr_addr_reg(12 downto 0),
      \wr_ptr_gray_reg_reg[12]\(12 downto 0) => dbg_word3_int(12 downto 0),
      \wr_ptr_gray_reg_reg[12]_0\(12) => p_1_in1_in,
      \wr_ptr_gray_reg_reg[12]_0\(11) => p_1_in,
      \wr_ptr_gray_reg_reg[12]_0\(10) => \wr_ptr_gray_reg_reg_n_0_[10]\,
      \wr_ptr_gray_reg_reg[12]_0\(9) => \wr_ptr_gray_reg_reg_n_0_[9]\,
      \wr_ptr_gray_reg_reg[12]_0\(8) => \wr_ptr_gray_reg_reg_n_0_[8]\,
      \wr_ptr_gray_reg_reg[12]_0\(7) => \wr_ptr_gray_reg_reg_n_0_[7]\,
      \wr_ptr_gray_reg_reg[12]_0\(6) => \wr_ptr_gray_reg_reg_n_0_[6]\,
      \wr_ptr_gray_reg_reg[12]_0\(5) => \wr_ptr_gray_reg_reg_n_0_[5]\,
      \wr_ptr_gray_reg_reg[12]_0\(4) => \wr_ptr_gray_reg_reg_n_0_[4]\,
      \wr_ptr_gray_reg_reg[12]_0\(3) => \wr_ptr_gray_reg_reg_n_0_[3]\,
      \wr_ptr_gray_reg_reg[12]_0\(2) => \wr_ptr_gray_reg_reg_n_0_[2]\,
      \wr_ptr_gray_reg_reg[12]_0\(1) => \wr_ptr_gray_reg_reg_n_0_[1]\,
      \wr_ptr_gray_reg_reg[12]_0\(0) => \wr_ptr_gray_reg_reg_n_0_[0]\,
      \wr_ptr_gray_reg_reg[9]\(0) => full0,
      wr_ptr_next0(11 downto 0) => wr_ptr_next0(12 downto 1),
      \wr_ptr_reg_reg[12]\(12) => axis_stream_fifo_v1_0_S00_AXI_inst_n_19,
      \wr_ptr_reg_reg[12]\(11) => axis_stream_fifo_v1_0_S00_AXI_inst_n_20,
      \wr_ptr_reg_reg[12]\(10) => axis_stream_fifo_v1_0_S00_AXI_inst_n_21,
      \wr_ptr_reg_reg[12]\(9) => axis_stream_fifo_v1_0_S00_AXI_inst_n_22,
      \wr_ptr_reg_reg[12]\(8) => axis_stream_fifo_v1_0_S00_AXI_inst_n_23,
      \wr_ptr_reg_reg[12]\(7) => axis_stream_fifo_v1_0_S00_AXI_inst_n_24,
      \wr_ptr_reg_reg[12]\(6) => axis_stream_fifo_v1_0_S00_AXI_inst_n_25,
      \wr_ptr_reg_reg[12]\(5) => axis_stream_fifo_v1_0_S00_AXI_inst_n_26,
      \wr_ptr_reg_reg[12]\(4) => axis_stream_fifo_v1_0_S00_AXI_inst_n_27,
      \wr_ptr_reg_reg[12]\(3) => axis_stream_fifo_v1_0_S00_AXI_inst_n_28,
      \wr_ptr_reg_reg[12]\(2) => axis_stream_fifo_v1_0_S00_AXI_inst_n_29,
      \wr_ptr_reg_reg[12]\(1) => axis_stream_fifo_v1_0_S00_AXI_inst_n_30,
      \wr_ptr_reg_reg[12]\(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_31
    );
empty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => empty_carry_n_0,
      CO(2) => empty_carry_n_1,
      CO(1) => empty_carry_n_2,
      CO(0) => empty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_empty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axis_stream_fifo_v1_0_S00_AXI_inst_n_59,
      S(2) => axis_stream_fifo_v1_0_S00_AXI_inst_n_60,
      S(1) => axis_stream_fifo_v1_0_S00_AXI_inst_n_61,
      S(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_62
    );
\empty_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => empty_carry_n_0,
      CO(3 downto 1) => \NLW_empty_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => empty,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_empty_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_5
    );
full0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full0,
      CO(2) => full0_carry_n_1,
      CO(1) => full0_carry_n_2,
      CO(0) => full0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_full0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axis_stream_fifo_v1_0_S00_AXI_inst_n_63,
      S(2) => axis_stream_fifo_v1_0_S00_AXI_inst_n_64,
      S(1) => axis_stream_fifo_v1_0_S00_AXI_inst_n_65,
      S(0) => axis_stream_fifo_v1_0_S00_AXI_inst_n_66
    );
m00_axis_tvalid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => mem_read_data_valid_reg,
      I1 => m00_axis_tready,
      I2 => \^m00_axis_tvalid\,
      O => m00_axis_tvalid_reg_i_1_n_0
    );
m00_axis_tvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => m00_axis_tvalid_reg_i_1_n_0,
      Q => \^m00_axis_tvalid\,
      R => dbg_word0_int(29)
    );
m00_rst_sync1_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => m00_rst_sync1_reg_i_1_n_0
    );
m00_rst_sync1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => m00_rst_sync1_reg_i_1_n_0,
      Q => m00_rst_sync1_reg,
      R => '0'
    );
m00_rst_sync2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => m00_rst_sync1_reg,
      I1 => s00_rst_sync1_reg,
      I2 => m00_axis_aresetn,
      O => m00_rst_sync2_reg_i_1_n_0
    );
m00_rst_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => m00_rst_sync2_reg_i_1_n_0,
      Q => dbg_word0_int(30),
      R => '0'
    );
m00_rst_sync3_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dbg_word0_int(30),
      I1 => m00_axis_aresetn,
      O => m00_rst_sync3_reg_i_1_n_0
    );
m00_rst_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => m00_rst_sync3_reg_i_1_n_0,
      Q => dbg_word0_int(29),
      R => '0'
    );
mem_read_data_valid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D55"
    )
        port map (
      I0 => empty,
      I1 => \^m00_axis_tvalid\,
      I2 => m00_axis_tready,
      I3 => mem_read_data_valid_reg,
      O => mem_read_data_valid_reg_i_1_n_0
    );
mem_read_data_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => mem_read_data_valid_reg_i_1_n_0,
      Q => mem_read_data_valid_reg,
      R => dbg_word0_int(29)
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => wr_addr_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => dbg_word1_int(27 downto 16),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axis_aclk,
      CLKBWRCLK => m00_axis_aclk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => mem_write_data(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => mem_write_data(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => mem_read_data_reg(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => mem_read_data_reg(8),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s00_axis_tvalid,
      ENBWREN => read1_out,
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => axis_stream_fifo_v1_0_S00_AXI_inst_n_58,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => s00_axis_tready02_in,
      WEA(2) => s00_axis_tready02_in,
      WEA(1) => s00_axis_tready02_in,
      WEA(0) => s00_axis_tready02_in,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => wr_addr_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => dbg_word1_int(27 downto 16),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axis_aclk,
      CLKBWRCLK => m00_axis_aclk,
      DBITERR => NLW_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => mem_write_data(16 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => mem_write_data(17),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_1_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => mem_read_data_reg(16 downto 9),
      DOPADOP(3 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => mem_read_data_reg(17),
      ECCPARITY(7 downto 0) => NLW_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s00_axis_tvalid,
      ENBWREN => read1_out,
      INJECTDBITERR => NLW_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => axis_stream_fifo_v1_0_S00_AXI_inst_n_58,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => s00_axis_tready02_in,
      WEA(2) => s00_axis_tready02_in,
      WEA(1) => s00_axis_tready02_in,
      WEA(0) => s00_axis_tready02_in,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => wr_addr_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => dbg_word1_int(27 downto 16),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axis_aclk,
      CLKBWRCLK => m00_axis_aclk,
      DBITERR => NLW_mem_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => mem_write_data(25 downto 18),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => mem_write_data(26),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_2_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => mem_read_data_reg(25 downto 18),
      DOPADOP(3 downto 0) => NLW_mem_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_2_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => mem_read_data_reg(26),
      ECCPARITY(7 downto 0) => NLW_mem_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s00_axis_tvalid,
      ENBWREN => read1_out,
      INJECTDBITERR => NLW_mem_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => axis_stream_fifo_v1_0_S00_AXI_inst_n_58,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => s00_axis_tready02_in,
      WEA(2) => s00_axis_tready02_in,
      WEA(1) => s00_axis_tready02_in,
      WEA(0) => s00_axis_tready02_in,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => wr_addr_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => dbg_word1_int(27 downto 16),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => s00_axis_aclk,
      CLKBWRCLK => m00_axis_aclk,
      DBITERR => NLW_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 6) => B"00000000000000000000000000",
      DIADI(5 downto 0) => mem_write_data(32 downto 27),
      DIBDI(31 downto 0) => B"00000000000000000000000000111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 6) => NLW_mem_reg_3_DOBDO_UNCONNECTED(31 downto 6),
      DOBDO(5 downto 0) => mem_read_data_reg(32 downto 27),
      DOPADOP(3 downto 0) => NLW_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => s00_axis_tvalid,
      ENBWREN => read1_out,
      INJECTDBITERR => NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => axis_stream_fifo_v1_0_S00_AXI_inst_n_58,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => s00_axis_tready02_in,
      WEA(2) => s00_axis_tready02_in,
      WEA(1) => s00_axis_tready02_in,
      WEA(0) => s00_axis_tready02_in,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => \^m00_axis_tvalid\,
      I1 => m00_axis_tready,
      I2 => mem_read_data_valid_reg,
      I3 => empty,
      O => read1_out
    );
mem_reg_3_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F99FFFFF"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in,
      I2 => p_1_in1_in,
      I3 => p_0_in0_in,
      I4 => full0,
      O => s00_axis_tready02_in
    );
\rd_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_44,
      Q => dbg_word1_int(16),
      R => '0'
    );
\rd_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_34,
      Q => dbg_word1_int(26),
      R => '0'
    );
\rd_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_33,
      Q => dbg_word1_int(27),
      R => '0'
    );
\rd_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word0_int(12),
      Q => dbg_word1_int(28),
      R => '0'
    );
\rd_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_43,
      Q => dbg_word1_int(17),
      R => '0'
    );
\rd_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_42,
      Q => dbg_word1_int(18),
      R => '0'
    );
\rd_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_41,
      Q => dbg_word1_int(19),
      R => '0'
    );
\rd_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_40,
      Q => dbg_word1_int(20),
      R => '0'
    );
\rd_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_39,
      Q => dbg_word1_int(21),
      R => '0'
    );
\rd_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_38,
      Q => dbg_word1_int(22),
      R => '0'
    );
\rd_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_37,
      Q => dbg_word1_int(23),
      R => '0'
    );
\rd_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_36,
      Q => dbg_word1_int(24),
      R => '0'
    );
\rd_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_35,
      Q => dbg_word1_int(25),
      R => '0'
    );
\rd_ptr_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(0),
      Q => rd_ptr_gray_reg(0),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(10),
      Q => rd_ptr_gray_reg(10),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(11),
      Q => rd_ptr_gray_reg(11),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(12),
      Q => rd_ptr_gray_reg(12),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(1),
      Q => rd_ptr_gray_reg(1),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(2),
      Q => rd_ptr_gray_reg(2),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(3),
      Q => rd_ptr_gray_reg(3),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(4),
      Q => rd_ptr_gray_reg(4),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(5),
      Q => rd_ptr_gray_reg(5),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(6),
      Q => rd_ptr_gray_reg(6),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(7),
      Q => rd_ptr_gray_reg(7),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(8),
      Q => rd_ptr_gray_reg(8),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word1_int(9),
      Q => rd_ptr_gray_reg(9),
      R => dbg_word0_int(29)
    );
\rd_ptr_gray_sync1_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(0),
      Q => rd_ptr_gray_sync1_reg(0),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(10),
      Q => rd_ptr_gray_sync1_reg(10),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(11),
      Q => rd_ptr_gray_sync1_reg(11),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(12),
      Q => rd_ptr_gray_sync1_reg(12),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(1),
      Q => rd_ptr_gray_sync1_reg(1),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(2),
      Q => rd_ptr_gray_sync1_reg(2),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(3),
      Q => rd_ptr_gray_sync1_reg(3),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(4),
      Q => rd_ptr_gray_sync1_reg(4),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(5),
      Q => rd_ptr_gray_sync1_reg(5),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(6),
      Q => rd_ptr_gray_sync1_reg(6),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(7),
      Q => rd_ptr_gray_sync1_reg(7),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(8),
      Q => rd_ptr_gray_sync1_reg(8),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync1_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_reg(9),
      Q => rd_ptr_gray_sync1_reg(9),
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(0),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[0]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(10),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[10]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(11),
      Q => p_0_in,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(12),
      Q => p_0_in0_in,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(1),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[1]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(2),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[2]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(3),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[3]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(4),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[4]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(5),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[5]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(6),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[6]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(7),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[7]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(8),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[8]\,
      R => s00_rst_sync3_reg
    );
\rd_ptr_gray_sync2_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(9),
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[9]\,
      R => s00_rst_sync3_reg
    );
rd_ptr_next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rd_ptr_next0_carry_n_0,
      CO(2) => rd_ptr_next0_carry_n_1,
      CO(1) => rd_ptr_next0_carry_n_2,
      CO(0) => rd_ptr_next0_carry_n_3,
      CYINIT => dbg_word0_int(16),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_next0(4 downto 1),
      S(3 downto 0) => dbg_word0_int(20 downto 17)
    );
\rd_ptr_next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rd_ptr_next0_carry_n_0,
      CO(3) => \rd_ptr_next0_carry__0_n_0\,
      CO(2) => \rd_ptr_next0_carry__0_n_1\,
      CO(1) => \rd_ptr_next0_carry__0_n_2\,
      CO(0) => \rd_ptr_next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_next0(8 downto 5),
      S(3 downto 0) => dbg_word0_int(24 downto 21)
    );
\rd_ptr_next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_next0_carry__0_n_0\,
      CO(3) => \NLW_rd_ptr_next0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \rd_ptr_next0_carry__1_n_1\,
      CO(1) => \rd_ptr_next0_carry__1_n_2\,
      CO(0) => \rd_ptr_next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_next0(12 downto 9),
      S(3 downto 0) => dbg_word0_int(28 downto 25)
    );
\rd_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_44,
      Q => dbg_word0_int(16),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_34,
      Q => dbg_word0_int(26),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_33,
      Q => dbg_word0_int(27),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => dbg_word0_int(12),
      Q => dbg_word0_int(28),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_43,
      Q => dbg_word0_int(17),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_42,
      Q => dbg_word0_int(18),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_41,
      Q => dbg_word0_int(19),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_40,
      Q => dbg_word0_int(20),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_39,
      Q => dbg_word0_int(21),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_38,
      Q => dbg_word0_int(22),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_37,
      Q => dbg_word0_int(23),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_36,
      Q => dbg_word0_int(24),
      R => dbg_word0_int(29)
    );
\rd_ptr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_35,
      Q => dbg_word0_int(25),
      R => dbg_word0_int(29)
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5541415555555555"
    )
        port map (
      I0 => s00_rst_sync3_reg,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => p_1_in1_in,
      I4 => p_0_in0_in,
      I5 => full0,
      O => s00_axis_tready
    );
s00_rst_sync1_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => s00_rst_sync1_reg_i_1_n_0
    );
s00_rst_sync1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s00_rst_sync1_reg_i_1_n_0,
      Q => s00_rst_sync1_reg,
      R => '0'
    );
s00_rst_sync2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => m00_rst_sync1_reg,
      I1 => s00_rst_sync1_reg,
      I2 => s00_axis_aresetn,
      O => s00_rst_sync2_reg_i_1_n_0
    );
s00_rst_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s00_rst_sync2_reg_i_1_n_0,
      Q => dbg_word2_int(30),
      R => '0'
    );
s00_rst_sync3_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => dbg_word2_int(30),
      I1 => s00_axis_aresetn,
      O => s00_rst_sync3_reg_i_1_n_0
    );
s00_rst_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s00_rst_sync3_reg_i_1_n_0,
      Q => s00_rst_sync3_reg,
      R => '0'
    );
\wr_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_31,
      Q => wr_addr_reg(0),
      R => '0'
    );
\wr_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_21,
      Q => wr_addr_reg(10),
      R => '0'
    );
\wr_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_20,
      Q => wr_addr_reg(11),
      R => '0'
    );
\wr_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_19,
      Q => wr_addr_reg(12),
      R => '0'
    );
\wr_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_30,
      Q => wr_addr_reg(1),
      R => '0'
    );
\wr_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_29,
      Q => wr_addr_reg(2),
      R => '0'
    );
\wr_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_28,
      Q => wr_addr_reg(3),
      R => '0'
    );
\wr_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_27,
      Q => wr_addr_reg(4),
      R => '0'
    );
\wr_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_26,
      Q => wr_addr_reg(5),
      R => '0'
    );
\wr_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_25,
      Q => wr_addr_reg(6),
      R => '0'
    );
\wr_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_24,
      Q => wr_addr_reg(7),
      R => '0'
    );
\wr_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_23,
      Q => wr_addr_reg(8),
      R => '0'
    );
\wr_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_22,
      Q => wr_addr_reg(9),
      R => '0'
    );
\wr_ptr_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(0),
      Q => \wr_ptr_gray_reg_reg_n_0_[0]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(10),
      Q => \wr_ptr_gray_reg_reg_n_0_[10]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(11),
      Q => p_1_in,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(12),
      Q => p_1_in1_in,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(1),
      Q => \wr_ptr_gray_reg_reg_n_0_[1]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(2),
      Q => \wr_ptr_gray_reg_reg_n_0_[2]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(3),
      Q => \wr_ptr_gray_reg_reg_n_0_[3]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(4),
      Q => \wr_ptr_gray_reg_reg_n_0_[4]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(5),
      Q => \wr_ptr_gray_reg_reg_n_0_[5]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(6),
      Q => \wr_ptr_gray_reg_reg_n_0_[6]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(7),
      Q => \wr_ptr_gray_reg_reg_n_0_[7]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(8),
      Q => \wr_ptr_gray_reg_reg_n_0_[8]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => dbg_word3_int(9),
      Q => \wr_ptr_gray_reg_reg_n_0_[9]\,
      R => s00_rst_sync3_reg
    );
\wr_ptr_gray_sync1_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[0]\,
      Q => wr_ptr_gray_sync1_reg(0),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[10]\,
      Q => wr_ptr_gray_sync1_reg(10),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => p_1_in,
      Q => wr_ptr_gray_sync1_reg(11),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => p_1_in1_in,
      Q => wr_ptr_gray_sync1_reg(12),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[1]\,
      Q => wr_ptr_gray_sync1_reg(1),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[2]\,
      Q => wr_ptr_gray_sync1_reg(2),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[3]\,
      Q => wr_ptr_gray_sync1_reg(3),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[4]\,
      Q => wr_ptr_gray_sync1_reg(4),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[5]\,
      Q => wr_ptr_gray_sync1_reg(5),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[6]\,
      Q => wr_ptr_gray_sync1_reg(6),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[7]\,
      Q => wr_ptr_gray_sync1_reg(7),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[8]\,
      Q => wr_ptr_gray_sync1_reg(8),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync1_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \wr_ptr_gray_reg_reg_n_0_[9]\,
      Q => wr_ptr_gray_sync1_reg(9),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(0),
      Q => wr_ptr_gray_sync2_reg(0),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(10),
      Q => wr_ptr_gray_sync2_reg(10),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(11),
      Q => wr_ptr_gray_sync2_reg(11),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(12),
      Q => wr_ptr_gray_sync2_reg(12),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(1),
      Q => wr_ptr_gray_sync2_reg(1),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(2),
      Q => wr_ptr_gray_sync2_reg(2),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(3),
      Q => wr_ptr_gray_sync2_reg(3),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(4),
      Q => wr_ptr_gray_sync2_reg(4),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(5),
      Q => wr_ptr_gray_sync2_reg(5),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(6),
      Q => wr_ptr_gray_sync2_reg(6),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(7),
      Q => wr_ptr_gray_sync2_reg(7),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(8),
      Q => wr_ptr_gray_sync2_reg(8),
      R => dbg_word0_int(29)
    );
\wr_ptr_gray_sync2_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => wr_ptr_gray_sync1_reg(9),
      Q => wr_ptr_gray_sync2_reg(9),
      R => dbg_word0_int(29)
    );
wr_ptr_next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wr_ptr_next0_carry_n_0,
      CO(2) => wr_ptr_next0_carry_n_1,
      CO(1) => wr_ptr_next0_carry_n_2,
      CO(0) => wr_ptr_next0_carry_n_3,
      CYINIT => dbg_word2_int(16),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wr_ptr_next0(4 downto 1),
      S(3 downto 0) => dbg_word2_int(20 downto 17)
    );
\wr_ptr_next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wr_ptr_next0_carry_n_0,
      CO(3) => \wr_ptr_next0_carry__0_n_0\,
      CO(2) => \wr_ptr_next0_carry__0_n_1\,
      CO(1) => \wr_ptr_next0_carry__0_n_2\,
      CO(0) => \wr_ptr_next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wr_ptr_next0(8 downto 5),
      S(3 downto 0) => dbg_word2_int(24 downto 21)
    );
\wr_ptr_next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_next0_carry__0_n_0\,
      CO(3) => \NLW_wr_ptr_next0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \wr_ptr_next0_carry__1_n_1\,
      CO(1) => \wr_ptr_next0_carry__1_n_2\,
      CO(0) => \wr_ptr_next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wr_ptr_next0(12 downto 9),
      S(3 downto 0) => dbg_word2_int(28 downto 25)
    );
\wr_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_31,
      Q => dbg_word2_int(16),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_21,
      Q => dbg_word2_int(26),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_20,
      Q => dbg_word2_int(27),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_19,
      Q => dbg_word2_int(28),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_30,
      Q => dbg_word2_int(17),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_29,
      Q => dbg_word2_int(18),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_28,
      Q => dbg_word2_int(19),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_27,
      Q => dbg_word2_int(20),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_26,
      Q => dbg_word2_int(21),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_25,
      Q => dbg_word2_int(22),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_24,
      Q => dbg_word2_int(23),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_23,
      Q => dbg_word2_int(24),
      R => s00_rst_sync3_reg
    );
\wr_ptr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => axis_stream_fifo_v1_0_S00_AXI_inst_n_22,
      Q => dbg_word2_int(25),
      R => s00_rst_sync3_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axis_stream_fifo_0_0 is
  port (
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
    s00_axi_aresetn : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axis_stream_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axis_stream_fifo_0_0 : entity is "design_1_axis_stream_fifo_0_0,axis_stream_fifo_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axis_stream_fifo_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axis_stream_fifo_0_0 : entity is "axis_stream_fifo_v1_0,Vivado 2018.2";
end design_1_axis_stream_fifo_0_0;

architecture STRUCTURE of design_1_axis_stream_fifo_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
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
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31 downto 16) <= \^s00_axi_rdata\(31 downto 16);
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12 downto 0) <= \^s00_axi_rdata\(12 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  m00_axis_tstrb(0) <= 'Z';
  m00_axis_tstrb(1) <= 'Z';
  m00_axis_tstrb(2) <= 'Z';
  m00_axis_tstrb(3) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_axis_stream_fifo_0_0_axis_stream_fifo_v1_0
     port map (
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      mem_read_data_reg(32) => m00_axis_tlast,
      mem_read_data_reg(31 downto 0) => m00_axis_tdata(31 downto 0),
      mem_write_data(32) => s00_axis_tlast,
      mem_write_data(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(28 downto 13) => \^s00_axi_rdata\(31 downto 16),
      s00_axi_rdata(12 downto 0) => \^s00_axi_rdata\(12 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
