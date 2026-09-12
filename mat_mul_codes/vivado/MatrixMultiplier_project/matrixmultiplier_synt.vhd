-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Sat Apr 12 19:04:57 2025
-- Host        : Eleni-s running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim ./matrixmultiplier_synt.vhd
-- Design      : MatrixMultiplier_Wrapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MatrixLUT_A is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \row_counter_reg[2]\ : out STD_LOGIC;
    \row_counter_reg[2]_0\ : out STD_LOGIC;
    \row_counter_reg[2]_1\ : out STD_LOGIC;
    \row_counter_reg[2]_2\ : out STD_LOGIC;
    \row_counter_reg[3]\ : out STD_LOGIC;
    \row_counter_reg[2]_3\ : out STD_LOGIC;
    \row_counter_reg[2]_4\ : out STD_LOGIC;
    \row_counter_reg[2]_5\ : out STD_LOGIC;
    \curr_state_reg[2]\ : out STD_LOGIC;
    \row_counter_reg[1]\ : out STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    C : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \dot_product[3]_i_6\ : in STD_LOGIC;
    \dot_product[3]_i_6_0\ : in STD_LOGIC;
    \dot_product[7]_i_7\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \LUT_reg[0][2]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \LUT_reg[8][2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][0]_0\ : in STD_LOGIC;
    \LUT_reg[8][0]_1\ : in STD_LOGIC;
    \LUT_reg[8][2]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end MatrixLUT_A;

architecture STRUCTURE of MatrixLUT_A is
  signal \LUT[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[8][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT_reg[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[4]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[5]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[6]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[7]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LUT_reg[8]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^curr_state_reg[2]\ : STD_LOGIC;
  signal data_in_A : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dot_product[3]_i_23_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_24_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_25_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_26_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_27_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_28_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_29_n_0\ : STD_LOGIC;
  signal \dot_product_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \dot_product_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \dot_product_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \dot_product_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \^row_counter_reg[1]\ : STD_LOGIC;
  signal \^row_counter_reg[2]_0\ : STD_LOGIC;
  signal \^row_counter_reg[2]_2\ : STD_LOGIC;
  signal \^row_counter_reg[3]\ : STD_LOGIC;
  signal \NLW_dot_product_reg[8]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dot_product_reg[8]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LUT[0][2]_i_3__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \LUT[1][2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \LUT[2][2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dot_product[3]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dot_product[3]_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dot_product[3]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dot_product[3]_i_27\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dot_product[7]_i_8\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \dot_product_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \dot_product_reg[8]_i_3\ : label is 35;
begin
  \curr_state_reg[2]\ <= \^curr_state_reg[2]\;
  \row_counter_reg[1]\ <= \^row_counter_reg[1]\;
  \row_counter_reg[2]_0\ <= \^row_counter_reg[2]_0\;
  \row_counter_reg[2]_2\ <= \^row_counter_reg[2]_2\;
  \row_counter_reg[3]\ <= \^row_counter_reg[3]\;
\LUT[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \^row_counter_reg[1]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[0]\(0),
      O => \LUT[0][0]_i_1_n_0\
    );
\LUT[0][0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \LUT_reg[8][2]_0\(0),
      I1 => \LUT_reg[8][2]_1\(0),
      I2 => \LUT_reg[8][0]_0\,
      I3 => \LUT_reg[8][0]_1\,
      I4 => \LUT_reg[8][2]_2\(0),
      O => data_in_A(0)
    );
\LUT[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \^row_counter_reg[1]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[0]\(1),
      O => \LUT[0][1]_i_1_n_0\
    );
\LUT[0][1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CAF0CA0"
    )
        port map (
      I0 => \LUT_reg[8][2]_1\(1),
      I1 => \LUT_reg[8][2]_2\(1),
      I2 => \LUT_reg[8][0]_0\,
      I3 => \LUT_reg[8][0]_1\,
      I4 => \LUT_reg[8][2]_0\(1),
      O => data_in_A(1)
    );
\LUT[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \^row_counter_reg[1]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[0]\(2),
      O => \LUT[0][2]_i_1_n_0\
    );
\LUT[0][2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACF0AC0"
    )
        port map (
      I0 => \LUT_reg[8][2]_2\(2),
      I1 => \LUT_reg[8][2]_1\(2),
      I2 => \LUT_reg[8][0]_0\,
      I3 => \LUT_reg[8][0]_1\,
      I4 => \LUT_reg[8][2]_0\(2),
      O => data_in_A(2)
    );
\LUT[0][2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \LUT_reg[0][2]_0\(1),
      I1 => \LUT_reg[0][2]_0\(0),
      O => \^curr_state_reg[2]\
    );
\LUT[0][2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \^row_counter_reg[1]\
    );
\LUT[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \LUT[1][2]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[1]\(0),
      O => \LUT[1][0]_i_1_n_0\
    );
\LUT[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \LUT[1][2]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[1]\(1),
      O => \LUT[1][1]_i_1_n_0\
    );
\LUT[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \LUT[1][2]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[1]\(2),
      O => \LUT[1][2]_i_1_n_0\
    );
\LUT[1][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \LUT[1][2]_i_2_n_0\
    );
\LUT[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \LUT[2][2]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[2]\(0),
      O => \LUT[2][0]_i_1_n_0\
    );
\LUT[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \LUT[2][2]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[2]\(1),
      O => \LUT[2][1]_i_1_n_0\
    );
\LUT[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \LUT[2][2]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^curr_state_reg[2]\,
      I5 => \LUT_reg[2]\(2),
      O => \LUT[2][2]_i_1_n_0\
    );
\LUT[2][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \LUT[2][2]_i_2_n_0\
    );
\LUT[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^curr_state_reg[2]\,
      I4 => \LUT[3][2]_i_2_n_0\,
      I5 => \LUT_reg[3]\(0),
      O => \LUT[3][0]_i_1_n_0\
    );
\LUT[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^curr_state_reg[2]\,
      I4 => \LUT[3][2]_i_2_n_0\,
      I5 => \LUT_reg[3]\(1),
      O => \LUT[3][1]_i_1_n_0\
    );
\LUT[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \^curr_state_reg[2]\,
      I4 => \LUT[3][2]_i_2_n_0\,
      I5 => \LUT_reg[3]\(2),
      O => \LUT[3][2]_i_1_n_0\
    );
\LUT[3][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \LUT[3][2]_i_2_n_0\
    );
\LUT[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \^curr_state_reg[2]\,
      I2 => \^row_counter_reg[1]\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg[4]\(0),
      O => \LUT[4][0]_i_1_n_0\
    );
\LUT[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \^curr_state_reg[2]\,
      I2 => \^row_counter_reg[1]\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg[4]\(1),
      O => \LUT[4][1]_i_1_n_0\
    );
\LUT[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \^curr_state_reg[2]\,
      I2 => \^row_counter_reg[1]\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg[4]\(2),
      O => \LUT[4][2]_i_1_n_0\
    );
\LUT[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \LUT[1][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[5]\(0),
      O => \LUT[5][0]_i_1_n_0\
    );
\LUT[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \LUT[1][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[5]\(1),
      O => \LUT[5][1]_i_1_n_0\
    );
\LUT[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \LUT[1][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[5]\(2),
      O => \LUT[5][2]_i_1_n_0\
    );
\LUT[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \LUT[2][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[6]\(0),
      O => \LUT[6][0]_i_1_n_0\
    );
\LUT[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \LUT[2][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[6]\(1),
      O => \LUT[6][1]_i_1_n_0\
    );
\LUT[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \LUT[2][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[6]\(2),
      O => \LUT[6][2]_i_1_n_0\
    );
\LUT[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \LUT[3][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[7]\(0),
      O => \LUT[7][0]_i_1_n_0\
    );
\LUT[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \LUT[3][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[7]\(1),
      O => \LUT[7][1]_i_1_n_0\
    );
\LUT[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \LUT[3][2]_i_2_n_0\,
      I2 => \^curr_state_reg[2]\,
      I3 => Q(3),
      I4 => Q(2),
      I5 => \LUT_reg[7]\(2),
      O => \LUT[7][2]_i_1_n_0\
    );
\LUT[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(0),
      I1 => \^curr_state_reg[2]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^row_counter_reg[1]\,
      I5 => \LUT_reg[8]\(0),
      O => \LUT[8][0]_i_1_n_0\
    );
\LUT[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(1),
      I1 => \^curr_state_reg[2]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^row_counter_reg[1]\,
      I5 => \LUT_reg[8]\(1),
      O => \LUT[8][1]_i_1_n_0\
    );
\LUT[8][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => data_in_A(2),
      I1 => \^curr_state_reg[2]\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \^row_counter_reg[1]\,
      I5 => \LUT_reg[8]\(2),
      O => \LUT[8][2]_i_1_n_0\
    );
\LUT_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[0][0]_i_1_n_0\,
      Q => \LUT_reg[0]\(0)
    );
\LUT_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[0][1]_i_1_n_0\,
      Q => \LUT_reg[0]\(1)
    );
\LUT_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[0][2]_i_1_n_0\,
      Q => \LUT_reg[0]\(2)
    );
\LUT_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[1][0]_i_1_n_0\,
      Q => \LUT_reg[1]\(0)
    );
\LUT_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[1][1]_i_1_n_0\,
      Q => \LUT_reg[1]\(1)
    );
\LUT_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[1][2]_i_1_n_0\,
      Q => \LUT_reg[1]\(2)
    );
\LUT_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[2][0]_i_1_n_0\,
      Q => \LUT_reg[2]\(0)
    );
\LUT_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[2][1]_i_1_n_0\,
      Q => \LUT_reg[2]\(1)
    );
\LUT_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[2][2]_i_1_n_0\,
      Q => \LUT_reg[2]\(2)
    );
\LUT_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[3][0]_i_1_n_0\,
      Q => \LUT_reg[3]\(0)
    );
\LUT_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[3][1]_i_1_n_0\,
      Q => \LUT_reg[3]\(1)
    );
\LUT_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[3][2]_i_1_n_0\,
      Q => \LUT_reg[3]\(2)
    );
\LUT_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[4][0]_i_1_n_0\,
      Q => \LUT_reg[4]\(0)
    );
\LUT_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[4][1]_i_1_n_0\,
      Q => \LUT_reg[4]\(1)
    );
\LUT_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[4][2]_i_1_n_0\,
      Q => \LUT_reg[4]\(2)
    );
\LUT_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[5][0]_i_1_n_0\,
      Q => \LUT_reg[5]\(0)
    );
\LUT_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[5][1]_i_1_n_0\,
      Q => \LUT_reg[5]\(1)
    );
\LUT_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[5][2]_i_1_n_0\,
      Q => \LUT_reg[5]\(2)
    );
\LUT_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[6][0]_i_1_n_0\,
      Q => \LUT_reg[6]\(0)
    );
\LUT_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[6][1]_i_1_n_0\,
      Q => \LUT_reg[6]\(1)
    );
\LUT_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[6][2]_i_1_n_0\,
      Q => \LUT_reg[6]\(2)
    );
\LUT_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[7][0]_i_1_n_0\,
      Q => \LUT_reg[7]\(0)
    );
\LUT_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[7][1]_i_1_n_0\,
      Q => \LUT_reg[7]\(1)
    );
\LUT_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[7][2]_i_1_n_0\,
      Q => \LUT_reg[7]\(2)
    );
\LUT_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[8][0]_i_1_n_0\,
      Q => \LUT_reg[8]\(0)
    );
\LUT_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[8][1]_i_1_n_0\,
      Q => \LUT_reg[8]\(1)
    );
\LUT_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[8][2]_i_1_n_0\,
      Q => \LUT_reg[8]\(2)
    );
\dot_product[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \^row_counter_reg[2]_2\,
      I1 => \dot_product[3]_i_6\,
      I2 => \^row_counter_reg[3]\,
      I3 => \dot_product[3]_i_6_0\,
      O => \row_counter_reg[2]_5\
    );
\dot_product[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^row_counter_reg[2]_2\,
      I1 => \dot_product[3]_i_6\,
      I2 => \dot_product[3]_i_6_0\,
      I3 => \^row_counter_reg[2]_0\,
      O => \row_counter_reg[2]_3\
    );
\dot_product[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => Q(2),
      I1 => \dot_product[3]_i_23_n_0\,
      I2 => \dot_product[3]_i_24_n_0\,
      I3 => Q(3),
      I4 => \LUT_reg[8]\(2),
      O => \^row_counter_reg[2]_0\
    );
\dot_product[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7877"
    )
        port map (
      I0 => \^row_counter_reg[2]_2\,
      I1 => \dot_product[3]_i_6_0\,
      I2 => \^row_counter_reg[3]\,
      I3 => \dot_product[3]_i_6\,
      O => \row_counter_reg[2]_4\
    );
\dot_product[3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => Q(2),
      I1 => \dot_product[3]_i_25_n_0\,
      I2 => \dot_product[3]_i_26_n_0\,
      I3 => Q(3),
      I4 => \LUT_reg[8]\(1),
      O => \^row_counter_reg[2]_2\
    );
\dot_product[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00EEE0EEE0EEE"
    )
        port map (
      I0 => \dot_product[3]_i_27_n_0\,
      I1 => \dot_product[3]_i_28_n_0\,
      I2 => Q(3),
      I3 => \LUT_reg[8]\(0),
      I4 => \dot_product[3]_i_29_n_0\,
      I5 => Q(2),
      O => \^row_counter_reg[3]\
    );
