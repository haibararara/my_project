-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Dec  7 16:20:15 2025
-- Host        : LAPTOP-476JT8H0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project/cslab/mips/SoC/MiniMIPS32_Lite_FullSyS.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_BaudTickGen is
  port (
    \FSM_onehot_RxD_state_reg[10]\ : out STD_LOGIC;
    RxD_bit_reg : out STD_LOGIC;
    OversamplingTick : out STD_LOGIC;
    RxD_bit_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_RxD_state_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RxD_bit_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    RxD_bit_reg_2 : in STD_LOGIC;
    RxD_bit_reg_3 : in STD_LOGIC;
    \FSM_onehot_RxD_state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_RxD_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_RxD_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_RxD_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_onehot_RxD_state_reg[0]_3\ : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_BaudTickGen : entity is "BaudTickGen";
end design_1_top_0_0_BaudTickGen;

architecture STRUCTURE of design_1_top_0_0_BaudTickGen is
  signal Acc : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \Acc[12]_i_2_n_0\ : STD_LOGIC;
  signal \Acc[12]_i_3_n_0\ : STD_LOGIC;
  signal \Acc[4]_i_2_n_0\ : STD_LOGIC;
  signal \Acc[4]_i_3_n_0\ : STD_LOGIC;
  signal \Acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state[10]_i_4_n_0\ : STD_LOGIC;
  signal \^oversamplingtick\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \NLW_Acc_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Acc_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_RxD_state[10]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_RxD_state[9]_i_1\ : label is "soft_lutpair0";
begin
  OversamplingTick <= \^oversamplingtick\;
\Acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Acc(0),
      O => p_1_in(0)
    );
\Acc[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Acc(11),
      O => \Acc[12]_i_2_n_0\
    );
\Acc[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Acc(10),
      O => \Acc[12]_i_3_n_0\
    );
\Acc[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Acc(4),
      O => \Acc[4]_i_2_n_0\
    );
\Acc[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Acc(2),
      O => \Acc[4]_i_3_n_0\
    );
\Acc[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Acc(7),
      O => \Acc[8]_i_2_n_0\
    );
\Acc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => Acc(0),
      R => '0'
    );
\Acc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => Acc(10),
      R => '0'
    );
\Acc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => Acc(11),
      R => '0'
    );
\Acc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => Acc(12),
      R => '0'
    );
\Acc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[8]_i_1_n_0\,
      CO(3) => \Acc_reg[12]_i_1_n_0\,
      CO(2) => \Acc_reg[12]_i_1_n_1\,
      CO(1) => \Acc_reg[12]_i_1_n_2\,
      CO(0) => \Acc_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => Acc(11 downto 10),
      DI(0) => '0',
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3) => Acc(12),
      S(2) => \Acc[12]_i_2_n_0\,
      S(1) => \Acc[12]_i_3_n_0\,
      S(0) => Acc(9)
    );
\Acc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => Acc(13),
      R => '0'
    );
\Acc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => Acc(14),
      R => '0'
    );
\Acc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(15),
      Q => Acc(15),
      R => '0'
    );
\Acc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(16),
      Q => Acc(16),
      R => '0'
    );
\Acc_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[12]_i_1_n_0\,
      CO(3) => \Acc_reg[16]_i_1_n_0\,
      CO(2) => \Acc_reg[16]_i_1_n_1\,
      CO(1) => \Acc_reg[16]_i_1_n_2\,
      CO(0) => \Acc_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => Acc(16 downto 13)
    );
\Acc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(17),
      Q => Acc(17),
      R => '0'
    );
\Acc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(18),
      Q => Acc(18),
      R => '0'
    );
\Acc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(19),
      Q => Acc(19),
      R => '0'
    );
\Acc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => Acc(1),
      R => '0'
    );
\Acc_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(20),
      Q => Acc(20),
      R => '0'
    );
\Acc_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[16]_i_1_n_0\,
      CO(3) => \Acc_reg[20]_i_1_n_0\,
      CO(2) => \Acc_reg[20]_i_1_n_1\,
      CO(1) => \Acc_reg[20]_i_1_n_2\,
      CO(0) => \Acc_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => Acc(20 downto 17)
    );
\Acc_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(21),
      Q => \^oversamplingtick\,
      R => '0'
    );
\Acc_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_Acc_reg[21]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => p_1_in(21),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Acc_reg[21]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => Acc(2),
      R => '0'
    );
\Acc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => Acc(3),
      R => '0'
    );
\Acc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => Acc(4),
      R => '0'
    );
\Acc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Acc_reg[4]_i_1_n_0\,
      CO(2) => \Acc_reg[4]_i_1_n_1\,
      CO(1) => \Acc_reg[4]_i_1_n_2\,
      CO(0) => \Acc_reg[4]_i_1_n_3\,
      CYINIT => Acc(0),
      DI(3) => Acc(4),
      DI(2) => '0',
      DI(1) => Acc(2),
      DI(0) => '0',
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3) => \Acc[4]_i_2_n_0\,
      S(2) => Acc(3),
      S(1) => \Acc[4]_i_3_n_0\,
      S(0) => Acc(1)
    );
\Acc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => Acc(5),
      R => '0'
    );
\Acc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => Acc(6),
      R => '0'
    );
\Acc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => Acc(7),
      R => '0'
    );
\Acc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => Acc(8),
      R => '0'
    );
\Acc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[4]_i_1_n_0\,
      CO(3) => \Acc_reg[8]_i_1_n_0\,
      CO(2) => \Acc_reg[8]_i_1_n_1\,
      CO(1) => \Acc_reg[8]_i_1_n_2\,
      CO(0) => \Acc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => Acc(7),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3) => Acc(8),
      S(2) => \Acc[8]_i_2_n_0\,
      S(1 downto 0) => Acc(6 downto 5)
    );
\Acc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => Acc(9),
      R => '0'
    );
\FSM_onehot_RxD_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFAAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => \^oversamplingtick\,
      I2 => \FSM_onehot_RxD_state_reg[0]_1\,
      I3 => \FSM_onehot_RxD_state_reg[0]_2\,
      I4 => \FSM_onehot_RxD_state_reg[0]_3\,
      I5 => Q(3),
      O => D(0)
    );
\FSM_onehot_RxD_state[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => RxD_bit_reg_1,
      I1 => Q(0),
      I2 => \FSM_onehot_RxD_state_reg[0]\,
      I3 => \FSM_onehot_RxD_state_reg[0]_0\,
      I4 => \FSM_onehot_RxD_state[10]_i_4_n_0\,
      O => RxD_bit_reg_0(0)
    );
\FSM_onehot_RxD_state[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^oversamplingtick\,
      I1 => \FSM_onehot_RxD_state_reg[0]_1\,
      I2 => \FSM_onehot_RxD_state_reg[0]_2\,
      I3 => \FSM_onehot_RxD_state_reg[0]_3\,
      O => \FSM_onehot_RxD_state[10]_i_4_n_0\
    );
\FSM_onehot_RxD_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => Q(3),
      I1 => \FSM_onehot_RxD_state_reg[0]_3\,
      I2 => \FSM_onehot_RxD_state_reg[0]_2\,
      I3 => \FSM_onehot_RxD_state_reg[0]_1\,
      I4 => \^oversamplingtick\,
      O => D(1)
    );
RxD_bit_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8AA"
    )
        port map (
      I0 => RxD_bit_reg_1,
      I1 => RxD_bit_reg_2,
      I2 => RxD_bit_reg_3,
      I3 => \^oversamplingtick\,
      O => RxD_bit_reg
    );
\RxD_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \FSM_onehot_RxD_state[10]_i_4_n_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => \FSM_onehot_RxD_state_reg[0]\,
      O => \FSM_onehot_RxD_state_reg[2]\(0)
    );
RxD_data_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_onehot_RxD_state[10]_i_4_n_0\,
      I1 => Q(4),
      I2 => RxD_bit_reg_1,
      I3 => E(0),
      O => \FSM_onehot_RxD_state_reg[10]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_BaudTickGen__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Acc_reg[21]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_TxD_state_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_TxD_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_TxD_state_reg[0]_1\ : in STD_LOGIC;
    ext_uart_start : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_BaudTickGen__parameterized0\ : entity is "BaudTickGen";
end \design_1_top_0_0_BaudTickGen__parameterized0\;

