-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Apr 03 00:54:53 2022
-- Host        : Zero running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marco/Documents/LNP/Logica_networks_project.sim/sim_1/synth/func/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \current_address[7]_i_2_n_0\ : STD_LOGIC;
  signal \current_address[7]_i_4_n_0\ : STD_LOGIC;
  signal \current_address_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[2]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[3]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[4]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[5]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[6]\ : STD_LOGIC;
  signal \current_address_reg_n_0_[7]\ : STD_LOGIC;
  signal \encoded_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \encoded_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \encoded_data_reg_n_0_[7]\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_start_IBUF : STD_LOGIC;
  signal \o_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[10]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[5]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \o_address[9]_i_1_n_0\ : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \o_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_data[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_data[7]_i_1_n_0\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_done_i_1_n_0 : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_i_1_n_0 : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal o_we_i_1_n_0 : STD_LOGIC;
  signal \old_2_bits[0]_i_1_n_0\ : STD_LOGIC;
  signal \old_2_bits[1]_i_1_n_0\ : STD_LOGIC;
  signal \old_2_bits_reg_n_0_[0]\ : STD_LOGIC;
  signal \old_2_bits_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal \words_to_process[0]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[1]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[2]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[3]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[4]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[4]_i_2_n_0\ : STD_LOGIC;
  signal \words_to_process[5]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[5]_i_2_n_0\ : STD_LOGIC;
  signal \words_to_process[6]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[7]_i_1_n_0\ : STD_LOGIC;
  signal \words_to_process[7]_i_2_n_0\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[0]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[1]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[2]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[3]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[4]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[5]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[6]\ : STD_LOGIC;
  signal \words_to_process_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_3\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \current_address[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_address[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_address[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_address[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_address[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_address[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_address[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_address[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_address[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_address[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_data[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_data[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \words_to_process[5]_i_2\ : label is "soft_lutpair0";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC0CCCCEEEE"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => state(1),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_3_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \words_to_process_reg_n_0_[6]\,
      I1 => \words_to_process_reg_n_0_[7]\,
      I2 => \words_to_process_reg_n_0_[4]\,
      I3 => \words_to_process_reg_n_0_[5]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \words_to_process_reg_n_0_[2]\,
      I1 => \words_to_process_reg_n_0_[3]\,
      I2 => \words_to_process_reg_n_0_[0]\,
      I3 => \words_to_process_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DA"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CC8"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\current_address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_address_reg_n_0_[0]\,
      O => \current_address[0]_i_1_n_0\
    );
\current_address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \current_address_reg_n_0_[0]\,
      I1 => \current_address_reg_n_0_[1]\,
      O => p_0_in(1)
    );
\current_address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \current_address_reg_n_0_[0]\,
      I1 => \current_address_reg_n_0_[1]\,
      I2 => \current_address_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\current_address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \current_address_reg_n_0_[1]\,
      I1 => \current_address_reg_n_0_[0]\,
      I2 => \current_address_reg_n_0_[2]\,
      I3 => \current_address_reg_n_0_[3]\,
      O => p_0_in(3)
    );
\current_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \current_address_reg_n_0_[2]\,
      I1 => \current_address_reg_n_0_[0]\,
      I2 => \current_address_reg_n_0_[1]\,
      I3 => \current_address_reg_n_0_[3]\,
      I4 => \current_address_reg_n_0_[4]\,
      O => p_0_in(4)
    );
\current_address[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \current_address_reg_n_0_[3]\,
      I1 => \current_address_reg_n_0_[1]\,
      I2 => \current_address_reg_n_0_[0]\,
      I3 => \current_address_reg_n_0_[2]\,
      I4 => \current_address_reg_n_0_[4]\,
      I5 => \current_address_reg_n_0_[5]\,
      O => p_0_in(5)
    );
\current_address[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \current_address[7]_i_4_n_0\,
      I1 => \current_address_reg_n_0_[6]\,
      O => p_0_in(6)
    );
\current_address[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \current_address[7]_i_1_n_0\
    );
\current_address[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"97"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \current_address[7]_i_2_n_0\
    );
\current_address[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \current_address[7]_i_4_n_0\,
      I1 => \current_address_reg_n_0_[6]\,
      I2 => \current_address_reg_n_0_[7]\,
      O => p_0_in(7)
    );
\current_address[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \current_address_reg_n_0_[5]\,
      I1 => \current_address_reg_n_0_[3]\,
      I2 => \current_address_reg_n_0_[1]\,
      I3 => \current_address_reg_n_0_[0]\,
      I4 => \current_address_reg_n_0_[2]\,
      I5 => \current_address_reg_n_0_[4]\,
      O => \current_address[7]_i_4_n_0\
    );
\current_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \current_address[0]_i_1_n_0\,
      Q => \current_address_reg_n_0_[0]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => \current_address_reg_n_0_[1]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => \current_address_reg_n_0_[2]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(3),
      Q => \current_address_reg_n_0_[3]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(4),
      Q => \current_address_reg_n_0_[4]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(5),
      Q => \current_address_reg_n_0_[5]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(6),
      Q => \current_address_reg_n_0_[6]\,
      R => \current_address[7]_i_1_n_0\
    );
\current_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => p_0_in(7),
      Q => \current_address_reg_n_0_[7]\,
      R => \current_address[7]_i_1_n_0\
    );
\encoded_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(1),
      I2 => i_data_IBUF(0),
      I3 => i_data_IBUF(2),
      O => \encoded_data[0]_i_1_n_0\
    );
\encoded_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(2),
      I2 => i_data_IBUF(0),
      O => \encoded_data[1]_i_1_n_0\
    );
\encoded_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(1),
      I2 => i_data_IBUF(3),
      I3 => i_data_IBUF(2),
      O => \encoded_data[2]_i_1_n_0\
    );
\encoded_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(1),
      I2 => i_data_IBUF(3),
      O => \encoded_data[3]_i_1_n_0\
    );
\encoded_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(3),
      I2 => i_data_IBUF(2),
      I3 => i_data_IBUF(4),
      O => \encoded_data[4]_i_1_n_0\
    );
\encoded_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(4),
      I2 => i_data_IBUF(2),
      O => \encoded_data[5]_i_1_n_0\
    );
\encoded_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(3),
      I2 => i_data_IBUF(4),
      I3 => i_data_IBUF(5),
      O => \encoded_data[6]_i_1_n_0\
    );