\dot_product[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg[1]\(2),
      I1 => \LUT_reg[3]\(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT_reg[0]\(2),
      I5 => \LUT_reg[2]\(2),
      O => \dot_product[3]_i_23_n_0\
    );
\dot_product[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg[5]\(2),
      I1 => \LUT_reg[7]\(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT_reg[4]\(2),
      I5 => \LUT_reg[6]\(2),
      O => \dot_product[3]_i_24_n_0\
    );
\dot_product[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg[1]\(1),
      I1 => \LUT_reg[3]\(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT_reg[0]\(1),
      I5 => \LUT_reg[2]\(1),
      O => \dot_product[3]_i_25_n_0\
    );
\dot_product[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg[5]\(1),
      I1 => \LUT_reg[7]\(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT_reg[4]\(1),
      I5 => \LUT_reg[6]\(1),
      O => \dot_product[3]_i_26_n_0\
    );
\dot_product[3]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0530"
    )
        port map (
      I0 => \LUT_reg[1]\(0),
      I1 => \LUT_reg[2]\(0),
      I2 => Q(1),
      I3 => Q(0),
      O => \dot_product[3]_i_27_n_0\
    );
\dot_product[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEEEEEEEEEFEF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \LUT_reg[0]\(0),
      I3 => \LUT_reg[3]\(0),
      I4 => Q(1),
      I5 => Q(0),
      O => \dot_product[3]_i_28_n_0\
    );
\dot_product[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg[5]\(0),
      I1 => \LUT_reg[7]\(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT_reg[4]\(0),
      I5 => \LUT_reg[6]\(0),
      O => \dot_product[3]_i_29_n_0\
    );
\dot_product[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^row_counter_reg[2]_0\,
      I1 => \dot_product[3]_i_6\,
      O => \row_counter_reg[2]\
    );
\dot_product[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000802000E880"
    )
        port map (
      I0 => \^row_counter_reg[2]_2\,
      I1 => \dot_product[3]_i_6\,
      I2 => \dot_product[3]_i_6_0\,
      I3 => \^row_counter_reg[2]_0\,
      I4 => \^row_counter_reg[3]\,
      I5 => \dot_product[7]_i_7\,
      O => \row_counter_reg[2]_1\
    );
\dot_product_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3) => \dot_product_reg[7]_i_1_n_0\,
      CO(2) => \dot_product_reg[7]_i_1_n_1\,
      CO(1) => \dot_product_reg[7]_i_1_n_2\,
      CO(0) => \dot_product_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => C(1 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 2) => C(3 downto 2),
      S(1 downto 0) => S(1 downto 0)
    );
\dot_product_reg[8]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \dot_product_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_dot_product_reg[8]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_dot_product_reg[8]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => D(4),
      S(3 downto 1) => B"000",
      S(0) => C(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MatrixLUT_B is
  port (
    \col_counter_reg[3]\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \col_counter_reg[3]_0\ : out STD_LOGIC;
    \col_counter_reg[2]\ : out STD_LOGIC;
    \col_counter_reg[2]_0\ : out STD_LOGIC;
    \col_counter_reg[2]_1\ : out STD_LOGIC;
    \col_counter_reg[2]_2\ : out STD_LOGIC;
    \dot_product_reg[3]\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dot_product_reg[3]_0\ : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \dot_product[3]_i_8\ : in STD_LOGIC;
    \dot_product[3]_i_7_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \LUT_reg[8][2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][0]_0\ : in STD_LOGIC;
    \LUT_reg[8][0]_1\ : in STD_LOGIC;
    \LUT_reg[8][2]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[0][2]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end MatrixLUT_B;

architecture STRUCTURE of MatrixLUT_B is
  signal \LUT[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \LUT[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[1][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \LUT[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[3][2]_i_2__0_n_0\ : STD_LOGIC;
  signal \LUT[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[5][2]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \LUT[8][2]_i_1_n_0\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \^col_counter_reg[2]\ : STD_LOGIC;
  signal \^col_counter_reg[2]_0\ : STD_LOGIC;
  signal \^col_counter_reg[3]\ : STD_LOGIC;
  signal data_in_B : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dot_product[3]_i_16_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_20_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_21_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_22_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_7_n_0\ : STD_LOGIC;
  signal \dot_product[7]_i_13_n_0\ : STD_LOGIC;
  signal \dot_product[7]_i_14_n_0\ : STD_LOGIC;
  signal \dot_product[7]_i_15_n_0\ : STD_LOGIC;
  signal \dot_product[7]_i_16_n_0\ : STD_LOGIC;
  signal \dot_product_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \dot_product_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \dot_product_reg[3]_i_1_n_3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LUT[0][2]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \LUT[1][2]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \LUT[5][2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dot_product[3]_i_16\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dot_product[3]_i_18\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dot_product[3]_i_20\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dot_product[7]_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dot_product[7]_i_12\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \dot_product_reg[3]_i_1\ : label is 35;
begin
  \col_counter_reg[2]\ <= \^col_counter_reg[2]\;
  \col_counter_reg[2]_0\ <= \^col_counter_reg[2]_0\;
  \col_counter_reg[3]\ <= \^col_counter_reg[3]\;
\LUT[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \LUT[0][2]_i_4_n_0\,
      I5 => \LUT_reg_n_0_[0][0]\,
      O => \LUT[0][0]_i_1_n_0\
    );
\LUT[0][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \LUT_reg[8][2]_0\(0),
      I1 => \LUT_reg[8][2]_1\(0),
      I2 => \LUT_reg[8][0]_0\,
      I3 => \LUT_reg[8][0]_1\,
      I4 => \LUT_reg[8][2]_2\(0),
      O => data_in_B(0)
    );
\LUT[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \LUT[0][2]_i_4_n_0\,
      I5 => \LUT_reg_n_0_[0][1]\,
      O => \LUT[0][1]_i_1_n_0\
    );
\LUT[0][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0ACF0AC0"
    )
        port map (
      I0 => \LUT_reg[8][2]_1\(1),
      I1 => \LUT_reg[8][2]_2\(1),
      I2 => \LUT_reg[8][0]_1\,
      I3 => \LUT_reg[8][0]_0\,
      I4 => \LUT_reg[8][2]_0\(1),
      O => data_in_B(1)
    );
\LUT[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => \LUT[0][2]_i_4_n_0\,
      I5 => \LUT_reg_n_0_[0][2]\,
      O => \LUT[0][2]_i_1_n_0\
    );
\LUT[0][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => \LUT_reg[8][2]_0\(2),
      I1 => \LUT_reg[8][2]_2\(2),
      I2 => \LUT_reg[8][0]_1\,
      I3 => \LUT_reg[8][0]_0\,
      I4 => \LUT_reg[8][2]_1\(2),
      O => data_in_B(2)
    );
\LUT[0][2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \LUT[0][2]_i_4_n_0\
    );
\LUT[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT[1][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[1][0]\,
      O => \LUT[1][0]_i_1_n_0\
    );
\LUT[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT[1][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[1][1]\,
      O => \LUT[1][1]_i_1_n_0\
    );
\LUT[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT[1][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[1][2]\,
      O => \LUT[1][2]_i_1_n_0\
    );
\LUT[1][2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \LUT[1][2]_i_2__0_n_0\
    );
\LUT[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \LUT[1][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[2][0]\,
      O => \LUT[2][0]_i_1_n_0\
    );
\LUT[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \LUT[1][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[2][1]\,
      O => \LUT[2][1]_i_1_n_0\
    );
\LUT[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \LUT[1][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[2][2]\,
      O => \LUT[2][2]_i_1_n_0\
    );
\LUT[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in_B(0),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \LUT_reg[0][2]_0\,
      I4 => \LUT[3][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[3][0]\,
      O => \LUT[3][0]_i_1_n_0\
    );
\LUT[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in_B(1),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \LUT_reg[0][2]_0\,
      I4 => \LUT[3][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[3][1]\,
      O => \LUT[3][1]_i_1_n_0\
    );
\LUT[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => data_in_B(2),
      I1 => Q(3),
      I2 => Q(2),
      I3 => \LUT_reg[0][2]_0\,
      I4 => \LUT[3][2]_i_2__0_n_0\,
      I5 => \LUT_reg_n_0_[3][2]\,
      O => \LUT[3][2]_i_1_n_0\
    );
\LUT[3][2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \LUT[3][2]_i_2__0_n_0\
    );
\LUT[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT[0][2]_i_4_n_0\,
      I2 => \LUT_reg[0][2]_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg_n_0_[4][0]\,
      O => \LUT[4][0]_i_1_n_0\
    );
\LUT[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT[0][2]_i_4_n_0\,
      I2 => \LUT_reg[0][2]_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg_n_0_[4][1]\,
      O => \LUT[4][1]_i_1_n_0\
    );
\LUT[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT[0][2]_i_4_n_0\,
      I2 => \LUT_reg[0][2]_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg_n_0_[4][2]\,
      O => \LUT[4][2]_i_1_n_0\
    );
\LUT[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT[5][2]_i_2_n_0\,
      I5 => \LUT_reg_n_0_[5][0]\,
      O => \LUT[5][0]_i_1_n_0\
    );
\LUT[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT[5][2]_i_2_n_0\,
      I5 => \LUT_reg_n_0_[5][1]\,
      O => \LUT[5][1]_i_1_n_0\
    );
\LUT[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \LUT[5][2]_i_2_n_0\,
      I5 => \LUT_reg_n_0_[5][2]\,
      O => \LUT[5][2]_i_1_n_0\
    );
\LUT[5][2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \LUT[5][2]_i_2_n_0\
    );
\LUT[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \LUT[5][2]_i_2_n_0\,
      I5 => \LUT_reg_n_0_[6][0]\,
      O => \LUT[6][0]_i_1_n_0\
    );
\LUT[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \LUT[5][2]_i_2_n_0\,
      I5 => \LUT_reg_n_0_[6][1]\,
      O => \LUT[6][1]_i_1_n_0\
    );
\LUT[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT_reg[0][2]_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \LUT[5][2]_i_2_n_0\,
      I5 => \LUT_reg_n_0_[6][2]\,
      O => \LUT[6][2]_i_1_n_0\
    );
\LUT[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_in_B(0),
      I1 => \LUT_reg[0][2]_0\,
      I2 => \LUT[3][2]_i_2__0_n_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg_n_0_[7][0]\,
      O => \LUT[7][0]_i_1_n_0\
    );
\LUT[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_in_B(1),
      I1 => \LUT_reg[0][2]_0\,
      I2 => \LUT[3][2]_i_2__0_n_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg_n_0_[7][1]\,
      O => \LUT[7][1]_i_1_n_0\
    );
\LUT[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => data_in_B(2),
      I1 => \LUT_reg[0][2]_0\,
      I2 => \LUT[3][2]_i_2__0_n_0\,
      I3 => Q(2),
      I4 => Q(3),
      I5 => \LUT_reg_n_0_[7][2]\,
      O => \LUT[7][2]_i_1_n_0\
    );
\LUT[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in_B(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \LUT[0][2]_i_4_n_0\,
      I4 => \LUT_reg[0][2]_0\,
      I5 => \LUT_reg_n_0_[8][0]\,
      O => \LUT[8][0]_i_1_n_0\
    );
\LUT[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in_B(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \LUT[0][2]_i_4_n_0\,
      I4 => \LUT_reg[0][2]_0\,
      I5 => \LUT_reg_n_0_[8][1]\,
      O => \LUT[8][1]_i_1_n_0\
    );
\LUT[8][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => data_in_B(2),
      I1 => Q(2),
      I2 => Q(3),
      I3 => \LUT[0][2]_i_4_n_0\,
      I4 => \LUT_reg[0][2]_0\,
      I5 => \LUT_reg_n_0_[8][2]\,
      O => \LUT[8][2]_i_1_n_0\
    );
\LUT_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[0][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[0][0]\
    );
\LUT_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[0][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[0][1]\
    );
\LUT_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[0][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[0][2]\
    );
\LUT_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[1][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[1][0]\
    );
\LUT_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[1][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[1][1]\
    );
\LUT_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[1][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[1][2]\
    );
\LUT_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[2][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[2][0]\
    );
\LUT_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[2][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[2][1]\
    );
\LUT_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[2][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[2][2]\
    );
\LUT_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[3][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[3][0]\
    );
\LUT_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[3][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[3][1]\
    );
\LUT_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[3][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[3][2]\
    );
\LUT_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[4][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[4][0]\
    );
\LUT_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[4][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[4][1]\
    );
\LUT_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[4][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[4][2]\
    );
\LUT_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[5][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[5][0]\
    );
\LUT_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[5][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[5][1]\
    );
\LUT_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[5][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[5][2]\
    );
\LUT_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[6][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[6][0]\
    );
\LUT_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[6][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[6][1]\
    );
\LUT_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[6][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[6][2]\
    );
\LUT_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[7][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[7][0]\
    );
\LUT_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[7][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[7][1]\
    );
\LUT_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[7][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[7][2]\
    );
\LUT_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[8][0]_i_1_n_0\,
      Q => \LUT_reg_n_0_[8][0]\
    );
\LUT_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[8][1]_i_1_n_0\,
      Q => \LUT_reg_n_0_[8][1]\
    );
\LUT_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \LUT[8][2]_i_1_n_0\,
      Q => \LUT_reg_n_0_[8][2]\
    );
\dot_product[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFAFFFFBBFFFBFF"
    )
        port map (
      I0 => \^col_counter_reg[3]\,
      I1 => \^col_counter_reg[2]\,
      I2 => \dot_product[3]_i_8\,
      I3 => \dot_product[3]_i_7_0\,
      I4 => \dot_product_reg[3]\,
      I5 => \^col_counter_reg[2]_0\,
      O => \col_counter_reg[3]_0\
    );
\dot_product[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEE0EEE00E00EEE"
    )
        port map (
      I0 => \dot_product[3]_i_20_n_0\,
      I1 => \dot_product[3]_i_21_n_0\,
      I2 => Q(3),
      I3 => \LUT_reg_n_0_[8][0]\,
      I4 => \dot_product[3]_i_22_n_0\,
      I5 => Q(2),
      O => \^col_counter_reg[3]\
    );
\dot_product[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^col_counter_reg[3]\,
      I1 => \^col_counter_reg[2]\,
      I2 => \dot_product[3]_i_8\,
      I3 => \dot_product[3]_i_7_0\,
      O => \dot_product[3]_i_16_n_0\
    );
\dot_product[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^col_counter_reg[2]\,
      I1 => \dot_product[3]_i_8\,
      O => \col_counter_reg[2]_2\
    );
\dot_product[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0530"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][0]\,
      I1 => \LUT_reg_n_0_[6][0]\,
      I2 => Q(1),
      I3 => Q(0),
      O => \dot_product[3]_i_20_n_0\
    );
\dot_product[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFBBBBBBBBBFBF"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \LUT_reg_n_0_[4][0]\,
      I3 => \LUT_reg_n_0_[7][0]\,
      I4 => Q(1),
      I5 => Q(0),
      O => \dot_product[3]_i_21_n_0\
    );
\dot_product[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][0]\,
      I1 => \LUT_reg_n_0_[3][0]\,
      I2 => \LUT_reg_n_0_[0][0]\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \LUT_reg_n_0_[2][0]\,
      O => \dot_product[3]_i_22_n_0\
    );
\dot_product[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => \^col_counter_reg[3]\,
      I1 => \dot_product_reg[3]\,
      I2 => DI(2),
      I3 => \dot_product_reg[3]_0\,
      I4 => \dot_product[3]_i_16_n_0\,
      O => \dot_product[3]_i_7_n_0\
    );
\dot_product[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^col_counter_reg[2]\,
      I1 => \dot_product[3]_i_7_0\,
      O => \col_counter_reg[2]_1\
    );
\dot_product[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \dot_product[7]_i_13_n_0\,
      I1 => Q(2),
      I2 => \dot_product[7]_i_14_n_0\,
      I3 => Q(3),
      I4 => \LUT_reg_n_0_[8][2]\,
      O => \^col_counter_reg[2]_0\
    );
\dot_product[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => \dot_product[7]_i_15_n_0\,
      I1 => Q(2),
      I2 => \dot_product[7]_i_16_n_0\,
      I3 => Q(3),
      I4 => \LUT_reg_n_0_[8][1]\,
      O => \^col_counter_reg[2]\
    );
\dot_product[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][2]\,
      I1 => \LUT_reg_n_0_[3][2]\,
      I2 => \LUT_reg_n_0_[0][2]\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \LUT_reg_n_0_[2][2]\,
      O => \dot_product[7]_i_13_n_0\
    );
\dot_product[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][2]\,
      I1 => \LUT_reg_n_0_[7][2]\,
      I2 => \LUT_reg_n_0_[4][2]\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \LUT_reg_n_0_[6][2]\,
      O => \dot_product[7]_i_14_n_0\
    );
\dot_product[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][1]\,
      I1 => \LUT_reg_n_0_[3][1]\,
      I2 => \LUT_reg_n_0_[0][1]\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \LUT_reg_n_0_[2][1]\,
      O => \dot_product[7]_i_15_n_0\
    );
\dot_product[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][1]\,
      I1 => \LUT_reg_n_0_[7][1]\,
      I2 => \LUT_reg_n_0_[4][1]\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => \LUT_reg_n_0_[6][1]\,
      O => \dot_product[7]_i_16_n_0\
    );
\dot_product_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => \dot_product_reg[3]_i_1_n_1\,
      CO(1) => \dot_product_reg[3]_i_1_n_2\,
      CO(0) => \dot_product_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => S(2),
      S(2) => \dot_product[3]_i_7_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MatrixLUT_C is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[7][0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \LUT_reg[7][8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end MatrixLUT_C;

architecture STRUCTURE of MatrixLUT_C is
  signal \C_row_internal[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][2]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][3]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][4]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][5]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][6]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][6]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][7]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][8]_i_3_n_0\ : STD_LOGIC;
  signal \C_row_internal[2][8]_i_4_n_0\ : STD_LOGIC;
  signal \LUT[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[0]_8\ : STD_LOGIC;
  signal \LUT[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[1]_5\ : STD_LOGIC;
  signal \LUT[2][8]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[2]_3\ : STD_LOGIC;
  signal \LUT[3][8]_i_2_n_0\ : STD_LOGIC;
  signal \LUT[3]_1\ : STD_LOGIC;
  signal \LUT[4]_7\ : STD_LOGIC;
  signal \LUT[5]_4\ : STD_LOGIC;
  signal \LUT[6]_2\ : STD_LOGIC;
  signal \LUT[7]_0\ : STD_LOGIC;
  signal \LUT[8]_6\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \LUT_reg_n_0_[8][8]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LUT[0][8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \LUT[1][8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \LUT[2][8]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \LUT[3][8]_i_2\ : label is "soft_lutpair9";
begin
\C_row_internal[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][0]_i_2_n_0\,
      I2 => \C_row_internal[2][0]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][0]\,
      O => D(0)
    );
\C_row_internal[2][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][0]\,
      I1 => \LUT_reg_n_0_[3][0]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][0]\,
      I5 => \LUT_reg_n_0_[2][0]\,
      O => \C_row_internal[2][0]_i_2_n_0\
    );
\C_row_internal[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][0]\,
      I1 => \LUT_reg_n_0_[7][0]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][0]\,
      I5 => \LUT_reg_n_0_[6][0]\,
      O => \C_row_internal[2][0]_i_3_n_0\
    );
\C_row_internal[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][1]_i_2_n_0\,
      I2 => \C_row_internal[2][1]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][1]\,
      O => D(1)
    );
\C_row_internal[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][1]\,
      I1 => \LUT_reg_n_0_[3][1]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][1]\,
      I5 => \LUT_reg_n_0_[2][1]\,
      O => \C_row_internal[2][1]_i_2_n_0\
    );
\C_row_internal[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][1]\,
      I1 => \LUT_reg_n_0_[7][1]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][1]\,
      I5 => \LUT_reg_n_0_[6][1]\,
      O => \C_row_internal[2][1]_i_3_n_0\
    );