architecture STRUCTURE of \design_1_top_0_0_BaudTickGen__parameterized0\ is
  signal \Acc[0]_i_1_n_0\ : STD_LOGIC;
  signal \Acc[4]_i_2_n_0\ : STD_LOGIC;
  signal \Acc[4]_i_3_n_0\ : STD_LOGIC;
  signal \Acc[8]_i_2_n_0\ : STD_LOGIC;
  signal \Acc[8]_i_3_n_0\ : STD_LOGIC;
  signal \Acc__0\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \Acc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \Acc_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \Acc_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \Acc_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \Acc_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \Acc_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \Acc_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal BitTick : STD_LOGIC;
  signal \NLW_Acc_reg[21]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Acc_reg[21]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_TxD_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_TxD_state[9]_i_1\ : label is "soft_lutpair4";
begin
\Acc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Acc__0\(0),
      O => \Acc[0]_i_1_n_0\
    );
\Acc[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Acc__0\(4),
      O => \Acc[4]_i_2_n_0\
    );
\Acc[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Acc__0\(1),
      O => \Acc[4]_i_3_n_0\
    );
\Acc[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Acc__0\(8),
      O => \Acc[8]_i_2_n_0\
    );
\Acc[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Acc__0\(7),
      O => \Acc[8]_i_3_n_0\
    );
\Acc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc[0]_i_1_n_0\,
      Q => \Acc__0\(0),
      S => Q(0)
    );
\Acc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[12]_i_1_n_6\,
      Q => \Acc__0\(10),
      R => Q(0)
    );
\Acc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[12]_i_1_n_5\,
      Q => \Acc__0\(11),
      R => Q(0)
    );
\Acc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[12]_i_1_n_4\,
      Q => \Acc__0\(12),
      R => Q(0)
    );
\Acc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[8]_i_1_n_0\,
      CO(3) => \Acc_reg[12]_i_1_n_0\,
      CO(2) => \Acc_reg[12]_i_1_n_1\,
      CO(1) => \Acc_reg[12]_i_1_n_2\,
      CO(0) => \Acc_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Acc_reg[12]_i_1_n_4\,
      O(2) => \Acc_reg[12]_i_1_n_5\,
      O(1) => \Acc_reg[12]_i_1_n_6\,
      O(0) => \Acc_reg[12]_i_1_n_7\,
      S(3 downto 0) => \Acc__0\(12 downto 9)
    );
\Acc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[16]_i_1_n_7\,
      Q => \Acc__0\(13),
      R => Q(0)
    );
\Acc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[16]_i_1_n_6\,
      Q => \Acc__0\(14),
      R => Q(0)
    );
\Acc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[16]_i_1_n_5\,
      Q => \Acc__0\(15),
      R => Q(0)
    );
\Acc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[16]_i_1_n_4\,
      Q => \Acc__0\(16),
      R => Q(0)
    );
\Acc_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[12]_i_1_n_0\,
      CO(3) => \Acc_reg[16]_i_1_n_0\,
      CO(2) => \Acc_reg[16]_i_1_n_1\,
      CO(1) => \Acc_reg[16]_i_1_n_2\,
      CO(0) => \Acc_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Acc_reg[16]_i_1_n_4\,
      O(2) => \Acc_reg[16]_i_1_n_5\,
      O(1) => \Acc_reg[16]_i_1_n_6\,
      O(0) => \Acc_reg[16]_i_1_n_7\,
      S(3 downto 0) => \Acc__0\(16 downto 13)
    );
\Acc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[20]_i_1_n_7\,
      Q => \Acc__0\(17),
      R => Q(0)
    );
\Acc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[20]_i_1_n_6\,
      Q => \Acc__0\(18),
      R => Q(0)
    );
\Acc_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[20]_i_1_n_5\,
      Q => \Acc__0\(19),
      R => Q(0)
    );
\Acc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[4]_i_1_n_7\,
      Q => \Acc__0\(1),
      S => Q(0)
    );
\Acc_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[20]_i_1_n_4\,
      Q => \Acc__0\(20),
      R => Q(0)
    );
\Acc_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[16]_i_1_n_0\,
      CO(3) => \Acc_reg[20]_i_1_n_0\,
      CO(2) => \Acc_reg[20]_i_1_n_1\,
      CO(1) => \Acc_reg[20]_i_1_n_2\,
      CO(0) => \Acc_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \Acc_reg[20]_i_1_n_4\,
      O(2) => \Acc_reg[20]_i_1_n_5\,
      O(1) => \Acc_reg[20]_i_1_n_6\,
      O(0) => \Acc_reg[20]_i_1_n_7\,
      S(3 downto 0) => \Acc__0\(20 downto 17)
    );
\Acc_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[21]_i_1_n_3\,
      Q => BitTick,
      R => Q(0)
    );
\Acc_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_Acc_reg[21]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Acc_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Acc_reg[21]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[4]_i_1_n_6\,
      Q => \Acc__0\(2),
      R => Q(0)
    );
\Acc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[4]_i_1_n_5\,
      Q => \Acc__0\(3),
      R => Q(0)
    );
\Acc_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[4]_i_1_n_4\,
      Q => \Acc__0\(4),
      S => Q(0)
    );
\Acc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Acc_reg[4]_i_1_n_0\,
      CO(2) => \Acc_reg[4]_i_1_n_1\,
      CO(1) => \Acc_reg[4]_i_1_n_2\,
      CO(0) => \Acc_reg[4]_i_1_n_3\,
      CYINIT => \Acc__0\(0),
      DI(3) => \Acc__0\(4),
      DI(2 downto 1) => B"00",
      DI(0) => \Acc__0\(1),
      O(3) => \Acc_reg[4]_i_1_n_4\,
      O(2) => \Acc_reg[4]_i_1_n_5\,
      O(1) => \Acc_reg[4]_i_1_n_6\,
      O(0) => \Acc_reg[4]_i_1_n_7\,
      S(3) => \Acc[4]_i_2_n_0\,
      S(2 downto 1) => \Acc__0\(3 downto 2),
      S(0) => \Acc[4]_i_3_n_0\
    );
\Acc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[8]_i_1_n_7\,
      Q => \Acc__0\(5),
      R => Q(0)
    );
\Acc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[8]_i_1_n_6\,
      Q => \Acc__0\(6),
      R => Q(0)
    );
\Acc_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[8]_i_1_n_5\,
      Q => \Acc__0\(7),
      S => Q(0)
    );
\Acc_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[8]_i_1_n_4\,
      Q => \Acc__0\(8),
      S => Q(0)
    );
\Acc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Acc_reg[4]_i_1_n_0\,
      CO(3) => \Acc_reg[8]_i_1_n_0\,
      CO(2) => \Acc_reg[8]_i_1_n_1\,
      CO(1) => \Acc_reg[8]_i_1_n_2\,
      CO(0) => \Acc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \Acc__0\(8 downto 7),
      DI(1 downto 0) => B"00",
      O(3) => \Acc_reg[8]_i_1_n_4\,
      O(2) => \Acc_reg[8]_i_1_n_5\,
      O(1) => \Acc_reg[8]_i_1_n_6\,
      O(0) => \Acc_reg[8]_i_1_n_7\,
      S(3) => \Acc[8]_i_2_n_0\,
      S(2) => \Acc[8]_i_3_n_0\,
      S(1 downto 0) => \Acc__0\(6 downto 5)
    );
\Acc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Acc_reg[12]_i_1_n_7\,
      Q => \Acc__0\(9),
      R => Q(0)
    );
\FSM_onehot_TxD_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => BitTick,
      I1 => Q(2),
      I2 => Q(3),
      O => D(0)
    );
\FSM_onehot_TxD_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5F5F5F5F5D5"
    )
        port map (
      I0 => \FSM_onehot_TxD_state_reg[0]\,
      I1 => Q(3),
      I2 => BitTick,
      I3 => \FSM_onehot_TxD_state_reg[0]_0\,
      I4 => \FSM_onehot_TxD_state_reg[0]_1\,
      I5 => Q(1),
      O => E(0)
    );
\FSM_onehot_TxD_state[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(2),
      I1 => BitTick,
      O => D(1)
    );