\encoded_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \encoded_data[7]_i_1_n_0\
    );
\encoded_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(0),
      I1 => i_data_IBUF(5),
      I2 => i_data_IBUF(3),
      O => \encoded_data[7]_i_2_n_0\
    );
\encoded_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[0]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[0]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[1]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[1]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[2]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[2]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[3]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[3]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[4]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[4]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[5]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[5]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[6]_i_1_n_0\,
      Q => \encoded_data_reg_n_0_[6]\,
      R => \encoded_data[7]_i_1_n_0\
    );
\encoded_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \encoded_data[7]_i_2_n_0\,
      Q => \encoded_data_reg_n_0_[7]\,
      R => \encoded_data[7]_i_1_n_0\
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\o_address[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A8C"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \current_address_reg_n_0_[0]\,
      O => \o_address[0]_i_1_n_0\
    );
\o_address[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE0000000000"
    )
        port map (
      I0 => \current_address_reg_n_0_[6]\,
      I1 => \o_address[10]_i_2_n_0\,
      I2 => \current_address_reg_n_0_[7]\,
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \o_address[10]_i_1_n_0\
    );
\o_address[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEAAAAA"
    )
        port map (
      I0 => \current_address_reg_n_0_[4]\,
      I1 => \current_address_reg_n_0_[3]\,
      I2 => \current_address_reg_n_0_[0]\,
      I3 => \current_address_reg_n_0_[1]\,
      I4 => \current_address_reg_n_0_[2]\,
      I5 => \current_address_reg_n_0_[5]\,
      O => \o_address[10]_i_2_n_0\
    );
\o_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"42EE8428"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \current_address_reg_n_0_[0]\,
      I4 => \current_address_reg_n_0_[1]\,
      O => \o_address[1]_i_1_n_0\
    );
\o_address[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AC6C6EEAC000028"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \current_address_reg_n_0_[0]\,
      I4 => \current_address_reg_n_0_[1]\,
      I5 => \current_address_reg_n_0_[2]\,
      O => \o_address[2]_i_1_n_0\
    );