\C_row_internal[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][2]_i_2_n_0\,
      I2 => \C_row_internal[2][2]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][2]\,
      O => D(2)
    );
\C_row_internal[2][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][2]\,
      I1 => \LUT_reg_n_0_[3][2]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][2]\,
      I5 => \LUT_reg_n_0_[2][2]\,
      O => \C_row_internal[2][2]_i_2_n_0\
    );
\C_row_internal[2][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][2]\,
      I1 => \LUT_reg_n_0_[7][2]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][2]\,
      I5 => \LUT_reg_n_0_[6][2]\,
      O => \C_row_internal[2][2]_i_3_n_0\
    );
\C_row_internal[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][3]_i_2_n_0\,
      I2 => \C_row_internal[2][3]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][3]\,
      O => D(3)
    );
\C_row_internal[2][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][3]\,
      I1 => \LUT_reg_n_0_[3][3]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][3]\,
      I5 => \LUT_reg_n_0_[2][3]\,
      O => \C_row_internal[2][3]_i_2_n_0\
    );
\C_row_internal[2][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][3]\,
      I1 => \LUT_reg_n_0_[7][3]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][3]\,
      I5 => \LUT_reg_n_0_[6][3]\,
      O => \C_row_internal[2][3]_i_3_n_0\
    );
\C_row_internal[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][4]_i_2_n_0\,
      I2 => \C_row_internal[2][4]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][4]\,
      O => D(4)
    );
\C_row_internal[2][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][4]\,
      I1 => \LUT_reg_n_0_[3][4]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][4]\,
      I5 => \LUT_reg_n_0_[2][4]\,
      O => \C_row_internal[2][4]_i_2_n_0\
    );
\C_row_internal[2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][4]\,
      I1 => \LUT_reg_n_0_[7][4]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][4]\,
      I5 => \LUT_reg_n_0_[6][4]\,
      O => \C_row_internal[2][4]_i_3_n_0\
    );
\C_row_internal[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][5]_i_2_n_0\,
      I2 => \C_row_internal[2][5]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][5]\,
      O => D(5)
    );
\C_row_internal[2][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][5]\,
      I1 => \LUT_reg_n_0_[3][5]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][5]\,
      I5 => \LUT_reg_n_0_[2][5]\,
      O => \C_row_internal[2][5]_i_2_n_0\
    );
\C_row_internal[2][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][5]\,
      I1 => \LUT_reg_n_0_[7][5]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][5]\,
      I5 => \LUT_reg_n_0_[6][5]\,
      O => \C_row_internal[2][5]_i_3_n_0\
    );
\C_row_internal[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][6]_i_2_n_0\,
      I2 => \C_row_internal[2][6]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][6]\,
      O => D(6)
    );
\C_row_internal[2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][6]\,
      I1 => \LUT_reg_n_0_[3][6]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][6]\,
      I5 => \LUT_reg_n_0_[2][6]\,
      O => \C_row_internal[2][6]_i_2_n_0\
    );
\C_row_internal[2][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][6]\,
      I1 => \LUT_reg_n_0_[7][6]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][6]\,
      I5 => \LUT_reg_n_0_[6][6]\,
      O => \C_row_internal[2][6]_i_3_n_0\
    );
\C_row_internal[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][7]_i_2_n_0\,
      I2 => \C_row_internal[2][7]_i_3_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][7]\,
      O => D(7)
    );
\C_row_internal[2][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][7]\,
      I1 => \LUT_reg_n_0_[3][7]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][7]\,
      I5 => \LUT_reg_n_0_[2][7]\,
      O => \C_row_internal[2][7]_i_2_n_0\
    );
\C_row_internal[2][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][7]\,
      I1 => \LUT_reg_n_0_[7][7]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][7]\,
      I5 => \LUT_reg_n_0_[6][7]\,
      O => \C_row_internal[2][7]_i_3_n_0\
    );
\C_row_internal[2][8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \C_row_internal[2][8]_i_3_n_0\,
      I2 => \C_row_internal[2][8]_i_4_n_0\,
      I3 => \LUT_reg[7][0]_0\(3),
      I4 => \LUT_reg_n_0_[8][8]\,
      O => D(8)
    );
\C_row_internal[2][8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[1][8]\,
      I1 => \LUT_reg_n_0_[3][8]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[0][8]\,
      I5 => \LUT_reg_n_0_[2][8]\,
      O => \C_row_internal[2][8]_i_3_n_0\
    );
\C_row_internal[2][8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \LUT_reg_n_0_[5][8]\,
      I1 => \LUT_reg_n_0_[7][8]\,
      I2 => \LUT_reg[7][0]_0\(0),
      I3 => \LUT_reg[7][0]_0\(1),
      I4 => \LUT_reg_n_0_[4][8]\,
      I5 => \LUT_reg_n_0_[6][8]\,
      O => \C_row_internal[2][8]_i_4_n_0\
    );
\LUT[0][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(3),
      I1 => \LUT_reg[7][0]_0\(2),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \LUT[0][8]_i_2_n_0\,
      O => \LUT[0]_8\
    );
\LUT[0][8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(1),
      I1 => \LUT_reg[7][0]_0\(0),
      O => \LUT[0][8]_i_2_n_0\
    );
\LUT[1][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(3),
      I1 => \LUT_reg[7][0]_0\(2),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \LUT[1][8]_i_2_n_0\,
      O => \LUT[1]_5\
    );
\LUT[1][8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(0),
      I1 => \LUT_reg[7][0]_0\(1),
      O => \LUT[1][8]_i_2_n_0\
    );
\LUT[2][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(3),
      I1 => \LUT_reg[7][0]_0\(2),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \LUT[2][8]_i_2_n_0\,
      O => \LUT[2]_3\
    );
\LUT[2][8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(1),
      I1 => \LUT_reg[7][0]_0\(0),
      O => \LUT[2][8]_i_2_n_0\
    );
\LUT[3][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \LUT_reg[7][0]_0\(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \LUT[3][8]_i_2_n_0\,
      O => \LUT[3]_1\
    );
\LUT[3][8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(1),
      I1 => \LUT_reg[7][0]_0\(0),
      O => \LUT[3][8]_i_2_n_0\
    );
\LUT[4][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \LUT[0][8]_i_2_n_0\,
      I4 => \LUT_reg[7][0]_0\(2),
      I5 => \LUT_reg[7][0]_0\(3),
      O => \LUT[4]_7\
    );
\LUT[5][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \LUT[1][8]_i_2_n_0\,
      I4 => \LUT_reg[7][0]_0\(2),
      I5 => \LUT_reg[7][0]_0\(3),
      O => \LUT[5]_4\
    );
\LUT[6][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \LUT[2][8]_i_2_n_0\,
      I4 => \LUT_reg[7][0]_0\(2),
      I5 => \LUT_reg[7][0]_0\(3),
      O => \LUT[6]_2\
    );
\LUT[7][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \LUT[3][8]_i_2_n_0\,
      I4 => \LUT_reg[7][0]_0\(2),
      I5 => \LUT_reg[7][0]_0\(3),
      O => \LUT[7]_0\
    );
\LUT[8][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \LUT_reg[7][0]_0\(2),
      I1 => \LUT_reg[7][0]_0\(3),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \LUT[0][8]_i_2_n_0\,
      O => \LUT[8]_6\
    );
\LUT_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[0][0]\
    );