\TxD_shift[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => BitTick,
      I1 => \FSM_onehot_TxD_state_reg[0]_1\,
      I2 => \FSM_onehot_TxD_state_reg[0]_0\,
      I3 => ext_uart_start,
      I4 => Q(0),
      O => \Acc_reg[21]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_x7seg is
  port (
    \scan_sel_reg[3]_0\ : out STD_LOGIC;
    \scan_sel_reg[2]_0\ : out STD_LOGIC;
    \scan_sel_reg[0]_0\ : out STD_LOGIC;
    \scan_sel_reg[1]_0\ : out STD_LOGIC;
    seg_data : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data8 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    p_0_out : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data5 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data6 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data7 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_x7seg : entity is "x7seg";
end design_1_top_0_0_x7seg;

architecture STRUCTURE of design_1_top_0_0_x7seg is
  signal clear : STD_LOGIC;
  signal \scan_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal scan_cnt_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \scan_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \scan_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \scan_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \scan_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \scan_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \scan_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \scan_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \scan_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \scan_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \scan_sel[3]_i_1_n_0\ : STD_LOGIC;
  signal \scan_sel[3]_i_3_n_0\ : STD_LOGIC;
  signal \scan_sel[3]_i_4_n_0\ : STD_LOGIC;
  signal \scan_sel[3]_i_5_n_0\ : STD_LOGIC;
  signal \scan_sel[3]_i_6_n_0\ : STD_LOGIC;
  signal \scan_sel[3]_i_7_n_0\ : STD_LOGIC;
  signal \^scan_sel_reg[0]_0\ : STD_LOGIC;
  signal \^scan_sel_reg[1]_0\ : STD_LOGIC;
  signal \^scan_sel_reg[2]_0\ : STD_LOGIC;
  signal \^scan_sel_reg[3]_0\ : STD_LOGIC;
  signal \seg_data[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_data[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_data[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_data[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_data[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_data[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_data[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \seg_data[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \seg_data[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \seg_data[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_data[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_data[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \NLW_scan_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_scan_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \scan_sel[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \scan_sel[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \scan_sel[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \scan_sel[3]_i_7\ : label is "soft_lutpair8";
begin
  \scan_sel_reg[0]_0\ <= \^scan_sel_reg[0]_0\;
  \scan_sel_reg[1]_0\ <= \^scan_sel_reg[1]_0\;
  \scan_sel_reg[2]_0\ <= \^scan_sel_reg[2]_0\;
  \scan_sel_reg[3]_0\ <= \^scan_sel_reg[3]_0\;
\scan_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scan_cnt_reg(0),
      O => \scan_cnt[0]_i_2_n_0\
    );
\scan_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[0]_i_1_n_7\,
      Q => scan_cnt_reg(0),
      R => clear
    );
\scan_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \scan_cnt_reg[0]_i_1_n_0\,
      CO(2) => \scan_cnt_reg[0]_i_1_n_1\,
      CO(1) => \scan_cnt_reg[0]_i_1_n_2\,
      CO(0) => \scan_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \scan_cnt_reg[0]_i_1_n_4\,
      O(2) => \scan_cnt_reg[0]_i_1_n_5\,
      O(1) => \scan_cnt_reg[0]_i_1_n_6\,
      O(0) => \scan_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => scan_cnt_reg(3 downto 1),
      S(0) => \scan_cnt[0]_i_2_n_0\
    );
\scan_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[8]_i_1_n_5\,
      Q => scan_cnt_reg(10),
      R => clear
    );
\scan_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[8]_i_1_n_4\,
      Q => scan_cnt_reg(11),
      R => clear
    );
\scan_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[12]_i_1_n_7\,
      Q => scan_cnt_reg(12),
      R => clear
    );
\scan_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \scan_cnt_reg[8]_i_1_n_0\,
      CO(3) => \scan_cnt_reg[12]_i_1_n_0\,
      CO(2) => \scan_cnt_reg[12]_i_1_n_1\,
      CO(1) => \scan_cnt_reg[12]_i_1_n_2\,
      CO(0) => \scan_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \scan_cnt_reg[12]_i_1_n_4\,
      O(2) => \scan_cnt_reg[12]_i_1_n_5\,
      O(1) => \scan_cnt_reg[12]_i_1_n_6\,
      O(0) => \scan_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => scan_cnt_reg(15 downto 12)
    );
\scan_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[12]_i_1_n_6\,
      Q => scan_cnt_reg(13),
      R => clear
    );
\scan_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[12]_i_1_n_5\,
      Q => scan_cnt_reg(14),
      R => clear
    );
\scan_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[12]_i_1_n_4\,
      Q => scan_cnt_reg(15),
      R => clear
    );
\scan_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[16]_i_1_n_7\,
      Q => scan_cnt_reg(16),
      R => clear
    );
\scan_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \scan_cnt_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_scan_cnt_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_scan_cnt_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \scan_cnt_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => scan_cnt_reg(16)
    );
\scan_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[0]_i_1_n_6\,
      Q => scan_cnt_reg(1),
      R => clear
    );
\scan_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[0]_i_1_n_5\,
      Q => scan_cnt_reg(2),
      R => clear
    );
\scan_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[0]_i_1_n_4\,
      Q => scan_cnt_reg(3),
      R => clear
    );
\scan_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[4]_i_1_n_7\,
      Q => scan_cnt_reg(4),
      R => clear
    );
\scan_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \scan_cnt_reg[0]_i_1_n_0\,
      CO(3) => \scan_cnt_reg[4]_i_1_n_0\,
      CO(2) => \scan_cnt_reg[4]_i_1_n_1\,
      CO(1) => \scan_cnt_reg[4]_i_1_n_2\,
      CO(0) => \scan_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \scan_cnt_reg[4]_i_1_n_4\,
      O(2) => \scan_cnt_reg[4]_i_1_n_5\,
      O(1) => \scan_cnt_reg[4]_i_1_n_6\,
      O(0) => \scan_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => scan_cnt_reg(7 downto 4)
    );
\scan_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[4]_i_1_n_6\,
      Q => scan_cnt_reg(5),
      R => clear
    );
\scan_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[4]_i_1_n_5\,
      Q => scan_cnt_reg(6),
      R => clear
    );
\scan_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[4]_i_1_n_4\,
      Q => scan_cnt_reg(7),
      R => clear
    );
\scan_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[8]_i_1_n_7\,
      Q => scan_cnt_reg(8),
      R => clear
    );
\scan_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \scan_cnt_reg[4]_i_1_n_0\,
      CO(3) => \scan_cnt_reg[8]_i_1_n_0\,
      CO(2) => \scan_cnt_reg[8]_i_1_n_1\,
      CO(1) => \scan_cnt_reg[8]_i_1_n_2\,
      CO(0) => \scan_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \scan_cnt_reg[8]_i_1_n_4\,
      O(2) => \scan_cnt_reg[8]_i_1_n_5\,
      O(1) => \scan_cnt_reg[8]_i_1_n_6\,
      O(0) => \scan_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => scan_cnt_reg(11 downto 8)
    );
\scan_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \scan_cnt_reg[8]_i_1_n_6\,
      Q => scan_cnt_reg(9),
      R => clear
    );
\scan_sel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^scan_sel_reg[0]_0\,
      O => \scan_sel[0]_i_1_n_0\
    );
\scan_sel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^scan_sel_reg[0]_0\,
      I1 => \^scan_sel_reg[1]_0\,
      O => \scan_sel[1]_i_1_n_0\
    );
\scan_sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^scan_sel_reg[0]_0\,
      I1 => \^scan_sel_reg[1]_0\,
      I2 => \^scan_sel_reg[2]_0\,
      O => \scan_sel[2]_i_1_n_0\
    );
\scan_sel[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \scan_sel[3]_i_4_n_0\,
      I1 => \scan_sel[3]_i_5_n_0\,
      I2 => \scan_sel[3]_i_6_n_0\,
      I3 => \scan_sel[3]_i_7_n_0\,
      O => \scan_sel[3]_i_1_n_0\
    );
\scan_sel[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \scan_sel[3]_i_6_n_0\,
      I1 => \scan_sel[3]_i_5_n_0\,
      I2 => \scan_sel[3]_i_4_n_0\,
      O => clear
    );
\scan_sel[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^scan_sel_reg[1]_0\,
      I1 => \^scan_sel_reg[0]_0\,
      I2 => \^scan_sel_reg[2]_0\,
      I3 => \^scan_sel_reg[3]_0\,
      O => \scan_sel[3]_i_3_n_0\
    );
\scan_sel[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => scan_cnt_reg(14),
      I1 => scan_cnt_reg(13),
      I2 => scan_cnt_reg(11),
      I3 => scan_cnt_reg(12),
      I4 => scan_cnt_reg(16),
      I5 => scan_cnt_reg(15),
      O => \scan_sel[3]_i_4_n_0\
    );
\scan_sel[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => scan_cnt_reg(0),
      I1 => scan_cnt_reg(1),
      I2 => scan_cnt_reg(2),
      I3 => scan_cnt_reg(4),
      I4 => scan_cnt_reg(3),
      O => \scan_sel[3]_i_5_n_0\
    );