\o_address[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8BCB038088C80"
    )
        port map (
      I0 => \o_address[3]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \current_address_reg_n_0_[3]\,
      I4 => state(0),
      I5 => p_0_in(3),
      O => \o_address[3]_i_1_n_0\
    );
\o_address[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \current_address_reg_n_0_[1]\,
      I1 => \current_address_reg_n_0_[0]\,
      I2 => \current_address_reg_n_0_[2]\,
      O => \o_address[3]_i_2_n_0\
    );
\o_address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8BCB038088C80"
    )
        port map (
      I0 => \o_address[4]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \current_address_reg_n_0_[4]\,
      I4 => state(0),
      I5 => p_0_in(4),
      O => \o_address[4]_i_1_n_0\
    );
\o_address[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \current_address_reg_n_0_[0]\,
      I1 => \current_address_reg_n_0_[1]\,
      I2 => \current_address_reg_n_0_[2]\,
      I3 => \current_address_reg_n_0_[3]\,
      O => \o_address[4]_i_2_n_0\
    );
\o_address[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8BCB038088C80"
    )
        port map (
      I0 => \o_address[5]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \current_address_reg_n_0_[5]\,
      I4 => state(0),
      I5 => p_0_in(5),
      O => \o_address[5]_i_1_n_0\
    );
\o_address[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A80057FF"
    )
        port map (
      I0 => \current_address_reg_n_0_[2]\,
      I1 => \current_address_reg_n_0_[1]\,
      I2 => \current_address_reg_n_0_[0]\,
      I3 => \current_address_reg_n_0_[3]\,
      I4 => \current_address_reg_n_0_[4]\,
      O => \o_address[5]_i_2_n_0\
    );
\o_address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"388CF8BCC8B00880"
    )
        port map (
      I0 => \o_address[6]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => \current_address[7]_i_4_n_0\,
      I5 => \current_address_reg_n_0_[6]\,
      O => \o_address[6]_i_1_n_0\
    );
\o_address[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAAAA11155555"
    )
        port map (
      I0 => \current_address_reg_n_0_[4]\,
      I1 => \current_address_reg_n_0_[3]\,
      I2 => \current_address_reg_n_0_[0]\,
      I3 => \current_address_reg_n_0_[1]\,
      I4 => \current_address_reg_n_0_[2]\,
      I5 => \current_address_reg_n_0_[5]\,
      O => \o_address[6]_i_2_n_0\
    );
\o_address[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8BCB038088C80"
    )
        port map (
      I0 => \o_address[7]_i_2_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => \current_address_reg_n_0_[7]\,
      I4 => state(0),
      I5 => p_0_in(7),
      O => \o_address[7]_i_1_n_0\
    );
\o_address[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \o_address[10]_i_2_n_0\,
      I1 => \current_address_reg_n_0_[6]\,
      O => \o_address[7]_i_2_n_0\
    );
\o_address[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060600600000000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => \current_address_reg_n_0_[7]\,
      I3 => \o_address[10]_i_2_n_0\,
      I4 => \current_address_reg_n_0_[6]\,
      I5 => state(2),
      O => \o_address[8]_i_1_n_0\
    );
\o_address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010000000000"
    )
        port map (
      I0 => \current_address_reg_n_0_[6]\,
      I1 => \o_address[10]_i_2_n_0\,
      I2 => \current_address_reg_n_0_[7]\,
      I3 => state(1),
      I4 => state(0),
      I5 => state(2),
      O => \o_address[9]_i_1_n_0\
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_address(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[0]_i_1_n_0\,
      Q => o_address_OBUF(0),
      R => '0'
    );
\o_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[10]_i_1_n_0\,
      Q => o_address_OBUF(10),
      R => '0'
    );
\o_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[1]_i_1_n_0\,
      Q => o_address_OBUF(1),
      R => '0'
    );
\o_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[2]_i_1_n_0\,
      Q => o_address_OBUF(2),
      R => '0'
    );
\o_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[3]_i_1_n_0\,
      Q => o_address_OBUF(3),
      R => '0'
    );
\o_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[4]_i_1_n_0\,
      Q => o_address_OBUF(4),
      R => '0'
    );