\LUT_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[0][1]\
    );
\LUT_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[0][2]\
    );
\LUT_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[0][3]\
    );
\LUT_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[0][4]\
    );
\LUT_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[0][5]\
    );
\LUT_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[0][6]\
    );
\LUT_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[0][7]\
    );
\LUT_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[0]_8\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[0][8]\
    );
\LUT_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[1][0]\
    );
\LUT_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[1][1]\
    );
\LUT_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[1][2]\
    );
\LUT_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[1][3]\
    );
\LUT_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[1][4]\
    );
\LUT_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[1][5]\
    );
\LUT_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[1][6]\
    );
\LUT_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[1][7]\
    );
\LUT_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[1]_5\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[1][8]\
    );
\LUT_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[2][0]\
    );
\LUT_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[2][1]\
    );
\LUT_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[2][2]\
    );
\LUT_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[2][3]\
    );
\LUT_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[2][4]\
    );
\LUT_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[2][5]\
    );
\LUT_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[2][6]\
    );
\LUT_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[2][7]\
    );
\LUT_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[2]_3\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[2][8]\
    );
\LUT_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[3][0]\
    );
\LUT_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[3][1]\
    );
\LUT_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[3][2]\
    );
\LUT_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[3][3]\
    );
\LUT_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[3][4]\
    );
\LUT_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[3][5]\
    );
\LUT_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[3][6]\
    );
\LUT_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[3][7]\
    );
\LUT_reg[3][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[3]_1\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[3][8]\
    );
\LUT_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[4][0]\
    );
\LUT_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[4][1]\
    );
\LUT_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[4][2]\
    );
\LUT_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[4][3]\
    );
\LUT_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[4][4]\
    );
\LUT_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[4][5]\
    );
\LUT_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[4][6]\
    );
\LUT_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[4][7]\
    );
\LUT_reg[4][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[4]_7\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[4][8]\
    );
\LUT_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[5][0]\
    );
\LUT_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[5][1]\
    );
\LUT_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[5][2]\
    );
\LUT_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[5][3]\
    );
\LUT_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[5][4]\
    );
\LUT_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[5][5]\
    );
\LUT_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[5][6]\
    );
\LUT_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[5][7]\
    );
\LUT_reg[5][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[5]_4\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[5][8]\
    );
\LUT_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[6][0]\
    );
\LUT_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[6][1]\
    );
\LUT_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[6][2]\
    );
\LUT_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[6][3]\
    );
\LUT_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[6][4]\
    );
\LUT_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[6][5]\
    );
\LUT_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[6][6]\
    );
\LUT_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[6][7]\
    );
\LUT_reg[6][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[6]_2\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[6][8]\
    );
\LUT_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[7][0]\
    );
\LUT_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[7][1]\
    );
\LUT_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[7][2]\
    );
\LUT_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[7][3]\
    );
\LUT_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[7][4]\
    );
\LUT_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[7][5]\
    );
\LUT_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[7][6]\
    );
\LUT_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[7][7]\
    );
\LUT_reg[7][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[7]_0\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[7][8]\
    );
\LUT_reg[8][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(0),
      Q => \LUT_reg_n_0_[8][0]\
    );
\LUT_reg[8][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(1),
      Q => \LUT_reg_n_0_[8][1]\
    );
\LUT_reg[8][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(2),
      Q => \LUT_reg_n_0_[8][2]\
    );
\LUT_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(3),
      Q => \LUT_reg_n_0_[8][3]\
    );
\LUT_reg[8][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(4),
      Q => \LUT_reg_n_0_[8][4]\
    );
\LUT_reg[8][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(5),
      Q => \LUT_reg_n_0_[8][5]\
    );
\LUT_reg[8][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(6),
      Q => \LUT_reg_n_0_[8][6]\
    );
\LUT_reg[8][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(7),
      Q => \LUT_reg_n_0_[8][7]\
    );