\scan_sel[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => scan_cnt_reg(8),
      I1 => scan_cnt_reg(7),
      I2 => scan_cnt_reg(6),
      I3 => scan_cnt_reg(5),
      I4 => scan_cnt_reg(10),
      I5 => scan_cnt_reg(9),
      O => \scan_sel[3]_i_6_n_0\
    );
\scan_sel[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^scan_sel_reg[3]_0\,
      I1 => \^scan_sel_reg[2]_0\,
      I2 => \^scan_sel_reg[0]_0\,
      I3 => \^scan_sel_reg[1]_0\,
      O => \scan_sel[3]_i_7_n_0\
    );
\scan_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \scan_sel[0]_i_1_n_0\,
      Q => \^scan_sel_reg[0]_0\,
      R => \scan_sel[3]_i_1_n_0\
    );
\scan_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \scan_sel[1]_i_1_n_0\,
      Q => \^scan_sel_reg[1]_0\,
      R => \scan_sel[3]_i_1_n_0\
    );
\scan_sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \scan_sel[2]_i_1_n_0\,
      Q => \^scan_sel_reg[2]_0\,
      R => \scan_sel[3]_i_1_n_0\
    );
\scan_sel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => clear,
      D => \scan_sel[3]_i_3_n_0\,
      Q => \^scan_sel_reg[3]_0\,
      R => \scan_sel[3]_i_1_n_0\
    );
\seg_data[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(0),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[0]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[0]_INST_0_i_3_n_0\,
      O => seg_data(0)
    );
\seg_data[0]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[0]_INST_0_i_4_n_0\,
      I1 => \seg_data[0]_INST_0_i_5_n_0\,
      O => \seg_data[0]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[0]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[0]_INST_0_i_6_n_0\,
      I1 => \seg_data[0]_INST_0_i_7_n_0\,
      O => \seg_data[0]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(0),
      I1 => data5(0),
      O => \seg_data[0]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(0),
      I1 => data7(0),
      O => \seg_data[0]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(0),
      I1 => data1(0),
      O => \seg_data[0]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(0),
      I1 => data3(0),
      O => \seg_data[0]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(1),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[1]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[1]_INST_0_i_3_n_0\,
      O => seg_data(1)
    );
\seg_data[1]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[1]_INST_0_i_4_n_0\,
      I1 => \seg_data[1]_INST_0_i_5_n_0\,
      O => \seg_data[1]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[1]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[1]_INST_0_i_6_n_0\,
      I1 => \seg_data[1]_INST_0_i_7_n_0\,
      O => \seg_data[1]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(1),
      I1 => data5(1),
      O => \seg_data[1]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(1),
      I1 => data7(1),
      O => \seg_data[1]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(1),
      I1 => data1(1),
      O => \seg_data[1]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(1),
      I1 => data3(1),
      O => \seg_data[1]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(2),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[2]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[2]_INST_0_i_3_n_0\,
      O => seg_data(2)
    );
\seg_data[2]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[2]_INST_0_i_4_n_0\,
      I1 => \seg_data[2]_INST_0_i_5_n_0\,
      O => \seg_data[2]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[2]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[2]_INST_0_i_6_n_0\,
      I1 => \seg_data[2]_INST_0_i_7_n_0\,
      O => \seg_data[2]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(2),
      I1 => data5(2),
      O => \seg_data[2]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(2),
      I1 => data7(2),
      O => \seg_data[2]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(2),
      I1 => data1(2),
      O => \seg_data[2]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[2]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(2),
      I1 => data3(2),
      O => \seg_data[2]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(3),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[3]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[3]_INST_0_i_3_n_0\,
      O => seg_data(3)
    );
\seg_data[3]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[3]_INST_0_i_4_n_0\,
      I1 => \seg_data[3]_INST_0_i_5_n_0\,
      O => \seg_data[3]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[3]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[3]_INST_0_i_6_n_0\,
      I1 => \seg_data[3]_INST_0_i_7_n_0\,
      O => \seg_data[3]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[3]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(3),
      I1 => data5(3),
      O => \seg_data[3]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[3]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(3),
      I1 => data7(3),
      O => \seg_data[3]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(3),
      I1 => data1(3),
      O => \seg_data[3]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(3),
      I1 => data3(3),
      O => \seg_data[3]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(4),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[4]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[4]_INST_0_i_3_n_0\,
      O => seg_data(4)
    );
\seg_data[4]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[4]_INST_0_i_4_n_0\,
      I1 => \seg_data[4]_INST_0_i_5_n_0\,
      O => \seg_data[4]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[4]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[4]_INST_0_i_6_n_0\,
      I1 => \seg_data[4]_INST_0_i_7_n_0\,
      O => \seg_data[4]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[4]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(4),
      I1 => data5(4),
      O => \seg_data[4]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[4]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(4),
      I1 => data7(4),
      O => \seg_data[4]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[4]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(4),
      I1 => data1(4),
      O => \seg_data[4]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[4]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(4),
      I1 => data3(4),
      O => \seg_data[4]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(5),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[5]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[5]_INST_0_i_3_n_0\,
      O => seg_data(5)
    );
\seg_data[5]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[5]_INST_0_i_4_n_0\,
      I1 => \seg_data[5]_INST_0_i_5_n_0\,
      O => \seg_data[5]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[5]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[5]_INST_0_i_6_n_0\,
      I1 => \seg_data[5]_INST_0_i_7_n_0\,
      O => \seg_data[5]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[5]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(5),
      I1 => data5(5),
      O => \seg_data[5]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[5]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(5),
      I1 => data7(5),
      O => \seg_data[5]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[5]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(5),
      I1 => data1(5),
      O => \seg_data[5]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[5]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(5),
      I1 => data3(5),
      O => \seg_data[5]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data8(6),
      I1 => \^scan_sel_reg[3]_0\,
      I2 => \seg_data[6]_INST_0_i_2_n_0\,
      I3 => \^scan_sel_reg[2]_0\,
      I4 => \seg_data[6]_INST_0_i_3_n_0\,
      O => seg_data(6)
    );
\seg_data[6]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[6]_INST_0_i_4_n_0\,
      I1 => \seg_data[6]_INST_0_i_5_n_0\,
      O => \seg_data[6]_INST_0_i_2_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[6]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \seg_data[6]_INST_0_i_6_n_0\,
      I1 => \seg_data[6]_INST_0_i_7_n_0\,
      O => \seg_data[6]_INST_0_i_3_n_0\,
      S => \^scan_sel_reg[1]_0\
    );
\seg_data[6]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => data4(6),
      I1 => data5(6),
      O => \seg_data[6]_INST_0_i_4_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[6]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => data6(6),
      I1 => data7(6),
      O => \seg_data[6]_INST_0_i_5_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[6]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => p_0_out(6),
      I1 => data1(6),
      O => \seg_data[6]_INST_0_i_6_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
\seg_data[6]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => data2(6),
      I1 => data3(6),
      O => \seg_data[6]_INST_0_i_7_n_0\,
      S => \^scan_sel_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_async_receiver is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rxd : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_async_receiver : entity is "async_receiver";
end design_1_top_0_0_async_receiver;

architecture STRUCTURE of design_1_top_0_0_async_receiver is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_RxD_state[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_RxD_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \Filter_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Filter_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Filter_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Filter_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal OversamplingCnt0 : STD_LOGIC;
  signal \OversamplingCnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \OversamplingCnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \OversamplingCnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \OversamplingCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \OversamplingCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \OversamplingCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal OversamplingTick : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RxD_bit_reg_n_0 : STD_LOGIC;
  signal RxD_data0 : STD_LOGIC;
  signal \RxD_sync[0]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_sync[1]_i_1_n_0\ : STD_LOGIC;
  signal \RxD_sync_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal tickgen_n_0 : STD_LOGIC;
  signal tickgen_n_1 : STD_LOGIC;
  signal tickgen_n_3 : STD_LOGIC;
  signal tickgen_n_5 : STD_LOGIC;
  signal tickgen_n_6 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[0]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[10]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[1]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[2]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[3]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[4]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[5]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[6]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[7]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[8]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_RxD_state_reg[9]\ : label is "iSTATE:00010000000,iSTATE0:10000000000,iSTATE1:00000100000,iSTATE2:00001000000,iSTATE3:00000010000,iSTATE4:00000000010,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Filter_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Filter_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \OversamplingCnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \OversamplingCnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \OversamplingCnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RxD_sync[1]_i_1\ : label is "soft_lutpair3";
begin
  E(0) <= \^e\(0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\FSM_onehot_RxD_state[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_RxD_state_reg_n_0_[8]\,
      I1 => \FSM_onehot_RxD_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_RxD_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_RxD_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_RxD_state_reg_n_0_[4]\,
      I5 => \FSM_onehot_RxD_state_reg_n_0_[9]\,
      O => \FSM_onehot_RxD_state[10]_i_2_n_0\
    );
\FSM_onehot_RxD_state[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_RxD_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_RxD_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_RxD_state_reg_n_0_[10]\,
      I3 => \FSM_onehot_RxD_state_reg_n_0_[1]\,
      O => \FSM_onehot_RxD_state[10]_i_3_n_0\
    );
\FSM_onehot_RxD_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => tickgen_n_6,
      Q => OversamplingCnt0,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[9]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[10]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => OversamplingCnt0,
      Q => \FSM_onehot_RxD_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[1]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[2]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[3]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[4]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[5]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[6]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => \FSM_onehot_RxD_state_reg_n_0_[7]\,
      Q => \FSM_onehot_RxD_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_RxD_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_3,
      D => tickgen_n_5,
      Q => \FSM_onehot_RxD_state_reg_n_0_[9]\,
      R => '0'
    );
\Filter_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FE0"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \Filter_cnt_reg_n_0_[1]\,
      I2 => OversamplingTick,
      I3 => \Filter_cnt_reg_n_0_[0]\,
      O => \Filter_cnt[0]_i_1_n_0\
    );