\o_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[5]_i_1_n_0\,
      Q => o_address_OBUF(5),
      R => '0'
    );
\o_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[6]_i_1_n_0\,
      Q => o_address_OBUF(6),
      R => '0'
    );
\o_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[7]_i_1_n_0\,
      Q => o_address_OBUF(7),
      R => '0'
    );
\o_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[8]_i_1_n_0\,
      Q => o_address_OBUF(8),
      R => '0'
    );
\o_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_address[9]_i_1_n_0\,
      Q => o_address_OBUF(9),
      R => '0'
    );
\o_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => \o_data[0]_i_2_n_0\,
      I1 => i_data_IBUF(6),
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[0]\,
      I5 => state(1),
      O => \o_data[0]_i_1_n_0\
    );
\o_data[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => i_data_IBUF(5),
      O => \o_data[0]_i_2_n_0\
    );
\o_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => i_data_IBUF(4),
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[1]\,
      I5 => state(1),
      O => \o_data[1]_i_1_n_0\
    );
\o_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => \o_data[2]_i_2_n_0\,
      I1 => i_data_IBUF(6),
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[2]\,
      I5 => state(1),
      O => \o_data[2]_i_1_n_0\
    );
\o_data[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => i_data_IBUF(7),
      O => \o_data[2]_i_2_n_0\
    );
\o_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => i_data_IBUF(7),
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[3]\,
      I5 => state(1),
      O => \o_data[3]_i_1_n_0\
    );
\o_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => \o_data[4]_i_2_n_0\,
      I1 => i_data_IBUF(7),
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[4]\,
      I5 => state(1),
      O => \o_data[4]_i_1_n_0\
    );
\o_data[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => \old_2_bits_reg_n_0_[0]\,
      O => \o_data[4]_i_2_n_0\
    );
\o_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => \old_2_bits_reg_n_0_[0]\,
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[5]\,
      I5 => state(1),
      O => \o_data[5]_i_1_n_0\
    );
\o_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => \o_data[6]_i_2_n_0\,
      I1 => \old_2_bits_reg_n_0_[0]\,
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[6]\,
      I5 => state(1),
      O => \o_data[6]_i_1_n_0\
    );
\o_data[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \old_2_bits_reg_n_0_[1]\,
      I1 => i_data_IBUF(7),
      O => \o_data[6]_i_2_n_0\
    );
\o_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000060006000"
    )
        port map (
      I0 => \old_2_bits_reg_n_0_[1]\,
      I1 => i_data_IBUF(7),
      I2 => state(0),
      I3 => state(2),
      I4 => \encoded_data_reg_n_0_[7]\,
      I5 => state(1),
      O => \o_data[7]_i_1_n_0\
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
\o_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[0]_i_1_n_0\,
      Q => o_data_OBUF(0),
      R => '0'
    );
\o_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[1]_i_1_n_0\,
      Q => o_data_OBUF(1),
      R => '0'
    );
\o_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[2]_i_1_n_0\,
      Q => o_data_OBUF(2),
      R => '0'
    );
\o_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[3]_i_1_n_0\,
      Q => o_data_OBUF(3),
      R => '0'
    );
\o_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[4]_i_1_n_0\,
      Q => o_data_OBUF(4),
      R => '0'
    );
\o_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[5]_i_1_n_0\,
      Q => o_data_OBUF(5),
      R => '0'
    );
\o_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[6]_i_1_n_0\,
      Q => o_data_OBUF(6),
      R => '0'
    );
\o_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \o_data[7]_i_1_n_0\,
      Q => o_data_OBUF(7),
      R => '0'
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => i_start_IBUF,
      I3 => state(2),
      O => o_done_i_1_n_0
    );
o_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => o_done_i_1_n_0,
      Q => o_done_OBUF,
      R => '0'
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => i_start_IBUF,
      O => o_en_i_1_n_0
    );
o_en_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => o_en_i_1_n_0,
      Q => o_en_OBUF,
      S => state(0)
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
o_we_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => o_we_i_1_n_0
    );
o_we_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => o_we_i_1_n_0,
      Q => o_we_OBUF,
      R => '0'
    );
\old_2_bits[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECC02000"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \old_2_bits_reg_n_0_[0]\,
      O => \old_2_bits[0]_i_1_n_0\
    );