\LUT_reg[8][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \LUT[8]_6\,
      CLR => rst,
      D => \LUT_reg[7][8]_0\(8),
      Q => \LUT_reg_n_0_[8][8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MatrixMultiplier is
  port (
    C_valid_signal : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    C_valid_signal_reg_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    C_valid_signal_reg_1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    K_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    N_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \curr_state[0]_i_2_0\ : in STD_LOGIC;
    \curr_state[0]_i_2_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \LUT_reg[8][2]_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end MatrixMultiplier;

architecture STRUCTURE of MatrixMultiplier is
  signal C : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \C_row_internal[0]_11\ : STD_LOGIC;
  signal \C_row_internal[1]_10\ : STD_LOGIC;
  signal \C_row_internal[2]1\ : STD_LOGIC;
  signal \C_row_internal[2]_9\ : STD_LOGIC;
  signal \C_row_internal_reg[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \C_row_internal_reg[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \C_row_internal_reg[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^c_valid_signal\ : STD_LOGIC;
  signal C_valid_signal_i_1_n_0 : STD_LOGIC;
  signal LUT_A_n_10 : STD_LOGIC;
  signal LUT_A_n_11 : STD_LOGIC;
  signal LUT_A_n_12 : STD_LOGIC;
  signal LUT_A_n_13 : STD_LOGIC;
  signal LUT_A_n_14 : STD_LOGIC;
  signal LUT_A_n_5 : STD_LOGIC;
  signal LUT_A_n_6 : STD_LOGIC;
  signal LUT_A_n_7 : STD_LOGIC;
  signal LUT_A_n_8 : STD_LOGIC;
  signal LUT_A_n_9 : STD_LOGIC;
  signal LUT_B_n_0 : STD_LOGIC;
  signal LUT_B_n_1 : STD_LOGIC;
  signal LUT_B_n_10 : STD_LOGIC;
  signal LUT_B_n_6 : STD_LOGIC;
  signal LUT_B_n_7 : STD_LOGIC;
  signal LUT_B_n_8 : STD_LOGIC;
  signal LUT_B_n_9 : STD_LOGIC;
  signal LUT_C_n_0 : STD_LOGIC;
  signal LUT_C_n_1 : STD_LOGIC;
  signal LUT_C_n_2 : STD_LOGIC;
  signal LUT_C_n_3 : STD_LOGIC;
  signal LUT_C_n_4 : STD_LOGIC;
  signal LUT_C_n_5 : STD_LOGIC;
  signal LUT_C_n_6 : STD_LOGIC;
  signal LUT_C_n_7 : STD_LOGIC;
  signal LUT_C_n_8 : STD_LOGIC;
  signal col_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \col_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \col_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \col_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_10_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_11_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_12_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_6_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_7_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_8_n_0\ : STD_LOGIC;
  signal \col_counter[3]_i_9_n_0\ : STD_LOGIC;
  signal \col_data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \col_data_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \col_data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \col_data_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \col_data_counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \col_data_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_data_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal cols_ok_i_1_n_0 : STD_LOGIC;
  signal cols_ok_i_2_n_0 : STD_LOGIC;
  signal cols_ok_i_3_n_0 : STD_LOGIC;
  signal cols_ok_i_4_n_0 : STD_LOGIC;
  signal cols_ok_reg_n_0 : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \curr_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \curr_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \curr_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \curr_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \curr_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \curr_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \curr_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \curr_state[2]_i_6_n_0\ : STD_LOGIC;
  signal dot_product : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dot_product[3]_i_6_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_8_n_0\ : STD_LOGIC;
  signal \dot_product[3]_i_9_n_0\ : STD_LOGIC;
  signal \dot_product[7]_i_6_n_0\ : STD_LOGIC;
  signal \dot_product[7]_i_7_n_0\ : STD_LOGIC;
  signal \dot_product[8]_i_1_n_0\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[0]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[1]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[2]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[3]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[4]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[5]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[6]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[7]\ : STD_LOGIC;
  signal \dot_product_reg_n_0_[8]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \offset[0]_i_1_n_0\ : STD_LOGIC;
  signal \offset[1]_i_1_n_0\ : STD_LOGIC;
  signal \offset[2]_i_1_n_0\ : STD_LOGIC;
  signal \offset[3]_i_10_n_0\ : STD_LOGIC;
  signal \offset[3]_i_11_n_0\ : STD_LOGIC;
  signal \offset[3]_i_1_n_0\ : STD_LOGIC;
  signal \offset[3]_i_2_n_0\ : STD_LOGIC;
  signal \offset[3]_i_3_n_0\ : STD_LOGIC;
  signal \offset[3]_i_4_n_0\ : STD_LOGIC;
  signal \offset[3]_i_5_n_0\ : STD_LOGIC;
  signal \offset[3]_i_6_n_0\ : STD_LOGIC;
  signal \offset[3]_i_7_n_0\ : STD_LOGIC;
  signal \offset[3]_i_8_n_0\ : STD_LOGIC;
  signal \offset[3]_i_9_n_0\ : STD_LOGIC;
  signal offset_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_data_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal read_data_counter0 : STD_LOGIC;
  signal \read_data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal row_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \row_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \row_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \row_counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \row_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \row_counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_10_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_11_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_12_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_6_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_7_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_8_n_0\ : STD_LOGIC;
  signal \row_counter[3]_i_9_n_0\ : STD_LOGIC;
  signal \row_data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \row_data_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_4_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_5_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_6_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_7_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_8_n_0\ : STD_LOGIC;
  signal \row_data_counter[1]_i_9_n_0\ : STD_LOGIC;
  signal \row_data_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_data_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal rows_ok_i_1_n_0 : STD_LOGIC;
  signal rows_ok_i_2_n_0 : STD_LOGIC;
  signal rows_ok_i_3_n_0 : STD_LOGIC;
  signal rows_ok_i_4_n_0 : STD_LOGIC;
  signal rows_ok_reg_n_0 : STD_LOGIC;
  signal start_multiplication : STD_LOGIC;
  signal sum_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sum_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \sum_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \sum_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal write_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \write_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal write_counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C_valid_signal_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \col_counter[1]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \col_counter[2]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \col_counter[3]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \col_counter[3]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \col_counter[3]_i_12\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \col_counter[3]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \col_counter[3]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \col_counter[3]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \col_counter[3]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \col_counter[3]_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \col_counter[3]_i_9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \col_data_counter[0]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \col_data_counter[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of cols_ok_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \curr_state[0]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \curr_state[1]_i_8\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \curr_state[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \curr_state[2]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \curr_state[2]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \offset[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \offset[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \offset[3]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \offset[3]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \registered_C_row[0][0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \registered_C_row[0][1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \registered_C_row[0][2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \registered_C_row[0][3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \registered_C_row[0][4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \registered_C_row[0][5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \registered_C_row[0][6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \registered_C_row[0][7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \registered_C_row[1][0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \registered_C_row[1][1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \registered_C_row[1][2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \registered_C_row[1][3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \registered_C_row[1][4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \registered_C_row[1][5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \registered_C_row[1][6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \registered_C_row[1][7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \registered_C_row[1][8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \registered_C_row[2][0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \registered_C_row[2][1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \registered_C_row[2][2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \registered_C_row[2][3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \registered_C_row[2][4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \registered_C_row[2][5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \registered_C_row[2][6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \registered_C_row[2][7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \registered_C_row[2][8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \row_counter[0]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \row_counter[1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \row_counter[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \row_counter[2]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \row_counter[3]_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \row_counter[3]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \row_counter[3]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \row_counter[3]_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \row_counter[3]_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \row_data_counter[0]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \row_data_counter[1]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \row_data_counter[1]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \row_data_counter[1]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \row_data_counter[1]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \row_data_counter[1]_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of rows_ok_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_counter[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \write_counter[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \write_counter[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \write_counter[3]_i_2\ : label is "soft_lutpair14";
begin
  C_valid_signal <= \^c_valid_signal\;
\C_row_internal[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => read_data_counter(1),
      I1 => read_data_counter(0),
      I2 => curr_state(2),
      I3 => curr_state(0),
      I4 => curr_state(1),
      O => \C_row_internal[0]_11\
    );
\C_row_internal[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => read_data_counter(1),
      I1 => read_data_counter(0),
      I2 => curr_state(2),
      I3 => curr_state(0),
      I4 => curr_state(1),
      O => \C_row_internal[1]_10\
    );
\C_row_internal[2][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => read_data_counter(0),
      I1 => read_data_counter(1),
      I2 => curr_state(2),
      I3 => curr_state(0),
      I4 => curr_state(1),
      O => \C_row_internal[2]_9\
    );
\C_row_internal_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_8,
      Q => \C_row_internal_reg[0]\(0),
      R => rst
    );
\C_row_internal_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_7,
      Q => \C_row_internal_reg[0]\(1),
      R => rst
    );
\C_row_internal_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_6,
      Q => \C_row_internal_reg[0]\(2),
      R => rst
    );
\C_row_internal_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_5,
      Q => \C_row_internal_reg[0]\(3),
      R => rst
    );
\C_row_internal_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_4,
      Q => \C_row_internal_reg[0]\(4),
      R => rst
    );
\C_row_internal_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_3,
      Q => \C_row_internal_reg[0]\(5),
      R => rst
    );
\C_row_internal_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_2,
      Q => \C_row_internal_reg[0]\(6),
      R => rst
    );
\C_row_internal_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_1,
      Q => \C_row_internal_reg[0]\(7),
      R => rst
    );
\C_row_internal_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[0]_11\,
      D => LUT_C_n_0,
      Q => \C_row_internal_reg[0]\(8),
      R => rst
    );
\C_row_internal_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_8,
      Q => \C_row_internal_reg[1]\(0),
      R => rst
    );
\C_row_internal_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_7,
      Q => \C_row_internal_reg[1]\(1),
      R => rst
    );
\C_row_internal_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_6,
      Q => \C_row_internal_reg[1]\(2),
      R => rst
    );
\C_row_internal_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_5,
      Q => \C_row_internal_reg[1]\(3),
      R => rst
    );
\C_row_internal_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_4,
      Q => \C_row_internal_reg[1]\(4),
      R => rst
    );
\C_row_internal_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_3,
      Q => \C_row_internal_reg[1]\(5),
      R => rst
    );
\C_row_internal_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_2,
      Q => \C_row_internal_reg[1]\(6),
      R => rst
    );
\C_row_internal_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_1,
      Q => \C_row_internal_reg[1]\(7),
      R => rst
    );
\C_row_internal_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[1]_10\,
      D => LUT_C_n_0,
      Q => \C_row_internal_reg[1]\(8),
      R => rst
    );
\C_row_internal_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_8,
      Q => \C_row_internal_reg[2]\(0),
      R => rst
    );
\C_row_internal_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_7,
      Q => \C_row_internal_reg[2]\(1),
      R => rst
    );
\C_row_internal_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_6,
      Q => \C_row_internal_reg[2]\(2),
      R => rst
    );
\C_row_internal_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_5,
      Q => \C_row_internal_reg[2]\(3),
      R => rst
    );
\C_row_internal_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_4,
      Q => \C_row_internal_reg[2]\(4),
      R => rst
    );
\C_row_internal_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_3,
      Q => \C_row_internal_reg[2]\(5),
      R => rst
    );
\C_row_internal_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_2,
      Q => \C_row_internal_reg[2]\(6),
      R => rst
    );
\C_row_internal_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_1,
      Q => \C_row_internal_reg[2]\(7),
      R => rst
    );
\C_row_internal_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \C_row_internal[2]_9\,
      D => LUT_C_n_0,
      Q => \C_row_internal_reg[2]\(8),
      R => rst
    );
C_valid_signal_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAA2A"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => curr_state(2),
      I2 => curr_state(0),
      I3 => curr_state(1),
      I4 => read_data_counter0,
      I5 => rst,
      O => C_valid_signal_i_1_n_0
    );
C_valid_signal_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1284"
    )
        port map (
      I0 => read_data_counter(1),
      I1 => K_size(0),
      I2 => K_size(1),
      I3 => read_data_counter(0),
      O => read_data_counter0
    );
C_valid_signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => C_valid_signal_i_1_n_0,
      Q => \^c_valid_signal\,
      R => '0'
    );
LUT_A: entity work.MatrixLUT_A
     port map (
      C(4 downto 0) => C(8 downto 4),
      CO(0) => LUT_B_n_1,
      D(4 downto 0) => dot_product(8 downto 4),
      \LUT_reg[0][2]_0\(1 downto 0) => curr_state(2 downto 1),
      \LUT_reg[8][0]_0\ => \row_data_counter_reg_n_0_[0]\,
      \LUT_reg[8][0]_1\ => \row_data_counter_reg_n_0_[1]\,
      \LUT_reg[8][2]_0\(2 downto 0) => \LUT_reg[8][2]_1\(2 downto 0),
      \LUT_reg[8][2]_1\(2 downto 0) => \LUT_reg[8][2]_2\(2 downto 0),
      \LUT_reg[8][2]_2\(2 downto 0) => \LUT_reg[8][2]_3\(2 downto 0),
      Q(3 downto 0) => row_counter(3 downto 0),
      S(1) => \dot_product[7]_i_6_n_0\,
      S(0) => \dot_product[7]_i_7_n_0\,
      clk => clk,
      \curr_state_reg[2]\ => LUT_A_n_13,
      \dot_product[3]_i_6\ => LUT_B_n_8,
      \dot_product[3]_i_6_0\ => LUT_B_n_7,
      \dot_product[7]_i_7\ => LUT_B_n_0,
      \row_counter_reg[1]\ => LUT_A_n_14,
      \row_counter_reg[2]\ => LUT_A_n_5,
      \row_counter_reg[2]_0\ => LUT_A_n_6,
      \row_counter_reg[2]_1\ => LUT_A_n_7,
      \row_counter_reg[2]_2\ => LUT_A_n_8,
      \row_counter_reg[2]_3\ => LUT_A_n_10,
      \row_counter_reg[2]_4\ => LUT_A_n_11,
      \row_counter_reg[2]_5\ => LUT_A_n_12,
      \row_counter_reg[3]\ => LUT_A_n_9,
      rst => rst
    );
LUT_B: entity work.MatrixLUT_B
     port map (
      CO(0) => LUT_B_n_1,
      D(3 downto 0) => dot_product(3 downto 0),
      DI(3 downto 0) => C(3 downto 0),
      \LUT_reg[0][2]_0\ => LUT_A_n_13,
      \LUT_reg[8][0]_0\ => \col_data_counter_reg_n_0_[1]\,
      \LUT_reg[8][0]_1\ => \col_data_counter_reg_n_0_[0]\,
      \LUT_reg[8][2]_0\(2 downto 0) => Q(2 downto 0),
      \LUT_reg[8][2]_1\(2 downto 0) => \LUT_reg[8][2]\(2 downto 0),
      \LUT_reg[8][2]_2\(2 downto 0) => \LUT_reg[8][2]_0\(2 downto 0),
      Q(3 downto 0) => col_counter(3 downto 0),
      S(2) => \dot_product[3]_i_6_n_0\,
      S(1) => \dot_product[3]_i_8_n_0\,
      S(0) => \dot_product[3]_i_9_n_0\,
      clk => clk,
      \col_counter_reg[2]\ => LUT_B_n_7,
      \col_counter_reg[2]_0\ => LUT_B_n_8,
      \col_counter_reg[2]_1\ => LUT_B_n_9,
      \col_counter_reg[2]_2\ => LUT_B_n_10,
      \col_counter_reg[3]\ => LUT_B_n_0,
      \col_counter_reg[3]_0\ => LUT_B_n_6,
      \dot_product[3]_i_7_0\ => LUT_A_n_8,
      \dot_product[3]_i_8\ => LUT_A_n_9,
      \dot_product_reg[3]\ => LUT_A_n_6,
      \dot_product_reg[3]_0\ => LUT_A_n_11,
      rst => rst
    );
LUT_C: entity work.MatrixLUT_C
     port map (
      D(8) => LUT_C_n_0,
      D(7) => LUT_C_n_1,
      D(6) => LUT_C_n_2,
      D(5) => LUT_C_n_3,
      D(4) => LUT_C_n_4,
      D(3) => LUT_C_n_5,
      D(2) => LUT_C_n_6,
      D(1) => LUT_C_n_7,
      D(0) => LUT_C_n_8,
      \LUT_reg[7][0]_0\(3 downto 0) => write_counter_reg(3 downto 0),
      \LUT_reg[7][8]_0\(8) => \dot_product_reg_n_0_[8]\,
      \LUT_reg[7][8]_0\(7) => \dot_product_reg_n_0_[7]\,
      \LUT_reg[7][8]_0\(6) => \dot_product_reg_n_0_[6]\,
      \LUT_reg[7][8]_0\(5) => \dot_product_reg_n_0_[5]\,
      \LUT_reg[7][8]_0\(4) => \dot_product_reg_n_0_[4]\,
      \LUT_reg[7][8]_0\(3) => \dot_product_reg_n_0_[3]\,
      \LUT_reg[7][8]_0\(2) => \dot_product_reg_n_0_[2]\,
      \LUT_reg[7][8]_0\(1) => \dot_product_reg_n_0_[1]\,
      \LUT_reg[7][8]_0\(0) => \dot_product_reg_n_0_[0]\,
      Q(2 downto 0) => curr_state(2 downto 0),
      clk => clk,
      rst => rst
    );
\col_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A0B"
    )
        port map (
      I0 => \col_counter[3]_i_6_n_0\,
      I1 => \col_counter[3]_i_7_n_0\,
      I2 => col_counter(0),
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => \curr_state[0]_i_2_n_0\,
      O => \col_counter[0]_i_1_n_0\
    );
\col_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A0B"
    )
        port map (
      I0 => \col_counter[3]_i_6_n_0\,
      I1 => \col_counter[3]_i_7_n_0\,
      I2 => \col_counter[1]_i_2_n_0\,
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => \curr_state[0]_i_2_n_0\,
      O => \col_counter[1]_i_1_n_0\
    );
\col_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => col_counter(0),
      I1 => col_counter(1),
      O => \col_counter[1]_i_2_n_0\
    );
\col_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A0B"
    )
        port map (
      I0 => \col_counter[3]_i_6_n_0\,
      I1 => \col_counter[3]_i_7_n_0\,
      I2 => \col_counter[2]_i_2_n_0\,
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => \curr_state[0]_i_2_n_0\,
      O => \col_counter[2]_i_1_n_0\
    );
\col_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => col_counter(0),
      I1 => col_counter(1),
      I2 => col_counter(2),
      O => \col_counter[2]_i_2_n_0\
    );
\col_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAABAAA8"
    )
        port map (
      I0 => \col_counter[3]_i_3_n_0\,
      I1 => next_state(2),
      I2 => next_state(1),
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \col_counter[3]_i_4_n_0\,
      I5 => \col_counter[3]_i_5_n_0\,
      O => \col_counter[3]_i_1_n_0\
    );
\col_counter[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => K_size(0),
      I1 => M_size(1),
      I2 => M_size(0),
      I3 => K_size(1),
      O => \col_counter[3]_i_10_n_0\
    );
\col_counter[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => K_size(0),
      I1 => M_size(0),
      I2 => col_counter(0),
      O => \col_counter[3]_i_11_n_0\
    );
\col_counter[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => M_size(1),
      I1 => K_size(1),
      I2 => K_size(0),
      I3 => M_size(0),
      O => \col_counter[3]_i_12_n_0\
    );
\col_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A0B"
    )
        port map (
      I0 => \col_counter[3]_i_6_n_0\,
      I1 => \col_counter[3]_i_7_n_0\,
      I2 => \col_counter[3]_i_8_n_0\,
      I3 => next_state(2),
      I4 => next_state(1),
      I5 => \curr_state[0]_i_2_n_0\,
      O => \col_counter[3]_i_2_n_0\
    );
\col_counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E5"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      O => \col_counter[3]_i_3_n_0\
    );
\col_counter[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAFEEAFEFFFF"
    )
        port map (
      I0 => \col_counter[3]_i_9_n_0\,
      I1 => \col_counter[3]_i_10_n_0\,
      I2 => \col_counter[3]_i_11_n_0\,
      I3 => col_counter(1),
      I4 => col_counter(2),
      I5 => \col_counter[3]_i_12_n_0\,
      O => \col_counter[3]_i_4_n_0\
    );
\col_counter[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => col_counter(3),
      I1 => K_size(1),
      I2 => M_size(0),
      I3 => M_size(1),
      I4 => K_size(0),
      O => \col_counter[3]_i_5_n_0\
    );
\col_counter[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \offset[3]_i_3_n_0\,
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => curr_state(2),
      O => \col_counter[3]_i_6_n_0\
    );
\col_counter[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00288200"
    )
        port map (
      I0 => cols_ok_i_2_n_0,
      I1 => \col_data_counter_reg_n_0_[1]\,
      I2 => M_size(1),
      I3 => M_size(0),
      I4 => \col_data_counter_reg_n_0_[0]\,
      O => \col_counter[3]_i_7_n_0\
    );
\col_counter[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => col_counter(3),
      I1 => col_counter(1),
      I2 => col_counter(0),
      I3 => col_counter(2),
      O => \col_counter[3]_i_8_n_0\
    );
\col_counter[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => K_size(1),
      I1 => M_size(0),
      I2 => M_size(1),
      I3 => K_size(0),
      I4 => col_counter(3),
      O => \col_counter[3]_i_9_n_0\
    );
\col_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \col_counter[3]_i_1_n_0\,
      CLR => rst,
      D => \col_counter[0]_i_1_n_0\,
      Q => col_counter(0)
    );
\col_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \col_counter[3]_i_1_n_0\,
      CLR => rst,
      D => \col_counter[1]_i_1_n_0\,
      Q => col_counter(1)
    );
\col_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \col_counter[3]_i_1_n_0\,
      CLR => rst,
      D => \col_counter[2]_i_1_n_0\,
      Q => col_counter(2)
    );
\col_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \col_counter[3]_i_1_n_0\,
      CLR => rst,
      D => \col_counter[3]_i_2_n_0\,
      Q => col_counter(3)
    );
\col_data_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3303333300A00080"
    )
        port map (
      I0 => \col_data_counter[0]_i_2_n_0\,
      I1 => \row_data_counter[1]_i_5_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \col_data_counter[1]_i_3_n_0\,
      I5 => \col_data_counter_reg_n_0_[0]\,
      O => \col_data_counter[0]_i_1_n_0\
    );
\col_data_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BDDB"
    )
        port map (
      I0 => \col_data_counter_reg_n_0_[0]\,
      I1 => M_size(0),
      I2 => M_size(1),
      I3 => \col_data_counter_reg_n_0_[1]\,
      O => \col_data_counter[0]_i_2_n_0\
    );
\col_data_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33A333B300A00080"
    )
        port map (
      I0 => \col_data_counter[1]_i_2_n_0\,
      I1 => \row_data_counter[1]_i_5_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \col_data_counter[1]_i_3_n_0\,
      I5 => \col_data_counter_reg_n_0_[1]\,
      O => \col_data_counter[1]_i_1_n_0\
    );
\col_data_counter[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D70"
    )
        port map (
      I0 => M_size(1),
      I1 => M_size(0),
      I2 => \col_data_counter_reg_n_0_[1]\,
      I3 => \col_data_counter_reg_n_0_[0]\,
      O => \col_data_counter[1]_i_2_n_0\
    );