\Filter_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D0"
    )
        port map (
      I0 => OversamplingTick,
      I1 => \Filter_cnt_reg_n_0_[0]\,
      I2 => \Filter_cnt_reg_n_0_[1]\,
      I3 => p_0_in8_in,
      O => \Filter_cnt[1]_i_1_n_0\
    );
\Filter_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Filter_cnt[0]_i_1_n_0\,
      Q => \Filter_cnt_reg_n_0_[0]\,
      R => '0'
    );
\Filter_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \Filter_cnt[1]_i_1_n_0\,
      Q => \Filter_cnt_reg_n_0_[1]\,
      R => '0'
    );
\OversamplingCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1A"
    )
        port map (
      I0 => \OversamplingCnt_reg_n_0_[0]\,
      I1 => OversamplingCnt0,
      I2 => OversamplingTick,
      O => \OversamplingCnt[0]_i_1_n_0\
    );
\OversamplingCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"06AA"
    )
        port map (
      I0 => \OversamplingCnt_reg_n_0_[1]\,
      I1 => \OversamplingCnt_reg_n_0_[0]\,
      I2 => OversamplingCnt0,
      I3 => OversamplingTick,
      O => \OversamplingCnt[1]_i_1_n_0\
    );
\OversamplingCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006AAAAA"
    )
        port map (
      I0 => \OversamplingCnt_reg_n_0_[2]\,
      I1 => \OversamplingCnt_reg_n_0_[0]\,
      I2 => \OversamplingCnt_reg_n_0_[1]\,
      I3 => OversamplingCnt0,
      I4 => OversamplingTick,
      O => \OversamplingCnt[2]_i_1_n_0\
    );
\OversamplingCnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \OversamplingCnt[0]_i_1_n_0\,
      Q => \OversamplingCnt_reg_n_0_[0]\,
      R => '0'
    );
\OversamplingCnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \OversamplingCnt[1]_i_1_n_0\,
      Q => \OversamplingCnt_reg_n_0_[1]\,
      R => '0'
    );
\OversamplingCnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \OversamplingCnt[2]_i_1_n_0\,
      Q => \OversamplingCnt_reg_n_0_[2]\,
      R => '0'
    );
RxD_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => tickgen_n_1,
      Q => RxD_bit_reg_n_0,
      R => '0'
    );
RxD_data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tickgen_n_0,
      Q => \^e\(0),
      R => '0'
    );
\RxD_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(1),
      Q => \^q\(0),
      R => '0'
    );
\RxD_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(2),
      Q => \^q\(1),
      R => '0'
    );
\RxD_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(3),
      Q => \^q\(2),
      R => '0'
    );
\RxD_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(4),
      Q => \^q\(3),
      R => '0'
    );
\RxD_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(5),
      Q => \^q\(4),
      R => '0'
    );
\RxD_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(6),
      Q => \^q\(5),
      R => '0'
    );
\RxD_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => \^q\(7),
      Q => \^q\(6),
      R => '0'
    );
\RxD_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => RxD_data0,
      D => RxD_bit_reg_n_0,
      Q => \^q\(7),
      R => '0'
    );
\RxD_sync[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxd,
      I1 => OversamplingTick,
      I2 => \RxD_sync_reg_n_0_[0]\,
      O => \RxD_sync[0]_i_1_n_0\
    );
\RxD_sync[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \RxD_sync_reg_n_0_[0]\,
      I1 => OversamplingTick,
      I2 => p_0_in8_in,
      O => \RxD_sync[1]_i_1_n_0\
    );
\RxD_sync_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \RxD_sync[0]_i_1_n_0\,
      Q => \RxD_sync_reg_n_0_[0]\,
      R => '0'
    );
\RxD_sync_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \RxD_sync[1]_i_1_n_0\,
      Q => p_0_in8_in,
      R => '0'
    );
tickgen: entity work.design_1_top_0_0_BaudTickGen
     port map (
      D(1) => tickgen_n_5,
      D(0) => tickgen_n_6,
      E(0) => \^e\(0),
      \FSM_onehot_RxD_state_reg[0]\ => \FSM_onehot_RxD_state[10]_i_2_n_0\,
      \FSM_onehot_RxD_state_reg[0]_0\ => \FSM_onehot_RxD_state[10]_i_3_n_0\,
      \FSM_onehot_RxD_state_reg[0]_1\ => \OversamplingCnt_reg_n_0_[0]\,
      \FSM_onehot_RxD_state_reg[0]_2\ => \OversamplingCnt_reg_n_0_[1]\,
      \FSM_onehot_RxD_state_reg[0]_3\ => \OversamplingCnt_reg_n_0_[2]\,
      \FSM_onehot_RxD_state_reg[10]\ => tickgen_n_0,
      \FSM_onehot_RxD_state_reg[2]\(0) => RxD_data0,
      OversamplingTick => OversamplingTick,
      Q(4) => \FSM_onehot_RxD_state_reg_n_0_[10]\,
      Q(3) => \FSM_onehot_RxD_state_reg_n_0_[8]\,
      Q(2) => \FSM_onehot_RxD_state_reg_n_0_[7]\,
      Q(1) => \FSM_onehot_RxD_state_reg_n_0_[2]\,
      Q(0) => OversamplingCnt0,
      RxD_bit_reg => tickgen_n_1,
      RxD_bit_reg_0(0) => tickgen_n_3,
      RxD_bit_reg_1 => RxD_bit_reg_n_0,
      RxD_bit_reg_2 => \Filter_cnt_reg_n_0_[1]\,
      RxD_bit_reg_3 => \Filter_cnt_reg_n_0_[0]\,
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_async_transmitter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ext_uart_avai_reg : out STD_LOGIC;
    txd : out STD_LOGIC;
    ext_uart_avai : in STD_LOGIC;
    ext_uart_avai_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ext_uart_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_async_transmitter : entity is "async_transmitter";
end design_1_top_0_0_async_transmitter;

architecture STRUCTURE of design_1_top_0_0_async_transmitter is
  signal \FSM_onehot_TxD_state[10]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_TxD_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \TxD_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \TxD_shift[7]_i_2_n_0\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[1]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[2]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[3]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[4]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[5]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[6]\ : STD_LOGIC;
  signal \TxD_shift_reg_n_0_[7]\ : STD_LOGIC;
  signal tickgen_n_0 : STD_LOGIC;
  signal tickgen_n_1 : STD_LOGIC;
  signal tickgen_n_2 : STD_LOGIC;
  signal tickgen_n_3 : STD_LOGIC;
  signal txd_INST_0_i_1_n_0 : STD_LOGIC;
  signal txd_INST_0_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_TxD_state[10]_i_2\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[0]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[10]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[1]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[2]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[3]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[4]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[5]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[6]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[7]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[8]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_TxD_state_reg[9]\ : label is "iSTATE:00000000010,iSTATE0:00010000000,iSTATE1:10000000000,iSTATE2:00000100000,iSTATE3:00001000000,iSTATE4:00000010000,iSTATE5:00000000001,iSTATE6:00000001000,iSTATE7:00000000100,iSTATE8:01000000000,iSTATE9:00100000000";
  attribute SOFT_HLUTNM of \TxD_shift[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \TxD_shift[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \TxD_shift[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \TxD_shift[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ext_uart_tx[7]_i_1\ : label is "soft_lutpair7";
begin
\FSM_onehot_TxD_state[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I1 => ext_uart_start,
      O => \FSM_onehot_TxD_state[10]_i_2_n_0\
    );
\FSM_onehot_TxD_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => tickgen_n_3,
      Q => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[9]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[10]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[1]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[2]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[3]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[4]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[5]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[6]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => \FSM_onehot_TxD_state_reg_n_0_[7]\,
      Q => \FSM_onehot_TxD_state_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_TxD_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_0,
      D => tickgen_n_2,
      Q => \FSM_onehot_TxD_state_reg_n_0_[9]\,
      R => '0'
    );
\TxD_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[1]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(0),
      O => \TxD_shift[0]_i_1_n_0\
    );
\TxD_shift[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[2]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(1),
      O => \TxD_shift[1]_i_1_n_0\
    );
\TxD_shift[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[3]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(2),
      O => \TxD_shift[2]_i_1_n_0\
    );
\TxD_shift[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[4]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(3),
      O => \TxD_shift[3]_i_1_n_0\
    );
\TxD_shift[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[5]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(4),
      O => \TxD_shift[4]_i_1_n_0\
    );
\TxD_shift[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[6]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(5),
      O => \TxD_shift[5]_i_1_n_0\
    );
\TxD_shift[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[7]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_start,
      I3 => Q(6),
      O => \TxD_shift[6]_i_1_n_0\
    );
\TxD_shift[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(7),
      I1 => ext_uart_start,
      I2 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      O => \TxD_shift[7]_i_2_n_0\
    );
\TxD_shift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[0]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[0]\,
      R => '0'
    );
\TxD_shift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[1]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[1]\,
      R => '0'
    );
\TxD_shift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[2]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[2]\,
      R => '0'
    );