\old_2_bits[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECC02000"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => \old_2_bits_reg_n_0_[1]\,
      O => \old_2_bits[1]_i_1_n_0\
    );
\old_2_bits_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \old_2_bits[0]_i_1_n_0\,
      Q => \old_2_bits_reg_n_0_[0]\,
      R => '0'
    );
\old_2_bits_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \old_2_bits[1]_i_1_n_0\,
      Q => \old_2_bits_reg_n_0_[1]\,
      R => '0'
    );
\words_to_process[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => state(2),
      I2 => \words_to_process_reg_n_0_[0]\,
      O => \words_to_process[0]_i_1_n_0\
    );
\words_to_process[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => state(2),
      I2 => \words_to_process_reg_n_0_[0]\,
      I3 => \words_to_process_reg_n_0_[1]\,
      O => \words_to_process[1]_i_1_n_0\
    );
\words_to_process[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE2222E"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => state(2),
      I2 => \words_to_process_reg_n_0_[1]\,
      I3 => \words_to_process_reg_n_0_[0]\,
      I4 => \words_to_process_reg_n_0_[2]\,
      O => \words_to_process[2]_i_1_n_0\
    );
\words_to_process[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEE22222222E"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => state(2),
      I2 => \words_to_process_reg_n_0_[2]\,
      I3 => \words_to_process_reg_n_0_[0]\,
      I4 => \words_to_process_reg_n_0_[1]\,
      I5 => \words_to_process_reg_n_0_[3]\,
      O => \words_to_process[3]_i_1_n_0\
    );
\words_to_process[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => state(2),
      I2 => \words_to_process[4]_i_2_n_0\,
      I3 => \words_to_process_reg_n_0_[4]\,
      O => \words_to_process[4]_i_1_n_0\
    );
\words_to_process[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \words_to_process_reg_n_0_[2]\,
      I1 => \words_to_process_reg_n_0_[0]\,
      I2 => \words_to_process_reg_n_0_[1]\,
      I3 => \words_to_process_reg_n_0_[3]\,
      O => \words_to_process[4]_i_2_n_0\
    );
\words_to_process[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => state(2),
      I2 => \words_to_process[5]_i_2_n_0\,
      I3 => \words_to_process_reg_n_0_[5]\,
      O => \words_to_process[5]_i_1_n_0\
    );
\words_to_process[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \words_to_process_reg_n_0_[3]\,
      I1 => \words_to_process_reg_n_0_[1]\,
      I2 => \words_to_process_reg_n_0_[0]\,
      I3 => \words_to_process_reg_n_0_[2]\,
      I4 => \words_to_process_reg_n_0_[4]\,
      O => \words_to_process[5]_i_2_n_0\
    );
\words_to_process[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => state(2),
      I2 => \words_to_process[7]_i_2_n_0\,
      I3 => \words_to_process_reg_n_0_[6]\,
      O => \words_to_process[6]_i_1_n_0\
    );
\words_to_process[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE2222E"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => state(2),
      I2 => \words_to_process_reg_n_0_[6]\,
      I3 => \words_to_process[7]_i_2_n_0\,
      I4 => \words_to_process_reg_n_0_[7]\,
      O => \words_to_process[7]_i_1_n_0\
    );
\words_to_process[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \words_to_process_reg_n_0_[4]\,
      I1 => \words_to_process_reg_n_0_[2]\,
      I2 => \words_to_process_reg_n_0_[0]\,
      I3 => \words_to_process_reg_n_0_[1]\,
      I4 => \words_to_process_reg_n_0_[3]\,
      I5 => \words_to_process_reg_n_0_[5]\,
      O => \words_to_process[7]_i_2_n_0\
    );
\words_to_process_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[0]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[0]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[1]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[1]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[2]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[2]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[3]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[3]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[4]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[4]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[5]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[5]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[6]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[6]\,
      R => \current_address[7]_i_1_n_0\
    );
\words_to_process_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \current_address[7]_i_2_n_0\,
      D => \words_to_process[7]_i_1_n_0\,
      Q => \words_to_process_reg_n_0_[7]\,
      R => \current_address[7]_i_1_n_0\
    );
end STRUCTURE;