\col_data_counter[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000AAAAAAAA"
    )
        port map (
      I0 => \col_counter[3]_i_4_n_0\,
      I1 => K_size(0),
      I2 => M_size(1),
      I3 => M_size(0),
      I4 => K_size(1),
      I5 => col_counter(3),
      O => \col_data_counter[1]_i_3_n_0\
    );
\col_data_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \col_data_counter[0]_i_1_n_0\,
      Q => \col_data_counter_reg_n_0_[0]\
    );
\col_data_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \col_data_counter[1]_i_1_n_0\,
      Q => \col_data_counter_reg_n_0_[1]\
    );
cols_ok_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0FFFF00200020"
    )
        port map (
      I0 => cols_ok_i_2_n_0,
      I1 => \col_data_counter[0]_i_2_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => rows_ok_i_3_n_0,
      I5 => cols_ok_reg_n_0,
      O => cols_ok_i_1_n_0
    );
cols_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000DED0"
    )
        port map (
      I0 => \col_counter[3]_i_10_n_0\,
      I1 => col_counter(1),
      I2 => cols_ok_i_3_n_0,
      I3 => col_counter(0),
      I4 => \offset[3]_i_7_n_0\,
      I5 => cols_ok_i_4_n_0,
      O => cols_ok_i_2_n_0
    );
cols_ok_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_size(0),
      I1 => K_size(0),
      O => cols_ok_i_3_n_0
    );
cols_ok_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BECCEEFFCFCFCFFF"
    )
        port map (
      I0 => col_counter(0),
      I1 => col_counter(3),
      I2 => K_size(1),
      I3 => M_size(0),
      I4 => M_size(1),
      I5 => K_size(0),
      O => cols_ok_i_4_n_0
    );
cols_ok_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => cols_ok_i_1_n_0,
      Q => cols_ok_reg_n_0
    );
\curr_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \curr_state[0]_i_2_n_0\,
      O => next_state(0)
    );
\curr_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCFFACA"
    )
        port map (
      I0 => \curr_state[2]_i_2_n_0\,
      I1 => curr_state(1),
      I2 => curr_state(2),
      I3 => \curr_state[1]_i_3_n_0\,
      I4 => \curr_state[0]_i_3_n_0\,
      O => \curr_state[0]_i_2_n_0\
    );
\curr_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000808F8F8F"
    )
        port map (
      I0 => cols_ok_reg_n_0,
      I1 => rows_ok_reg_n_0,
      I2 => curr_state(0),
      I3 => \curr_state[0]_i_2_0\,
      I4 => \curr_state[0]_i_2_1\,
      I5 => curr_state(1),
      O => \curr_state[0]_i_3_n_0\
    );
\curr_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFEAA"
    )
        port map (
      I0 => \curr_state[1]_i_2_n_0\,
      I1 => \curr_state[2]_i_3_n_0\,
      I2 => \curr_state[1]_i_3_n_0\,
      I3 => curr_state(2),
      I4 => curr_state(1),
      O => next_state(1)
    );
\curr_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111110000000"
    )
        port map (
      I0 => curr_state(2),
      I1 => \curr_state[2]_i_2_n_0\,
      I2 => rows_ok_reg_n_0,
      I3 => cols_ok_reg_n_0,
      I4 => curr_state(0),
      I5 => curr_state(1),
      O => \curr_state[1]_i_2_n_0\
    );
\curr_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \curr_state[1]_i_4_n_0\,
      I1 => \curr_state[1]_i_5_n_0\,
      I2 => \curr_state[2]_i_6_n_0\,
      I3 => \curr_state[1]_i_6_n_0\,
      I4 => \curr_state[1]_i_7_n_0\,
      I5 => \curr_state[1]_i_8_n_0\,
      O => \curr_state[1]_i_3_n_0\
    );
\curr_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBCCF080AA082080"
    )
        port map (
      I0 => write_counter_reg(2),
      I1 => K_size(1),
      I2 => N_size(1),
      I3 => K_size(0),
      I4 => N_size(0),
      I5 => write_counter_reg(1),
      O => \curr_state[1]_i_4_n_0\
    );
\curr_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3057500700077777"
    )
        port map (
      I0 => write_counter_reg(2),
      I1 => write_counter_reg(3),
      I2 => K_size(1),
      I3 => K_size(0),
      I4 => N_size(0),
      I5 => N_size(1),
      O => \curr_state[1]_i_5_n_0\
    );
\curr_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BABABFF"
    )
        port map (
      I0 => write_counter_reg(3),
      I1 => K_size(1),
      I2 => K_size(0),
      I3 => N_size(0),
      I4 => N_size(1),
      O => \curr_state[1]_i_6_n_0\
    );
\curr_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"141405FF11FF55FF"
    )
        port map (
      I0 => write_counter_reg(1),
      I1 => K_size(1),
      I2 => N_size(1),
      I3 => write_counter_reg(0),
      I4 => N_size(0),
      I5 => K_size(0),
      O => \curr_state[1]_i_7_n_0\
    );
\curr_state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => K_size(0),
      I1 => N_size(0),
      I2 => write_counter_reg(0),
      O => \curr_state[1]_i_8_n_0\
    );
\curr_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A3A"
    )
        port map (
      I0 => \curr_state[2]_i_2_n_0\,
      I1 => \curr_state[2]_i_3_n_0\,
      I2 => curr_state(2),
      I3 => curr_state(1),
      O => next_state(2)
    );
\curr_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000008000408000"
    )
        port map (
      I0 => sum_counter(0),
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => sum_counter(1),
      I4 => M_size(0),
      I5 => M_size(1),
      O => \curr_state[2]_i_2_n_0\
    );
\curr_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFEF"
    )
        port map (
      I0 => offset_reg(3),
      I1 => offset_reg(1),
      I2 => LUT_A_n_14,
      I3 => \curr_state[2]_i_4_n_0\,
      I4 => \curr_state[2]_i_5_n_0\,
      I5 => \curr_state[2]_i_6_n_0\,
      O => \curr_state[2]_i_3_n_0\
    );
\curr_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => offset_reg(2),
      I1 => offset_reg(0),
      I2 => row_counter(2),
      I3 => row_counter(3),
      O => \curr_state[2]_i_4_n_0\
    );
\curr_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => col_counter(0),
      I1 => col_counter(1),
      I2 => col_counter(2),
      I3 => col_counter(3),
      O => \curr_state[2]_i_5_n_0\
    );
\curr_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => \curr_state[2]_i_6_n_0\
    );
\curr_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_state(0),
      Q => curr_state(0)
    );
\curr_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_state(1),
      Q => curr_state(1)
    );
\curr_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => next_state(2),
      Q => curr_state(2)
    );
\dot_product[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[3]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(3)
    );
\dot_product[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[2]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(2)
    );
\dot_product[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[1]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(1)
    );
\dot_product[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[0]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(0)
    );
\dot_product[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => C(3),
      I1 => LUT_A_n_12,
      I2 => LUT_A_n_10,
      I3 => LUT_B_n_6,
      O => \dot_product[3]_i_6_n_0\
    );
\dot_product[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1FE0E0E01F1FE0"
    )
        port map (
      I0 => sum_counter(0),
      I1 => sum_counter(1),
      I2 => \dot_product_reg_n_0_[1]\,
      I3 => LUT_A_n_8,
      I4 => LUT_B_n_10,
      I5 => LUT_B_n_0,
      O => \dot_product[3]_i_8_n_0\
    );
\dot_product[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0E01F"
    )
        port map (
      I0 => sum_counter(0),
      I1 => sum_counter(1),
      I2 => \dot_product_reg_n_0_[0]\,
      I3 => LUT_B_n_0,
      I4 => LUT_A_n_9,
      O => \dot_product[3]_i_9_n_0\
    );
\dot_product[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[5]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(5)
    );
\dot_product[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[4]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(4)
    );
\dot_product[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[7]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(7)
    );
\dot_product[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[6]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(6)
    );
\dot_product[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0E0E01FE01FE0"
    )
        port map (
      I0 => sum_counter(0),
      I1 => sum_counter(1),
      I2 => \dot_product_reg_n_0_[5]\,
      I3 => LUT_A_n_5,
      I4 => LUT_A_n_7,
      I5 => LUT_B_n_9,
      O => \dot_product[7]_i_6_n_0\
    );
\dot_product[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01F1F1F1FE0E0E0"
    )
        port map (
      I0 => sum_counter(0),
      I1 => sum_counter(1),
      I2 => \dot_product_reg_n_0_[4]\,
      I3 => LUT_A_n_5,
      I4 => LUT_B_n_9,
      I5 => LUT_A_n_7,
      O => \dot_product[7]_i_7_n_0\
    );
\dot_product[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => sum_counter(0),
      I1 => sum_counter(1),
      I2 => curr_state(1),
      I3 => curr_state(2),
      I4 => rst,
      O => \dot_product[8]_i_1_n_0\
    );
\dot_product[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(2),
      O => start_multiplication
    );
\dot_product[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \dot_product_reg_n_0_[8]\,
      I1 => sum_counter(1),
      I2 => sum_counter(0),
      O => C(8)
    );
\dot_product_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(0),
      Q => \dot_product_reg_n_0_[0]\,
      R => rst
    );
\dot_product_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(1),
      Q => \dot_product_reg_n_0_[1]\,
      R => rst
    );
\dot_product_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(2),
      Q => \dot_product_reg_n_0_[2]\,
      R => rst
    );
\dot_product_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(3),
      Q => \dot_product_reg_n_0_[3]\,
      R => rst
    );
\dot_product_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(4),
      Q => \dot_product_reg_n_0_[4]\,
      R => rst
    );
\dot_product_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(5),
      Q => \dot_product_reg_n_0_[5]\,
      R => rst
    );
\dot_product_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(6),
      Q => \dot_product_reg_n_0_[6]\,
      R => \dot_product[8]_i_1_n_0\
    );
\dot_product_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(7),
      Q => \dot_product_reg_n_0_[7]\,
      R => \dot_product[8]_i_1_n_0\
    );
\dot_product_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => start_multiplication,
      D => dot_product(8),
      Q => \dot_product_reg_n_0_[8]\,
      R => \dot_product[8]_i_1_n_0\
    );
\offset[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \offset[3]_i_4_n_0\,
      I1 => offset_reg(0),
      I2 => K_size(0),
      O => \offset[0]_i_1_n_0\
    );
\offset[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82282828"
    )
        port map (
      I0 => \offset[3]_i_4_n_0\,
      I1 => offset_reg(1),
      I2 => K_size(1),
      I3 => K_size(0),
      I4 => offset_reg(0),
      O => \offset[1]_i_1_n_0\
    );
\offset[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2228288828882888"
    )
        port map (
      I0 => \offset[3]_i_4_n_0\,
      I1 => offset_reg(2),
      I2 => offset_reg(1),
      I3 => K_size(1),
      I4 => K_size(0),
      I5 => offset_reg(0),
      O => \offset[2]_i_1_n_0\
    );
\offset[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => curr_state(2),
      I3 => \offset[3]_i_3_n_0\,
      O => \offset[3]_i_1_n_0\
    );
\offset[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6699AA9A"
    )
        port map (
      I0 => offset_reg(2),
      I1 => N_size(1),
      I2 => K_size(0),
      I3 => N_size(0),
      I4 => K_size(1),
      O => \offset[3]_i_10_n_0\
    );
\offset[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A6A5FAE"
    )
        port map (
      I0 => offset_reg(1),
      I1 => K_size(0),
      I2 => N_size(1),
      I3 => K_size(1),
      I4 => N_size(0),
      O => \offset[3]_i_11_n_0\
    );
\offset[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \offset[3]_i_4_n_0\,
      I1 => \offset[3]_i_5_n_0\,
      I2 => offset_reg(2),
      I3 => offset_reg(3),
      O => \offset[3]_i_2_n_0\
    );
\offset[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => \offset[3]_i_6_n_0\,
      I1 => \offset[3]_i_7_n_0\,
      I2 => \offset[3]_i_8_n_0\,
      I3 => \offset[3]_i_9_n_0\,
      O => \offset[3]_i_3_n_0\
    );
\offset[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBAE"
    )
        port map (
      I0 => \offset[3]_i_10_n_0\,
      I1 => K_size(0),
      I2 => N_size(0),
      I3 => offset_reg(0),
      I4 => offset_reg(3),
      I5 => \offset[3]_i_11_n_0\,
      O => \offset[3]_i_4_n_0\
    );
\offset[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => offset_reg(0),
      I1 => K_size(0),
      I2 => K_size(1),
      I3 => offset_reg(1),
      O => \offset[3]_i_5_n_0\
    );
\offset[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0357"
    )
        port map (
      I0 => K_size(0),
      I1 => M_size(1),
      I2 => M_size(0),
      I3 => K_size(1),
      I4 => col_counter(3),
      O => \offset[3]_i_6_n_0\
    );
\offset[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBCC3E3CE33E333"
    )
        port map (
      I0 => col_counter(1),
      I1 => col_counter(2),
      I2 => M_size(0),
      I3 => K_size(0),
      I4 => M_size(1),
      I5 => K_size(1),
      O => \offset[3]_i_7_n_0\
    );
\offset[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3500505505050555"
    )
        port map (
      I0 => col_counter(2),
      I1 => col_counter(3),
      I2 => K_size(0),
      I3 => M_size(1),
      I4 => M_size(0),
      I5 => K_size(1),
      O => \offset[3]_i_8_n_0\
    );