\TxD_shift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[3]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[3]\,
      R => '0'
    );
\TxD_shift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[4]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[4]\,
      R => '0'
    );
\TxD_shift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[5]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[5]\,
      R => '0'
    );
\TxD_shift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[6]_i_1_n_0\,
      Q => \TxD_shift_reg_n_0_[6]\,
      R => '0'
    );
\TxD_shift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => tickgen_n_1,
      D => \TxD_shift[7]_i_2_n_0\,
      Q => \TxD_shift_reg_n_0_[7]\,
      R => '0'
    );
ext_uart_avai_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => ext_uart_avai,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I2 => ext_uart_avai_reg_0(0),
      O => ext_uart_avai_reg
    );
\ext_uart_tx[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      I1 => ext_uart_avai,
      O => E(0)
    );
tickgen: entity work.\design_1_top_0_0_BaudTickGen__parameterized0\
     port map (
      \Acc_reg[21]_0\(0) => tickgen_n_1,
      D(1) => tickgen_n_2,
      D(0) => tickgen_n_3,
      E(0) => tickgen_n_0,
      \FSM_onehot_TxD_state_reg[0]\ => \FSM_onehot_TxD_state[10]_i_2_n_0\,
      \FSM_onehot_TxD_state_reg[0]_0\ => txd_INST_0_i_2_n_0,
      \FSM_onehot_TxD_state_reg[0]_1\ => txd_INST_0_i_1_n_0,
      Q(3) => \FSM_onehot_TxD_state_reg_n_0_[10]\,
      Q(2) => \FSM_onehot_TxD_state_reg_n_0_[8]\,
      Q(1) => \FSM_onehot_TxD_state_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_TxD_state_reg_n_0_[0]\,
      clk => clk,
      ext_uart_start => ext_uart_start
    );
txd_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA3"
    )
        port map (
      I0 => \TxD_shift_reg_n_0_[0]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[1]\,
      I2 => txd_INST_0_i_1_n_0,
      I3 => txd_INST_0_i_2_n_0,
      O => txd
    );
txd_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_TxD_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_TxD_state_reg_n_0_[5]\,
      I3 => \FSM_onehot_TxD_state_reg_n_0_[4]\,
      O => txd_INST_0_i_1_n_0
    );
txd_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_TxD_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_TxD_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_TxD_state_reg_n_0_[9]\,
      I3 => \FSM_onehot_TxD_state_reg_n_0_[8]\,
      O => txd_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_MiniMIPS32_Lite_FullSyS is
  port (
    \scan_sel_reg[3]\ : out STD_LOGIC;
    \scan_sel_reg[2]\ : out STD_LOGIC;
    \scan_sel_reg[1]\ : out STD_LOGIC;
    \scan_sel_reg[0]\ : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 31 downto 0 );
    seg_data : out STD_LOGIC_VECTOR ( 6 downto 0 );
    txd : out STD_LOGIC;
    clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    sw_2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxd : in STD_LOGIC;
    sw_1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_MiniMIPS32_Lite_FullSyS : entity is "MiniMIPS32_Lite_FullSyS";
end design_1_top_0_0_MiniMIPS32_Lite_FullSyS;

architecture STRUCTURE of design_1_top_0_0_MiniMIPS32_Lite_FullSyS is
  signal RxD_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal btn_ff : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ext_uart_avai : STD_LOGIC;
  signal \ext_uart_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \ext_uart_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \ext_uart_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \ext_uart_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal ext_uart_ready : STD_LOGIC;
  signal ext_uart_start : STD_LOGIC;
  signal ext_uart_t_n_0 : STD_LOGIC;
  signal ext_uart_t_n_1 : STD_LOGIC;
  signal ext_uart_tx : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rst_n : STD_LOGIC;
  signal rst_n_i_1_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \sw_1_ff[31]_i_1_n_0\ : STD_LOGIC;
  signal sw_2_ff : STD_LOGIC_VECTOR ( 19 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_data[0]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg_data[1]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \seg_data[2]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \seg_data[3]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \seg_data[4]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \seg_data[5]_INST_0_i_1\ : label is "soft_lutpair12";
begin
\btn_ff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(0),
      Q => btn_ff(0)
    );
\btn_ff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(1),
      Q => btn_ff(1)
    );
\btn_ff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(2),
      Q => btn_ff(2)
    );
\btn_ff_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(3),
      Q => btn_ff(3)
    );
\btn_ff_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(4),
      Q => btn_ff(4)
    );
\btn_ff_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(5),
      Q => btn_ff(5)
    );
\btn_ff_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(6),
      Q => btn_ff(6)
    );
\btn_ff_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => btn(7),
      Q => btn_ff(7)
    );
ext_uart_avai_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ext_uart_t_n_1,
      Q => ext_uart_avai,
      R => '0'
    );
\ext_uart_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(0),
      Q => \ext_uart_buffer_reg_n_0_[0]\,
      R => '0'
    );
\ext_uart_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(1),
      Q => \ext_uart_buffer_reg_n_0_[1]\,
      R => '0'
    );
\ext_uart_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(2),
      Q => \ext_uart_buffer_reg_n_0_[2]\,
      R => '0'
    );
\ext_uart_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(3),
      Q => \ext_uart_buffer_reg_n_0_[3]\,
      R => '0'
    );
\ext_uart_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(4),
      Q => sel0(0),
      R => '0'
    );
\ext_uart_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(5),
      Q => sel0(1),
      R => '0'
    );
\ext_uart_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(6),
      Q => sel0(2),
      R => '0'
    );
\ext_uart_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_ready,
      D => RxD_data(7),
      Q => sel0(3),
      R => '0'
    );
ext_uart_r: entity work.design_1_top_0_0_async_receiver
     port map (
      E(0) => ext_uart_ready,
      Q(7 downto 0) => RxD_data(7 downto 0),
      clk => clk,
      rxd => rxd
    );
ext_uart_start_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ext_uart_t_n_0,
      Q => ext_uart_start,
      R => '0'
    );
ext_uart_t: entity work.design_1_top_0_0_async_transmitter
     port map (
      E(0) => ext_uart_t_n_0,
      Q(7 downto 0) => ext_uart_tx(7 downto 0),
      clk => clk,
      ext_uart_avai => ext_uart_avai,
      ext_uart_avai_reg => ext_uart_t_n_1,
      ext_uart_avai_reg_0(0) => ext_uart_ready,
      ext_uart_start => ext_uart_start,
      txd => txd
    );
\ext_uart_tx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => \ext_uart_buffer_reg_n_0_[0]\,
      Q => ext_uart_tx(0),
      R => '0'
    );
\ext_uart_tx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => \ext_uart_buffer_reg_n_0_[1]\,
      Q => ext_uart_tx(1),
      R => '0'
    );
\ext_uart_tx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => \ext_uart_buffer_reg_n_0_[2]\,
      Q => ext_uart_tx(2),
      R => '0'
    );
\ext_uart_tx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => \ext_uart_buffer_reg_n_0_[3]\,
      Q => ext_uart_tx(3),
      R => '0'
    );
\ext_uart_tx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => sel0(0),
      Q => ext_uart_tx(4),
      R => '0'
    );
\ext_uart_tx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => sel0(1),
      Q => ext_uart_tx(5),
      R => '0'
    );
\ext_uart_tx_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => sel0(2),
      Q => ext_uart_tx(6),
      R => '0'
    );
\ext_uart_tx_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ext_uart_t_n_0,
      D => sel0(3),
      Q => ext_uart_tx(7),
      R => '0'
    );
rst_n_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => locked,
      O => rst_n_i_1_n_0
    );
rst_n_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst_n_i_1_n_0,
      D => '1',
      Q => rst_n
    );
seg_cs_data_gen0: entity work.design_1_top_0_0_x7seg
     port map (
      clk => clk,
      data1(6 downto 0) => data1(6 downto 0),
      data2(6 downto 0) => data2(6 downto 0),
      data3(6 downto 0) => data3(6 downto 0),
      data4(6 downto 0) => data4(6 downto 0),
      data5(6 downto 0) => data5(6 downto 0),
      data6(6 downto 0) => data6(6 downto 0),
      data7(6 downto 0) => data7(6 downto 0),
      data8(6 downto 0) => data8(6 downto 0),
      p_0_out(6 downto 0) => p_0_out(6 downto 0),
      \scan_sel_reg[0]_0\ => \scan_sel_reg[0]\,
      \scan_sel_reg[1]_0\ => \scan_sel_reg[1]\,
      \scan_sel_reg[2]_0\ => \scan_sel_reg[2]\,
      \scan_sel_reg[3]_0\ => \scan_sel_reg[3]\,
      seg_data(6 downto 0) => seg_data(6 downto 0)
    );
\seg_data[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(6),
      I2 => btn_ff(4),
      I3 => btn_ff(5),
      O => data8(0)
    );
\seg_data[0]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(18),
      I2 => sw_2_ff(16),
      I3 => sw_2_ff(17),
      O => data6(0)
    );
\seg_data[0]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(2),
      I2 => btn_ff(0),
      I3 => btn_ff(1),
      O => data7(0)
    );
\seg_data[0]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[2]\,
      I2 => \ext_uart_buffer_reg_n_0_[0]\,
      I3 => \ext_uart_buffer_reg_n_0_[1]\,
      O => p_0_out(0)
    );
\seg_data[0]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => data1(0)
    );
\seg_data[0]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(2),
      I2 => sw_2_ff(0),
      I3 => sw_2_ff(1),
      O => data2(0)
    );
\seg_data[0]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(6),
      I2 => sw_2_ff(4),
      I3 => sw_2_ff(5),
      O => data3(0)
    );
\seg_data[0]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(10),
      I2 => sw_2_ff(8),
      I3 => sw_2_ff(9),
      O => data4(0)
    );
\seg_data[0]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(14),
      I2 => sw_2_ff(12),
      I3 => sw_2_ff(13),
      O => data5(0)
    );
\seg_data[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(6),
      I2 => btn_ff(5),
      I3 => btn_ff(4),
      O => data8(1)
    );
\seg_data[1]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(18),
      I2 => sw_2_ff(17),
      I3 => sw_2_ff(16),
      O => data6(1)
    );
\seg_data[1]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(2),
      I2 => btn_ff(1),
      I3 => btn_ff(0),
      O => data7(1)
    );
\seg_data[1]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[2]\,
      I2 => \ext_uart_buffer_reg_n_0_[1]\,
      I3 => \ext_uart_buffer_reg_n_0_[0]\,
      O => p_0_out(1)
    );
\seg_data[1]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => data1(1)
    );
\seg_data[1]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(2),
      I2 => sw_2_ff(1),
      I3 => sw_2_ff(0),
      O => data2(1)
    );
\seg_data[1]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(6),
      I2 => sw_2_ff(5),
      I3 => sw_2_ff(4),
      O => data3(1)
    );
\seg_data[1]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(10),
      I2 => sw_2_ff(9),
      I3 => sw_2_ff(8),
      O => data4(1)
    );
\seg_data[1]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(14),
      I2 => sw_2_ff(13),
      I3 => sw_2_ff(12),
      O => data5(1)
    );
\seg_data[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(4),
      I2 => btn_ff(5),
      I3 => btn_ff(6),
      O => data8(2)
    );
\seg_data[2]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(16),
      I2 => sw_2_ff(17),
      I3 => sw_2_ff(18),
      O => data6(2)
    );
\seg_data[2]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(0),
      I2 => btn_ff(1),
      I3 => btn_ff(2),
      O => data7(2)
    );
\seg_data[2]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[0]\,
      I2 => \ext_uart_buffer_reg_n_0_[1]\,
      I3 => \ext_uart_buffer_reg_n_0_[2]\,
      O => p_0_out(2)
    );
\seg_data[2]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => data1(2)
    );
\seg_data[2]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(0),
      I2 => sw_2_ff(1),
      I3 => sw_2_ff(2),
      O => data2(2)
    );
\seg_data[2]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(4),
      I2 => sw_2_ff(5),
      I3 => sw_2_ff(6),
      O => data3(2)
    );
\seg_data[2]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(8),
      I2 => sw_2_ff(9),
      I3 => sw_2_ff(10),
      O => data4(2)
    );
\seg_data[2]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(12),
      I2 => sw_2_ff(13),
      I3 => sw_2_ff(14),
      O => data5(2)
    );
\seg_data[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(6),
      I2 => btn_ff(4),
      I3 => btn_ff(5),
      O => data8(3)
    );
\seg_data[3]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(18),
      I2 => sw_2_ff(16),
      I3 => sw_2_ff(17),
      O => data6(3)
    );
\seg_data[3]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(2),
      I2 => btn_ff(0),
      I3 => btn_ff(1),
      O => data7(3)
    );
\seg_data[3]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[2]\,
      I2 => \ext_uart_buffer_reg_n_0_[0]\,
      I3 => \ext_uart_buffer_reg_n_0_[1]\,
      O => p_0_out(3)
    );
\seg_data[3]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => data1(3)
    );
\seg_data[3]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(2),
      I2 => sw_2_ff(0),
      I3 => sw_2_ff(1),
      O => data2(3)
    );
\seg_data[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(6),
      I2 => sw_2_ff(4),
      I3 => sw_2_ff(5),
      O => data3(3)
    );
\seg_data[3]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(10),
      I2 => sw_2_ff(8),
      I3 => sw_2_ff(9),
      O => data4(3)
    );
\seg_data[3]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(14),
      I2 => sw_2_ff(12),
      I3 => sw_2_ff(13),
      O => data5(3)
    );
\seg_data[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(5),
      I2 => btn_ff(6),
      I3 => btn_ff(4),
      O => data8(4)
    );
\seg_data[4]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(17),
      I2 => sw_2_ff(18),
      I3 => sw_2_ff(16),
      O => data6(4)
    );
\seg_data[4]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(1),
      I2 => btn_ff(2),
      I3 => btn_ff(0),
      O => data7(4)
    );
\seg_data[4]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[1]\,
      I2 => \ext_uart_buffer_reg_n_0_[2]\,
      I3 => \ext_uart_buffer_reg_n_0_[0]\,
      O => p_0_out(4)
    );
\seg_data[4]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => data1(4)
    );
\seg_data[4]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(1),
      I2 => sw_2_ff(2),
      I3 => sw_2_ff(0),
      O => data2(4)
    );
\seg_data[4]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(5),
      I2 => sw_2_ff(6),
      I3 => sw_2_ff(4),
      O => data3(4)
    );
\seg_data[4]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(9),
      I2 => sw_2_ff(10),
      I3 => sw_2_ff(8),
      O => data4(4)
    );
\seg_data[4]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(13),
      I2 => sw_2_ff(14),
      I3 => sw_2_ff(12),
      O => data5(4)
    );
\seg_data[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(6),
      I2 => btn_ff(4),
      I3 => btn_ff(5),
      O => data8(5)
    );
\seg_data[5]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(18),
      I2 => sw_2_ff(16),
      I3 => sw_2_ff(17),
      O => data6(5)
    );
\seg_data[5]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(2),
      I2 => btn_ff(0),
      I3 => btn_ff(1),
      O => data7(5)
    );