\offset[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAE8EA20EA08EAC0"
    )
        port map (
      I0 => col_counter(0),
      I1 => M_size(0),
      I2 => K_size(0),
      I3 => col_counter(1),
      I4 => K_size(1),
      I5 => M_size(1),
      O => \offset[3]_i_9_n_0\
    );
\offset_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \offset[3]_i_1_n_0\,
      CLR => rst,
      D => \offset[0]_i_1_n_0\,
      Q => offset_reg(0)
    );
\offset_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \offset[3]_i_1_n_0\,
      CLR => rst,
      D => \offset[1]_i_1_n_0\,
      Q => offset_reg(1)
    );
\offset_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \offset[3]_i_1_n_0\,
      CLR => rst,
      D => \offset[2]_i_1_n_0\,
      Q => offset_reg(2)
    );
\offset_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \offset[3]_i_1_n_0\,
      CLR => rst,
      D => \offset[3]_i_2_n_0\,
      Q => offset_reg(3)
    );
\read_data_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111101144444444"
    )
        port map (
      I0 => rst,
      I1 => read_data_counter(0),
      I2 => K_size(1),
      I3 => K_size(0),
      I4 => read_data_counter(1),
      I5 => \C_row_internal[2]1\,
      O => \read_data_counter[0]_i_1_n_0\
    );
\read_data_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111440455550000"
    )
        port map (
      I0 => rst,
      I1 => read_data_counter(0),
      I2 => K_size(1),
      I3 => K_size(0),
      I4 => read_data_counter(1),
      I5 => \C_row_internal[2]1\,
      O => \read_data_counter[1]_i_1_n_0\
    );
\read_data_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \read_data_counter[0]_i_1_n_0\,
      Q => read_data_counter(0),
      R => '0'
    );
\read_data_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \read_data_counter[1]_i_1_n_0\,
      Q => read_data_counter(1),
      R => '0'
    );
\registered_C_row[0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(0),
      O => C_valid_signal_reg_1(0)
    );
\registered_C_row[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(1),
      O => C_valid_signal_reg_1(1)
    );
\registered_C_row[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(2),
      O => C_valid_signal_reg_1(2)
    );
\registered_C_row[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(3),
      O => C_valid_signal_reg_1(3)
    );
\registered_C_row[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(4),
      O => C_valid_signal_reg_1(4)
    );
\registered_C_row[0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(5),
      O => C_valid_signal_reg_1(5)
    );
\registered_C_row[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(6),
      O => C_valid_signal_reg_1(6)
    );
\registered_C_row[0][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(7),
      O => C_valid_signal_reg_1(7)
    );
\registered_C_row[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[0]\(8),
      O => C_valid_signal_reg_1(8)
    );
\registered_C_row[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(0),
      O => C_valid_signal_reg_0(0)
    );
\registered_C_row[1][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(1),
      O => C_valid_signal_reg_0(1)
    );
\registered_C_row[1][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(2),
      O => C_valid_signal_reg_0(2)
    );
\registered_C_row[1][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(3),
      O => C_valid_signal_reg_0(3)
    );
\registered_C_row[1][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(4),
      O => C_valid_signal_reg_0(4)
    );
\registered_C_row[1][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(5),
      O => C_valid_signal_reg_0(5)
    );
\registered_C_row[1][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(6),
      O => C_valid_signal_reg_0(6)
    );
\registered_C_row[1][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(7),
      O => C_valid_signal_reg_0(7)
    );
\registered_C_row[1][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[1]\(8),
      O => C_valid_signal_reg_0(8)
    );
\registered_C_row[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(0),
      O => D(0)
    );
\registered_C_row[2][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(1),
      O => D(1)
    );
\registered_C_row[2][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(2),
      O => D(2)
    );
\registered_C_row[2][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(3),
      O => D(3)
    );
\registered_C_row[2][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(4),
      O => D(4)
    );
\registered_C_row[2][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(5),
      O => D(5)
    );
\registered_C_row[2][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(6),
      O => D(6)
    );
\registered_C_row[2][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(7),
      O => D(7)
    );
\registered_C_row[2][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^c_valid_signal\,
      I1 => \C_row_internal_reg[2]\(8),
      O => D(8)
    );
\row_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550010"
    )
        port map (
      I0 => row_counter(0),
      I1 => \row_counter[3]_i_5_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_counter[3]_i_6_n_0\,
      I5 => \row_counter[0]_i_2_n_0\,
      O => p_1_in(0)
    );
\row_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => offset_reg(0),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      O => \row_counter[0]_i_2_n_0\
    );
\row_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550010"
    )
        port map (
      I0 => \row_counter[1]_i_2_n_0\,
      I1 => \row_counter[3]_i_5_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_counter[3]_i_6_n_0\,
      I5 => \row_counter[1]_i_3_n_0\,
      O => p_1_in(1)
    );
\row_counter[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => row_counter(0),
      I1 => row_counter(1),
      O => \row_counter[1]_i_2_n_0\
    );
\row_counter[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => offset_reg(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      O => \row_counter[1]_i_3_n_0\
    );
\row_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550010"
    )
        port map (
      I0 => \row_counter[2]_i_2_n_0\,
      I1 => \row_counter[3]_i_5_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_counter[3]_i_6_n_0\,
      I5 => \row_counter[2]_i_3_n_0\,
      O => p_1_in(2)
    );
\row_counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => row_counter(0),
      I1 => row_counter(1),
      I2 => row_counter(2),
      O => \row_counter[2]_i_2_n_0\
    );
\row_counter[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => offset_reg(2),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      O => \row_counter[2]_i_3_n_0\
    );
\row_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200020002FFFE"
    )
        port map (
      I0 => \row_data_counter[1]_i_3_n_0\,
      I1 => next_state(2),
      I2 => next_state(1),
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_data_counter[1]_i_5_n_0\,
      I5 => \C_row_internal[2]1\,
      O => \row_counter[3]_i_1_n_0\
    );
\row_counter[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1610040040808040"
    )
        port map (
      I0 => row_counter(1),
      I1 => M_size(0),
      I2 => N_size(0),
      I3 => N_size(1),
      I4 => M_size(1),
      I5 => row_counter(0),
      O => \row_counter[3]_i_10_n_0\
    );
\row_counter[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9699A595"
    )
        port map (
      I0 => row_counter(2),
      I1 => M_size(0),
      I2 => N_size(0),
      I3 => M_size(1),
      I4 => N_size(1),
      O => \row_counter[3]_i_11_n_0\
    );
\row_counter[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFE2338BFBC2320"
    )
        port map (
      I0 => row_counter(1),
      I1 => \row_data_counter[1]_i_8_n_0\,
      I2 => \row_data_counter[1]_i_9_n_0\,
      I3 => \row_data_counter[1]_i_7_n_0\,
      I4 => row_counter(2),
      I5 => row_counter(0),
      O => \row_counter[3]_i_12_n_0\
    );
\row_counter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55550010"
    )
        port map (
      I0 => \row_counter[3]_i_4_n_0\,
      I1 => \row_counter[3]_i_5_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_counter[3]_i_6_n_0\,
      I5 => \row_counter[3]_i_7_n_0\,
      O => p_1_in(3)
    );
\row_counter[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => \C_row_internal[2]1\
    );
\row_counter[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => row_counter(3),
      I1 => row_counter(1),
      I2 => row_counter(0),
      I3 => row_counter(2),
      O => \row_counter[3]_i_4_n_0\
    );
\row_counter[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009A00"
    )
        port map (
      I0 => row_counter(3),
      I1 => \row_counter[3]_i_8_n_0\,
      I2 => \row_counter[3]_i_9_n_0\,
      I3 => \row_counter[3]_i_10_n_0\,
      I4 => \row_counter[3]_i_11_n_0\,
      I5 => \row_data_counter[0]_i_2_n_0\,
      O => \row_counter[3]_i_5_n_0\
    );
\row_counter[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000080"
    )
        port map (
      I0 => curr_state(0),
      I1 => start_multiplication,
      I2 => \row_counter[3]_i_9_n_0\,
      I3 => \row_counter[3]_i_12_n_0\,
      I4 => row_counter(3),
      I5 => \row_counter[3]_i_8_n_0\,
      O => \row_counter[3]_i_6_n_0\
    );
\row_counter[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => offset_reg(3),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => curr_state(1),
      O => \row_counter[3]_i_7_n_0\
    );
\row_counter[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => N_size(1),
      I1 => M_size(1),
      I2 => N_size(0),
      I3 => M_size(0),
      O => \row_counter[3]_i_8_n_0\
    );
\row_counter[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCA8"
    )
        port map (
      I0 => M_size(0),
      I1 => N_size(0),
      I2 => N_size(1),
      I3 => M_size(1),
      O => \row_counter[3]_i_9_n_0\
    );
\row_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \row_counter[3]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(0),
      Q => row_counter(0)
    );
\row_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \row_counter[3]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(1),
      Q => row_counter(1)
    );
\row_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \row_counter[3]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(2),
      Q => row_counter(2)
    );
\row_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \row_counter[3]_i_1_n_0\,
      CLR => rst,
      D => p_1_in(3),
      Q => row_counter(3)
    );
\row_data_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF3F00A00080"
    )
        port map (
      I0 => \row_data_counter[0]_i_2_n_0\,
      I1 => \row_data_counter[1]_i_3_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_data_counter[1]_i_5_n_0\,
      I5 => \row_data_counter_reg_n_0_[0]\,
      O => \row_data_counter[0]_i_1_n_0\
    );
\row_data_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BDDB"
    )
        port map (
      I0 => \row_data_counter_reg_n_0_[0]\,
      I1 => M_size(0),
      I2 => M_size(1),
      I3 => \row_data_counter_reg_n_0_[1]\,
      O => \row_data_counter[0]_i_2_n_0\
    );
\row_data_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0FFBF00A00080"
    )
        port map (
      I0 => \row_data_counter[1]_i_2_n_0\,
      I1 => \row_data_counter[1]_i_3_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => \row_data_counter[1]_i_5_n_0\,
      I5 => \row_data_counter_reg_n_0_[1]\,
      O => \row_data_counter[1]_i_1_n_0\
    );
\row_data_counter[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D70"
    )
        port map (
      I0 => M_size(1),
      I1 => M_size(0),
      I2 => \row_data_counter_reg_n_0_[1]\,
      I3 => \row_data_counter_reg_n_0_[0]\,
      O => \row_data_counter[1]_i_2_n_0\
    );
\row_data_counter[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F07030303030303"
    )
        port map (
      I0 => row_counter(2),
      I1 => \row_data_counter[1]_i_6_n_0\,
      I2 => row_counter(3),
      I3 => \row_data_counter[1]_i_7_n_0\,
      I4 => M_size(1),
      I5 => N_size(1),
      O => \row_data_counter[1]_i_3_n_0\
    );
\row_data_counter[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4045"
    )
        port map (
      I0 => \curr_state[1]_i_2_n_0\,
      I1 => curr_state(1),
      I2 => curr_state(2),
      I3 => \curr_state[2]_i_2_n_0\,
      O => \row_data_counter[1]_i_4_n_0\
    );
\row_data_counter[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(1),
      I2 => curr_state(0),
      O => \row_data_counter[1]_i_5_n_0\
    );
\row_data_counter[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F2F2FFF2FFFF"
    )
        port map (
      I0 => row_counter(2),
      I1 => \row_data_counter[1]_i_8_n_0\,
      I2 => row_counter(1),
      I3 => row_counter(0),
      I4 => \row_data_counter[1]_i_7_n_0\,
      I5 => \row_data_counter[1]_i_9_n_0\,
      O => \row_data_counter[1]_i_6_n_0\
    );
\row_data_counter[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_size(0),
      I1 => N_size(0),
      O => \row_data_counter[1]_i_7_n_0\
    );
\row_data_counter[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => N_size(1),
      I1 => M_size(1),
      I2 => N_size(0),
      I3 => M_size(0),
      O => \row_data_counter[1]_i_8_n_0\
    );
\row_data_counter[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => N_size(1),
      I1 => M_size(0),
      I2 => M_size(1),
      I3 => N_size(0),
      O => \row_data_counter[1]_i_9_n_0\
    );
\row_data_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \row_data_counter[0]_i_1_n_0\,
      Q => \row_data_counter_reg_n_0_[0]\
    );
\row_data_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \row_data_counter[1]_i_1_n_0\,
      Q => \row_data_counter_reg_n_0_[1]\
    );
rows_ok_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0FFFF00200020"
    )
        port map (
      I0 => rows_ok_i_2_n_0,
      I1 => \row_data_counter[0]_i_2_n_0\,
      I2 => \row_data_counter[1]_i_4_n_0\,
      I3 => \curr_state[0]_i_2_n_0\,
      I4 => rows_ok_i_3_n_0,
      I5 => rows_ok_reg_n_0,
      O => rows_ok_i_1_n_0
    );
rows_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80220A2A2A88A080"
    )
        port map (
      I0 => rows_ok_i_4_n_0,
      I1 => M_size(0),
      I2 => N_size(0),
      I3 => M_size(1),
      I4 => N_size(1),
      I5 => row_counter(3),
      O => rows_ok_i_2_n_0
    );
rows_ok_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(2),
      O => rows_ok_i_3_n_0
    );
rows_ok_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010200004010280"
    )
        port map (
      I0 => row_counter(0),
      I1 => row_counter(1),
      I2 => \row_data_counter[1]_i_8_n_0\,
      I3 => \row_data_counter[1]_i_9_n_0\,
      I4 => \row_data_counter[1]_i_7_n_0\,
      I5 => row_counter(2),
      O => rows_ok_i_4_n_0
    );
rows_ok_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => rows_ok_i_1_n_0,
      Q => rows_ok_reg_n_0
    );
\sum_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333F88888880"
    )
        port map (
      I0 => \sum_counter[0]_i_2_n_0\,
      I1 => \col_counter[3]_i_3_n_0\,
      I2 => \curr_state[0]_i_2_n_0\,
      I3 => next_state(1),
      I4 => next_state(2),
      I5 => sum_counter(0),
      O => \sum_counter[0]_i_1_n_0\
    );
\sum_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"090000001D000000"
    )
        port map (
      I0 => M_size(0),
      I1 => M_size(1),
      I2 => sum_counter(1),
      I3 => start_multiplication,
      I4 => curr_state(0),
      I5 => sum_counter(0),
      O => \sum_counter[0]_i_2_n_0\
    );
\sum_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => \sum_counter[1]_i_2_n_0\,
      I1 => \col_counter[3]_i_3_n_0\,
      I2 => \curr_state[0]_i_2_n_0\,
      I3 => next_state(1),
      I4 => next_state(2),
      I5 => sum_counter(1),
      O => \sum_counter[1]_i_1_n_0\
    );
\sum_counter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000010000000"
    )
        port map (
      I0 => M_size(0),
      I1 => M_size(1),
      I2 => sum_counter(1),
      I3 => start_multiplication,
      I4 => curr_state(0),
      I5 => sum_counter(0),
      O => \sum_counter[1]_i_2_n_0\
    );
\sum_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \sum_counter[0]_i_1_n_0\,
      Q => sum_counter(0)
    );
\sum_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \sum_counter[1]_i_1_n_0\,
      Q => sum_counter(1)
    );
\write_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_counter[3]_i_3_n_0\,
      I1 => write_counter_reg(0),
      O => write_counter(0)
    );
\write_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \write_counter[3]_i_3_n_0\,
      I1 => write_counter_reg(0),
      I2 => write_counter_reg(1),
      O => write_counter(1)
    );
\write_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \write_counter[3]_i_3_n_0\,
      I1 => write_counter_reg(0),
      I2 => write_counter_reg(1),
      I3 => write_counter_reg(2),
      O => write_counter(2)
    );
\write_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(1),
      O => \write_counter[3]_i_1_n_0\
    );
\write_counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \write_counter[3]_i_3_n_0\,
      I1 => write_counter_reg(2),
      I2 => write_counter_reg(1),
      I3 => write_counter_reg(0),
      I4 => write_counter_reg(3),
      O => write_counter(3)
    );
\write_counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \curr_state[1]_i_5_n_0\,
      I1 => \curr_state[1]_i_7_n_0\,
      I2 => \curr_state[1]_i_4_n_0\,
      I3 => \curr_state[1]_i_6_n_0\,
      O => \write_counter[3]_i_3_n_0\
    );
\write_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \write_counter[3]_i_1_n_0\,
      CLR => rst,
      D => write_counter(0),
      Q => write_counter_reg(0)
    );
\write_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \write_counter[3]_i_1_n_0\,
      CLR => rst,
      D => write_counter(1),
      Q => write_counter_reg(1)
    );
\write_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \write_counter[3]_i_1_n_0\,
      CLR => rst,
      D => write_counter(2),
      Q => write_counter_reg(2)
    );
\write_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => \write_counter[3]_i_1_n_0\,
      CLR => rst,
      D => write_counter(3),
      Q => write_counter_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MatrixMultiplier_Wrapper is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    N_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    K_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \A_row[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \A_row[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \A_row[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \B_column[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \B_column[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \B_column[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A_valid : in STD_LOGIC;
    B_valid : in STD_LOGIC;
    \C_row[2]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \C_row[1]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \C_row[0]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    C_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of MatrixMultiplier_Wrapper : entity is true;
  attribute MAX_SIZE : integer;
  attribute MAX_SIZE of MatrixMultiplier_Wrapper : entity is 3;
  attribute WORD_LENGTH : integer;
  attribute WORD_LENGTH of MatrixMultiplier_Wrapper : entity is 3;
end MatrixMultiplier_Wrapper;

architecture STRUCTURE of MatrixMultiplier_Wrapper is
  signal C_valid_signal : STD_LOGIC;
  signal Multiplier_logic_n_1 : STD_LOGIC;
  signal Multiplier_logic_n_10 : STD_LOGIC;
  signal Multiplier_logic_n_11 : STD_LOGIC;
  signal Multiplier_logic_n_12 : STD_LOGIC;
  signal Multiplier_logic_n_13 : STD_LOGIC;
  signal Multiplier_logic_n_14 : STD_LOGIC;
  signal Multiplier_logic_n_15 : STD_LOGIC;
  signal Multiplier_logic_n_16 : STD_LOGIC;
  signal Multiplier_logic_n_17 : STD_LOGIC;
  signal Multiplier_logic_n_18 : STD_LOGIC;
  signal Multiplier_logic_n_19 : STD_LOGIC;
  signal Multiplier_logic_n_2 : STD_LOGIC;
  signal Multiplier_logic_n_20 : STD_LOGIC;
  signal Multiplier_logic_n_21 : STD_LOGIC;
  signal Multiplier_logic_n_22 : STD_LOGIC;
  signal Multiplier_logic_n_23 : STD_LOGIC;
  signal Multiplier_logic_n_24 : STD_LOGIC;
  signal Multiplier_logic_n_25 : STD_LOGIC;
  signal Multiplier_logic_n_26 : STD_LOGIC;
  signal Multiplier_logic_n_27 : STD_LOGIC;
  signal Multiplier_logic_n_3 : STD_LOGIC;
  signal Multiplier_logic_n_4 : STD_LOGIC;
  signal Multiplier_logic_n_5 : STD_LOGIC;
  signal Multiplier_logic_n_6 : STD_LOGIC;
  signal Multiplier_logic_n_7 : STD_LOGIC;
  signal Multiplier_logic_n_8 : STD_LOGIC;
  signal Multiplier_logic_n_9 : STD_LOGIC;
  signal \actual_A_row_reg[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \actual_A_row_reg[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \actual_A_row_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal actual_A_valid_reg_n_0 : STD_LOGIC;
  signal \actual_B_column_reg[0]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \actual_B_column_reg[1]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \actual_B_column_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal actual_B_valid_reg_n_0 : STD_LOGIC;
begin
Multiplier_logic: entity work.MatrixMultiplier
     port map (
      C_valid_signal => C_valid_signal,
      C_valid_signal_reg_0(8) => Multiplier_logic_n_10,
      C_valid_signal_reg_0(7) => Multiplier_logic_n_11,
      C_valid_signal_reg_0(6) => Multiplier_logic_n_12,
      C_valid_signal_reg_0(5) => Multiplier_logic_n_13,
      C_valid_signal_reg_0(4) => Multiplier_logic_n_14,
      C_valid_signal_reg_0(3) => Multiplier_logic_n_15,
      C_valid_signal_reg_0(2) => Multiplier_logic_n_16,
      C_valid_signal_reg_0(1) => Multiplier_logic_n_17,
      C_valid_signal_reg_0(0) => Multiplier_logic_n_18,
      C_valid_signal_reg_1(8) => Multiplier_logic_n_19,
      C_valid_signal_reg_1(7) => Multiplier_logic_n_20,
      C_valid_signal_reg_1(6) => Multiplier_logic_n_21,
      C_valid_signal_reg_1(5) => Multiplier_logic_n_22,
      C_valid_signal_reg_1(4) => Multiplier_logic_n_23,
      C_valid_signal_reg_1(3) => Multiplier_logic_n_24,
      C_valid_signal_reg_1(2) => Multiplier_logic_n_25,
      C_valid_signal_reg_1(1) => Multiplier_logic_n_26,
      C_valid_signal_reg_1(0) => Multiplier_logic_n_27,
      D(8) => Multiplier_logic_n_1,
      D(7) => Multiplier_logic_n_2,
      D(6) => Multiplier_logic_n_3,
      D(5) => Multiplier_logic_n_4,
      D(4) => Multiplier_logic_n_5,
      D(3) => Multiplier_logic_n_6,
      D(2) => Multiplier_logic_n_7,
      D(1) => Multiplier_logic_n_8,
      D(0) => Multiplier_logic_n_9,
      K_size(1 downto 0) => K_size(1 downto 0),
      \LUT_reg[8][2]\(2 downto 0) => \actual_B_column_reg[2]\(2 downto 0),
      \LUT_reg[8][2]_0\(2 downto 0) => \actual_B_column_reg[1]\(2 downto 0),
      \LUT_reg[8][2]_1\(2 downto 0) => \actual_A_row_reg[0]\(2 downto 0),
      \LUT_reg[8][2]_2\(2 downto 0) => \actual_A_row_reg[1]\(2 downto 0),
      \LUT_reg[8][2]_3\(2 downto 0) => \actual_A_row_reg[2]\(2 downto 0),
      M_size(1 downto 0) => M_size(1 downto 0),
      N_size(1 downto 0) => N_size(1 downto 0),
      Q(2 downto 0) => \actual_B_column_reg[0]\(2 downto 0),
      clk => clk,
      \curr_state[0]_i_2_0\ => actual_B_valid_reg_n_0,
      \curr_state[0]_i_2_1\ => actual_A_valid_reg_n_0,
      rst => rst
    );
\actual_A_row_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[0]\(0),
      Q => \actual_A_row_reg[0]\(0)
    );
\actual_A_row_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[0]\(1),
      Q => \actual_A_row_reg[0]\(1)
    );
\actual_A_row_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[0]\(2),
      Q => \actual_A_row_reg[0]\(2)
    );
\actual_A_row_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[1]\(0),
      Q => \actual_A_row_reg[1]\(0)
    );
\actual_A_row_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[1]\(1),
      Q => \actual_A_row_reg[1]\(1)
    );
\actual_A_row_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[1]\(2),
      Q => \actual_A_row_reg[1]\(2)
    );
\actual_A_row_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[2]\(0),
      Q => \actual_A_row_reg[2]\(0)
    );
\actual_A_row_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[2]\(1),
      Q => \actual_A_row_reg[2]\(1)
    );
\actual_A_row_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \A_row[2]\(2),
      Q => \actual_A_row_reg[2]\(2)
    );
actual_A_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => A_valid,
      Q => actual_A_valid_reg_n_0
    );
\actual_B_column_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[0]\(0),
      Q => \actual_B_column_reg[0]\(0)
    );
\actual_B_column_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[0]\(1),
      Q => \actual_B_column_reg[0]\(1)
    );
\actual_B_column_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[0]\(2),
      Q => \actual_B_column_reg[0]\(2)
    );
\actual_B_column_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[1]\(0),
      Q => \actual_B_column_reg[1]\(0)
    );
\actual_B_column_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[1]\(1),
      Q => \actual_B_column_reg[1]\(1)
    );
\actual_B_column_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[1]\(2),
      Q => \actual_B_column_reg[1]\(2)
    );
\actual_B_column_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[2]\(0),
      Q => \actual_B_column_reg[2]\(0)
    );
\actual_B_column_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[2]\(1),
      Q => \actual_B_column_reg[2]\(1)
    );
\actual_B_column_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \B_column[2]\(2),
      Q => \actual_B_column_reg[2]\(2)
    );
actual_B_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => B_valid,
      Q => actual_B_valid_reg_n_0
    );
\registered_C_row_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_27,
      Q => \C_row[0]\(0)
    );
\registered_C_row_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_26,
      Q => \C_row[0]\(1)
    );
\registered_C_row_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_25,
      Q => \C_row[0]\(2)
    );
\registered_C_row_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_24,
      Q => \C_row[0]\(3)
    );
\registered_C_row_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_23,
      Q => \C_row[0]\(4)
    );
\registered_C_row_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_22,
      Q => \C_row[0]\(5)
    );
\registered_C_row_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_21,
      Q => \C_row[0]\(6)
    );
\registered_C_row_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_20,
      Q => \C_row[0]\(7)
    );
\registered_C_row_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_19,
      Q => \C_row[0]\(8)
    );
\registered_C_row_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_18,
      Q => \C_row[1]\(0)
    );
\registered_C_row_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_17,
      Q => \C_row[1]\(1)
    );
\registered_C_row_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_16,
      Q => \C_row[1]\(2)
    );
\registered_C_row_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_15,
      Q => \C_row[1]\(3)
    );
\registered_C_row_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_14,
      Q => \C_row[1]\(4)
    );
\registered_C_row_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_13,
      Q => \C_row[1]\(5)
    );
\registered_C_row_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_12,
      Q => \C_row[1]\(6)
    );
\registered_C_row_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_11,
      Q => \C_row[1]\(7)
    );
\registered_C_row_reg[1][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_10,
      Q => \C_row[1]\(8)
    );
\registered_C_row_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_9,
      Q => \C_row[2]\(0)
    );
\registered_C_row_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_8,
      Q => \C_row[2]\(1)
    );
\registered_C_row_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_7,
      Q => \C_row[2]\(2)
    );
\registered_C_row_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_6,
      Q => \C_row[2]\(3)
    );
\registered_C_row_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_5,
      Q => \C_row[2]\(4)
    );
\registered_C_row_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_4,
      Q => \C_row[2]\(5)
    );
\registered_C_row_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_3,
      Q => \C_row[2]\(6)
    );
\registered_C_row_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_2,
      Q => \C_row[2]\(7)
    );
\registered_C_row_reg[2][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => Multiplier_logic_n_1,
      Q => \C_row[2]\(8)
    );
registered_C_valid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => C_valid_signal,
      Q => C_valid
    );
end STRUCTURE;