\seg_data[5]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[2]\,
      I2 => \ext_uart_buffer_reg_n_0_[0]\,
      I3 => \ext_uart_buffer_reg_n_0_[1]\,
      O => p_0_out(5)
    );
\seg_data[5]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => data1(5)
    );
\seg_data[5]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(2),
      I2 => sw_2_ff(0),
      I3 => sw_2_ff(1),
      O => data2(5)
    );
\seg_data[5]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(6),
      I2 => sw_2_ff(4),
      I3 => sw_2_ff(5),
      O => data3(5)
    );
\seg_data[5]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(10),
      I2 => sw_2_ff(8),
      I3 => sw_2_ff(9),
      O => data4(5)
    );
\seg_data[5]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(14),
      I2 => sw_2_ff(12),
      I3 => sw_2_ff(13),
      O => data5(5)
    );
\seg_data[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => btn_ff(7),
      I1 => btn_ff(4),
      I2 => btn_ff(6),
      I3 => btn_ff(5),
      O => data8(6)
    );
\seg_data[6]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sw_2_ff(19),
      I1 => sw_2_ff(16),
      I2 => sw_2_ff(18),
      I3 => sw_2_ff(17),
      O => data6(6)
    );
\seg_data[6]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => btn_ff(3),
      I1 => btn_ff(0),
      I2 => btn_ff(2),
      I3 => btn_ff(1),
      O => data7(6)
    );
\seg_data[6]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \ext_uart_buffer_reg_n_0_[3]\,
      I1 => \ext_uart_buffer_reg_n_0_[0]\,
      I2 => \ext_uart_buffer_reg_n_0_[2]\,
      I3 => \ext_uart_buffer_reg_n_0_[1]\,
      O => p_0_out(6)
    );
\seg_data[6]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => data1(6)
    );
\seg_data[6]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sw_2_ff(3),
      I1 => sw_2_ff(0),
      I2 => sw_2_ff(2),
      I3 => sw_2_ff(1),
      O => data2(6)
    );
\seg_data[6]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sw_2_ff(7),
      I1 => sw_2_ff(4),
      I2 => sw_2_ff(6),
      I3 => sw_2_ff(5),
      O => data3(6)
    );
\seg_data[6]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sw_2_ff(11),
      I1 => sw_2_ff(8),
      I2 => sw_2_ff(10),
      I3 => sw_2_ff(9),
      O => data4(6)
    );
\seg_data[6]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sw_2_ff(15),
      I1 => sw_2_ff(12),
      I2 => sw_2_ff(14),
      I3 => sw_2_ff(13),
      O => data5(6)
    );
\sw_1_ff[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \sw_1_ff[31]_i_1_n_0\
    );
\sw_1_ff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(0),
      Q => led(0)
    );
\sw_1_ff_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(10),
      Q => led(10)
    );
\sw_1_ff_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(11),
      Q => led(11)
    );
\sw_1_ff_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(12),
      Q => led(12)
    );
\sw_1_ff_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(13),
      Q => led(13)
    );
\sw_1_ff_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(14),
      Q => led(14)
    );
\sw_1_ff_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(15),
      Q => led(15)
    );
\sw_1_ff_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(16),
      Q => led(16)
    );
\sw_1_ff_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(17),
      Q => led(17)
    );
\sw_1_ff_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(18),
      Q => led(18)
    );
\sw_1_ff_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(19),
      Q => led(19)
    );
\sw_1_ff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(1),
      Q => led(1)
    );
\sw_1_ff_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(20),
      Q => led(20)
    );
\sw_1_ff_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(21),
      Q => led(21)
    );
\sw_1_ff_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(22),
      Q => led(22)
    );
\sw_1_ff_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(23),
      Q => led(23)
    );
\sw_1_ff_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(24),
      Q => led(24)
    );
\sw_1_ff_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(25),
      Q => led(25)
    );
\sw_1_ff_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(26),
      Q => led(26)
    );
\sw_1_ff_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(27),
      Q => led(27)
    );
\sw_1_ff_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(28),
      Q => led(28)
    );
\sw_1_ff_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(29),
      Q => led(29)
    );
\sw_1_ff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(2),
      Q => led(2)
    );
\sw_1_ff_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(30),
      Q => led(30)
    );
\sw_1_ff_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(31),
      Q => led(31)
    );
\sw_1_ff_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(3),
      Q => led(3)
    );
\sw_1_ff_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(4),
      Q => led(4)
    );
\sw_1_ff_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(5),
      Q => led(5)
    );
\sw_1_ff_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(6),
      Q => led(6)
    );
\sw_1_ff_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(7),
      Q => led(7)
    );
\sw_1_ff_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(8),
      Q => led(8)
    );
\sw_1_ff_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_1(9),
      Q => led(9)
    );
\sw_2_ff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(0),
      Q => sw_2_ff(0)
    );
\sw_2_ff_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(10),
      Q => sw_2_ff(10)
    );
\sw_2_ff_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(11),
      Q => sw_2_ff(11)
    );
\sw_2_ff_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(12),
      Q => sw_2_ff(12)
    );
\sw_2_ff_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(13),
      Q => sw_2_ff(13)
    );
\sw_2_ff_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(14),
      Q => sw_2_ff(14)
    );
\sw_2_ff_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(15),
      Q => sw_2_ff(15)
    );
\sw_2_ff_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(16),
      Q => sw_2_ff(16)
    );
\sw_2_ff_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(17),
      Q => sw_2_ff(17)
    );
\sw_2_ff_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(18),
      Q => sw_2_ff(18)
    );
\sw_2_ff_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(19),
      Q => sw_2_ff(19)
    );
\sw_2_ff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(1),
      Q => sw_2_ff(1)
    );
\sw_2_ff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(2),
      Q => sw_2_ff(2)
    );
\sw_2_ff_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(3),
      Q => sw_2_ff(3)
    );
\sw_2_ff_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(4),
      Q => sw_2_ff(4)
    );
\sw_2_ff_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(5),
      Q => sw_2_ff(5)
    );
\sw_2_ff_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(6),
      Q => sw_2_ff(6)
    );
\sw_2_ff_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(7),
      Q => sw_2_ff(7)
    );
\sw_2_ff_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(8),
      Q => sw_2_ff(8)
    );
\sw_2_ff_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \sw_1_ff[31]_i_1_n_0\,
      D => sw_2(9),
      Q => sw_2_ff(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    \scan_sel_reg[3]\ : out STD_LOGIC;
    \scan_sel_reg[2]\ : out STD_LOGIC;
    \scan_sel_reg[1]\ : out STD_LOGIC;
    \scan_sel_reg[0]\ : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 31 downto 0 );
    seg_data : out STD_LOGIC_VECTOR ( 6 downto 0 );
    txd : out STD_LOGIC;
    clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    sw_2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxd : in STD_LOGIC;
    sw_1 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
begin
MiniMIPS32_Lite_FullSyS0: entity work.design_1_top_0_0_MiniMIPS32_Lite_FullSyS
     port map (
      btn(7 downto 0) => btn(7 downto 0),
      clk => clk,
      led(31 downto 0) => led(31 downto 0),
      locked => locked,
      rxd => rxd,
      \scan_sel_reg[0]\ => \scan_sel_reg[0]\,
      \scan_sel_reg[1]\ => \scan_sel_reg[1]\,
      \scan_sel_reg[2]\ => \scan_sel_reg[2]\,
      \scan_sel_reg[3]\ => \scan_sel_reg[3]\,
      seg_data(6 downto 0) => seg_data(6 downto 0),
      sw_1(31 downto 0) => sw_1(31 downto 0),
      sw_2(19 downto 0) => sw_2(19 downto 0),
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    rxd : in STD_LOGIC;
    txd : out STD_LOGIC;
    sw_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sw_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 31 downto 0 );
    seg_cs : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2018.3";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^seg_data\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  seg_data(7) <= \<const1>\;
  seg_data(6 downto 0) <= \^seg_data\(6 downto 0);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_top_0_0_top
     port map (
      btn(7 downto 0) => btn(7 downto 0),
      clk => clk,
      led(31 downto 0) => led(31 downto 0),
      locked => locked,
      rxd => rxd,
      \scan_sel_reg[0]\ => seg_cs(0),
      \scan_sel_reg[1]\ => seg_cs(1),
      \scan_sel_reg[2]\ => seg_cs(2),
      \scan_sel_reg[3]\ => seg_cs(3),
      seg_data(6 downto 0) => \^seg_data\(6 downto 0),
      sw_1(31 downto 0) => sw_1(31 downto 0),
      sw_2(19 downto 0) => sw_2(19 downto 0),
      txd => txd
    );
end STRUCTURE;
