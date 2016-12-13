-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/12/2016 13:58:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn0[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|nextState.EXECUTE~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|incCounter~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|sramDataWrite[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexComp7|Mux0~0_combout\ : std_logic;
SIGNAL \proc|Selector28~0_combout\ : std_logic;
SIGNAL \proc|Selector30~0_combout\ : std_logic;
SIGNAL \proc|Selector23~0_combout\ : std_logic;
SIGNAL \proc|Selector23~1_combout\ : std_logic;
SIGNAL \proc|Selector25~0_combout\ : std_logic;
SIGNAL \proc|Selector25~1_combout\ : std_logic;
SIGNAL \proc|Selector19~0_combout\ : std_logic;
SIGNAL \proc|Selector22~0_combout\ : std_logic;
SIGNAL \proc|Selector14~0_combout\ : std_logic;
SIGNAL \proc|Selector17~0_combout\ : std_logic;
SIGNAL \proc|Selector18~0_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~6_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|alu|Mux6~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux6~1_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~10_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~11_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~12_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~13_combout\ : std_logic;
SIGNAL \proc|alu|Mux6~2_combout\ : std_logic;
SIGNAL \proc|alu|Mux6~3_combout\ : std_logic;
SIGNAL \proc|alu|Mux6~4_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~5_combout\ : std_logic;
SIGNAL \proc|alu|Mux5~1_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \pc|WideOr2~0_combout\ : std_logic;
SIGNAL \pc|WideOr1~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[13][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[22][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[26][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux10~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux10~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[23][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux10~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[9][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux10~10_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux10~11_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux10~20_combout\ : std_logic;
SIGNAL \proc|sram|addresses[21][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[25][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[17][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[22][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~3_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[20][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~4_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux9~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[23][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[27][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~7_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux9~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[5][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[4][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~10_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[10][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~12_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[2][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~14_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux9~16_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[13][6]~q\ : std_logic;
SIGNAL \proc|sram|addresses[12][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~17_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][6]~q\ : std_logic;
SIGNAL \proc|sram|Mux9~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux9~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux9~20_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[25][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[21][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[17][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[27][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[23][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~7_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[9][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~10_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[5][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~16_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux8~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux8~20_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux15~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[23][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux15~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux15~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~16_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[13][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[12][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux15~17_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux15~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux15~20_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[9][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~17_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[14][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux13~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[27][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[23][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~7_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~12_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[12][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~11_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~11_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux25~20_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~11_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~11_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~17_combout\ : std_logic;
SIGNAL \proc|incCounter~2_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~21_combout\ : std_logic;
SIGNAL \proc|alu|Mux1~3_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|Selector7~2_combout\ : std_logic;
SIGNAL \proc|Selector9~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][4]~7_combout\ : std_logic;
SIGNAL \proc|sram|addresses[13][4]~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][0]~16_combout\ : std_logic;
SIGNAL \proc|sram|addresses[18][0]~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][0]~30_combout\ : std_logic;
SIGNAL \proc|sram|addresses[12][0]~31_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][1]~36_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][1]~40_combout\ : std_logic;
SIGNAL \proc|sram|addresses[8][1]~41_combout\ : std_logic;
SIGNAL \proc|sram|addresses[8][2]~58_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][3]~68_combout\ : std_logic;
SIGNAL \proc|sram|addresses[23][3]~70_combout\ : std_logic;
SIGNAL \proc|sram|addresses[19][3]~71_combout\ : std_logic;
SIGNAL \proc|incCounter~combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \proc|incCounter~clkctrl_outclk\ : std_logic;
SIGNAL \proc|sram|addresses[21][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[23][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[25][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][6]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][7]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][2]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[27][3]~feeder_combout\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \proc|nextState.FETCH~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \proc|nextState.FETCH~0_combout\ : std_logic;
SIGNAL \proc|currState.FETCH~q\ : std_logic;
SIGNAL \proc|nextState.DECODE~0_combout\ : std_logic;
SIGNAL \proc|currState.DECODE~q\ : std_logic;
SIGNAL \proc|nextState.EXECUTE~0_combout\ : std_logic;
SIGNAL \proc|currState.EXECUTE~q\ : std_logic;
SIGNAL \proc|nextState.MEM_WRITE~0_combout\ : std_logic;
SIGNAL \proc|currState.MEM_WRITE~q\ : std_logic;
SIGNAL \proc|hexIn0[0]~0_combout\ : std_logic;
SIGNAL \proc|hexIn0[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \proc|nextState.EXECUTE~0clkctrl_outclk\ : std_logic;
SIGNAL \proc|Selector31~0_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \proc|sramEnable~0_combout\ : std_logic;
SIGNAL \proc|sramEnable~combout\ : std_logic;
SIGNAL \proc|rw~0_combout\ : std_logic;
SIGNAL \proc|rw~combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~22_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~23_combout\ : std_logic;
SIGNAL \proc|sram|addresses[27][4]~q\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \proc|sram|Decoder0~24_combout\ : std_logic;
SIGNAL \proc|sram|addresses[19][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~8_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \proc|sram|Decoder0~0_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~7_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~8_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][4]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~9_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~12_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][4]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[18][4]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~10_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~3_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~15_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][4]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~14_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][4]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~16_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][4]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~13_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~17_combout\ : std_logic;
SIGNAL \proc|sram|addresses[16][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~9_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \proc|sram|addresses[7][4]~3_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~19_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~29_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[4][4]~2_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~28_combout\ : std_logic;
SIGNAL \proc|sram|addresses[4][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[5][4]~1_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~1_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~27_combout\ : std_logic;
SIGNAL \proc|sram|addresses[5][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][4]~15_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~41_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[14][4]~12_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~38_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][4]~8_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~3_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~34_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][4]~10_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~36_combout\ : std_logic;
SIGNAL \proc|sram|addresses[0][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[2][4]~9_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~35_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~14_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][4]~11_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~37_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~15_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][4]~4_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~30_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[10][4]~5_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~31_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][4]~6_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~32_combout\ : std_logic;
SIGNAL \proc|sram|addresses[8][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux27~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux27~20_combout\ : std_logic;
SIGNAL \proc|sram|dataReadOne[7]~0_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \proc|alu|Mux3~2_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \proc|alu|Mux7~1_combout\ : std_logic;
SIGNAL \proc|alu|Mux7~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \proc|alu|Mux4~8_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \proc|alu|Mux4~4_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \proc|sram|addresses[11][3]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~33_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][3]~q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \proc|sram|addresses[8][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[9][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~11_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \proc|sram|addresses[7][3]~75_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[5][3]~72_combout\ : std_logic;
SIGNAL \proc|sram|addresses[5][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][3]~79_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][3]~78_combout\ : std_logic;
SIGNAL \proc|sram|addresses[0][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[1][3]~77_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~19_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][3]~65_combout\ : std_logic;
SIGNAL \proc|sram|addresses[18][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[26][3]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[24][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][3]~69_combout\ : std_logic;
SIGNAL \proc|sram|addresses[16][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~5_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~4_combout\ : std_logic;
SIGNAL \proc|sram|addresses[25][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[17][3]~67_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~5_combout\ : std_logic;
SIGNAL \proc|sram|addresses[17][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[21][3]~66_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[21][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux12~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux12~20_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~9_combout\ : std_logic;
SIGNAL \proc|sramDataWrite[7]~0_combout\ : std_logic;
SIGNAL \proc|sramDataWrite[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \proc|sram|addresses[15][2]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~40_combout\ : std_logic;
SIGNAL \proc|sram|addresses[12][2]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~39_combout\ : std_logic;
SIGNAL \proc|sram|addresses[13][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[4][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[5][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~10_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][2]~q\ : std_logic;
SIGNAL \proc|sram|Decoder0~26_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][2]~57_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~12_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][2]~56_combout\ : std_logic;
SIGNAL \proc|sram|addresses[9][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][2]~60_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[2][2]~61_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][2]~62_combout\ : std_logic;
SIGNAL \proc|sram|addresses[0][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~14_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][2]~63_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~19_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][2]~52_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[28][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[20][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][2]~53_combout\ : std_logic;
SIGNAL \proc|sram|addresses[16][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~5_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][2]~50_combout\ : std_logic;
SIGNAL \proc|sram|addresses[26][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[30][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[22][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][2]~51_combout\ : std_logic;
SIGNAL \proc|sram|addresses[18][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~6_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~20_combout\ : std_logic;
SIGNAL \proc|sram|addresses[23][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[27][2]~54_combout\ : std_logic;
SIGNAL \proc|sram|addresses[27][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][2]~55_combout\ : std_logic;
SIGNAL \proc|sram|addresses[19][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~8_combout\ : std_logic;
SIGNAL \proc|sram|addresses[21][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[17][2]~49_combout\ : std_logic;
SIGNAL \proc|sram|addresses[17][2]~q\ : std_logic;
SIGNAL \proc|sram|addresses[25][2]~48_combout\ : std_logic;
SIGNAL \proc|sram|addresses[25][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux29~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux29~20_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \proc|sram|addresses[30][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[26][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][1]~39_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][1]~38_combout\ : std_logic;
SIGNAL \proc|sram|addresses[16][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[24][1]~37_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~5_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][1]~35_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[25][1]~32_combout\ : std_logic;
SIGNAL \proc|sram|addresses[25][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[17][1]~34_combout\ : std_logic;
SIGNAL \proc|sram|addresses[17][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[21][1]~33_combout\ : std_logic;
SIGNAL \proc|sram|addresses[21][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|Decoder0~25_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[27][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[27][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[23][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[13][1]~46_combout\ : std_logic;
SIGNAL \proc|sram|addresses[13][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[15][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[11][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[5][1]~42_combout\ : std_logic;
SIGNAL \proc|sram|addresses[5][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[6][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[4][1]~43_combout\ : std_logic;
SIGNAL \proc|sram|addresses[4][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[1][1]~44_combout\ : std_logic;
SIGNAL \proc|sram|addresses[1][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][1]~45_combout\ : std_logic;
SIGNAL \proc|sram|addresses[0][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux14~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux14~20_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux30~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][1]~q\ : std_logic;
SIGNAL \proc|sram|addresses[12][1]~47_combout\ : std_logic;
SIGNAL \proc|sram|addresses[12][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux30~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][1]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux30~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~15_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][1]~q\ : std_logic;
SIGNAL \proc|sram|Mux30~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux30~20_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~5_combout\ : std_logic;
SIGNAL \proc|alu|Mux0~3_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~4_combout\ : std_logic;
SIGNAL \proc|alu|Mux0~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux2~2_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][2]~59_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux13~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][2]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][2]~q\ : std_logic;
SIGNAL \proc|sram|Mux13~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~8_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux13~20_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux2~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux2~1_combout\ : std_logic;
SIGNAL \proc|alu|Mux2~3_combout\ : std_logic;
SIGNAL \proc|sram|addresses[14][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[12][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~17_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[13][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[5][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[6][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[4][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[3][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[1][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~19_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~7_combout\ : std_logic;
SIGNAL \proc|sram|addresses[27][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~8_combout\ : std_logic;
SIGNAL \proc|sram|addresses[17][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[21][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[25][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[29][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~3_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[28][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[24][5]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][5]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][5]~q\ : std_logic;
SIGNAL \proc|sram|Mux26~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux26~20_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|alu|aluOut~0_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \proc|alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux0~1_combout\ : std_logic;
SIGNAL \proc|alu|Mux0~4_combout\ : std_logic;
SIGNAL \proc|alu|Mux0~5_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[13][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[12][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux24~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[3][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[1][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux24~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~15_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[4][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[6][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux24~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~19_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[30][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[18][7]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[18][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[26][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux24~0_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[28][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][7]~q\ : std_logic;
SIGNAL \proc|sram|addresses[24][7]~q\ : std_logic;
SIGNAL \proc|sram|Mux24~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~9_combout\ : std_logic;
SIGNAL \proc|sram|Mux24~20_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~3_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~6_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~8_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~13_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~7_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~10_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~11_combout\ : std_logic;
SIGNAL \proc|alu|Mux4~12_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][3]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux28~2_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][3]~64_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux28~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux28~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[15][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[13][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux28~18_combout\ : std_logic;
SIGNAL \proc|sram|addresses[4][3]~74_combout\ : std_logic;
SIGNAL \proc|sram|addresses[4][3]~q\ : std_logic;
SIGNAL \proc|sram|addresses[6][3]~73_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux28~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~13_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][3]~76_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][3]~q\ : std_logic;
SIGNAL \proc|sram|Mux28~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux28~20_combout\ : std_logic;
SIGNAL \proc|alu|Mux7~2_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~9_combout\ : std_logic;
SIGNAL \proc|alu|Mux7~3_combout\ : std_logic;
SIGNAL \proc|alu|Mux7~4_combout\ : std_logic;
SIGNAL \proc|alu|Mux7~5_combout\ : std_logic;
SIGNAL \proc|alu|Mux7~6_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[19][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[27][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~8_combout\ : std_logic;
SIGNAL \proc|sram|addresses[17][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[25][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[21][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[29][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~1_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][0]~17_combout\ : std_logic;
SIGNAL \proc|sram|addresses[22][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~2_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][0]~19_combout\ : std_logic;
SIGNAL \proc|sram|addresses[30][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~3_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][0]~23_combout\ : std_logic;
SIGNAL \proc|sram|addresses[28][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[24][0]~20_combout\ : std_logic;
SIGNAL \proc|sram|addresses[24][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[20][0]~21_combout\ : std_logic;
SIGNAL \proc|sram|addresses[20][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[16][0]~22_combout\ : std_logic;
SIGNAL \proc|sram|addresses[16][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[7][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[6][0]~24_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[5][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[4][0]~25_combout\ : std_logic;
SIGNAL \proc|sram|addresses[4][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][0]~feeder_combout\ : std_logic;
SIGNAL \proc|sram|addresses[3][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[1][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[0][0]~29_combout\ : std_logic;
SIGNAL \proc|sram|addresses[0][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[2][0]~28_combout\ : std_logic;
SIGNAL \proc|sram|addresses[2][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~15_combout\ : std_logic;
SIGNAL \proc|sram|addresses[11][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[8][0]~27_combout\ : std_logic;
SIGNAL \proc|sram|addresses[8][0]~q\ : std_logic;
SIGNAL \proc|sram|addresses[10][0]~26_combout\ : std_logic;
SIGNAL \proc|sram|addresses[10][0]~q\ : std_logic;
SIGNAL \proc|sram|Mux31~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux31~20_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~0_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~1_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~2_combout\ : std_logic;
SIGNAL \proc|alu|Mux3~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux3~1_combout\ : std_logic;
SIGNAL \proc|alu|Mux3~3_combout\ : std_logic;
SIGNAL \proc|sram|addresses[31][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[23][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux11~7_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~8_combout\ : std_logic;
SIGNAL \proc|sram|addresses[17][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[25][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux11~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[29][4]~q\ : std_logic;
SIGNAL \proc|sram|addresses[21][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux11~1_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~3_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~4_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~5_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~6_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~9_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][4]~0_combout\ : std_logic;
SIGNAL \proc|sram|addresses[6][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux11~10_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~11_combout\ : std_logic;
SIGNAL \proc|sram|addresses[12][4]~14_combout\ : std_logic;
SIGNAL \proc|sram|addresses[12][4]~q\ : std_logic;
SIGNAL \proc|sram|Mux11~17_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~18_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~14_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~15_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~12_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~13_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~16_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~19_combout\ : std_logic;
SIGNAL \proc|sram|Mux11~20_combout\ : std_logic;
SIGNAL \proc|Selector27~0_combout\ : std_logic;
SIGNAL \proc|Selector27~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux6~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux2~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp7|Mux0~1_combout\ : std_logic;
SIGNAL \proc|Selector24~0_combout\ : std_logic;
SIGNAL \proc|Selector24~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux6~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux2~1_combout\ : std_logic;
SIGNAL \proc|Selector26~0_combout\ : std_logic;
SIGNAL \proc|Selector26~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux0~0_combout\ : std_logic;
SIGNAL \proc|hexComp6|Mux0~1_combout\ : std_logic;
SIGNAL \proc|Selector21~0_combout\ : std_logic;
SIGNAL \proc|Selector20~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux6~1_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux2~1_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux0~0_combout\ : std_logic;
SIGNAL \proc|hexComp5|Mux0~1_combout\ : std_logic;
SIGNAL \proc|Selector16~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux6~1_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux2~1_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux0~0_combout\ : std_logic;
SIGNAL \proc|hexComp4|Mux0~1_combout\ : std_logic;
SIGNAL \proc|hexIn2~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux0~2_combout\ : std_logic;
SIGNAL \proc|Selector13~0_combout\ : std_logic;
SIGNAL \proc|Selector11~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux1~2_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \proc|alu|Mux1~0_combout\ : std_logic;
SIGNAL \proc|alu|Mux1~1_combout\ : std_logic;
SIGNAL \proc|Selector12~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux6~1_combout\ : std_logic;
SIGNAL \proc|Selector10~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux2~1_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux0~0_combout\ : std_logic;
SIGNAL \proc|hexComp3|Mux0~1_combout\ : std_logic;
SIGNAL \proc|Selector5~2_combout\ : std_logic;
SIGNAL \proc|alu|Mux5~0_combout\ : std_logic;
SIGNAL \proc|alu|ShiftRight0~7_combout\ : std_logic;
SIGNAL \proc|alu|Mux5~2_combout\ : std_logic;
SIGNAL \proc|alu|Mux5~3_combout\ : std_logic;
SIGNAL \proc|alu|Mux5~4_combout\ : std_logic;
SIGNAL \proc|Selector8~2_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux6~1_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux2~1_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux0~0_combout\ : std_logic;
SIGNAL \proc|hexComp2|Mux0~1_combout\ : std_logic;
SIGNAL \pc|currState.three~feeder_combout\ : std_logic;
SIGNAL \pc|currState.three~q\ : std_logic;
SIGNAL \pc|currState.four~feeder_combout\ : std_logic;
SIGNAL \pc|currState.four~q\ : std_logic;
SIGNAL \pc|currState.five~feeder_combout\ : std_logic;
SIGNAL \pc|currState.five~q\ : std_logic;
SIGNAL \pc|currState.six~feeder_combout\ : std_logic;
SIGNAL \pc|currState.six~q\ : std_logic;
SIGNAL \pc|currState.seven~feeder_combout\ : std_logic;
SIGNAL \pc|currState.seven~q\ : std_logic;
SIGNAL \pc|currState.eight~q\ : std_logic;
SIGNAL \pc|currState.nine~q\ : std_logic;
SIGNAL \pc|currState.ten~q\ : std_logic;
SIGNAL \pc|currState.eleven~q\ : std_logic;
SIGNAL \pc|currState.twelve~q\ : std_logic;
SIGNAL \pc|currState.thirteen~q\ : std_logic;
SIGNAL \pc|currState.fourteen~q\ : std_logic;
SIGNAL \pc|currState.fifteen~q\ : std_logic;
SIGNAL \pc|currState.zero~0_combout\ : std_logic;
SIGNAL \pc|currState.zero~q\ : std_logic;
SIGNAL \pc|currState.one~0_combout\ : std_logic;
SIGNAL \pc|currState.one~q\ : std_logic;
SIGNAL \pc|currState.two~q\ : std_logic;
SIGNAL \pc|WideOr0~0_combout\ : std_logic;
SIGNAL \pc|WideOr1~combout\ : std_logic;
SIGNAL \pc|WideOr2~1_combout\ : std_logic;
SIGNAL \pc|WideOr2~combout\ : std_logic;
SIGNAL \pc|WideOr3~0_combout\ : std_logic;
SIGNAL \pc|WideOr3~combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux6~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux6~1_combout\ : std_logic;
SIGNAL \pc|WideOr0~1_combout\ : std_logic;
SIGNAL \pc|WideOr0~combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux5~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux5~1_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux4~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux4~1_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux3~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux3~1_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux2~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux2~1_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux1~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux1~1_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux0~0_combout\ : std_logic;
SIGNAL \proc|hexComp0|Mux0~1_combout\ : std_logic;
SIGNAL \proc|sramDataWrite\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|sData2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \proc|sData1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \proc|hexIn7\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn6\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn5\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|hexIn0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|LEDG\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc|HEX7\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|HEX6\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|HEX5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|HEX4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|HEX3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|HEX2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|HEX0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|sram|dataReadTwo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|sram|dataReadOne\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\proc|hexIn0[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc|hexIn0[0]~0_combout\);

\proc|nextState.EXECUTE~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc|nextState.EXECUTE~0_combout\);

\proc|incCounter~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc|incCounter~combout\);

\proc|sramDataWrite[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc|sramDataWrite[7]~0_combout\);
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;

-- Location: LCCOMB_X108_Y53_N30
\proc|hexComp7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux0~0_combout\ = (\proc|hexIn7\(3)) # ((\proc|hexIn7\(1) & ((!\proc|hexIn7\(0)) # (!\proc|hexIn7\(2)))) # (!\proc|hexIn7\(1) & (\proc|hexIn7\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(2),
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn7\(0),
	combout => \proc|hexComp7|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y52_N22
\proc|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector28~0_combout\ = (\proc|currState.EXECUTE~q\ & \proc|sData1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.EXECUTE~q\,
	datac => \proc|sData1\(5),
	combout => \proc|Selector28~0_combout\);

-- Location: LCCOMB_X109_Y51_N0
\proc|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector30~0_combout\ = (\proc|sData1\(6) & \proc|currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData1\(6),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector30~0_combout\);

-- Location: LCCOMB_X110_Y49_N28
\proc|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector23~0_combout\ = (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & (\proc|sData1\(0))) # (!\proc|currState.EXECUTE~q\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(0),
	datab => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.EXECUTE~q\,
	datad => \SW[5]~input_o\,
	combout => \proc|Selector23~0_combout\);

-- Location: LCCOMB_X110_Y49_N26
\proc|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector23~1_combout\ = (\proc|Selector23~0_combout\) # ((\SW[10]~input_o\ & \proc|currState.MEM_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \proc|Selector23~0_combout\,
	datac => \proc|currState.MEM_WRITE~q\,
	combout => \proc|Selector23~1_combout\);

-- Location: LCCOMB_X111_Y47_N28
\proc|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector25~0_combout\ = (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & (\proc|sData1\(2))) # (!\proc|currState.EXECUTE~q\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datab => \SW[7]~input_o\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector25~0_combout\);

-- Location: LCCOMB_X111_Y47_N22
\proc|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector25~1_combout\ = (\proc|Selector25~0_combout\) # ((\SW[12]~input_o\ & \proc|currState.MEM_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \proc|currState.MEM_WRITE~q\,
	datad => \proc|Selector25~0_combout\,
	combout => \proc|Selector25~1_combout\);

-- Location: LCCOMB_X110_Y52_N14
\proc|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector19~0_combout\ = (\proc|currState.EXECUTE~q\ & ((\proc|sData2\(4)))) # (!\proc|currState.EXECUTE~q\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sData2\(4),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector19~0_combout\);

-- Location: LCCOMB_X111_Y49_N24
\proc|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector22~0_combout\ = (\proc|sData2\(7) & \proc|currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(7),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector22~0_combout\);

-- Location: LCCOMB_X111_Y51_N14
\proc|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector14~0_combout\ = (\proc|currState.EXECUTE~q\ & ((\proc|sData2\(0)))) # (!\proc|currState.EXECUTE~q\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sData2\(0),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector14~0_combout\);

-- Location: LCCOMB_X110_Y49_N12
\proc|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector17~0_combout\ = (\proc|currState.EXECUTE~q\ & ((\proc|sData2\(2)))) # (!\proc|currState.EXECUTE~q\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.EXECUTE~q\,
	datab => \SW[2]~input_o\,
	datad => \proc|sData2\(2),
	combout => \proc|Selector17~0_combout\);

-- Location: LCCOMB_X111_Y48_N20
\proc|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector18~0_combout\ = (\proc|currState.EXECUTE~q\ & ((\proc|sData2\(3)))) # (!\proc|currState.EXECUTE~q\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sData2\(3),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector18~0_combout\);

-- Location: LCCOMB_X109_Y51_N10
\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ = \proc|sData2\(4) $ (\proc|sData1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(4),
	datad => \proc|sData1\(4),
	combout => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X108_Y48_N30
\proc|alu|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~6_combout\ = (\proc|sData2\(1) & (\proc|sData1\(7) & ((!\proc|sData2\(0))))) # (!\proc|sData2\(1) & (((\proc|alu|ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(7),
	datab => \proc|sData2\(1),
	datac => \proc|alu|ShiftRight0~5_combout\,
	datad => \proc|sData2\(0),
	combout => \proc|alu|ShiftRight0~6_combout\);

-- Location: LCCOMB_X110_Y50_N22
\proc|alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\ = \proc|sData2\(1) $ (\proc|sData1\(1) $ (((\proc|sData1\(0)) # (!\proc|sData2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(0),
	datab => \proc|sData2\(1),
	datac => \proc|sData1\(0),
	datad => \proc|sData1\(1),
	combout => \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X108_Y48_N28
\proc|alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux6~0_combout\ = \proc|sData2\(1) $ (((\proc|sData1\(0) & (\SW[15]~input_o\ & \proc|sData2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(0),
	datab => \SW[15]~input_o\,
	datac => \proc|sData2\(1),
	datad => \proc|sData2\(0),
	combout => \proc|alu|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y48_N6
\proc|alu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux6~1_combout\ = (\SW[16]~input_o\ & (\SW[15]~input_o\)) # (!\SW[16]~input_o\ & ((\proc|sData1\(1) $ (\proc|alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \proc|sData1\(1),
	datac => \SW[16]~input_o\,
	datad => \proc|alu|Mux6~0_combout\,
	combout => \proc|alu|Mux6~1_combout\);

-- Location: LCCOMB_X108_Y48_N24
\proc|alu|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~10_combout\ = (!\proc|sData2\(1) & ((\proc|sData2\(0) & (\proc|sData1\(2))) # (!\proc|sData2\(0) & ((\proc|sData1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datab => \proc|sData2\(0),
	datac => \proc|sData2\(1),
	datad => \proc|sData1\(1),
	combout => \proc|alu|ShiftRight0~10_combout\);

-- Location: LCCOMB_X108_Y50_N30
\proc|alu|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~11_combout\ = (\proc|sData2\(0) & (\proc|sData1\(4))) # (!\proc|sData2\(0) & ((\proc|sData1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(0),
	datac => \proc|sData1\(4),
	datad => \proc|sData1\(3),
	combout => \proc|alu|ShiftRight0~11_combout\);

-- Location: LCCOMB_X108_Y48_N26
\proc|alu|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~12_combout\ = (!\proc|sData2\(2) & ((\proc|alu|ShiftRight0~10_combout\) # ((\proc|sData2\(1) & \proc|alu|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(2),
	datab => \proc|alu|ShiftRight0~10_combout\,
	datac => \proc|sData2\(1),
	datad => \proc|alu|ShiftRight0~11_combout\,
	combout => \proc|alu|ShiftRight0~12_combout\);

-- Location: LCCOMB_X108_Y48_N20
\proc|alu|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~13_combout\ = (!\proc|alu|ShiftRight0~4_combout\ & ((\proc|alu|ShiftRight0~12_combout\) # ((\proc|alu|ShiftRight0~6_combout\ & \proc|sData2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|ShiftRight0~6_combout\,
	datab => \proc|sData2\(2),
	datac => \proc|alu|ShiftRight0~12_combout\,
	datad => \proc|alu|ShiftRight0~4_combout\,
	combout => \proc|alu|ShiftRight0~13_combout\);

-- Location: LCCOMB_X108_Y48_N18
\proc|alu|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux6~2_combout\ = (\proc|alu|Mux6~1_combout\ & (((\proc|alu|ShiftRight0~13_combout\)) # (!\SW[16]~input_o\))) # (!\proc|alu|Mux6~1_combout\ & (\SW[16]~input_o\ & (!\proc|alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux6~1_combout\,
	datab => \SW[16]~input_o\,
	datac => \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \proc|alu|ShiftRight0~13_combout\,
	combout => \proc|alu|Mux6~2_combout\);

-- Location: LCCOMB_X108_Y48_N8
\proc|alu|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux6~3_combout\ = \SW[16]~input_o\ $ (((\proc|sData2\(1) & ((\SW[15]~input_o\) # (\proc|sData1\(1)))) # (!\proc|sData2\(1) & (\SW[15]~input_o\ & \proc|sData1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \proc|sData2\(1),
	datac => \SW[15]~input_o\,
	datad => \proc|sData1\(1),
	combout => \proc|alu|Mux6~3_combout\);

-- Location: LCCOMB_X108_Y48_N10
\proc|alu|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux6~4_combout\ = (\SW[17]~input_o\ & ((\proc|alu|Mux6~2_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux6~3_combout\,
	datac => \SW[17]~input_o\,
	datad => \proc|alu|Mux6~2_combout\,
	combout => \proc|alu|Mux6~4_combout\);

-- Location: LCCOMB_X110_Y50_N4
\proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\ = \proc|sData1\(2) $ (\proc|sData2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sData1\(2),
	datad => \proc|sData2\(2),
	combout => \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X109_Y52_N22
\proc|alu|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~5_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\) # (\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \proc|alu|Mux4~5_combout\);

-- Location: LCCOMB_X110_Y50_N6
\proc|alu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux5~1_combout\ = (\proc|alu|Mux4~4_combout\ & (\proc|alu|Mux4~5_combout\)) # (!\proc|alu|Mux4~4_combout\ & (\proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\proc|alu|Mux4~5_combout\ & 
-- \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux4~5_combout\,
	datab => \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\,
	datac => \proc|alu|Mux4~4_combout\,
	datad => \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|Mux5~1_combout\);

-- Location: LCCOMB_X109_Y50_N6
\proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\ = \proc|sData2\(2) $ (\proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ $ (\proc|sData1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(2),
	datac => \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\,
	datad => \proc|sData1\(2),
	combout => \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X108_Y50_N16
\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ = \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\proc|sData1\(2) & ((\proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\) # (!\proc|sData2\(2)))) # 
-- (!\proc|sData1\(2) & (!\proc|sData2\(2) & \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datab => \proc|sData2\(2),
	datac => \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\,
	datad => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X106_Y49_N30
\pc|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr2~0_combout\ = (\pc|currState.zero~q\ & (!\pc|currState.four~q\ & (!\pc|currState.twelve~q\ & !\pc|currState.eight~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|currState.zero~q\,
	datab => \pc|currState.four~q\,
	datac => \pc|currState.twelve~q\,
	datad => \pc|currState.eight~q\,
	combout => \pc|WideOr2~0_combout\);

-- Location: LCCOMB_X106_Y49_N6
\pc|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr1~0_combout\ = (\pc|currState.ten~q\) # ((\pc|currState.nine~q\) # ((\pc|currState.eleven~q\) # (\pc|currState.eight~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|currState.ten~q\,
	datab => \pc|currState.nine~q\,
	datac => \pc|currState.eleven~q\,
	datad => \pc|currState.eight~q\,
	combout => \pc|WideOr1~0_combout\);

-- Location: FF_X111_Y52_N13
\proc|sram|dataReadOne[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux10~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(5));

-- Location: FF_X114_Y51_N13
\proc|sram|dataReadOne[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux9~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(6));

-- Location: FF_X110_Y51_N7
\proc|sram|dataReadOne[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux8~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(7));

-- Location: FF_X112_Y48_N29
\proc|sram|dataReadOne[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux15~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(0));

-- Location: FF_X114_Y52_N13
\proc|sram|dataReadTwo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux25~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(6));

-- Location: LCCOMB_X112_Y50_N6
\proc|sram|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|addresses[22][4]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\proc|sram|addresses[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[22][4]~q\,
	datad => \proc|sram|addresses[18][4]~q\,
	combout => \proc|sram|Mux11~2_combout\);

-- Location: FF_X110_Y52_N7
\proc|sram|addresses[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[11][4]~7_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][4]~q\);

-- Location: FF_X112_Y49_N31
\proc|sram|addresses[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[13][4]~13_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][4]~q\);

-- Location: FF_X112_Y50_N9
\proc|sram|addresses[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][5]~q\);

-- Location: FF_X112_Y50_N31
\proc|sram|addresses[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][5]~q\);

-- Location: FF_X111_Y50_N3
\proc|sram|addresses[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][5]~q\);

-- Location: LCCOMB_X111_Y50_N16
\proc|sram|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~0_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (\proc|sram|addresses[26][5]~q\)) # (!\SW[8]~input_o\ & ((\proc|sram|addresses[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[26][5]~q\,
	datad => \proc|sram|addresses[18][5]~q\,
	combout => \proc|sram|Mux10~0_combout\);

-- Location: FF_X113_Y50_N3
\proc|sram|addresses[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][5]~q\);

-- Location: LCCOMB_X113_Y50_N2
\proc|sram|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~1_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux10~0_combout\ & (\proc|sram|addresses[30][5]~q\)) # (!\proc|sram|Mux10~0_combout\ & ((\proc|sram|addresses[22][5]~q\))))) # (!\SW[7]~input_o\ & (\proc|sram|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|Mux10~0_combout\,
	datac => \proc|sram|addresses[30][5]~q\,
	datad => \proc|sram|addresses[22][5]~q\,
	combout => \proc|sram|Mux10~1_combout\);

-- Location: LCCOMB_X112_Y51_N2
\proc|sram|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\proc|sram|addresses[21][5]~q\)) # (!\SW[7]~input_o\ & ((\proc|sram|addresses[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[21][5]~q\,
	datad => \proc|sram|addresses[17][5]~q\,
	combout => \proc|sram|Mux10~2_combout\);

-- Location: LCCOMB_X112_Y51_N28
\proc|sram|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~3_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux10~2_combout\ & (\proc|sram|addresses[29][5]~q\)) # (!\proc|sram|Mux10~2_combout\ & ((\proc|sram|addresses[25][5]~q\))))) # (!\SW[8]~input_o\ & (\proc|sram|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|Mux10~2_combout\,
	datac => \proc|sram|addresses[29][5]~q\,
	datad => \proc|sram|addresses[25][5]~q\,
	combout => \proc|sram|Mux10~3_combout\);

-- Location: LCCOMB_X111_Y47_N18
\proc|sram|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~4_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|addresses[24][5]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\proc|sram|addresses[16][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[16][5]~q\,
	datad => \proc|sram|addresses[24][5]~q\,
	combout => \proc|sram|Mux10~4_combout\);

-- Location: LCCOMB_X111_Y47_N16
\proc|sram|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~5_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux10~4_combout\ & (\proc|sram|addresses[28][5]~q\)) # (!\proc|sram|Mux10~4_combout\ & ((\proc|sram|addresses[20][5]~q\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[28][5]~q\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[20][5]~q\,
	datad => \proc|sram|Mux10~4_combout\,
	combout => \proc|sram|Mux10~5_combout\);

-- Location: LCCOMB_X112_Y51_N6
\proc|sram|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~6_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\proc|sram|Mux10~3_combout\))) # (!\SW[5]~input_o\ & (\proc|sram|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux10~5_combout\,
	datad => \proc|sram|Mux10~3_combout\,
	combout => \proc|sram|Mux10~6_combout\);

-- Location: FF_X111_Y53_N27
\proc|sram|addresses[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][5]~q\);

-- Location: LCCOMB_X111_Y53_N26
\proc|sram|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|addresses[23][5]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\proc|sram|addresses[19][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[23][5]~q\,
	datad => \proc|sram|addresses[19][5]~q\,
	combout => \proc|sram|Mux10~7_combout\);

-- Location: LCCOMB_X113_Y53_N8
\proc|sram|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~8_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux10~7_combout\ & ((\proc|sram|addresses[31][5]~q\))) # (!\proc|sram|Mux10~7_combout\ & (\proc|sram|addresses[27][5]~q\)))) # (!\SW[8]~input_o\ & (\proc|sram|Mux10~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|Mux10~7_combout\,
	datac => \proc|sram|addresses[27][5]~q\,
	datad => \proc|sram|addresses[31][5]~q\,
	combout => \proc|sram|Mux10~8_combout\);

-- Location: LCCOMB_X112_Y51_N4
\proc|sram|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~9_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux10~6_combout\ & (\proc|sram|Mux10~8_combout\)) # (!\proc|sram|Mux10~6_combout\ & ((\proc|sram|Mux10~1_combout\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|Mux10~8_combout\,
	datac => \proc|sram|Mux10~1_combout\,
	datad => \proc|sram|Mux10~6_combout\,
	combout => \proc|sram|Mux10~9_combout\);

-- Location: FF_X109_Y52_N23
\proc|sram|addresses[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][5]~q\);

-- Location: FF_X109_Y53_N31
\proc|sram|addresses[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][5]~q\);

-- Location: FF_X110_Y53_N23
\proc|sram|addresses[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][5]~q\);

-- Location: LCCOMB_X109_Y53_N30
\proc|sram|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~10_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\proc|sram|addresses[9][5]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\proc|sram|addresses[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[9][5]~q\,
	datad => \proc|sram|addresses[8][5]~q\,
	combout => \proc|sram|Mux10~10_combout\);

-- Location: FF_X110_Y53_N25
\proc|sram|addresses[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][5]~q\);

-- Location: LCCOMB_X110_Y52_N26
\proc|sram|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux10~10_combout\ & ((\proc|sram|addresses[11][5]~q\))) # (!\proc|sram|Mux10~10_combout\ & (\proc|sram|addresses[10][5]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[10][5]~q\,
	datac => \proc|sram|addresses[11][5]~q\,
	datad => \proc|sram|Mux10~10_combout\,
	combout => \proc|sram|Mux10~11_combout\);

-- Location: LCCOMB_X111_Y49_N28
\proc|sram|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|addresses[6][5]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\proc|sram|addresses[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[4][5]~q\,
	datad => \proc|sram|addresses[6][5]~q\,
	combout => \proc|sram|Mux10~12_combout\);

-- Location: LCCOMB_X111_Y49_N22
\proc|sram|Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux10~12_combout\ & ((\proc|sram|addresses[7][5]~q\))) # (!\proc|sram|Mux10~12_combout\ & (\proc|sram|addresses[5][5]~q\)))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[5][5]~q\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[7][5]~q\,
	datad => \proc|sram|Mux10~12_combout\,
	combout => \proc|sram|Mux10~13_combout\);

-- Location: LCCOMB_X113_Y52_N6
\proc|sram|Mux10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\proc|sram|addresses[1][5]~q\))) # (!\SW[5]~input_o\ & (\proc|sram|addresses[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[0][5]~q\,
	datad => \proc|sram|addresses[1][5]~q\,
	combout => \proc|sram|Mux10~14_combout\);

-- Location: LCCOMB_X112_Y52_N8
\proc|sram|Mux10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~15_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux10~14_combout\ & ((\proc|sram|addresses[3][5]~q\))) # (!\proc|sram|Mux10~14_combout\ & (\proc|sram|addresses[2][5]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[2][5]~q\,
	datac => \proc|sram|addresses[3][5]~q\,
	datad => \proc|sram|Mux10~14_combout\,
	combout => \proc|sram|Mux10~15_combout\);

-- Location: LCCOMB_X112_Y52_N18
\proc|sram|Mux10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~16_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\proc|sram|Mux10~13_combout\))) # (!\SW[7]~input_o\ & (\proc|sram|Mux10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|Mux10~15_combout\,
	datad => \proc|sram|Mux10~13_combout\,
	combout => \proc|sram|Mux10~16_combout\);

-- Location: LCCOMB_X108_Y49_N10
\proc|sram|Mux10~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~17_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\proc|sram|addresses[14][5]~q\))) # (!\SW[6]~input_o\ & (\proc|sram|addresses[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[12][5]~q\,
	datad => \proc|sram|addresses[14][5]~q\,
	combout => \proc|sram|Mux10~17_combout\);

-- Location: LCCOMB_X112_Y49_N18
\proc|sram|Mux10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~18_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux10~17_combout\ & (\proc|sram|addresses[15][5]~q\)) # (!\proc|sram|Mux10~17_combout\ & ((\proc|sram|addresses[13][5]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|addresses[15][5]~q\,
	datac => \proc|sram|addresses[13][5]~q\,
	datad => \proc|sram|Mux10~17_combout\,
	combout => \proc|sram|Mux10~18_combout\);

-- Location: LCCOMB_X111_Y52_N26
\proc|sram|Mux10~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~19_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux10~16_combout\ & (\proc|sram|Mux10~18_combout\)) # (!\proc|sram|Mux10~16_combout\ & ((\proc|sram|Mux10~11_combout\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux10~18_combout\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux10~11_combout\,
	datad => \proc|sram|Mux10~16_combout\,
	combout => \proc|sram|Mux10~19_combout\);

-- Location: LCCOMB_X111_Y52_N12
\proc|sram|Mux10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux10~20_combout\ = (\SW[9]~input_o\ & ((\proc|sram|Mux10~9_combout\))) # (!\SW[9]~input_o\ & (\proc|sram|Mux10~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \proc|sram|Mux10~19_combout\,
	datad => \proc|sram|Mux10~9_combout\,
	combout => \proc|sram|Mux10~20_combout\);

-- Location: FF_X112_Y53_N31
\proc|sram|addresses[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[21][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][6]~q\);

-- Location: FF_X111_Y51_N31
\proc|sram|addresses[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[25][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][6]~q\);

-- Location: FF_X111_Y51_N25
\proc|sram|addresses[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][6]~q\);

-- Location: LCCOMB_X111_Y51_N16
\proc|sram|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|addresses[25][6]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((\proc|sram|addresses[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[25][6]~q\,
	datad => \proc|sram|addresses[17][6]~q\,
	combout => \proc|sram|Mux9~0_combout\);

-- Location: FF_X112_Y51_N31
\proc|sram|addresses[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][6]~q\);

-- Location: LCCOMB_X114_Y50_N26
\proc|sram|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~1_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux9~0_combout\ & ((\proc|sram|addresses[29][6]~q\))) # (!\proc|sram|Mux9~0_combout\ & (\proc|sram|addresses[21][6]~q\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|addresses[21][6]~q\,
	datac => \proc|sram|addresses[29][6]~q\,
	datad => \proc|sram|Mux9~0_combout\,
	combout => \proc|sram|Mux9~1_combout\);

-- Location: FF_X112_Y50_N25
\proc|sram|addresses[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][6]~q\);

-- Location: FF_X113_Y50_N17
\proc|sram|addresses[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[22][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][6]~q\);

-- Location: FF_X111_Y50_N23
\proc|sram|addresses[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][6]~q\);

-- Location: LCCOMB_X111_Y50_N22
\proc|sram|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|addresses[22][6]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\proc|sram|addresses[18][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[18][6]~q\,
	datad => \proc|sram|addresses[22][6]~q\,
	combout => \proc|sram|Mux9~2_combout\);

-- Location: FF_X113_Y50_N23
\proc|sram|addresses[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[30][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][6]~q\);

-- Location: LCCOMB_X112_Y50_N24
\proc|sram|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~3_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux9~2_combout\ & (\proc|sram|addresses[30][6]~q\)) # (!\proc|sram|Mux9~2_combout\ & ((\proc|sram|addresses[26][6]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[30][6]~q\,
	datac => \proc|sram|addresses[26][6]~q\,
	datad => \proc|sram|Mux9~2_combout\,
	combout => \proc|sram|Mux9~3_combout\);

-- Location: FF_X113_Y47_N23
\proc|sram|addresses[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][6]~q\);

-- Location: FF_X112_Y47_N19
\proc|sram|addresses[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[20][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][6]~q\);

-- Location: FF_X111_Y47_N23
\proc|sram|addresses[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][6]~q\);

-- Location: LCCOMB_X112_Y47_N20
\proc|sram|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~4_combout\ = (\SW[8]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\proc|sram|addresses[20][6]~q\)) # (!\SW[7]~input_o\ & ((\proc|sram|addresses[16][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[20][6]~q\,
	datac => \SW[7]~input_o\,
	datad => \proc|sram|addresses[16][6]~q\,
	combout => \proc|sram|Mux9~4_combout\);

-- Location: FF_X112_Y47_N15
\proc|sram|addresses[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][6]~q\);

-- Location: LCCOMB_X113_Y47_N4
\proc|sram|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~5_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux9~4_combout\ & (\proc|sram|addresses[28][6]~q\)) # (!\proc|sram|Mux9~4_combout\ & ((\proc|sram|addresses[24][6]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[28][6]~q\,
	datac => \proc|sram|addresses[24][6]~q\,
	datad => \proc|sram|Mux9~4_combout\,
	combout => \proc|sram|Mux9~5_combout\);

-- Location: LCCOMB_X114_Y50_N16
\proc|sram|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~6_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|Mux9~3_combout\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((\proc|sram|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux9~3_combout\,
	datad => \proc|sram|Mux9~5_combout\,
	combout => \proc|sram|Mux9~6_combout\);

-- Location: FF_X111_Y53_N19
\proc|sram|addresses[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[23][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][6]~q\);

-- Location: FF_X113_Y53_N23
\proc|sram|addresses[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][6]~q\);

-- Location: FF_X113_Y53_N13
\proc|sram|addresses[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][6]~q\);

-- Location: LCCOMB_X113_Y53_N12
\proc|sram|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~7_combout\ = (\SW[8]~input_o\ & ((\proc|sram|addresses[27][6]~q\) # ((\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (((\proc|sram|addresses[19][6]~q\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[27][6]~q\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[19][6]~q\,
	datad => \SW[7]~input_o\,
	combout => \proc|sram|Mux9~7_combout\);

-- Location: FF_X112_Y53_N21
\proc|sram|addresses[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][6]~q\);

-- Location: LCCOMB_X113_Y53_N14
\proc|sram|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~8_combout\ = (\proc|sram|Mux9~7_combout\ & (((\proc|sram|addresses[31][6]~q\)) # (!\SW[7]~input_o\))) # (!\proc|sram|Mux9~7_combout\ & (\SW[7]~input_o\ & (\proc|sram|addresses[23][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux9~7_combout\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[23][6]~q\,
	datad => \proc|sram|addresses[31][6]~q\,
	combout => \proc|sram|Mux9~8_combout\);

-- Location: LCCOMB_X114_Y50_N18
\proc|sram|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~9_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux9~6_combout\ & (\proc|sram|Mux9~8_combout\)) # (!\proc|sram|Mux9~6_combout\ & ((\proc|sram|Mux9~1_combout\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux9~8_combout\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux9~1_combout\,
	datad => \proc|sram|Mux9~6_combout\,
	combout => \proc|sram|Mux9~9_combout\);

-- Location: FF_X114_Y49_N27
\proc|sram|addresses[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][6]~q\);

-- Location: FF_X114_Y49_N21
\proc|sram|addresses[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][6]~q\);

-- Location: FF_X111_Y49_N21
\proc|sram|addresses[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][6]~q\);

-- Location: LCCOMB_X111_Y49_N10
\proc|sram|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~10_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\proc|sram|addresses[5][6]~q\))) # (!\SW[5]~input_o\ & (\proc|sram|addresses[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[4][6]~q\,
	datad => \proc|sram|addresses[5][6]~q\,
	combout => \proc|sram|Mux9~10_combout\);

-- Location: FF_X111_Y49_N5
\proc|sram|addresses[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][6]~q\);

-- Location: LCCOMB_X111_Y49_N6
\proc|sram|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux9~10_combout\ & (\proc|sram|addresses[7][6]~q\)) # (!\proc|sram|Mux9~10_combout\ & ((\proc|sram|addresses[6][6]~q\))))) # (!\SW[6]~input_o\ & (\proc|sram|Mux9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|Mux9~10_combout\,
	datac => \proc|sram|addresses[7][6]~q\,
	datad => \proc|sram|addresses[6][6]~q\,
	combout => \proc|sram|Mux9~11_combout\);

-- Location: FF_X109_Y53_N5
\proc|sram|addresses[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][6]~q\);

-- Location: FF_X109_Y53_N3
\proc|sram|addresses[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][6]~q\);

-- Location: FF_X110_Y53_N3
\proc|sram|addresses[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][6]~q\);

-- Location: LCCOMB_X109_Y53_N2
\proc|sram|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\proc|sram|addresses[10][6]~q\)) # (!\SW[6]~input_o\ & ((\proc|sram|addresses[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[10][6]~q\,
	datad => \proc|sram|addresses[8][6]~q\,
	combout => \proc|sram|Mux9~12_combout\);

-- Location: FF_X109_Y51_N1
\proc|sram|addresses[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][6]~q\);

-- Location: LCCOMB_X109_Y53_N4
\proc|sram|Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux9~12_combout\ & ((\proc|sram|addresses[11][6]~q\))) # (!\proc|sram|Mux9~12_combout\ & (\proc|sram|addresses[9][6]~q\)))) # (!\SW[5]~input_o\ & (\proc|sram|Mux9~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|Mux9~12_combout\,
	datac => \proc|sram|addresses[9][6]~q\,
	datad => \proc|sram|addresses[11][6]~q\,
	combout => \proc|sram|Mux9~13_combout\);

-- Location: FF_X113_Y52_N17
\proc|sram|addresses[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][6]~q\);

-- Location: FF_X112_Y52_N25
\proc|sram|addresses[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][6]~q\);

-- Location: FF_X113_Y52_N27
\proc|sram|addresses[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][6]~q\);

-- Location: LCCOMB_X113_Y52_N26
\proc|sram|Mux9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|addresses[2][6]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\proc|sram|addresses[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[0][6]~q\,
	datad => \proc|sram|addresses[2][6]~q\,
	combout => \proc|sram|Mux9~14_combout\);

-- Location: FF_X114_Y51_N25
\proc|sram|addresses[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[3][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][6]~q\);

-- Location: LCCOMB_X114_Y52_N30
\proc|sram|Mux9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~15_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux9~14_combout\ & ((\proc|sram|addresses[3][6]~q\))) # (!\proc|sram|Mux9~14_combout\ & (\proc|sram|addresses[1][6]~q\)))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|addresses[1][6]~q\,
	datac => \proc|sram|Mux9~14_combout\,
	datad => \proc|sram|addresses[3][6]~q\,
	combout => \proc|sram|Mux9~15_combout\);

-- Location: LCCOMB_X114_Y51_N26
\proc|sram|Mux9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~16_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\proc|sram|Mux9~13_combout\))) # (!\SW[8]~input_o\ & (\proc|sram|Mux9~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux9~15_combout\,
	datad => \proc|sram|Mux9~13_combout\,
	combout => \proc|sram|Mux9~16_combout\);

-- Location: FF_X113_Y49_N19
\proc|sram|addresses[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][6]~q\);

-- Location: FF_X112_Y49_N9
\proc|sram|addresses[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][6]~q\);

-- Location: FF_X108_Y49_N9
\proc|sram|addresses[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][6]~q\);

-- Location: LCCOMB_X108_Y49_N22
\proc|sram|Mux9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~17_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\proc|sram|addresses[13][6]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\proc|sram|addresses[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[13][6]~q\,
	datad => \proc|sram|addresses[12][6]~q\,
	combout => \proc|sram|Mux9~17_combout\);

-- Location: FF_X112_Y49_N27
\proc|sram|addresses[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][6]~q\);

-- Location: LCCOMB_X108_Y49_N4
\proc|sram|Mux9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~18_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux9~17_combout\ & (\proc|sram|addresses[15][6]~q\)) # (!\proc|sram|Mux9~17_combout\ & ((\proc|sram|addresses[14][6]~q\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux9~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[15][6]~q\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|Mux9~17_combout\,
	datad => \proc|sram|addresses[14][6]~q\,
	combout => \proc|sram|Mux9~18_combout\);

-- Location: LCCOMB_X114_Y51_N8
\proc|sram|Mux9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~19_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux9~16_combout\ & (\proc|sram|Mux9~18_combout\)) # (!\proc|sram|Mux9~16_combout\ & ((\proc|sram|Mux9~11_combout\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|Mux9~18_combout\,
	datac => \proc|sram|Mux9~16_combout\,
	datad => \proc|sram|Mux9~11_combout\,
	combout => \proc|sram|Mux9~19_combout\);

-- Location: LCCOMB_X114_Y51_N12
\proc|sram|Mux9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux9~20_combout\ = (\SW[9]~input_o\ & ((\proc|sram|Mux9~9_combout\))) # (!\SW[9]~input_o\ & (\proc|sram|Mux9~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \proc|sram|Mux9~19_combout\,
	datad => \proc|sram|Mux9~9_combout\,
	combout => \proc|sram|Mux9~20_combout\);

-- Location: LCCOMB_X112_Y50_N26
\proc|sram|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~0_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (\proc|sram|addresses[26][7]~q\)) # (!\SW[8]~input_o\ & ((\proc|sram|addresses[18][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[26][7]~q\,
	datad => \proc|sram|addresses[18][7]~q\,
	combout => \proc|sram|Mux8~0_combout\);

-- Location: LCCOMB_X113_Y50_N0
\proc|sram|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~1_combout\ = (\proc|sram|Mux8~0_combout\ & ((\proc|sram|addresses[30][7]~q\) # ((!\SW[7]~input_o\)))) # (!\proc|sram|Mux8~0_combout\ & (((\proc|sram|addresses[22][7]~q\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux8~0_combout\,
	datab => \proc|sram|addresses[30][7]~q\,
	datac => \proc|sram|addresses[22][7]~q\,
	datad => \SW[7]~input_o\,
	combout => \proc|sram|Mux8~1_combout\);

-- Location: FF_X111_Y51_N7
\proc|sram|addresses[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][7]~q\);

-- Location: FF_X112_Y51_N25
\proc|sram|addresses[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][7]~q\);

-- Location: FF_X111_Y51_N13
\proc|sram|addresses[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][7]~q\);

-- Location: LCCOMB_X112_Y51_N24
\proc|sram|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\proc|sram|addresses[21][7]~q\)) # (!\SW[7]~input_o\ & ((\proc|sram|addresses[17][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[21][7]~q\,
	datad => \proc|sram|addresses[17][7]~q\,
	combout => \proc|sram|Mux8~2_combout\);

-- Location: FF_X112_Y51_N27
\proc|sram|addresses[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][7]~q\);

-- Location: LCCOMB_X112_Y51_N26
\proc|sram|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~3_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux8~2_combout\ & ((\proc|sram|addresses[29][7]~q\))) # (!\proc|sram|Mux8~2_combout\ & (\proc|sram|addresses[25][7]~q\)))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[25][7]~q\,
	datac => \proc|sram|addresses[29][7]~q\,
	datad => \proc|sram|Mux8~2_combout\,
	combout => \proc|sram|Mux8~3_combout\);

-- Location: LCCOMB_X112_Y47_N2
\proc|sram|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~4_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (\proc|sram|addresses[24][7]~q\)) # (!\SW[8]~input_o\ & ((\proc|sram|addresses[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[24][7]~q\,
	datad => \proc|sram|addresses[16][7]~q\,
	combout => \proc|sram|Mux8~4_combout\);

-- Location: LCCOMB_X112_Y47_N28
\proc|sram|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~5_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux8~4_combout\ & (\proc|sram|addresses[28][7]~q\)) # (!\proc|sram|Mux8~4_combout\ & ((\proc|sram|addresses[20][7]~q\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|addresses[28][7]~q\,
	datac => \proc|sram|addresses[20][7]~q\,
	datad => \proc|sram|Mux8~4_combout\,
	combout => \proc|sram|Mux8~5_combout\);

-- Location: LCCOMB_X112_Y51_N16
\proc|sram|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~6_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux8~3_combout\) # ((\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux8~5_combout\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux8~3_combout\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux8~5_combout\,
	datad => \SW[6]~input_o\,
	combout => \proc|sram|Mux8~6_combout\);

-- Location: FF_X113_Y53_N1
\proc|sram|addresses[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][7]~q\);

-- Location: FF_X111_Y53_N1
\proc|sram|addresses[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][7]~q\);

-- Location: FF_X111_Y53_N7
\proc|sram|addresses[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][7]~q\);

-- Location: LCCOMB_X111_Y53_N6
\proc|sram|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|addresses[23][7]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\proc|sram|addresses[19][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[19][7]~q\,
	datad => \proc|sram|addresses[23][7]~q\,
	combout => \proc|sram|Mux8~7_combout\);

-- Location: FF_X112_Y53_N23
\proc|sram|addresses[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[31][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][7]~q\);

-- Location: LCCOMB_X112_Y53_N28
\proc|sram|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~8_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux8~7_combout\ & (\proc|sram|addresses[31][7]~q\)) # (!\proc|sram|Mux8~7_combout\ & ((\proc|sram|addresses[27][7]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[31][7]~q\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[27][7]~q\,
	datad => \proc|sram|Mux8~7_combout\,
	combout => \proc|sram|Mux8~8_combout\);

-- Location: LCCOMB_X112_Y51_N22
\proc|sram|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~9_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux8~6_combout\ & ((\proc|sram|Mux8~8_combout\))) # (!\proc|sram|Mux8~6_combout\ & (\proc|sram|Mux8~1_combout\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux8~1_combout\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|Mux8~8_combout\,
	datad => \proc|sram|Mux8~6_combout\,
	combout => \proc|sram|Mux8~9_combout\);

-- Location: FF_X108_Y51_N17
\proc|sram|addresses[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][7]~q\);

-- Location: FF_X109_Y53_N13
\proc|sram|addresses[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][7]~q\);

-- Location: FF_X110_Y53_N1
\proc|sram|addresses[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][7]~q\);

-- Location: LCCOMB_X109_Y53_N6
\proc|sram|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~10_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\proc|sram|addresses[9][7]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\proc|sram|addresses[8][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[8][7]~q\,
	datad => \proc|sram|addresses[9][7]~q\,
	combout => \proc|sram|Mux8~10_combout\);

-- Location: FF_X110_Y53_N15
\proc|sram|addresses[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][7]~q\);

-- Location: LCCOMB_X110_Y51_N22
\proc|sram|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux8~10_combout\ & ((\proc|sram|addresses[11][7]~q\))) # (!\proc|sram|Mux8~10_combout\ & (\proc|sram|addresses[10][7]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[10][7]~q\,
	datab => \proc|sram|addresses[11][7]~q\,
	datac => \SW[6]~input_o\,
	datad => \proc|sram|Mux8~10_combout\,
	combout => \proc|sram|Mux8~11_combout\);

-- Location: FF_X114_Y49_N15
\proc|sram|addresses[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][7]~q\);

-- Location: LCCOMB_X114_Y49_N12
\proc|sram|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|addresses[6][7]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((\proc|sram|addresses[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[6][7]~q\,
	datad => \proc|sram|addresses[4][7]~q\,
	combout => \proc|sram|Mux8~12_combout\);

-- Location: LCCOMB_X114_Y49_N14
\proc|sram|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux8~12_combout\ & (\proc|sram|addresses[7][7]~q\)) # (!\proc|sram|Mux8~12_combout\ & ((\proc|sram|addresses[5][7]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[7][7]~q\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[5][7]~q\,
	datad => \proc|sram|Mux8~12_combout\,
	combout => \proc|sram|Mux8~13_combout\);

-- Location: LCCOMB_X113_Y52_N2
\proc|sram|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\proc|sram|addresses[1][7]~q\))) # (!\SW[5]~input_o\ & (\proc|sram|addresses[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[0][7]~q\,
	datad => \proc|sram|addresses[1][7]~q\,
	combout => \proc|sram|Mux8~14_combout\);

-- Location: LCCOMB_X110_Y52_N28
\proc|sram|Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~15_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux8~14_combout\ & (\proc|sram|addresses[3][7]~q\)) # (!\proc|sram|Mux8~14_combout\ & ((\proc|sram|addresses[2][7]~q\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[3][7]~q\,
	datac => \proc|sram|Mux8~14_combout\,
	datad => \proc|sram|addresses[2][7]~q\,
	combout => \proc|sram|Mux8~15_combout\);

-- Location: LCCOMB_X110_Y51_N24
\proc|sram|Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~16_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|Mux8~13_combout\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\proc|sram|Mux8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux8~15_combout\,
	datad => \proc|sram|Mux8~13_combout\,
	combout => \proc|sram|Mux8~16_combout\);

-- Location: FF_X108_Y49_N31
\proc|sram|addresses[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][7]~q\);

-- Location: LCCOMB_X108_Y49_N30
\proc|sram|Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~17_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\proc|sram|addresses[14][7]~q\)) # (!\SW[6]~input_o\ & ((\proc|sram|addresses[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[14][7]~q\,
	datad => \proc|sram|addresses[12][7]~q\,
	combout => \proc|sram|Mux8~17_combout\);

-- Location: LCCOMB_X112_Y49_N2
\proc|sram|Mux8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~18_combout\ = (\proc|sram|Mux8~17_combout\ & (((\proc|sram|addresses[15][7]~q\) # (!\SW[5]~input_o\)))) # (!\proc|sram|Mux8~17_combout\ & (\proc|sram|addresses[13][7]~q\ & ((\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux8~17_combout\,
	datab => \proc|sram|addresses[13][7]~q\,
	datac => \proc|sram|addresses[15][7]~q\,
	datad => \SW[5]~input_o\,
	combout => \proc|sram|Mux8~18_combout\);

-- Location: LCCOMB_X110_Y51_N2
\proc|sram|Mux8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~19_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux8~16_combout\ & (\proc|sram|Mux8~18_combout\)) # (!\proc|sram|Mux8~16_combout\ & ((\proc|sram|Mux8~11_combout\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux8~18_combout\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux8~11_combout\,
	datad => \proc|sram|Mux8~16_combout\,
	combout => \proc|sram|Mux8~19_combout\);

-- Location: LCCOMB_X110_Y51_N6
\proc|sram|Mux8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux8~20_combout\ = (\SW[9]~input_o\ & (\proc|sram|Mux8~9_combout\)) # (!\SW[9]~input_o\ & ((\proc|sram|Mux8~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \proc|sram|Mux8~9_combout\,
	datad => \proc|sram|Mux8~19_combout\,
	combout => \proc|sram|Mux8~20_combout\);

-- Location: LCCOMB_X112_Y51_N10
\proc|sram|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|addresses[25][0]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\proc|sram|addresses[17][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[17][0]~q\,
	datad => \proc|sram|addresses[25][0]~q\,
	combout => \proc|sram|Mux15~0_combout\);

-- Location: LCCOMB_X112_Y51_N20
\proc|sram|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~1_combout\ = (\proc|sram|Mux15~0_combout\ & (((\proc|sram|addresses[29][0]~q\)) # (!\SW[7]~input_o\))) # (!\proc|sram|Mux15~0_combout\ & (\SW[7]~input_o\ & ((\proc|sram|addresses[21][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux15~0_combout\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[29][0]~q\,
	datad => \proc|sram|addresses[21][0]~q\,
	combout => \proc|sram|Mux15~1_combout\);

-- Location: FF_X112_Y50_N21
\proc|sram|addresses[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[26][0]~16_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][0]~q\);

-- Location: FF_X111_Y50_N27
\proc|sram|addresses[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[18][0]~18_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][0]~q\);

-- Location: LCCOMB_X112_Y50_N12
\proc|sram|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\proc|sram|addresses[22][0]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\proc|sram|addresses[18][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[18][0]~q\,
	datad => \proc|sram|addresses[22][0]~q\,
	combout => \proc|sram|Mux15~2_combout\);

-- Location: LCCOMB_X112_Y50_N18
\proc|sram|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~3_combout\ = (\proc|sram|Mux15~2_combout\ & (((!\proc|sram|addresses[30][0]~q\) # (!\SW[8]~input_o\)))) # (!\proc|sram|Mux15~2_combout\ & (!\proc|sram|addresses[26][0]~q\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux15~2_combout\,
	datab => \proc|sram|addresses[26][0]~q\,
	datac => \SW[8]~input_o\,
	datad => \proc|sram|addresses[30][0]~q\,
	combout => \proc|sram|Mux15~3_combout\);

-- Location: LCCOMB_X112_Y48_N2
\proc|sram|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~4_combout\ = (\SW[8]~input_o\ & (((\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (!\proc|sram|addresses[20][0]~q\)) # (!\SW[7]~input_o\ & ((!\proc|sram|addresses[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[20][0]~q\,
	datac => \SW[7]~input_o\,
	datad => \proc|sram|addresses[16][0]~q\,
	combout => \proc|sram|Mux15~4_combout\);

-- Location: LCCOMB_X112_Y48_N8
\proc|sram|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~5_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux15~4_combout\ & (!\proc|sram|addresses[28][0]~q\)) # (!\proc|sram|Mux15~4_combout\ & ((!\proc|sram|addresses[24][0]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[28][0]~q\,
	datac => \proc|sram|addresses[24][0]~q\,
	datad => \proc|sram|Mux15~4_combout\,
	combout => \proc|sram|Mux15~5_combout\);

-- Location: LCCOMB_X112_Y48_N30
\proc|sram|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~6_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|Mux15~3_combout\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\proc|sram|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux15~5_combout\,
	datad => \proc|sram|Mux15~3_combout\,
	combout => \proc|sram|Mux15~6_combout\);

-- Location: FF_X111_Y53_N29
\proc|sram|addresses[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][0]~q\);

-- Location: LCCOMB_X113_Y53_N6
\proc|sram|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~7_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (\proc|sram|addresses[27][0]~q\)) # (!\SW[8]~input_o\ & ((\proc|sram|addresses[19][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[27][0]~q\,
	datad => \proc|sram|addresses[19][0]~q\,
	combout => \proc|sram|Mux15~7_combout\);

-- Location: LCCOMB_X111_Y53_N14
\proc|sram|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~8_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux15~7_combout\ & ((\proc|sram|addresses[31][0]~q\))) # (!\proc|sram|Mux15~7_combout\ & (\proc|sram|addresses[23][0]~q\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|addresses[23][0]~q\,
	datac => \proc|sram|addresses[31][0]~q\,
	datad => \proc|sram|Mux15~7_combout\,
	combout => \proc|sram|Mux15~8_combout\);

-- Location: LCCOMB_X112_Y48_N4
\proc|sram|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~9_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux15~6_combout\ & ((\proc|sram|Mux15~8_combout\))) # (!\proc|sram|Mux15~6_combout\ & (\proc|sram|Mux15~1_combout\)))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux15~1_combout\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux15~6_combout\,
	datad => \proc|sram|Mux15~8_combout\,
	combout => \proc|sram|Mux15~9_combout\);

-- Location: LCCOMB_X114_Y49_N2
\proc|sram|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~10_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\proc|sram|addresses[5][0]~q\)) # (!\SW[5]~input_o\ & ((!\proc|sram|addresses[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[5][0]~q\,
	datad => \proc|sram|addresses[4][0]~q\,
	combout => \proc|sram|Mux15~10_combout\);

-- Location: LCCOMB_X114_Y49_N0
\proc|sram|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux15~10_combout\ & (\proc|sram|addresses[7][0]~q\)) # (!\proc|sram|Mux15~10_combout\ & ((!\proc|sram|addresses[6][0]~q\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[7][0]~q\,
	datac => \proc|sram|addresses[6][0]~q\,
	datad => \proc|sram|Mux15~10_combout\,
	combout => \proc|sram|Mux15~11_combout\);

-- Location: FF_X109_Y53_N1
\proc|sram|addresses[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][0]~q\);

-- Location: LCCOMB_X109_Y53_N20
\proc|sram|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (!\proc|sram|addresses[10][0]~q\)) # (!\SW[6]~input_o\ & ((!\proc|sram|addresses[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[10][0]~q\,
	datad => \proc|sram|addresses[8][0]~q\,
	combout => \proc|sram|Mux15~12_combout\);

-- Location: LCCOMB_X109_Y53_N0
\proc|sram|Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux15~12_combout\ & (\proc|sram|addresses[11][0]~q\)) # (!\proc|sram|Mux15~12_combout\ & ((\proc|sram|addresses[9][0]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|addresses[11][0]~q\,
	datac => \proc|sram|addresses[9][0]~q\,
	datad => \proc|sram|Mux15~12_combout\,
	combout => \proc|sram|Mux15~13_combout\);

-- Location: LCCOMB_X113_Y52_N28
\proc|sram|Mux15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\proc|sram|addresses[2][0]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (!\proc|sram|addresses[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[0][0]~q\,
	datad => \proc|sram|addresses[2][0]~q\,
	combout => \proc|sram|Mux15~14_combout\);

-- Location: LCCOMB_X113_Y52_N0
\proc|sram|Mux15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~15_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux15~14_combout\ & (\proc|sram|addresses[3][0]~q\)) # (!\proc|sram|Mux15~14_combout\ & ((\proc|sram|addresses[1][0]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[3][0]~q\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[1][0]~q\,
	datad => \proc|sram|Mux15~14_combout\,
	combout => \proc|sram|Mux15~15_combout\);

-- Location: LCCOMB_X112_Y50_N16
\proc|sram|Mux15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~16_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\proc|sram|Mux15~13_combout\))) # (!\SW[8]~input_o\ & (\proc|sram|Mux15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux15~15_combout\,
	datad => \proc|sram|Mux15~13_combout\,
	combout => \proc|sram|Mux15~16_combout\);

-- Location: FF_X108_Y49_N27
\proc|sram|addresses[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[14][0]~30_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][0]~q\);

-- Location: FF_X112_Y49_N13
\proc|sram|addresses[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][0]~q\);

-- Location: FF_X108_Y49_N17
\proc|sram|addresses[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[12][0]~31_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][0]~q\);

-- Location: LCCOMB_X112_Y49_N12
\proc|sram|Mux15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~17_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\proc|sram|addresses[13][0]~q\)) # (!\SW[5]~input_o\ & ((!\proc|sram|addresses[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[13][0]~q\,
	datad => \proc|sram|addresses[12][0]~q\,
	combout => \proc|sram|Mux15~17_combout\);

-- Location: FF_X112_Y49_N15
\proc|sram|addresses[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][0]~q\);

-- Location: LCCOMB_X112_Y50_N14
\proc|sram|Mux15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~18_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux15~17_combout\ & ((\proc|sram|addresses[15][0]~q\))) # (!\proc|sram|Mux15~17_combout\ & (!\proc|sram|addresses[14][0]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[14][0]~q\,
	datac => \proc|sram|addresses[15][0]~q\,
	datad => \proc|sram|Mux15~17_combout\,
	combout => \proc|sram|Mux15~18_combout\);

-- Location: LCCOMB_X112_Y50_N28
\proc|sram|Mux15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~19_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux15~16_combout\ & (\proc|sram|Mux15~18_combout\)) # (!\proc|sram|Mux15~16_combout\ & ((\proc|sram|Mux15~11_combout\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|Mux15~18_combout\,
	datac => \proc|sram|Mux15~11_combout\,
	datad => \proc|sram|Mux15~16_combout\,
	combout => \proc|sram|Mux15~19_combout\);

-- Location: LCCOMB_X112_Y48_N28
\proc|sram|Mux15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux15~20_combout\ = (\SW[9]~input_o\ & (\proc|sram|Mux15~9_combout\)) # (!\SW[9]~input_o\ & ((\proc|sram|Mux15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \proc|sram|Mux15~9_combout\,
	datad => \proc|sram|Mux15~19_combout\,
	combout => \proc|sram|Mux15~20_combout\);

-- Location: FF_X113_Y47_N27
\proc|sram|addresses[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[20][1]~36_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][1]~q\);

-- Location: FF_X109_Y53_N27
\proc|sram|addresses[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[9][1]~40_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][1]~q\);

-- Location: FF_X110_Y53_N21
\proc|sram|addresses[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[8][1]~41_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][1]~q\);

-- Location: LCCOMB_X109_Y53_N8
\proc|sram|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~10_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((!\proc|sram|addresses[9][1]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((!\proc|sram|addresses[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[9][1]~q\,
	datad => \proc|sram|addresses[8][1]~q\,
	combout => \proc|sram|Mux14~10_combout\);

-- Location: LCCOMB_X112_Y48_N10
\proc|sram|Mux14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~17_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|addresses[14][1]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\proc|sram|addresses[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[14][1]~q\,
	datad => \proc|sram|addresses[12][1]~q\,
	combout => \proc|sram|Mux14~17_combout\);

-- Location: FF_X110_Y49_N11
\proc|sram|addresses[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[29][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][2]~q\);

-- Location: FF_X110_Y53_N11
\proc|sram|addresses[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[8][2]~58_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][2]~q\);

-- Location: FF_X108_Y49_N15
\proc|sram|addresses[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][2]~q\);

-- Location: LCCOMB_X112_Y49_N24
\proc|sram|Mux13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~17_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\proc|sram|addresses[13][2]~q\)) # (!\SW[5]~input_o\ & ((\proc|sram|addresses[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[13][2]~q\,
	datad => \proc|sram|addresses[12][2]~q\,
	combout => \proc|sram|Mux13~17_combout\);

-- Location: LCCOMB_X108_Y49_N14
\proc|sram|Mux13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~18_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux13~17_combout\ & (\proc|sram|addresses[15][2]~q\)) # (!\proc|sram|Mux13~17_combout\ & ((\proc|sram|addresses[14][2]~q\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux13~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[15][2]~q\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[14][2]~q\,
	datad => \proc|sram|Mux13~17_combout\,
	combout => \proc|sram|Mux13~18_combout\);

-- Location: FF_X112_Y47_N13
\proc|sram|addresses[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[20][3]~68_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][3]~q\);

-- Location: FF_X113_Y53_N31
\proc|sram|addresses[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[27][3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][3]~q\);

-- Location: FF_X111_Y53_N23
\proc|sram|addresses[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[23][3]~70_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][3]~q\);

-- Location: FF_X111_Y53_N13
\proc|sram|addresses[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[19][3]~71_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][3]~q\);

-- Location: LCCOMB_X111_Y53_N2
\proc|sram|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\proc|sram|addresses[23][3]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((!\proc|sram|addresses[19][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[23][3]~q\,
	datad => \proc|sram|addresses[19][3]~q\,
	combout => \proc|sram|Mux12~7_combout\);

-- Location: FF_X112_Y53_N9
\proc|sram|addresses[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][3]~q\);

-- Location: LCCOMB_X112_Y53_N14
\proc|sram|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~8_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux12~7_combout\ & ((\proc|sram|addresses[31][3]~q\))) # (!\proc|sram|Mux12~7_combout\ & (\proc|sram|addresses[27][3]~q\)))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[27][3]~q\,
	datab => \proc|sram|addresses[31][3]~q\,
	datac => \SW[8]~input_o\,
	datad => \proc|sram|Mux12~7_combout\,
	combout => \proc|sram|Mux12~8_combout\);

-- Location: LCCOMB_X112_Y46_N12
\proc|sram|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~12_combout\ = (\SW[5]~input_o\ & (((\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((!\proc|sram|addresses[6][3]~q\))) # (!\SW[6]~input_o\ & (!\proc|sram|addresses[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[4][3]~q\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \proc|sram|addresses[6][3]~q\,
	combout => \proc|sram|Mux12~12_combout\);

-- Location: FF_X108_Y49_N7
\proc|sram|addresses[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][3]~q\);

-- Location: FF_X108_Y49_N29
\proc|sram|addresses[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][3]~q\);

-- Location: LCCOMB_X108_Y49_N28
\proc|sram|Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~17_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\proc|sram|addresses[14][3]~q\))) # (!\SW[6]~input_o\ & (\proc|sram|addresses[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[12][3]~q\,
	datad => \proc|sram|addresses[14][3]~q\,
	combout => \proc|sram|Mux12~17_combout\);

-- Location: LCCOMB_X112_Y49_N10
\proc|sram|Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~18_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux12~17_combout\ & ((\proc|sram|addresses[15][3]~q\))) # (!\proc|sram|Mux12~17_combout\ & (\proc|sram|addresses[13][3]~q\)))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux12~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[13][3]~q\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[15][3]~q\,
	datad => \proc|sram|Mux12~17_combout\,
	combout => \proc|sram|Mux12~18_combout\);

-- Location: LCCOMB_X113_Y51_N24
\proc|sram|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~0_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|addresses[25][4]~q\))) # (!\SW[3]~input_o\ & (\proc|sram|addresses[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[17][4]~q\,
	datac => \proc|sram|addresses[25][4]~q\,
	datad => \SW[3]~input_o\,
	combout => \proc|sram|Mux27~0_combout\);

-- Location: LCCOMB_X113_Y51_N30
\proc|sram|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux27~0_combout\ & (\proc|sram|addresses[29][4]~q\)) # (!\proc|sram|Mux27~0_combout\ & ((\proc|sram|addresses[21][4]~q\))))) # (!\SW[2]~input_o\ & (\proc|sram|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|Mux27~0_combout\,
	datac => \proc|sram|addresses[29][4]~q\,
	datad => \proc|sram|addresses[21][4]~q\,
	combout => \proc|sram|Mux27~1_combout\);

-- Location: LCCOMB_X113_Y48_N10
\proc|sram|Mux27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~17_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (!\proc|sram|addresses[13][4]~q\)) # (!\SW[0]~input_o\ & ((!\proc|sram|addresses[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[13][4]~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \proc|sram|addresses[12][4]~q\,
	combout => \proc|sram|Mux27~17_combout\);

-- Location: LCCOMB_X111_Y50_N2
\proc|sram|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~0_combout\ = (\SW[3]~input_o\ & ((\proc|sram|addresses[26][5]~q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\proc|sram|addresses[18][5]~q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[26][5]~q\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[18][5]~q\,
	datad => \SW[2]~input_o\,
	combout => \proc|sram|Mux26~0_combout\);

-- Location: LCCOMB_X111_Y51_N22
\proc|sram|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux26~0_combout\ & (\proc|sram|addresses[30][5]~q\)) # (!\proc|sram|Mux26~0_combout\ & ((\proc|sram|addresses[22][5]~q\))))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[30][5]~q\,
	datac => \proc|sram|addresses[22][5]~q\,
	datad => \proc|sram|Mux26~0_combout\,
	combout => \proc|sram|Mux26~1_combout\);

-- Location: LCCOMB_X110_Y53_N22
\proc|sram|Mux26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\proc|sram|addresses[9][5]~q\))) # (!\SW[0]~input_o\ & (\proc|sram|addresses[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[8][5]~q\,
	datad => \proc|sram|addresses[9][5]~q\,
	combout => \proc|sram|Mux26~10_combout\);

-- Location: LCCOMB_X110_Y53_N24
\proc|sram|Mux26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~11_combout\ = (\proc|sram|Mux26~10_combout\ & (((\proc|sram|addresses[11][5]~q\)) # (!\SW[1]~input_o\))) # (!\proc|sram|Mux26~10_combout\ & (\SW[1]~input_o\ & ((\proc|sram|addresses[10][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux26~10_combout\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[11][5]~q\,
	datad => \proc|sram|addresses[10][5]~q\,
	combout => \proc|sram|Mux26~11_combout\);

-- Location: LCCOMB_X111_Y51_N20
\proc|sram|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\proc|sram|addresses[25][6]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\proc|sram|addresses[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[25][6]~q\,
	datad => \proc|sram|addresses[17][6]~q\,
	combout => \proc|sram|Mux25~0_combout\);

-- Location: LCCOMB_X112_Y51_N30
\proc|sram|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux25~0_combout\ & ((\proc|sram|addresses[29][6]~q\))) # (!\proc|sram|Mux25~0_combout\ & (\proc|sram|addresses[21][6]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[21][6]~q\,
	datac => \proc|sram|addresses[29][6]~q\,
	datad => \proc|sram|Mux25~0_combout\,
	combout => \proc|sram|Mux25~1_combout\);

-- Location: LCCOMB_X113_Y50_N20
\proc|sram|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|addresses[22][6]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\proc|sram|addresses[18][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[18][6]~q\,
	datad => \proc|sram|addresses[22][6]~q\,
	combout => \proc|sram|Mux25~2_combout\);

-- Location: LCCOMB_X113_Y50_N26
\proc|sram|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux25~2_combout\ & ((\proc|sram|addresses[30][6]~q\))) # (!\proc|sram|Mux25~2_combout\ & (\proc|sram|addresses[26][6]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[26][6]~q\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[30][6]~q\,
	datad => \proc|sram|Mux25~2_combout\,
	combout => \proc|sram|Mux25~3_combout\);

-- Location: LCCOMB_X111_Y47_N26
\proc|sram|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~4_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|addresses[20][6]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\proc|sram|addresses[16][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[16][6]~q\,
	datad => \proc|sram|addresses[20][6]~q\,
	combout => \proc|sram|Mux25~4_combout\);

-- Location: LCCOMB_X113_Y47_N22
\proc|sram|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~5_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux25~4_combout\ & (\proc|sram|addresses[28][6]~q\)) # (!\proc|sram|Mux25~4_combout\ & ((\proc|sram|addresses[24][6]~q\))))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[28][6]~q\,
	datac => \proc|sram|addresses[24][6]~q\,
	datad => \proc|sram|Mux25~4_combout\,
	combout => \proc|sram|Mux25~5_combout\);

-- Location: LCCOMB_X113_Y50_N12
\proc|sram|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~6_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\proc|sram|Mux25~3_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\proc|sram|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|Mux25~3_combout\,
	datad => \proc|sram|Mux25~5_combout\,
	combout => \proc|sram|Mux25~6_combout\);

-- Location: LCCOMB_X113_Y53_N22
\proc|sram|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~7_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\proc|sram|addresses[27][6]~q\)) # (!\SW[3]~input_o\ & ((\proc|sram|addresses[19][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[27][6]~q\,
	datad => \proc|sram|addresses[19][6]~q\,
	combout => \proc|sram|Mux25~7_combout\);

-- Location: LCCOMB_X112_Y53_N20
\proc|sram|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~8_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux25~7_combout\ & ((\proc|sram|addresses[31][6]~q\))) # (!\proc|sram|Mux25~7_combout\ & (\proc|sram|addresses[23][6]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[23][6]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[31][6]~q\,
	datad => \proc|sram|Mux25~7_combout\,
	combout => \proc|sram|Mux25~8_combout\);

-- Location: LCCOMB_X113_Y50_N10
\proc|sram|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~9_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux25~6_combout\ & (\proc|sram|Mux25~8_combout\)) # (!\proc|sram|Mux25~6_combout\ & ((\proc|sram|Mux25~1_combout\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|Mux25~8_combout\,
	datac => \proc|sram|Mux25~1_combout\,
	datad => \proc|sram|Mux25~6_combout\,
	combout => \proc|sram|Mux25~9_combout\);

-- Location: LCCOMB_X114_Y49_N20
\proc|sram|Mux25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|addresses[5][6]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\proc|sram|addresses[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[5][6]~q\,
	datad => \proc|sram|addresses[4][6]~q\,
	combout => \proc|sram|Mux25~10_combout\);

-- Location: LCCOMB_X114_Y52_N6
\proc|sram|Mux25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux25~10_combout\ & (\proc|sram|addresses[7][6]~q\)) # (!\proc|sram|Mux25~10_combout\ & ((\proc|sram|addresses[6][6]~q\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux25~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[7][6]~q\,
	datac => \proc|sram|addresses[6][6]~q\,
	datad => \proc|sram|Mux25~10_combout\,
	combout => \proc|sram|Mux25~11_combout\);

-- Location: LCCOMB_X110_Y53_N12
\proc|sram|Mux25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\proc|sram|addresses[10][6]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\proc|sram|addresses[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[8][6]~q\,
	datad => \proc|sram|addresses[10][6]~q\,
	combout => \proc|sram|Mux25~12_combout\);

-- Location: LCCOMB_X109_Y52_N20
\proc|sram|Mux25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux25~12_combout\ & (\proc|sram|addresses[11][6]~q\)) # (!\proc|sram|Mux25~12_combout\ & ((\proc|sram|addresses[9][6]~q\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux25~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|addresses[11][6]~q\,
	datac => \proc|sram|Mux25~12_combout\,
	datad => \proc|sram|addresses[9][6]~q\,
	combout => \proc|sram|Mux25~13_combout\);

-- Location: LCCOMB_X112_Y52_N24
\proc|sram|Mux25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~14_combout\ = (\SW[1]~input_o\ & (((\proc|sram|addresses[2][6]~q\) # (\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\proc|sram|addresses[0][6]~q\ & ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[0][6]~q\,
	datac => \proc|sram|addresses[2][6]~q\,
	datad => \SW[0]~input_o\,
	combout => \proc|sram|Mux25~14_combout\);

-- Location: LCCOMB_X114_Y52_N24
\proc|sram|Mux25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~15_combout\ = (\proc|sram|Mux25~14_combout\ & (((\proc|sram|addresses[3][6]~q\)) # (!\SW[0]~input_o\))) # (!\proc|sram|Mux25~14_combout\ & (\SW[0]~input_o\ & (\proc|sram|addresses[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux25~14_combout\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[1][6]~q\,
	datad => \proc|sram|addresses[3][6]~q\,
	combout => \proc|sram|Mux25~15_combout\);

-- Location: LCCOMB_X114_Y52_N22
\proc|sram|Mux25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~16_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\) # (\proc|sram|Mux25~13_combout\)))) # (!\SW[3]~input_o\ & (\proc|sram|Mux25~15_combout\ & (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|Mux25~15_combout\,
	datac => \SW[2]~input_o\,
	datad => \proc|sram|Mux25~13_combout\,
	combout => \proc|sram|Mux25~16_combout\);

-- Location: LCCOMB_X108_Y49_N8
\proc|sram|Mux25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~17_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|addresses[13][6]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\proc|sram|addresses[12][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[12][6]~q\,
	datad => \proc|sram|addresses[13][6]~q\,
	combout => \proc|sram|Mux25~17_combout\);

-- Location: LCCOMB_X108_Y49_N2
\proc|sram|Mux25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~18_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux25~17_combout\ & (\proc|sram|addresses[15][6]~q\)) # (!\proc|sram|Mux25~17_combout\ & ((\proc|sram|addresses[14][6]~q\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux25~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[15][6]~q\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux25~17_combout\,
	datad => \proc|sram|addresses[14][6]~q\,
	combout => \proc|sram|Mux25~18_combout\);

-- Location: LCCOMB_X114_Y52_N8
\proc|sram|Mux25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~19_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux25~16_combout\ & ((\proc|sram|Mux25~18_combout\))) # (!\proc|sram|Mux25~16_combout\ & (\proc|sram|Mux25~11_combout\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux25~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux25~11_combout\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|Mux25~16_combout\,
	datad => \proc|sram|Mux25~18_combout\,
	combout => \proc|sram|Mux25~19_combout\);

-- Location: LCCOMB_X114_Y52_N12
\proc|sram|Mux25~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux25~20_combout\ = (\SW[4]~input_o\ & ((\proc|sram|Mux25~9_combout\))) # (!\SW[4]~input_o\ & (\proc|sram|Mux25~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \proc|sram|Mux25~19_combout\,
	datad => \proc|sram|Mux25~9_combout\,
	combout => \proc|sram|Mux25~20_combout\);

-- Location: LCCOMB_X111_Y51_N12
\proc|sram|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|addresses[21][7]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\proc|sram|addresses[17][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[17][7]~q\,
	datad => \proc|sram|addresses[21][7]~q\,
	combout => \proc|sram|Mux24~2_combout\);

-- Location: LCCOMB_X111_Y51_N6
\proc|sram|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~3_combout\ = (\proc|sram|Mux24~2_combout\ & (((\proc|sram|addresses[29][7]~q\)) # (!\SW[3]~input_o\))) # (!\proc|sram|Mux24~2_combout\ & (\SW[3]~input_o\ & (\proc|sram|addresses[25][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux24~2_combout\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[25][7]~q\,
	datad => \proc|sram|addresses[29][7]~q\,
	combout => \proc|sram|Mux24~3_combout\);

-- Location: LCCOMB_X111_Y53_N0
\proc|sram|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\proc|sram|addresses[23][7]~q\)) # (!\SW[2]~input_o\ & ((\proc|sram|addresses[19][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[23][7]~q\,
	datad => \proc|sram|addresses[19][7]~q\,
	combout => \proc|sram|Mux24~7_combout\);

-- Location: LCCOMB_X113_Y53_N0
\proc|sram|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~8_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux24~7_combout\ & ((\proc|sram|addresses[31][7]~q\))) # (!\proc|sram|Mux24~7_combout\ & (\proc|sram|addresses[27][7]~q\)))) # (!\SW[3]~input_o\ & (\proc|sram|Mux24~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|Mux24~7_combout\,
	datac => \proc|sram|addresses[27][7]~q\,
	datad => \proc|sram|addresses[31][7]~q\,
	combout => \proc|sram|Mux24~8_combout\);

-- Location: LCCOMB_X110_Y53_N0
\proc|sram|Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\proc|sram|addresses[9][7]~q\))) # (!\SW[0]~input_o\ & (\proc|sram|addresses[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[8][7]~q\,
	datad => \proc|sram|addresses[9][7]~q\,
	combout => \proc|sram|Mux24~10_combout\);

-- Location: LCCOMB_X110_Y53_N14
\proc|sram|Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux24~10_combout\ & (\proc|sram|addresses[11][7]~q\)) # (!\proc|sram|Mux24~10_combout\ & ((\proc|sram|addresses[10][7]~q\))))) # (!\SW[1]~input_o\ & (\proc|sram|Mux24~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|Mux24~10_combout\,
	datac => \proc|sram|addresses[11][7]~q\,
	datad => \proc|sram|addresses[10][7]~q\,
	combout => \proc|sram|Mux24~11_combout\);

-- Location: LCCOMB_X108_Y49_N0
\proc|sram|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~17_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|addresses[13][0]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\proc|sram|addresses[12][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[12][0]~q\,
	datad => \proc|sram|addresses[13][0]~q\,
	combout => \proc|sram|Mux31~17_combout\);

-- Location: LCCOMB_X108_Y49_N18
\proc|sram|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~18_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux31~17_combout\ & ((\proc|sram|addresses[15][0]~q\))) # (!\proc|sram|Mux31~17_combout\ & (!\proc|sram|addresses[14][0]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux31~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[14][0]~q\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[15][0]~q\,
	datad => \proc|sram|Mux31~17_combout\,
	combout => \proc|sram|Mux31~18_combout\);

-- Location: LCCOMB_X114_Y47_N6
\proc|sram|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~4_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((!\proc|sram|addresses[24][1]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\proc|sram|addresses[16][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[16][1]~q\,
	datad => \proc|sram|addresses[24][1]~q\,
	combout => \proc|sram|Mux30~4_combout\);

-- Location: LCCOMB_X114_Y47_N12
\proc|sram|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~5_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux30~4_combout\ & ((!\proc|sram|addresses[28][1]~q\))) # (!\proc|sram|Mux30~4_combout\ & (!\proc|sram|addresses[20][1]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[20][1]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[28][1]~q\,
	datad => \proc|sram|Mux30~4_combout\,
	combout => \proc|sram|Mux30~5_combout\);

-- Location: LCCOMB_X111_Y53_N10
\proc|sram|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\proc|sram|addresses[23][1]~q\))) # (!\SW[2]~input_o\ & (\proc|sram|addresses[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[19][1]~q\,
	datad => \proc|sram|addresses[23][1]~q\,
	combout => \proc|sram|Mux30~7_combout\);

-- Location: LCCOMB_X109_Y52_N14
\proc|sram|Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((!\proc|sram|addresses[9][1]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((!\proc|sram|addresses[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[9][1]~q\,
	datad => \proc|sram|addresses[8][1]~q\,
	combout => \proc|sram|Mux30~10_combout\);

-- Location: LCCOMB_X109_Y52_N8
\proc|sram|Mux30~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux30~10_combout\ & ((\proc|sram|addresses[11][1]~q\))) # (!\proc|sram|Mux30~10_combout\ & (\proc|sram|addresses[10][1]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[10][1]~q\,
	datac => \proc|sram|Mux30~10_combout\,
	datad => \proc|sram|addresses[11][1]~q\,
	combout => \proc|sram|Mux30~11_combout\);

-- Location: LCCOMB_X111_Y53_N30
\proc|sram|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (!\proc|sram|addresses[23][3]~q\)) # (!\SW[2]~input_o\ & ((!\proc|sram|addresses[19][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[23][3]~q\,
	datad => \proc|sram|addresses[19][3]~q\,
	combout => \proc|sram|Mux28~7_combout\);

-- Location: LCCOMB_X112_Y53_N8
\proc|sram|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~8_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux28~7_combout\ & ((\proc|sram|addresses[31][3]~q\))) # (!\proc|sram|Mux28~7_combout\ & (\proc|sram|addresses[27][3]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[27][3]~q\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[31][3]~q\,
	datad => \proc|sram|Mux28~7_combout\,
	combout => \proc|sram|Mux28~8_combout\);

-- Location: LCCOMB_X108_Y49_N6
\proc|sram|Mux28~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~17_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\proc|sram|addresses[14][3]~q\)) # (!\SW[1]~input_o\ & ((\proc|sram|addresses[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[14][3]~q\,
	datad => \proc|sram|addresses[12][3]~q\,
	combout => \proc|sram|Mux28~17_combout\);

-- Location: LCCOMB_X114_Y48_N16
\proc|incCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|incCounter~2_combout\ = (\KEY[1]~input_o\ & (((!\KEY[0]~input_o\ & \proc|currState.MEM_WRITE~q\)) # (!\proc|currState.FETCH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|incCounter~2_combout\);

-- Location: LCCOMB_X113_Y49_N18
\proc|sram|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~21_combout\ = (\SW[11]~input_o\ & !\SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \proc|sram|Decoder0~21_combout\);

-- Location: LCCOMB_X108_Y51_N22
\proc|alu|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux1~3_combout\ = (\SW[17]~input_o\ & ((\proc|alu|Mux1~1_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \proc|alu|Mux1~2_combout\,
	datad => \proc|alu|Mux1~1_combout\,
	combout => \proc|alu|Mux1~3_combout\);

-- Location: LCCOMB_X109_Y51_N22
\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\ = \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\) # ((!\proc|sData2\(3) & 
-- \proc|sData1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(3),
	datab => \proc|sData1\(3),
	datac => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\,
	datad => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X109_Y48_N14
\proc|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector7~2_combout\ = (\proc|currState.MEM_WRITE~q\ & (((\proc|alu|Mux6~4_combout\)))) # (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & ((\proc|alu|Mux6~4_combout\))) # (!\proc|currState.EXECUTE~q\ & (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datab => \proc|currState.EXECUTE~q\,
	datac => \SW[16]~input_o\,
	datad => \proc|alu|Mux6~4_combout\,
	combout => \proc|Selector7~2_combout\);

-- Location: LCCOMB_X109_Y48_N26
\proc|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector9~2_combout\ = (\proc|alu|Mux4~12_combout\ & ((\proc|currState.EXECUTE~q\) # (\proc|currState.MEM_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.EXECUTE~q\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|alu|Mux4~12_combout\,
	combout => \proc|Selector9~2_combout\);

-- Location: LCCOMB_X110_Y52_N6
\proc|sram|addresses[11][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[11][4]~7_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[11][4]~7_combout\);

-- Location: LCCOMB_X112_Y49_N30
\proc|sram|addresses[13][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[13][4]~13_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[13][4]~13_combout\);

-- Location: LCCOMB_X112_Y50_N20
\proc|sram|addresses[26][0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[26][0]~16_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[26][0]~16_combout\);

-- Location: LCCOMB_X111_Y50_N26
\proc|sram|addresses[18][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[18][0]~18_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[18][0]~18_combout\);

-- Location: LCCOMB_X108_Y49_N26
\proc|sram|addresses[14][0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[14][0]~30_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[14][0]~30_combout\);

-- Location: LCCOMB_X108_Y49_N16
\proc|sram|addresses[12][0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[12][0]~31_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[12][0]~31_combout\);

-- Location: LCCOMB_X113_Y47_N26
\proc|sram|addresses[20][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[20][1]~36_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[20][1]~36_combout\);

-- Location: LCCOMB_X109_Y53_N26
\proc|sram|addresses[9][1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[9][1]~40_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[9][1]~40_combout\);

-- Location: LCCOMB_X110_Y53_N20
\proc|sram|addresses[8][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[8][1]~41_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[8][1]~41_combout\);

-- Location: LCCOMB_X110_Y53_N10
\proc|sram|addresses[8][2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[8][2]~58_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[8][2]~58_combout\);

-- Location: LCCOMB_X112_Y47_N12
\proc|sram|addresses[20][3]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[20][3]~68_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[20][3]~68_combout\);

-- Location: LCCOMB_X111_Y53_N22
\proc|sram|addresses[23][3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[23][3]~70_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[23][3]~70_combout\);

-- Location: LCCOMB_X111_Y53_N12
\proc|sram|addresses[19][3]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[19][3]~71_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[19][3]~71_combout\);

-- Location: LCCOMB_X108_Y53_N10
\proc|hexIn7[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn7\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector28~0_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn7\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|Selector28~0_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn7\(1));

-- Location: LCCOMB_X109_Y48_N10
\proc|hexIn2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn2\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector9~2_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector9~2_combout\,
	datac => \proc|hexIn0[0]~0clkctrl_outclk\,
	datad => \proc|hexIn2\(3),
	combout => \proc|hexIn2\(3));

-- Location: LCCOMB_X114_Y48_N28
\proc|incCounter\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|incCounter~combout\ = (\proc|incCounter~2_combout\ & (\proc|currState.MEM_WRITE~q\)) # (!\proc|incCounter~2_combout\ & ((\proc|incCounter~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.MEM_WRITE~q\,
	datac => \proc|incCounter~combout\,
	datad => \proc|incCounter~2_combout\,
	combout => \proc|incCounter~combout\);

-- Location: LCCOMB_X112_Y53_N2
\proc|sramDataWrite[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(6) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|alu|Mux1~3_combout\))) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|sramDataWrite\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sramDataWrite\(6),
	datac => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	datad => \proc|alu|Mux1~3_combout\,
	combout => \proc|sramDataWrite\(6));

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: CLKCTRL_G8
\proc|incCounter~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|incCounter~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|incCounter~clkctrl_outclk\);

-- Location: LCCOMB_X112_Y53_N30
\proc|sram|addresses[21][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[21][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[21][6]~feeder_combout\);

-- Location: LCCOMB_X111_Y53_N18
\proc|sram|addresses[23][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[23][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[23][6]~feeder_combout\);

-- Location: LCCOMB_X111_Y51_N30
\proc|sram|addresses[25][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[25][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[25][6]~feeder_combout\);

-- Location: LCCOMB_X114_Y51_N24
\proc|sram|addresses[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[3][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[3][6]~feeder_combout\);

-- Location: LCCOMB_X113_Y50_N22
\proc|sram|addresses[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[30][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[30][6]~feeder_combout\);

-- Location: LCCOMB_X113_Y50_N16
\proc|sram|addresses[22][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[22][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[22][6]~feeder_combout\);

-- Location: LCCOMB_X112_Y47_N18
\proc|sram|addresses[20][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[20][6]~feeder_combout\ = \proc|sramDataWrite\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(6),
	combout => \proc|sram|addresses[20][6]~feeder_combout\);

-- Location: LCCOMB_X112_Y53_N22
\proc|sram|addresses[31][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[31][7]~feeder_combout\ = \proc|sramDataWrite\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(7),
	combout => \proc|sram|addresses[31][7]~feeder_combout\);

-- Location: LCCOMB_X110_Y49_N10
\proc|sram|addresses[29][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[29][2]~feeder_combout\ = \proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[29][2]~feeder_combout\);

-- Location: LCCOMB_X113_Y53_N30
\proc|sram|addresses[27][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[27][3]~feeder_combout\ = \proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[27][3]~feeder_combout\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|LEDG\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|LEDG\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|LEDG\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|LEDG\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(0),
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(1),
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(2),
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(3),
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(4),
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(5),
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX7\(6),
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(0),
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(1),
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(2),
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(3),
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(4),
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(5),
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX6\(6),
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(0),
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(1),
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(2),
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(3),
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(4),
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(5),
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX5\(6),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(0),
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(1),
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(2),
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(3),
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(4),
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(5),
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX4\(6),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(0),
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(1),
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(2),
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(4),
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(5),
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX3\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(0),
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(1),
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(5),
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX2\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(0),
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(1),
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(2),
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(4),
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(5),
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|HEX0\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X114_Y48_N20
\proc|nextState.FETCH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|nextState.FETCH~1_combout\ = (\KEY[1]~input_o\ & !\proc|currState.MEM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|nextState.FETCH~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y48_N24
\proc|nextState.FETCH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|nextState.FETCH~0_combout\ = (!\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \proc|nextState.FETCH~0_combout\);

-- Location: FF_X114_Y48_N17
\proc|currState.FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \proc|nextState.FETCH~1_combout\,
	sload => VCC,
	ena => \proc|nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|currState.FETCH~q\);

-- Location: LCCOMB_X114_Y48_N18
\proc|nextState.DECODE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|nextState.DECODE~0_combout\ = (!\proc|currState.FETCH~q\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \KEY[1]~input_o\,
	combout => \proc|nextState.DECODE~0_combout\);

-- Location: FF_X114_Y48_N31
\proc|currState.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \proc|nextState.DECODE~0_combout\,
	sload => VCC,
	ena => \proc|nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|currState.DECODE~q\);

-- Location: LCCOMB_X114_Y48_N10
\proc|nextState.EXECUTE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|nextState.EXECUTE~0_combout\ = (\proc|currState.DECODE~q\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.DECODE~q\,
	datad => \KEY[1]~input_o\,
	combout => \proc|nextState.EXECUTE~0_combout\);

-- Location: FF_X114_Y48_N27
\proc|currState.EXECUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \proc|nextState.EXECUTE~0_combout\,
	sload => VCC,
	ena => \proc|nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|currState.EXECUTE~q\);

-- Location: LCCOMB_X114_Y48_N12
\proc|nextState.MEM_WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|nextState.MEM_WRITE~0_combout\ = (\KEY[1]~input_o\ & \proc|currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|nextState.MEM_WRITE~0_combout\);

-- Location: FF_X114_Y48_N1
\proc|currState.MEM_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \proc|nextState.MEM_WRITE~0_combout\,
	sload => VCC,
	ena => \proc|nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|currState.MEM_WRITE~q\);

-- Location: LCCOMB_X109_Y52_N2
\proc|LEDG[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|LEDG\(0) = (\KEY[1]~input_o\ & (\proc|currState.MEM_WRITE~q\)) # (!\KEY[1]~input_o\ & ((\proc|LEDG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|LEDG\(0),
	combout => \proc|LEDG\(0));

-- Location: LCCOMB_X112_Y52_N6
\proc|LEDG[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|LEDG\(1) = (\KEY[1]~input_o\ & (\proc|currState.EXECUTE~q\)) # (!\KEY[1]~input_o\ & ((\proc|LEDG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.EXECUTE~q\,
	datac => \KEY[1]~input_o\,
	datad => \proc|LEDG\(1),
	combout => \proc|LEDG\(1));

-- Location: LCCOMB_X114_Y48_N30
\proc|LEDG[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|LEDG\(2) = (\KEY[1]~input_o\ & (\proc|currState.DECODE~q\)) # (!\KEY[1]~input_o\ & ((\proc|LEDG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|currState.DECODE~q\,
	datad => \proc|LEDG\(2),
	combout => \proc|LEDG\(2));

-- Location: LCCOMB_X109_Y52_N12
\proc|LEDG[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|LEDG\(3) = (\KEY[1]~input_o\ & (!\proc|currState.FETCH~q\)) # (!\KEY[1]~input_o\ & ((\proc|LEDG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|LEDG\(3),
	combout => \proc|LEDG\(3));

-- Location: LCCOMB_X114_Y41_N14
\proc|hexIn0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn0[0]~0_combout\ = (\KEY[1]~input_o\ & \proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \proc|currState.FETCH~q\,
	combout => \proc|hexIn0[0]~0_combout\);

-- Location: CLKCTRL_G9
\proc|hexIn0[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|hexIn0[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|hexIn0[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X108_Y53_N4
\proc|hexIn7[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn7\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector30~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn7\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector30~0_combout\,
	datac => \proc|hexIn7\(2),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn7\(2));

-- Location: CLKCTRL_G5
\proc|nextState.EXECUTE~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|nextState.EXECUTE~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|nextState.EXECUTE~0clkctrl_outclk\);

-- Location: LCCOMB_X109_Y51_N24
\proc|sData1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(7) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadOne\(7))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|dataReadOne\(7),
	datab => \proc|sData1\(7),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(7));

-- Location: LCCOMB_X108_Y52_N4
\proc|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector31~0_combout\ = (\proc|currState.EXECUTE~q\ & \proc|sData1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.EXECUTE~q\,
	datad => \proc|sData1\(7),
	combout => \proc|Selector31~0_combout\);

-- Location: LCCOMB_X108_Y53_N26
\proc|hexIn7[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn7\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector31~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn7\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector31~0_combout\,
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn7\(3));

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y48_N4
\proc|sramEnable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramEnable~0_combout\ = (!\proc|currState.EXECUTE~q\ & (\KEY[1]~input_o\ & (!\proc|currState.DECODE~q\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.EXECUTE~q\,
	datab => \KEY[1]~input_o\,
	datac => \proc|currState.DECODE~q\,
	datad => \KEY[0]~input_o\,
	combout => \proc|sramEnable~0_combout\);

-- Location: LCCOMB_X113_Y49_N28
\proc|sramEnable\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramEnable~combout\ = (\proc|sramEnable~0_combout\ & ((!\proc|currState.MEM_WRITE~q\))) # (!\proc|sramEnable~0_combout\ & (\proc|sramEnable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sramEnable~combout\,
	datac => \proc|sramEnable~0_combout\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|sramEnable~combout\);

-- Location: LCCOMB_X114_Y48_N6
\proc|rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|rw~0_combout\ = (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & (!\proc|currState.DECODE~q\ & !\proc|currState.MEM_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \proc|currState.DECODE~q\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|rw~0_combout\);

-- Location: LCCOMB_X113_Y49_N2
\proc|rw\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|rw~combout\ = (\proc|rw~0_combout\ & ((\proc|currState.EXECUTE~q\))) # (!\proc|rw~0_combout\ & (\proc|rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|rw~combout\,
	datac => \proc|rw~0_combout\,
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|rw~combout\);

-- Location: LCCOMB_X114_Y51_N18
\proc|sram|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~22_combout\ = (\proc|sram|Decoder0~21_combout\ & (\SW[10]~input_o\ & (\proc|sramEnable~combout\ & \proc|rw~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Decoder0~21_combout\,
	datab => \SW[10]~input_o\,
	datac => \proc|sramEnable~combout\,
	datad => \proc|rw~combout\,
	combout => \proc|sram|Decoder0~22_combout\);

-- Location: LCCOMB_X114_Y51_N22
\proc|sram|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~23_combout\ = (\SW[13]~input_o\ & (\SW[14]~input_o\ & \proc|sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~22_combout\,
	combout => \proc|sram|Decoder0~23_combout\);

-- Location: FF_X113_Y53_N29
\proc|sram|addresses[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][4]~q\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y51_N20
\proc|sram|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~24_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~22_combout\,
	combout => \proc|sram|Decoder0~24_combout\);

-- Location: FF_X113_Y53_N19
\proc|sram|addresses[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][4]~q\);

-- Location: LCCOMB_X113_Y53_N28
\proc|sram|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~7_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\proc|sram|addresses[27][4]~q\)) # (!\SW[3]~input_o\ & ((\proc|sram|addresses[19][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[27][4]~q\,
	datad => \proc|sram|addresses[19][4]~q\,
	combout => \proc|sram|Mux27~7_combout\);

-- Location: LCCOMB_X112_Y53_N26
\proc|sram|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~8_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux27~7_combout\ & ((\proc|sram|addresses[31][4]~q\))) # (!\proc|sram|Mux27~7_combout\ & (\proc|sram|addresses[23][4]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[23][4]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[31][4]~q\,
	datad => \proc|sram|Mux27~7_combout\,
	combout => \proc|sram|Mux27~8_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X113_Y49_N16
\proc|sram|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~0_combout\ = (\proc|sramEnable~combout\ & \proc|rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sramEnable~combout\,
	datad => \proc|rw~combout\,
	combout => \proc|sram|Decoder0~0_combout\);

-- Location: LCCOMB_X113_Y49_N22
\proc|sram|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~7_combout\ = (\SW[11]~input_o\ & (!\SW[12]~input_o\ & (!\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~7_combout\);

-- Location: LCCOMB_X112_Y50_N30
\proc|sram|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~8_combout\ = (\SW[14]~input_o\ & (\proc|sram|Decoder0~7_combout\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \proc|sram|Decoder0~7_combout\,
	datad => \SW[13]~input_o\,
	combout => \proc|sram|Decoder0~8_combout\);

-- Location: FF_X112_Y50_N5
\proc|sram|addresses[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][4]~q\);

-- Location: LCCOMB_X113_Y49_N0
\proc|sram|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~9_combout\ = (\SW[11]~input_o\ & (\SW[12]~input_o\ & (!\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~9_combout\);

-- Location: LCCOMB_X113_Y49_N26
\proc|sram|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~12_combout\ = (\SW[13]~input_o\ & (\SW[14]~input_o\ & \proc|sram|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~9_combout\,
	combout => \proc|sram|Decoder0~12_combout\);

-- Location: FF_X113_Y50_N5
\proc|sram|addresses[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][4]~q\);

-- Location: LCCOMB_X111_Y50_N12
\proc|sram|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~11_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~7_combout\,
	combout => \proc|sram|Decoder0~11_combout\);

-- Location: FF_X111_Y50_N25
\proc|sram|addresses[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][4]~q\);

-- Location: LCCOMB_X113_Y50_N8
\proc|sram|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~10_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~9_combout\,
	combout => \proc|sram|Decoder0~10_combout\);

-- Location: FF_X112_Y50_N7
\proc|sram|addresses[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][4]~q\);

-- Location: LCCOMB_X111_Y50_N24
\proc|sram|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~2_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\proc|sram|addresses[22][4]~q\))) # (!\SW[2]~input_o\ & (\proc|sram|addresses[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[18][4]~q\,
	datad => \proc|sram|addresses[22][4]~q\,
	combout => \proc|sram|Mux27~2_combout\);

-- Location: LCCOMB_X113_Y50_N4
\proc|sram|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux27~2_combout\ & ((\proc|sram|addresses[30][4]~q\))) # (!\proc|sram|Mux27~2_combout\ & (\proc|sram|addresses[26][4]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[26][4]~q\,
	datac => \proc|sram|addresses[30][4]~q\,
	datad => \proc|sram|Mux27~2_combout\,
	combout => \proc|sram|Mux27~3_combout\);

-- Location: LCCOMB_X113_Y49_N14
\proc|sram|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~15_combout\ = (!\SW[11]~input_o\ & (\SW[12]~input_o\ & (!\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~15_combout\);

-- Location: LCCOMB_X112_Y47_N8
\proc|sram|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~18_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~15_combout\,
	combout => \proc|sram|Decoder0~18_combout\);

-- Location: FF_X112_Y47_N9
\proc|sram|addresses[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][4]~q\);

-- Location: LCCOMB_X113_Y47_N18
\proc|sram|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~14_combout\ = (\proc|sram|Decoder0~13_combout\ & (\SW[13]~input_o\ & \SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Decoder0~13_combout\,
	datab => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \proc|sram|Decoder0~14_combout\);

-- Location: FF_X113_Y47_N17
\proc|sram|addresses[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][4]~q\);

-- Location: LCCOMB_X112_Y47_N14
\proc|sram|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~16_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~15_combout\,
	combout => \proc|sram|Decoder0~16_combout\);

-- Location: FF_X113_Y47_N3
\proc|sram|addresses[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][4]~q\);

-- Location: LCCOMB_X113_Y49_N24
\proc|sram|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~13_combout\ = (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & (!\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~13_combout\);

-- Location: LCCOMB_X112_Y47_N30
\proc|sram|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~17_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~13_combout\,
	combout => \proc|sram|Decoder0~17_combout\);

-- Location: FF_X114_Y47_N29
\proc|sram|addresses[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][4]~q\);

-- Location: LCCOMB_X113_Y47_N2
\proc|sram|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~4_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\proc|sram|addresses[20][4]~q\)) # (!\SW[2]~input_o\ & ((\proc|sram|addresses[16][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[20][4]~q\,
	datad => \proc|sram|addresses[16][4]~q\,
	combout => \proc|sram|Mux27~4_combout\);

-- Location: LCCOMB_X113_Y47_N16
\proc|sram|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~5_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux27~4_combout\ & (\proc|sram|addresses[28][4]~q\)) # (!\proc|sram|Mux27~4_combout\ & ((\proc|sram|addresses[24][4]~q\))))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[28][4]~q\,
	datac => \proc|sram|addresses[24][4]~q\,
	datad => \proc|sram|Mux27~4_combout\,
	combout => \proc|sram|Mux27~5_combout\);

-- Location: LCCOMB_X113_Y50_N24
\proc|sram|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~6_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\proc|sram|Mux27~3_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\proc|sram|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|Mux27~3_combout\,
	datad => \proc|sram|Mux27~5_combout\,
	combout => \proc|sram|Mux27~6_combout\);

-- Location: LCCOMB_X113_Y50_N30
\proc|sram|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~9_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux27~6_combout\ & ((\proc|sram|Mux27~8_combout\))) # (!\proc|sram|Mux27~6_combout\ & (\proc|sram|Mux27~1_combout\)))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux27~1_combout\,
	datab => \proc|sram|Mux27~8_combout\,
	datac => \SW[0]~input_o\,
	datad => \proc|sram|Mux27~6_combout\,
	combout => \proc|sram|Mux27~9_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X111_Y47_N0
\proc|sram|addresses[7][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[7][4]~3_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[7][4]~3_combout\);

-- Location: LCCOMB_X113_Y49_N20
\proc|sram|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~19_combout\ = (\SW[11]~input_o\ & (\SW[12]~input_o\ & (\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~19_combout\);

-- Location: LCCOMB_X111_Y49_N4
\proc|sram|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~29_combout\ = (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \proc|sram|Decoder0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~19_combout\,
	combout => \proc|sram|Decoder0~29_combout\);

-- Location: FF_X111_Y47_N1
\proc|sram|addresses[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[7][4]~3_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][4]~q\);

-- Location: LCCOMB_X111_Y49_N30
\proc|sram|addresses[4][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[4][4]~2_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[4][4]~2_combout\);

-- Location: LCCOMB_X111_Y49_N20
\proc|sram|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~28_combout\ = (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \proc|sram|Decoder0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~15_combout\,
	combout => \proc|sram|Decoder0~28_combout\);

-- Location: FF_X111_Y49_N31
\proc|sram|addresses[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[4][4]~2_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][4]~q\);

-- Location: LCCOMB_X114_Y49_N28
\proc|sram|addresses[5][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[5][4]~1_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[5][4]~1_combout\);

-- Location: LCCOMB_X113_Y49_N10
\proc|sram|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~1_combout\ = (!\SW[11]~input_o\ & (\SW[12]~input_o\ & (\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~1_combout\);

-- Location: LCCOMB_X114_Y49_N22
\proc|sram|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~27_combout\ = (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \proc|sram|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~1_combout\,
	combout => \proc|sram|Decoder0~27_combout\);

-- Location: FF_X114_Y49_N29
\proc|sram|addresses[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[5][4]~1_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][4]~q\);

-- Location: LCCOMB_X112_Y48_N24
\proc|sram|Mux27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((!\proc|sram|addresses[5][4]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\proc|sram|addresses[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[4][4]~q\,
	datad => \proc|sram|addresses[5][4]~q\,
	combout => \proc|sram|Mux27~10_combout\);

-- Location: LCCOMB_X113_Y48_N24
\proc|sram|Mux27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux27~10_combout\ & ((!\proc|sram|addresses[7][4]~q\))) # (!\proc|sram|Mux27~10_combout\ & (!\proc|sram|addresses[6][4]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[6][4]~q\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[7][4]~q\,
	datad => \proc|sram|Mux27~10_combout\,
	combout => \proc|sram|Mux27~11_combout\);

-- Location: LCCOMB_X112_Y49_N16
\proc|sram|addresses[15][4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[15][4]~15_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[15][4]~15_combout\);

-- Location: LCCOMB_X112_Y49_N0
\proc|sram|Decoder0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~41_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~19_combout\,
	combout => \proc|sram|Decoder0~41_combout\);

-- Location: FF_X112_Y49_N17
\proc|sram|addresses[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[15][4]~15_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][4]~q\);

-- Location: LCCOMB_X113_Y49_N12
\proc|sram|addresses[14][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[14][4]~12_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[14][4]~12_combout\);

-- Location: LCCOMB_X113_Y49_N30
\proc|sram|Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~38_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~9_combout\,
	combout => \proc|sram|Decoder0~38_combout\);

-- Location: FF_X113_Y49_N13
\proc|sram|addresses[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[14][4]~12_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][4]~q\);

-- Location: LCCOMB_X113_Y48_N8
\proc|sram|Mux27~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~18_combout\ = (\proc|sram|Mux27~17_combout\ & (((!\proc|sram|addresses[15][4]~q\)) # (!\SW[1]~input_o\))) # (!\proc|sram|Mux27~17_combout\ & (\SW[1]~input_o\ & ((!\proc|sram|addresses[14][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux27~17_combout\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[15][4]~q\,
	datad => \proc|sram|addresses[14][4]~q\,
	combout => \proc|sram|Mux27~18_combout\);

-- Location: LCCOMB_X114_Y52_N14
\proc|sram|addresses[1][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[1][4]~8_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[1][4]~8_combout\);

-- Location: LCCOMB_X113_Y49_N4
\proc|sram|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~3_combout\ = (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & (\SW[10]~input_o\ & \proc|sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \proc|sram|Decoder0~0_combout\,
	combout => \proc|sram|Decoder0~3_combout\);

-- Location: LCCOMB_X113_Y52_N16
\proc|sram|Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~34_combout\ = (!\SW[13]~input_o\ & (\proc|sram|Decoder0~3_combout\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \proc|sram|Decoder0~3_combout\,
	datad => \SW[14]~input_o\,
	combout => \proc|sram|Decoder0~34_combout\);

-- Location: FF_X114_Y52_N15
\proc|sram|addresses[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[1][4]~8_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][4]~q\);

-- Location: LCCOMB_X113_Y52_N4
\proc|sram|addresses[0][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[0][4]~10_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[0][4]~10_combout\);

-- Location: LCCOMB_X113_Y52_N20
\proc|sram|Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~36_combout\ = (\proc|sram|Decoder0~13_combout\ & (!\SW[13]~input_o\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Decoder0~13_combout\,
	datab => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \proc|sram|Decoder0~36_combout\);

-- Location: FF_X113_Y52_N5
\proc|sram|addresses[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[0][4]~10_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][4]~q\);

-- Location: LCCOMB_X112_Y52_N28
\proc|sram|addresses[2][4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[2][4]~9_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[2][4]~9_combout\);

-- Location: LCCOMB_X112_Y52_N2
\proc|sram|Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~35_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~7_combout\,
	combout => \proc|sram|Decoder0~35_combout\);

-- Location: FF_X112_Y52_N29
\proc|sram|addresses[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[2][4]~9_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][4]~q\);

-- Location: LCCOMB_X113_Y52_N12
\proc|sram|Mux27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~14_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\proc|sram|addresses[2][4]~q\))) # (!\SW[1]~input_o\ & (!\proc|sram|addresses[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[0][4]~q\,
	datad => \proc|sram|addresses[2][4]~q\,
	combout => \proc|sram|Mux27~14_combout\);

-- Location: LCCOMB_X114_Y51_N16
\proc|sram|addresses[3][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[3][4]~11_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[3][4]~11_combout\);

-- Location: LCCOMB_X114_Y51_N0
\proc|sram|Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~37_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~22_combout\,
	combout => \proc|sram|Decoder0~37_combout\);

-- Location: FF_X114_Y51_N17
\proc|sram|addresses[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[3][4]~11_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][4]~q\);

-- Location: LCCOMB_X113_Y48_N30
\proc|sram|Mux27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~15_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux27~14_combout\ & ((!\proc|sram|addresses[3][4]~q\))) # (!\proc|sram|Mux27~14_combout\ & (!\proc|sram|addresses[1][4]~q\)))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|addresses[1][4]~q\,
	datac => \proc|sram|Mux27~14_combout\,
	datad => \proc|sram|addresses[3][4]~q\,
	combout => \proc|sram|Mux27~15_combout\);

-- Location: LCCOMB_X109_Y53_N28
\proc|sram|addresses[9][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[9][4]~4_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[9][4]~4_combout\);

-- Location: LCCOMB_X109_Y53_N12
\proc|sram|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~30_combout\ = (\SW[13]~input_o\ & (\proc|sram|Decoder0~3_combout\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \proc|sram|Decoder0~3_combout\,
	datad => \SW[14]~input_o\,
	combout => \proc|sram|Decoder0~30_combout\);

-- Location: FF_X109_Y53_N29
\proc|sram|addresses[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[9][4]~4_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][4]~q\);

-- Location: LCCOMB_X110_Y52_N30
\proc|sram|addresses[10][4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[10][4]~5_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[10][4]~5_combout\);

-- Location: LCCOMB_X109_Y52_N0
\proc|sram|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~31_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~7_combout\,
	combout => \proc|sram|Decoder0~31_combout\);

-- Location: FF_X110_Y52_N31
\proc|sram|addresses[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[10][4]~5_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][4]~q\);

-- Location: LCCOMB_X110_Y53_N28
\proc|sram|addresses[8][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[8][4]~6_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[8][4]~6_combout\);

-- Location: LCCOMB_X110_Y53_N2
\proc|sram|Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~32_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~13_combout\,
	combout => \proc|sram|Decoder0~32_combout\);

-- Location: FF_X110_Y53_N29
\proc|sram|addresses[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[8][4]~6_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][4]~q\);

-- Location: LCCOMB_X110_Y52_N12
\proc|sram|Mux27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((!\proc|sram|addresses[10][4]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((!\proc|sram|addresses[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[10][4]~q\,
	datad => \proc|sram|addresses[8][4]~q\,
	combout => \proc|sram|Mux27~12_combout\);

-- Location: LCCOMB_X110_Y52_N10
\proc|sram|Mux27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux27~12_combout\ & (!\proc|sram|addresses[11][4]~q\)) # (!\proc|sram|Mux27~12_combout\ & ((!\proc|sram|addresses[9][4]~q\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux27~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[11][4]~q\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[9][4]~q\,
	datad => \proc|sram|Mux27~12_combout\,
	combout => \proc|sram|Mux27~13_combout\);

-- Location: LCCOMB_X113_Y48_N20
\proc|sram|Mux27~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~16_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|Mux27~13_combout\))) # (!\SW[3]~input_o\ & (\proc|sram|Mux27~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux27~15_combout\,
	datad => \proc|sram|Mux27~13_combout\,
	combout => \proc|sram|Mux27~16_combout\);

-- Location: LCCOMB_X113_Y48_N0
\proc|sram|Mux27~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~19_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux27~16_combout\ & ((\proc|sram|Mux27~18_combout\))) # (!\proc|sram|Mux27~16_combout\ & (\proc|sram|Mux27~11_combout\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux27~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|Mux27~11_combout\,
	datac => \proc|sram|Mux27~18_combout\,
	datad => \proc|sram|Mux27~16_combout\,
	combout => \proc|sram|Mux27~19_combout\);

-- Location: LCCOMB_X113_Y48_N28
\proc|sram|Mux27~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux27~20_combout\ = (\SW[4]~input_o\ & (\proc|sram|Mux27~9_combout\)) # (!\SW[4]~input_o\ & ((\proc|sram|Mux27~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sram|Mux27~9_combout\,
	datad => \proc|sram|Mux27~19_combout\,
	combout => \proc|sram|Mux27~20_combout\);

-- Location: LCCOMB_X114_Y50_N28
\proc|sram|dataReadOne[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|dataReadOne[7]~0_combout\ = (\proc|sramEnable~combout\ & (!\proc|rw~combout\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sramEnable~combout\,
	datac => \proc|rw~combout\,
	datad => \KEY[1]~input_o\,
	combout => \proc|sram|dataReadOne[7]~0_combout\);

-- Location: FF_X113_Y48_N29
\proc|sram|dataReadTwo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux27~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(4));

-- Location: LCCOMB_X109_Y51_N30
\proc|sData2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(4) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadTwo\(4)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(4),
	datac => \proc|sram|dataReadTwo\(4),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(4));

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X109_Y51_N16
\proc|alu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux3~2_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((\proc|sData1\(4)) # (\proc|sData2\(4)))) # (!\SW[15]~input_o\ & (\proc|sData1\(4) & \proc|sData2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \proc|sData1\(4),
	datac => \proc|sData2\(4),
	datad => \SW[16]~input_o\,
	combout => \proc|alu|Mux3~2_combout\);

-- Location: LCCOMB_X109_Y51_N18
\proc|sData1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(6) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadOne\(6))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|dataReadOne\(6),
	datab => \proc|sData1\(6),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(6));

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X108_Y48_N22
\proc|alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~1_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\ & (\proc|sData1\(0) $ (\proc|sData2\(0))))) # (!\SW[16]~input_o\ & (\proc|sData1\(0) $ (((\proc|sData2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(0),
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \proc|sData2\(0),
	combout => \proc|alu|Mux7~1_combout\);

-- Location: LCCOMB_X108_Y48_N0
\proc|alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~0_combout\ = \SW[16]~input_o\ $ (((\proc|sData1\(0) & ((\SW[15]~input_o\) # (\proc|sData2\(0)))) # (!\proc|sData1\(0) & (\SW[15]~input_o\ & \proc|sData2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(0),
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \proc|sData2\(0),
	combout => \proc|alu|Mux7~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X108_Y50_N8
\proc|alu|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~8_combout\ = \SW[16]~input_o\ $ (((\proc|sData1\(3) & ((\SW[15]~input_o\) # (\proc|sData2\(3)))) # (!\proc|sData1\(3) & (\SW[15]~input_o\ & \proc|sData2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(3),
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \proc|sData2\(3),
	combout => \proc|alu|Mux4~8_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X109_Y52_N16
\proc|alu|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~4_combout\ = (\SW[16]~input_o\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \proc|alu|Mux4~4_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X114_Y53_N22
\proc|sram|addresses[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[11][3]~feeder_combout\ = \proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[11][3]~feeder_combout\);

-- Location: LCCOMB_X114_Y51_N6
\proc|sram|Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~33_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~22_combout\,
	combout => \proc|sram|Decoder0~33_combout\);

-- Location: FF_X114_Y53_N23
\proc|sram|addresses[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[11][3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][3]~q\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X110_Y53_N7
\proc|sram|addresses[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][3]~q\);

-- Location: FF_X109_Y53_N15
\proc|sram|addresses[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][3]~q\);

-- Location: LCCOMB_X110_Y53_N6
\proc|sram|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~10_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\proc|sram|addresses[9][3]~q\))) # (!\SW[5]~input_o\ & (\proc|sram|addresses[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[8][3]~q\,
	datad => \proc|sram|addresses[9][3]~q\,
	combout => \proc|sram|Mux12~10_combout\);

-- Location: LCCOMB_X113_Y53_N24
\proc|sram|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux12~10_combout\ & ((\proc|sram|addresses[11][3]~q\))) # (!\proc|sram|Mux12~10_combout\ & (\proc|sram|addresses[10][3]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[10][3]~q\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[11][3]~q\,
	datad => \proc|sram|Mux12~10_combout\,
	combout => \proc|sram|Mux12~11_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X111_Y47_N24
\proc|sram|addresses[7][3]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[7][3]~75_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[7][3]~75_combout\);

-- Location: FF_X111_Y47_N25
\proc|sram|addresses[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[7][3]~75_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][3]~q\);

-- Location: LCCOMB_X114_Y49_N16
\proc|sram|addresses[5][3]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[5][3]~72_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[5][3]~72_combout\);

-- Location: FF_X114_Y49_N17
\proc|sram|addresses[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[5][3]~72_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][3]~q\);

-- Location: LCCOMB_X112_Y46_N6
\proc|sram|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~13_combout\ = (\proc|sram|Mux12~12_combout\ & (((!\proc|sram|addresses[7][3]~q\)) # (!\SW[5]~input_o\))) # (!\proc|sram|Mux12~12_combout\ & (\SW[5]~input_o\ & ((!\proc|sram|addresses[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux12~12_combout\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[7][3]~q\,
	datad => \proc|sram|addresses[5][3]~q\,
	combout => \proc|sram|Mux12~13_combout\);

-- Location: LCCOMB_X109_Y52_N6
\proc|sram|addresses[3][3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[3][3]~79_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[3][3]~79_combout\);

-- Location: FF_X109_Y52_N7
\proc|sram|addresses[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[3][3]~79_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][3]~q\);

-- Location: LCCOMB_X113_Y52_N8
\proc|sram|addresses[0][3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[0][3]~78_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[0][3]~78_combout\);

-- Location: FF_X113_Y52_N9
\proc|sram|addresses[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[0][3]~78_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][3]~q\);

-- Location: LCCOMB_X114_Y52_N26
\proc|sram|addresses[1][3]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[1][3]~77_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[1][3]~77_combout\);

-- Location: FF_X114_Y52_N27
\proc|sram|addresses[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[1][3]~77_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][3]~q\);

-- Location: LCCOMB_X113_Y52_N18
\proc|sram|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((!\proc|sram|addresses[1][3]~q\))) # (!\SW[5]~input_o\ & (!\proc|sram|addresses[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[0][3]~q\,
	datad => \proc|sram|addresses[1][3]~q\,
	combout => \proc|sram|Mux12~14_combout\);

-- Location: LCCOMB_X112_Y52_N14
\proc|sram|Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~15_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux12~14_combout\ & ((!\proc|sram|addresses[3][3]~q\))) # (!\proc|sram|Mux12~14_combout\ & (!\proc|sram|addresses[2][3]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[2][3]~q\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[3][3]~q\,
	datad => \proc|sram|Mux12~14_combout\,
	combout => \proc|sram|Mux12~15_combout\);

-- Location: LCCOMB_X112_Y48_N22
\proc|sram|Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~16_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\proc|sram|Mux12~13_combout\)) # (!\SW[7]~input_o\ & ((\proc|sram|Mux12~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|Mux12~13_combout\,
	datad => \proc|sram|Mux12~15_combout\,
	combout => \proc|sram|Mux12~16_combout\);

-- Location: LCCOMB_X114_Y50_N22
\proc|sram|Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~19_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux12~16_combout\ & (\proc|sram|Mux12~18_combout\)) # (!\proc|sram|Mux12~16_combout\ & ((\proc|sram|Mux12~11_combout\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux12~18_combout\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux12~11_combout\,
	datad => \proc|sram|Mux12~16_combout\,
	combout => \proc|sram|Mux12~19_combout\);

-- Location: FF_X111_Y48_N27
\proc|sram|addresses[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][3]~q\);

-- Location: LCCOMB_X111_Y50_N20
\proc|sram|addresses[18][3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[18][3]~65_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[18][3]~65_combout\);

-- Location: FF_X111_Y50_N21
\proc|sram|addresses[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[18][3]~65_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][3]~q\);

-- Location: LCCOMB_X112_Y50_N22
\proc|sram|addresses[26][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[26][3]~feeder_combout\ = \proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[26][3]~feeder_combout\);

-- Location: FF_X112_Y50_N23
\proc|sram|addresses[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[26][3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][3]~q\);

-- Location: LCCOMB_X111_Y47_N12
\proc|sram|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|addresses[26][3]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (!\proc|sram|addresses[18][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[18][3]~q\,
	datad => \proc|sram|addresses[26][3]~q\,
	combout => \proc|sram|Mux12~0_combout\);

-- Location: LCCOMB_X111_Y47_N6
\proc|sram|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~1_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux12~0_combout\ & ((\proc|sram|addresses[30][3]~q\))) # (!\proc|sram|Mux12~0_combout\ & (!\proc|sram|addresses[22][3]~q\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[22][3]~q\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[30][3]~q\,
	datad => \proc|sram|Mux12~0_combout\,
	combout => \proc|sram|Mux12~1_combout\);

-- Location: FF_X112_Y47_N27
\proc|sram|addresses[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][3]~q\);

-- Location: FF_X113_Y47_N9
\proc|sram|addresses[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][3]~q\);

-- Location: LCCOMB_X114_Y47_N4
\proc|sram|addresses[16][3]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[16][3]~69_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[16][3]~69_combout\);

-- Location: FF_X114_Y47_N5
\proc|sram|addresses[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[16][3]~69_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][3]~q\);

-- Location: LCCOMB_X113_Y47_N8
\proc|sram|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~4_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|addresses[24][3]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((!\proc|sram|addresses[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[24][3]~q\,
	datad => \proc|sram|addresses[16][3]~q\,
	combout => \proc|sram|Mux12~4_combout\);

-- Location: LCCOMB_X113_Y47_N30
\proc|sram|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~5_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux12~4_combout\ & ((\proc|sram|addresses[28][3]~q\))) # (!\proc|sram|Mux12~4_combout\ & (!\proc|sram|addresses[20][3]~q\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[20][3]~q\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[28][3]~q\,
	datad => \proc|sram|Mux12~4_combout\,
	combout => \proc|sram|Mux12~5_combout\);

-- Location: LCCOMB_X112_Y51_N0
\proc|sram|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~4_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~3_combout\,
	combout => \proc|sram|Decoder0~4_combout\);

-- Location: FF_X113_Y51_N21
\proc|sram|addresses[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][3]~q\);

-- Location: LCCOMB_X113_Y51_N14
\proc|sram|addresses[17][3]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[17][3]~67_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[17][3]~67_combout\);

-- Location: LCCOMB_X112_Y51_N14
\proc|sram|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~5_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~3_combout\,
	combout => \proc|sram|Decoder0~5_combout\);

-- Location: FF_X113_Y51_N15
\proc|sram|addresses[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[17][3]~67_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][3]~q\);

-- Location: LCCOMB_X112_Y53_N18
\proc|sram|addresses[21][3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[21][3]~66_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[21][3]~66_combout\);

-- Location: LCCOMB_X113_Y51_N10
\proc|sram|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~2_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \proc|sram|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~1_combout\,
	combout => \proc|sram|Decoder0~2_combout\);

-- Location: FF_X112_Y53_N19
\proc|sram|addresses[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[21][3]~66_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][3]~q\);

-- Location: LCCOMB_X113_Y51_N16
\proc|sram|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((!\proc|sram|addresses[21][3]~q\))) # (!\SW[7]~input_o\ & (!\proc|sram|addresses[17][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[17][3]~q\,
	datad => \proc|sram|addresses[21][3]~q\,
	combout => \proc|sram|Mux12~2_combout\);

-- Location: LCCOMB_X112_Y48_N20
\proc|sram|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~3_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux12~2_combout\ & (\proc|sram|addresses[29][3]~q\)) # (!\proc|sram|Mux12~2_combout\ & ((\proc|sram|addresses[25][3]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[29][3]~q\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[25][3]~q\,
	datad => \proc|sram|Mux12~2_combout\,
	combout => \proc|sram|Mux12~3_combout\);

-- Location: LCCOMB_X113_Y47_N0
\proc|sram|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~6_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\proc|sram|Mux12~3_combout\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\proc|sram|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|Mux12~5_combout\,
	datad => \proc|sram|Mux12~3_combout\,
	combout => \proc|sram|Mux12~6_combout\);

-- Location: LCCOMB_X113_Y47_N14
\proc|sram|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~9_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux12~6_combout\ & (\proc|sram|Mux12~8_combout\)) # (!\proc|sram|Mux12~6_combout\ & ((\proc|sram|Mux12~1_combout\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux12~8_combout\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|Mux12~1_combout\,
	datad => \proc|sram|Mux12~6_combout\,
	combout => \proc|sram|Mux12~9_combout\);

-- Location: LCCOMB_X114_Y50_N2
\proc|sram|Mux12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux12~20_combout\ = (\SW[9]~input_o\ & ((\proc|sram|Mux12~9_combout\))) # (!\SW[9]~input_o\ & (\proc|sram|Mux12~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \proc|sram|Mux12~19_combout\,
	datad => \proc|sram|Mux12~9_combout\,
	combout => \proc|sram|Mux12~20_combout\);

-- Location: FF_X114_Y50_N3
\proc|sram|dataReadOne[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux12~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(3));

-- Location: LCCOMB_X114_Y50_N6
\proc|sData1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(3) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadOne\(3)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(3),
	datab => \proc|sram|dataReadOne\(3),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(3));

-- Location: LCCOMB_X108_Y50_N24
\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ = \proc|sData2\(3) $ (\proc|sData1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(3),
	datad => \proc|sData1\(3),
	combout => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X108_Y50_N18
\proc|alu|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~9_combout\ = (\proc|alu|Mux4~5_combout\ & (((\proc|alu|Mux4~4_combout\)))) # (!\proc|alu|Mux4~5_combout\ & ((\proc|alu|Mux4~4_combout\ & (\proc|alu|Mux4~8_combout\)) # (!\proc|alu|Mux4~4_combout\ & 
-- ((\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux4~5_combout\,
	datab => \proc|alu|Mux4~8_combout\,
	datac => \proc|alu|Mux4~4_combout\,
	datad => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \proc|alu|Mux4~9_combout\);

-- Location: LCCOMB_X113_Y48_N4
\proc|sramDataWrite[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite[7]~0_combout\ = (\proc|currState.MEM_WRITE~q\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \KEY[1]~input_o\,
	combout => \proc|sramDataWrite[7]~0_combout\);

-- Location: CLKCTRL_G6
\proc|sramDataWrite[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|sramDataWrite[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|sramDataWrite[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X111_Y50_N18
\proc|sramDataWrite[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(2) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|alu|Mux5~4_combout\)) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|sramDataWrite\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux5~4_combout\,
	datac => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sramDataWrite\(2));

-- Location: FF_X111_Y50_N19
\proc|sram|addresses[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][2]~q\);

-- Location: LCCOMB_X113_Y49_N6
\proc|sram|Decoder0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~40_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~15_combout\,
	combout => \proc|sram|Decoder0~40_combout\);

-- Location: FF_X108_Y49_N21
\proc|sram|addresses[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][2]~q\);

-- Location: LCCOMB_X112_Y49_N6
\proc|sram|Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~39_combout\ = (!\SW[14]~input_o\ & (\proc|sram|Decoder0~1_combout\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \proc|sram|Decoder0~1_combout\,
	datad => \SW[13]~input_o\,
	combout => \proc|sram|Decoder0~39_combout\);

-- Location: FF_X112_Y49_N25
\proc|sram|addresses[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][2]~q\);

-- Location: LCCOMB_X108_Y49_N20
\proc|sram|Mux29~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~17_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|addresses[13][2]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\proc|sram|addresses[12][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[12][2]~q\,
	datad => \proc|sram|addresses[13][2]~q\,
	combout => \proc|sram|Mux29~17_combout\);

-- Location: LCCOMB_X109_Y50_N28
\proc|sram|Mux29~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~18_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux29~17_combout\ & ((\proc|sram|addresses[15][2]~q\))) # (!\proc|sram|Mux29~17_combout\ & (\proc|sram|addresses[14][2]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[14][2]~q\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[15][2]~q\,
	datad => \proc|sram|Mux29~17_combout\,
	combout => \proc|sram|Mux29~18_combout\);

-- Location: FF_X111_Y49_N15
\proc|sram|addresses[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][2]~q\);

-- Location: FF_X114_Y49_N7
\proc|sram|addresses[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][2]~q\);

-- Location: LCCOMB_X111_Y49_N14
\proc|sram|Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\proc|sram|addresses[5][2]~q\))) # (!\SW[0]~input_o\ & (\proc|sram|addresses[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[4][2]~q\,
	datad => \proc|sram|addresses[5][2]~q\,
	combout => \proc|sram|Mux29~10_combout\);

-- Location: FF_X111_Y49_N9
\proc|sram|addresses[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][2]~q\);

-- Location: LCCOMB_X114_Y49_N26
\proc|sram|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~26_combout\ = (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \proc|sram|Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~9_combout\,
	combout => \proc|sram|Decoder0~26_combout\);

-- Location: FF_X114_Y49_N9
\proc|sram|addresses[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][2]~q\);

-- Location: LCCOMB_X111_Y49_N8
\proc|sram|Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux29~10_combout\ & (\proc|sram|addresses[7][2]~q\)) # (!\proc|sram|Mux29~10_combout\ & ((\proc|sram|addresses[6][2]~q\))))) # (!\SW[1]~input_o\ & (\proc|sram|Mux29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|Mux29~10_combout\,
	datac => \proc|sram|addresses[7][2]~q\,
	datad => \proc|sram|addresses[6][2]~q\,
	combout => \proc|sram|Mux29~11_combout\);

-- Location: LCCOMB_X109_Y53_N24
\proc|sram|addresses[10][2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[10][2]~57_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[10][2]~57_combout\);

-- Location: FF_X109_Y53_N25
\proc|sram|addresses[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[10][2]~57_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][2]~q\);

-- Location: LCCOMB_X110_Y53_N4
\proc|sram|Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~12_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\proc|sram|addresses[10][2]~q\))) # (!\SW[1]~input_o\ & (!\proc|sram|addresses[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[8][2]~q\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \proc|sram|addresses[10][2]~q\,
	combout => \proc|sram|Mux29~12_combout\);

-- Location: LCCOMB_X109_Y53_N18
\proc|sram|addresses[9][2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[9][2]~56_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[9][2]~56_combout\);

-- Location: FF_X109_Y53_N19
\proc|sram|addresses[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[9][2]~56_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[9][2]~q\);

-- Location: LCCOMB_X110_Y53_N30
\proc|sram|Mux29~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux29~12_combout\ & (!\proc|sram|addresses[11][2]~q\)) # (!\proc|sram|Mux29~12_combout\ & ((!\proc|sram|addresses[9][2]~q\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[11][2]~q\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|Mux29~12_combout\,
	datad => \proc|sram|addresses[9][2]~q\,
	combout => \proc|sram|Mux29~13_combout\);

-- Location: LCCOMB_X114_Y52_N16
\proc|sram|addresses[1][2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[1][2]~60_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[1][2]~60_combout\);

-- Location: FF_X114_Y52_N17
\proc|sram|addresses[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[1][2]~60_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][2]~q\);

-- Location: LCCOMB_X112_Y52_N26
\proc|sram|addresses[2][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[2][2]~61_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[2][2]~61_combout\);

-- Location: FF_X112_Y52_N27
\proc|sram|addresses[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[2][2]~61_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][2]~q\);

-- Location: LCCOMB_X112_Y52_N20
\proc|sram|addresses[0][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[0][2]~62_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[0][2]~62_combout\);

-- Location: FF_X112_Y52_N21
\proc|sram|addresses[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[0][2]~62_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][2]~q\);

-- Location: LCCOMB_X112_Y52_N22
\proc|sram|Mux29~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~14_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\proc|sram|addresses[2][2]~q\)) # (!\SW[1]~input_o\ & ((!\proc|sram|addresses[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[2][2]~q\,
	datad => \proc|sram|addresses[0][2]~q\,
	combout => \proc|sram|Mux29~14_combout\);

-- Location: LCCOMB_X114_Y51_N30
\proc|sram|addresses[3][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[3][2]~63_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[3][2]~63_combout\);

-- Location: FF_X114_Y51_N31
\proc|sram|addresses[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[3][2]~63_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][2]~q\);

-- Location: LCCOMB_X112_Y52_N4
\proc|sram|Mux29~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~15_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux29~14_combout\ & ((!\proc|sram|addresses[3][2]~q\))) # (!\proc|sram|Mux29~14_combout\ & (!\proc|sram|addresses[1][2]~q\)))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|addresses[1][2]~q\,
	datac => \proc|sram|Mux29~14_combout\,
	datad => \proc|sram|addresses[3][2]~q\,
	combout => \proc|sram|Mux29~15_combout\);

-- Location: LCCOMB_X110_Y50_N0
\proc|sram|Mux29~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~16_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\proc|sram|Mux29~13_combout\)) # (!\SW[3]~input_o\ & ((\proc|sram|Mux29~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux29~13_combout\,
	datad => \proc|sram|Mux29~15_combout\,
	combout => \proc|sram|Mux29~16_combout\);

-- Location: LCCOMB_X110_Y50_N14
\proc|sram|Mux29~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~19_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux29~16_combout\ & (\proc|sram|Mux29~18_combout\)) # (!\proc|sram|Mux29~16_combout\ & ((\proc|sram|Mux29~11_combout\))))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|Mux29~18_combout\,
	datac => \proc|sram|Mux29~11_combout\,
	datad => \proc|sram|Mux29~16_combout\,
	combout => \proc|sram|Mux29~19_combout\);

-- Location: LCCOMB_X113_Y47_N10
\proc|sram|addresses[24][2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[24][2]~52_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[24][2]~52_combout\);

-- Location: FF_X113_Y47_N11
\proc|sram|addresses[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[24][2]~52_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][2]~q\);

-- Location: FF_X112_Y47_N11
\proc|sram|addresses[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][2]~q\);

-- Location: FF_X112_Y47_N25
\proc|sram|addresses[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][2]~q\);

-- Location: LCCOMB_X111_Y47_N8
\proc|sram|addresses[16][2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[16][2]~53_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[16][2]~53_combout\);

-- Location: FF_X111_Y47_N9
\proc|sram|addresses[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[16][2]~53_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][2]~q\);

-- Location: LCCOMB_X112_Y47_N24
\proc|sram|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~4_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\proc|sram|addresses[20][2]~q\)) # (!\SW[2]~input_o\ & ((!\proc|sram|addresses[16][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[20][2]~q\,
	datad => \proc|sram|addresses[16][2]~q\,
	combout => \proc|sram|Mux29~4_combout\);

-- Location: LCCOMB_X112_Y47_N10
\proc|sram|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~5_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux29~4_combout\ & ((\proc|sram|addresses[28][2]~q\))) # (!\proc|sram|Mux29~4_combout\ & (!\proc|sram|addresses[24][2]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[24][2]~q\,
	datac => \proc|sram|addresses[28][2]~q\,
	datad => \proc|sram|Mux29~4_combout\,
	combout => \proc|sram|Mux29~5_combout\);

-- Location: LCCOMB_X112_Y50_N0
\proc|sram|addresses[26][2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[26][2]~50_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[26][2]~50_combout\);

-- Location: FF_X112_Y50_N1
\proc|sram|addresses[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[26][2]~50_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][2]~q\);

-- Location: FF_X111_Y48_N31
\proc|sram|addresses[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][2]~q\);

-- Location: FF_X111_Y48_N21
\proc|sram|addresses[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][2]~q\);

-- Location: LCCOMB_X111_Y50_N14
\proc|sram|addresses[18][2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[18][2]~51_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[18][2]~51_combout\);

-- Location: FF_X111_Y50_N15
\proc|sram|addresses[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[18][2]~51_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][2]~q\);

-- Location: LCCOMB_X111_Y48_N24
\proc|sram|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~2_combout\ = (\SW[2]~input_o\ & ((\proc|sram|addresses[22][2]~q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((!\SW[3]~input_o\ & !\proc|sram|addresses[18][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[22][2]~q\,
	datac => \SW[3]~input_o\,
	datad => \proc|sram|addresses[18][2]~q\,
	combout => \proc|sram|Mux29~2_combout\);

-- Location: LCCOMB_X111_Y48_N30
\proc|sram|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux29~2_combout\ & ((\proc|sram|addresses[30][2]~q\))) # (!\proc|sram|Mux29~2_combout\ & (!\proc|sram|addresses[26][2]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[26][2]~q\,
	datac => \proc|sram|addresses[30][2]~q\,
	datad => \proc|sram|Mux29~2_combout\,
	combout => \proc|sram|Mux29~3_combout\);

-- Location: LCCOMB_X110_Y49_N20
\proc|sram|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~6_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\proc|sram|Mux29~3_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\proc|sram|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|Mux29~5_combout\,
	datad => \proc|sram|Mux29~3_combout\,
	combout => \proc|sram|Mux29~6_combout\);

-- Location: LCCOMB_X111_Y53_N28
\proc|sram|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~20_combout\ = (!\SW[13]~input_o\ & (\SW[14]~input_o\ & \proc|sram|Decoder0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \proc|sram|Decoder0~19_combout\,
	combout => \proc|sram|Decoder0~20_combout\);

-- Location: FF_X111_Y53_N5
\proc|sram|addresses[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][2]~q\);

-- Location: LCCOMB_X113_Y53_N4
\proc|sram|addresses[27][2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[27][2]~54_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[27][2]~54_combout\);

-- Location: FF_X113_Y53_N5
\proc|sram|addresses[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[27][2]~54_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][2]~q\);

-- Location: LCCOMB_X113_Y53_N2
\proc|sram|addresses[19][2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[19][2]~55_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[19][2]~55_combout\);

-- Location: FF_X113_Y53_N3
\proc|sram|addresses[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[19][2]~55_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][2]~q\);

-- Location: LCCOMB_X113_Y53_N26
\proc|sram|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~7_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (!\proc|sram|addresses[27][2]~q\)) # (!\SW[3]~input_o\ & ((!\proc|sram|addresses[19][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[27][2]~q\,
	datad => \proc|sram|addresses[19][2]~q\,
	combout => \proc|sram|Mux29~7_combout\);

-- Location: LCCOMB_X112_Y53_N24
\proc|sram|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~8_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux29~7_combout\ & (\proc|sram|addresses[31][2]~q\)) # (!\proc|sram|Mux29~7_combout\ & ((\proc|sram|addresses[23][2]~q\))))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[31][2]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[23][2]~q\,
	datad => \proc|sram|Mux29~7_combout\,
	combout => \proc|sram|Mux29~8_combout\);

-- Location: FF_X110_Y49_N17
\proc|sram|addresses[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][2]~q\);

-- Location: LCCOMB_X113_Y51_N4
\proc|sram|addresses[17][2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[17][2]~49_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[17][2]~49_combout\);

-- Location: FF_X113_Y51_N5
\proc|sram|addresses[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[17][2]~49_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][2]~q\);

-- Location: LCCOMB_X113_Y51_N6
\proc|sram|addresses[25][2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[25][2]~48_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[25][2]~48_combout\);

-- Location: FF_X113_Y51_N7
\proc|sram|addresses[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[25][2]~48_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][2]~q\);

-- Location: LCCOMB_X113_Y51_N28
\proc|sram|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((!\proc|sram|addresses[25][2]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\proc|sram|addresses[17][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[17][2]~q\,
	datad => \proc|sram|addresses[25][2]~q\,
	combout => \proc|sram|Mux29~0_combout\);

-- Location: LCCOMB_X110_Y49_N16
\proc|sram|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux29~0_combout\ & (\proc|sram|addresses[29][2]~q\)) # (!\proc|sram|Mux29~0_combout\ & ((\proc|sram|addresses[21][2]~q\))))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[29][2]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[21][2]~q\,
	datad => \proc|sram|Mux29~0_combout\,
	combout => \proc|sram|Mux29~1_combout\);

-- Location: LCCOMB_X110_Y49_N2
\proc|sram|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~9_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux29~6_combout\ & (\proc|sram|Mux29~8_combout\)) # (!\proc|sram|Mux29~6_combout\ & ((\proc|sram|Mux29~1_combout\))))) # (!\SW[0]~input_o\ & (\proc|sram|Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|Mux29~6_combout\,
	datac => \proc|sram|Mux29~8_combout\,
	datad => \proc|sram|Mux29~1_combout\,
	combout => \proc|sram|Mux29~9_combout\);

-- Location: LCCOMB_X110_Y50_N10
\proc|sram|Mux29~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux29~20_combout\ = (\SW[4]~input_o\ & ((\proc|sram|Mux29~9_combout\))) # (!\SW[4]~input_o\ & (\proc|sram|Mux29~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sram|Mux29~19_combout\,
	datad => \proc|sram|Mux29~9_combout\,
	combout => \proc|sram|Mux29~20_combout\);

-- Location: FF_X110_Y50_N11
\proc|sram|dataReadTwo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux29~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(2));

-- Location: LCCOMB_X108_Y48_N16
\proc|sData2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(2) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadTwo\(2)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(2),
	datac => \proc|sram|dataReadTwo\(2),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(2));

-- Location: LCCOMB_X107_Y50_N4
\proc|sData1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(0) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadOne\(0))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|dataReadOne\(0),
	datac => \proc|sData1\(0),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(0));

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X112_Y49_N26
\proc|sramDataWrite[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(1) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|alu|Mux6~4_combout\)) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|sramDataWrite\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux6~4_combout\,
	datab => \proc|sramDataWrite\(1),
	datad => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	combout => \proc|sramDataWrite\(1));

-- Location: FF_X113_Y50_N9
\proc|sram|addresses[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][1]~q\);

-- Location: FF_X112_Y50_N11
\proc|sram|addresses[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][1]~q\);

-- Location: FF_X111_Y50_N13
\proc|sram|addresses[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][1]~q\);

-- Location: LCCOMB_X112_Y50_N10
\proc|sram|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~0_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (\proc|sram|addresses[26][1]~q\)) # (!\SW[8]~input_o\ & ((\proc|sram|addresses[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[26][1]~q\,
	datad => \proc|sram|addresses[18][1]~q\,
	combout => \proc|sram|Mux14~0_combout\);

-- Location: LCCOMB_X113_Y50_N6
\proc|sram|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~1_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux14~0_combout\ & ((\proc|sram|addresses[30][1]~q\))) # (!\proc|sram|Mux14~0_combout\ & (\proc|sram|addresses[22][1]~q\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[22][1]~q\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[30][1]~q\,
	datad => \proc|sram|Mux14~0_combout\,
	combout => \proc|sram|Mux14~1_combout\);

-- Location: LCCOMB_X112_Y47_N6
\proc|sram|addresses[28][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[28][1]~39_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[28][1]~39_combout\);

-- Location: FF_X112_Y47_N7
\proc|sram|addresses[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[28][1]~39_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][1]~q\);

-- Location: LCCOMB_X114_Y47_N30
\proc|sram|addresses[16][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[16][1]~38_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[16][1]~38_combout\);

-- Location: FF_X114_Y47_N31
\proc|sram|addresses[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[16][1]~38_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][1]~q\);

-- Location: LCCOMB_X113_Y47_N28
\proc|sram|addresses[24][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[24][1]~37_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[24][1]~37_combout\);

-- Location: FF_X113_Y47_N29
\proc|sram|addresses[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[24][1]~37_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][1]~q\);

-- Location: LCCOMB_X114_Y47_N24
\proc|sram|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~4_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((!\proc|sram|addresses[24][1]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (!\proc|sram|addresses[16][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[16][1]~q\,
	datad => \proc|sram|addresses[24][1]~q\,
	combout => \proc|sram|Mux14~4_combout\);

-- Location: LCCOMB_X114_Y47_N26
\proc|sram|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~5_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux14~4_combout\ & ((!\proc|sram|addresses[28][1]~q\))) # (!\proc|sram|Mux14~4_combout\ & (!\proc|sram|addresses[20][1]~q\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[20][1]~q\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[28][1]~q\,
	datad => \proc|sram|Mux14~4_combout\,
	combout => \proc|sram|Mux14~5_combout\);

-- Location: LCCOMB_X112_Y51_N18
\proc|sram|addresses[29][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[29][1]~35_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[29][1]~35_combout\);

-- Location: LCCOMB_X112_Y51_N8
\proc|sram|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~6_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~1_combout\,
	combout => \proc|sram|Decoder0~6_combout\);

-- Location: FF_X112_Y51_N19
\proc|sram|addresses[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[29][1]~35_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][1]~q\);

-- Location: LCCOMB_X113_Y51_N22
\proc|sram|addresses[25][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[25][1]~32_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[25][1]~32_combout\);

-- Location: FF_X113_Y51_N23
\proc|sram|addresses[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[25][1]~32_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][1]~q\);

-- Location: LCCOMB_X113_Y51_N12
\proc|sram|addresses[17][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[17][1]~34_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[17][1]~34_combout\);

-- Location: FF_X113_Y51_N13
\proc|sram|addresses[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[17][1]~34_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][1]~q\);

-- Location: LCCOMB_X114_Y47_N0
\proc|sram|addresses[21][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[21][1]~33_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[21][1]~33_combout\);

-- Location: FF_X114_Y47_N1
\proc|sram|addresses[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[21][1]~33_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][1]~q\);

-- Location: LCCOMB_X114_Y47_N18
\proc|sram|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((!\proc|sram|addresses[21][1]~q\))) # (!\SW[7]~input_o\ & (!\proc|sram|addresses[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[17][1]~q\,
	datad => \proc|sram|addresses[21][1]~q\,
	combout => \proc|sram|Mux14~2_combout\);

-- Location: LCCOMB_X114_Y47_N16
\proc|sram|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~3_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux14~2_combout\ & (!\proc|sram|addresses[29][1]~q\)) # (!\proc|sram|Mux14~2_combout\ & ((!\proc|sram|addresses[25][1]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[29][1]~q\,
	datac => \proc|sram|addresses[25][1]~q\,
	datad => \proc|sram|Mux14~2_combout\,
	combout => \proc|sram|Mux14~3_combout\);

-- Location: LCCOMB_X114_Y47_N8
\proc|sram|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~6_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\proc|sram|Mux14~3_combout\))) # (!\SW[5]~input_o\ & (\proc|sram|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux14~5_combout\,
	datad => \proc|sram|Mux14~3_combout\,
	combout => \proc|sram|Mux14~6_combout\);

-- Location: LCCOMB_X112_Y53_N0
\proc|sram|addresses[31][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[31][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[31][1]~feeder_combout\);

-- Location: LCCOMB_X112_Y53_N16
\proc|sram|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Decoder0~25_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \proc|sram|Decoder0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \proc|sram|Decoder0~19_combout\,
	combout => \proc|sram|Decoder0~25_combout\);

-- Location: FF_X112_Y53_N1
\proc|sram|addresses[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[31][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][1]~q\);

-- Location: LCCOMB_X113_Y53_N10
\proc|sram|addresses[27][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[27][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[27][1]~feeder_combout\);

-- Location: FF_X113_Y53_N11
\proc|sram|addresses[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[27][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][1]~q\);

-- Location: FF_X111_Y53_N21
\proc|sram|addresses[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][1]~q\);

-- Location: FF_X111_Y53_N11
\proc|sram|addresses[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][1]~q\);

-- Location: LCCOMB_X111_Y53_N20
\proc|sram|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|addresses[23][1]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\proc|sram|addresses[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[23][1]~q\,
	datad => \proc|sram|addresses[19][1]~q\,
	combout => \proc|sram|Mux14~7_combout\);

-- Location: LCCOMB_X112_Y53_N6
\proc|sram|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~8_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux14~7_combout\ & (\proc|sram|addresses[31][1]~q\)) # (!\proc|sram|Mux14~7_combout\ & ((\proc|sram|addresses[27][1]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[31][1]~q\,
	datac => \proc|sram|addresses[27][1]~q\,
	datad => \proc|sram|Mux14~7_combout\,
	combout => \proc|sram|Mux14~8_combout\);

-- Location: LCCOMB_X114_Y47_N10
\proc|sram|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~9_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux14~6_combout\ & ((\proc|sram|Mux14~8_combout\))) # (!\proc|sram|Mux14~6_combout\ & (\proc|sram|Mux14~1_combout\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|Mux14~1_combout\,
	datac => \proc|sram|Mux14~6_combout\,
	datad => \proc|sram|Mux14~8_combout\,
	combout => \proc|sram|Mux14~9_combout\);

-- Location: LCCOMB_X112_Y49_N20
\proc|sram|addresses[13][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[13][1]~46_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[13][1]~46_combout\);

-- Location: FF_X112_Y49_N21
\proc|sram|addresses[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[13][1]~46_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][1]~q\);

-- Location: FF_X112_Y49_N7
\proc|sram|addresses[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][1]~q\);

-- Location: LCCOMB_X112_Y48_N0
\proc|sram|Mux14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~18_combout\ = (\proc|sram|Mux14~17_combout\ & (((\proc|sram|addresses[15][1]~q\) # (!\SW[5]~input_o\)))) # (!\proc|sram|Mux14~17_combout\ & (!\proc|sram|addresses[13][1]~q\ & (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux14~17_combout\,
	datab => \proc|sram|addresses[13][1]~q\,
	datac => \SW[5]~input_o\,
	datad => \proc|sram|addresses[15][1]~q\,
	combout => \proc|sram|Mux14~18_combout\);

-- Location: FF_X109_Y52_N25
\proc|sram|addresses[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][1]~q\);

-- Location: LCCOMB_X110_Y52_N22
\proc|sram|addresses[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[11][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[11][1]~feeder_combout\);

-- Location: FF_X110_Y52_N23
\proc|sram|addresses[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[11][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][1]~q\);

-- Location: LCCOMB_X109_Y52_N24
\proc|sram|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~11_combout\ = (\proc|sram|Mux14~10_combout\ & (((\proc|sram|addresses[11][1]~q\)) # (!\SW[6]~input_o\))) # (!\proc|sram|Mux14~10_combout\ & (\SW[6]~input_o\ & (\proc|sram|addresses[10][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux14~10_combout\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[10][1]~q\,
	datad => \proc|sram|addresses[11][1]~q\,
	combout => \proc|sram|Mux14~11_combout\);

-- Location: LCCOMB_X114_Y49_N10
\proc|sram|addresses[5][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[5][1]~42_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[5][1]~42_combout\);

-- Location: FF_X114_Y49_N11
\proc|sram|addresses[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[5][1]~42_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][1]~q\);

-- Location: LCCOMB_X112_Y46_N8
\proc|sram|addresses[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[6][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[6][1]~feeder_combout\);

-- Location: FF_X112_Y46_N9
\proc|sram|addresses[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[6][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][1]~q\);

-- Location: LCCOMB_X111_Y49_N26
\proc|sram|addresses[4][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[4][1]~43_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[4][1]~43_combout\);

-- Location: FF_X111_Y49_N27
\proc|sram|addresses[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[4][1]~43_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][1]~q\);

-- Location: LCCOMB_X112_Y46_N14
\proc|sram|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\proc|sram|addresses[6][1]~q\)) # (!\SW[6]~input_o\ & ((!\proc|sram|addresses[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[6][1]~q\,
	datad => \proc|sram|addresses[4][1]~q\,
	combout => \proc|sram|Mux14~12_combout\);

-- Location: LCCOMB_X113_Y46_N14
\proc|sram|Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux14~12_combout\ & (\proc|sram|addresses[7][1]~q\)) # (!\proc|sram|Mux14~12_combout\ & ((!\proc|sram|addresses[5][1]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[7][1]~q\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[5][1]~q\,
	datad => \proc|sram|Mux14~12_combout\,
	combout => \proc|sram|Mux14~13_combout\);

-- Location: LCCOMB_X112_Y52_N0
\proc|sram|addresses[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[2][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[2][1]~feeder_combout\);

-- Location: FF_X112_Y52_N1
\proc|sram|addresses[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[2][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][1]~q\);

-- Location: LCCOMB_X114_Y52_N4
\proc|sram|addresses[1][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[1][1]~44_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[1][1]~44_combout\);

-- Location: FF_X114_Y52_N5
\proc|sram|addresses[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[1][1]~44_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][1]~q\);

-- Location: LCCOMB_X113_Y52_N14
\proc|sram|addresses[0][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[0][1]~45_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[0][1]~45_combout\);

-- Location: FF_X113_Y52_N15
\proc|sram|addresses[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[0][1]~45_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][1]~q\);

-- Location: LCCOMB_X114_Y52_N2
\proc|sram|Mux14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~14_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((!\proc|sram|addresses[1][1]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((!\proc|sram|addresses[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[1][1]~q\,
	datad => \proc|sram|addresses[0][1]~q\,
	combout => \proc|sram|Mux14~14_combout\);

-- Location: LCCOMB_X113_Y46_N0
\proc|sram|Mux14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~15_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux14~14_combout\ & (\proc|sram|addresses[3][1]~q\)) # (!\proc|sram|Mux14~14_combout\ & ((\proc|sram|addresses[2][1]~q\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[3][1]~q\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[2][1]~q\,
	datad => \proc|sram|Mux14~14_combout\,
	combout => \proc|sram|Mux14~15_combout\);

-- Location: LCCOMB_X113_Y46_N10
\proc|sram|Mux14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~16_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\proc|sram|Mux14~13_combout\)) # (!\SW[7]~input_o\ & ((\proc|sram|Mux14~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|Mux14~13_combout\,
	datad => \proc|sram|Mux14~15_combout\,
	combout => \proc|sram|Mux14~16_combout\);

-- Location: LCCOMB_X107_Y50_N16
\proc|sram|Mux14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~19_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux14~16_combout\ & (\proc|sram|Mux14~18_combout\)) # (!\proc|sram|Mux14~16_combout\ & ((\proc|sram|Mux14~11_combout\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|Mux14~18_combout\,
	datac => \proc|sram|Mux14~11_combout\,
	datad => \proc|sram|Mux14~16_combout\,
	combout => \proc|sram|Mux14~19_combout\);

-- Location: LCCOMB_X107_Y50_N12
\proc|sram|Mux14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux14~20_combout\ = (\SW[9]~input_o\ & (\proc|sram|Mux14~9_combout\)) # (!\SW[9]~input_o\ & ((\proc|sram|Mux14~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \proc|sram|Mux14~9_combout\,
	datad => \proc|sram|Mux14~19_combout\,
	combout => \proc|sram|Mux14~20_combout\);

-- Location: FF_X107_Y50_N13
\proc|sram|dataReadOne[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux14~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(1));

-- Location: LCCOMB_X107_Y50_N14
\proc|sData1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(1) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadOne\(1))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sram|dataReadOne\(1),
	datac => \proc|sData1\(1),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(1));

-- Location: LCCOMB_X111_Y53_N8
\proc|sram|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~8_combout\ = (\proc|sram|Mux30~7_combout\ & (((\proc|sram|addresses[31][1]~q\)) # (!\SW[3]~input_o\))) # (!\proc|sram|Mux30~7_combout\ & (\SW[3]~input_o\ & ((\proc|sram|addresses[27][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux30~7_combout\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[31][1]~q\,
	datad => \proc|sram|addresses[27][1]~q\,
	combout => \proc|sram|Mux30~8_combout\);

-- Location: LCCOMB_X111_Y47_N20
\proc|sram|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\proc|sram|addresses[26][1]~q\)) # (!\SW[3]~input_o\ & ((\proc|sram|addresses[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[26][1]~q\,
	datad => \proc|sram|addresses[18][1]~q\,
	combout => \proc|sram|Mux30~0_combout\);

-- Location: LCCOMB_X113_Y50_N18
\proc|sram|addresses[22][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[22][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[22][1]~feeder_combout\);

-- Location: FF_X113_Y50_N19
\proc|sram|addresses[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[22][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][1]~q\);

-- Location: LCCOMB_X111_Y47_N2
\proc|sram|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux30~0_combout\ & ((\proc|sram|addresses[30][1]~q\))) # (!\proc|sram|Mux30~0_combout\ & (\proc|sram|addresses[22][1]~q\)))) # (!\SW[2]~input_o\ & (\proc|sram|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|Mux30~0_combout\,
	datac => \proc|sram|addresses[22][1]~q\,
	datad => \proc|sram|addresses[30][1]~q\,
	combout => \proc|sram|Mux30~1_combout\);

-- Location: LCCOMB_X114_Y47_N2
\proc|sram|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~2_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((!\proc|sram|addresses[21][1]~q\))) # (!\SW[2]~input_o\ & (!\proc|sram|addresses[17][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[17][1]~q\,
	datad => \proc|sram|addresses[21][1]~q\,
	combout => \proc|sram|Mux30~2_combout\);

-- Location: LCCOMB_X114_Y47_N20
\proc|sram|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux30~2_combout\ & ((!\proc|sram|addresses[29][1]~q\))) # (!\proc|sram|Mux30~2_combout\ & (!\proc|sram|addresses[25][1]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[25][1]~q\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[29][1]~q\,
	datad => \proc|sram|Mux30~2_combout\,
	combout => \proc|sram|Mux30~3_combout\);

-- Location: LCCOMB_X114_Y47_N14
\proc|sram|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~6_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\) # (\proc|sram|Mux30~3_combout\)))) # (!\SW[0]~input_o\ & (\proc|sram|Mux30~5_combout\ & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux30~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \proc|sram|Mux30~3_combout\,
	combout => \proc|sram|Mux30~6_combout\);

-- Location: LCCOMB_X110_Y50_N26
\proc|sram|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~9_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux30~6_combout\ & (\proc|sram|Mux30~8_combout\)) # (!\proc|sram|Mux30~6_combout\ & ((\proc|sram|Mux30~1_combout\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|Mux30~8_combout\,
	datac => \proc|sram|Mux30~1_combout\,
	datad => \proc|sram|Mux30~6_combout\,
	combout => \proc|sram|Mux30~9_combout\);

-- Location: FF_X113_Y49_N31
\proc|sram|addresses[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][1]~q\);

-- Location: LCCOMB_X113_Y48_N6
\proc|sram|addresses[12][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[12][1]~47_combout\ = !\proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[12][1]~47_combout\);

-- Location: FF_X113_Y48_N7
\proc|sram|addresses[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[12][1]~47_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][1]~q\);

-- Location: LCCOMB_X113_Y48_N14
\proc|sram|Mux30~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~17_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\proc|sram|addresses[14][1]~q\)) # (!\SW[1]~input_o\ & ((!\proc|sram|addresses[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[14][1]~q\,
	datad => \proc|sram|addresses[12][1]~q\,
	combout => \proc|sram|Mux30~17_combout\);

-- Location: LCCOMB_X113_Y48_N22
\proc|sram|Mux30~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~18_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux30~17_combout\ & (\proc|sram|addresses[15][1]~q\)) # (!\proc|sram|Mux30~17_combout\ & ((!\proc|sram|addresses[13][1]~q\))))) # (!\SW[0]~input_o\ & (\proc|sram|Mux30~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|Mux30~17_combout\,
	datac => \proc|sram|addresses[15][1]~q\,
	datad => \proc|sram|addresses[13][1]~q\,
	combout => \proc|sram|Mux30~18_combout\);

-- Location: LCCOMB_X113_Y45_N10
\proc|sram|addresses[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[3][1]~feeder_combout\ = \proc|sramDataWrite\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(1),
	combout => \proc|sram|addresses[3][1]~feeder_combout\);

-- Location: FF_X113_Y45_N11
\proc|sram|addresses[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[3][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][1]~q\);

-- Location: LCCOMB_X114_Y52_N10
\proc|sram|Mux30~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~14_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (!\proc|sram|addresses[1][1]~q\)) # (!\SW[0]~input_o\ & ((!\proc|sram|addresses[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[1][1]~q\,
	datad => \proc|sram|addresses[0][1]~q\,
	combout => \proc|sram|Mux30~14_combout\);

-- Location: LCCOMB_X112_Y52_N16
\proc|sram|Mux30~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~15_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux30~14_combout\ & ((\proc|sram|addresses[3][1]~q\))) # (!\proc|sram|Mux30~14_combout\ & (\proc|sram|addresses[2][1]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux30~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[2][1]~q\,
	datac => \proc|sram|addresses[3][1]~q\,
	datad => \proc|sram|Mux30~14_combout\,
	combout => \proc|sram|Mux30~15_combout\);

-- Location: FF_X111_Y49_N17
\proc|sram|addresses[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][1]~q\);

-- Location: LCCOMB_X111_Y49_N18
\proc|sram|Mux30~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\proc|sram|addresses[6][1]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\proc|sram|addresses[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[4][1]~q\,
	datad => \proc|sram|addresses[6][1]~q\,
	combout => \proc|sram|Mux30~12_combout\);

-- Location: LCCOMB_X111_Y49_N16
\proc|sram|Mux30~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux30~12_combout\ & ((\proc|sram|addresses[7][1]~q\))) # (!\proc|sram|Mux30~12_combout\ & (!\proc|sram|addresses[5][1]~q\)))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux30~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[5][1]~q\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[7][1]~q\,
	datad => \proc|sram|Mux30~12_combout\,
	combout => \proc|sram|Mux30~13_combout\);

-- Location: LCCOMB_X110_Y52_N2
\proc|sram|Mux30~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~16_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|Mux30~13_combout\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\proc|sram|Mux30~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux30~15_combout\,
	datad => \proc|sram|Mux30~13_combout\,
	combout => \proc|sram|Mux30~16_combout\);

-- Location: LCCOMB_X110_Y52_N4
\proc|sram|Mux30~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~19_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux30~16_combout\ & ((\proc|sram|Mux30~18_combout\))) # (!\proc|sram|Mux30~16_combout\ & (\proc|sram|Mux30~11_combout\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux30~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux30~11_combout\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux30~18_combout\,
	datad => \proc|sram|Mux30~16_combout\,
	combout => \proc|sram|Mux30~19_combout\);

-- Location: LCCOMB_X110_Y50_N24
\proc|sram|Mux30~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux30~20_combout\ = (\SW[4]~input_o\ & (\proc|sram|Mux30~9_combout\)) # (!\SW[4]~input_o\ & ((\proc|sram|Mux30~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sram|Mux30~9_combout\,
	datad => \proc|sram|Mux30~19_combout\,
	combout => \proc|sram|Mux30~20_combout\);

-- Location: FF_X110_Y50_N25
\proc|sram|dataReadTwo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux30~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(1));

-- Location: LCCOMB_X110_Y50_N16
\proc|sData2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(1) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadTwo\(1)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(1),
	datac => \proc|sram|dataReadTwo\(1),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(1));

-- Location: LCCOMB_X107_Y50_N20
\proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ = (\proc|sData1\(1) & ((\proc|sData2\(1)) # ((\proc|sData2\(0) & \proc|sData1\(0))))) # (!\proc|sData1\(1) & (\proc|sData2\(0) & (\proc|sData1\(0) & \proc|sData2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(0),
	datab => \proc|sData1\(0),
	datac => \proc|sData1\(1),
	datad => \proc|sData2\(1),
	combout => \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X108_Y50_N14
\proc|alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ = \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\proc|sData1\(2) & ((\proc|sData2\(2)) # (\proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\))) # 
-- (!\proc|sData1\(2) & (\proc|sData2\(2) & \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datab => \proc|sData2\(2),
	datac => \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\,
	datad => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \proc|alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X109_Y51_N8
\proc|sData1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(5) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadOne\(5))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|dataReadOne\(5),
	datac => \proc|sData1\(5),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(5));

-- Location: LCCOMB_X108_Y48_N4
\proc|alu|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~5_combout\ = (\proc|sData2\(0) & (\proc|sData1\(6))) # (!\proc|sData2\(0) & ((\proc|sData1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(0),
	datac => \proc|sData1\(6),
	datad => \proc|sData1\(5),
	combout => \proc|alu|ShiftRight0~5_combout\);

-- Location: LCCOMB_X110_Y51_N26
\proc|alu|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux0~3_combout\ = \SW[16]~input_o\ $ (((\proc|sData2\(7) & ((\SW[15]~input_o\) # (\proc|sData1\(7)))) # (!\proc|sData2\(7) & (\SW[15]~input_o\ & \proc|sData1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \proc|sData2\(7),
	datac => \SW[15]~input_o\,
	datad => \proc|sData1\(7),
	combout => \proc|alu|Mux0~3_combout\);

-- Location: LCCOMB_X109_Y50_N10
\proc|alu|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~4_combout\ = (\proc|sData2\(3)) # (\proc|alu|ShiftRight0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sData2\(3),
	datad => \proc|alu|ShiftRight0~3_combout\,
	combout => \proc|alu|ShiftRight0~4_combout\);

-- Location: LCCOMB_X108_Y51_N28
\proc|alu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux0~0_combout\ = (\SW[16]~input_o\ & (((!\proc|sData2\(2) & !\proc|alu|ShiftRight0~4_combout\)) # (!\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \proc|sData2\(2),
	datad => \proc|alu|ShiftRight0~4_combout\,
	combout => \proc|alu|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y51_N4
\proc|sData2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(6) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadTwo\(6))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|dataReadTwo\(6),
	datac => \proc|sData2\(6),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(6));

-- Location: LCCOMB_X109_Y51_N14
\proc|alu|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux2~2_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((\proc|sData1\(5)) # (\proc|sData2\(5)))) # (!\SW[15]~input_o\ & (\proc|sData1\(5) & \proc|sData2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \proc|sData1\(5),
	datad => \proc|sData2\(5),
	combout => \proc|alu|Mux2~2_combout\);

-- Location: LCCOMB_X108_Y50_N4
\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\ = (!\proc|sData2\(3) & \proc|sData1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(3),
	datad => \proc|sData1\(3),
	combout => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\);

-- Location: LCCOMB_X108_Y50_N26
\proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ = (\proc|sData1\(1) & (((\proc|sData1\(0)) # (!\proc|sData2\(1))) # (!\proc|sData2\(0)))) # (!\proc|sData1\(1) & (!\proc|sData2\(1) & ((\proc|sData1\(0)) # (!\proc|sData2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(1),
	datab => \proc|sData2\(0),
	datac => \proc|sData1\(0),
	datad => \proc|sData2\(1),
	combout => \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\);

-- Location: LCCOMB_X108_Y50_N10
\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\ = (!\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ & ((\proc|sData1\(2) & ((\proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\) # (!\proc|sData2\(2)))) 
-- # (!\proc|sData1\(2) & (!\proc|sData2\(2) & \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datab => \proc|sData2\(2),
	datac => \proc|alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\,
	datad => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\);

-- Location: LCCOMB_X108_Y50_N0
\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\ = (\proc|sData1\(4) & (((\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\) # (\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\)) # (!\proc|sData2\(4)))) 
-- # (!\proc|sData1\(4) & (!\proc|sData2\(4) & ((\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\) # (\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(4),
	datab => \proc|sData2\(4),
	datac => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\,
	datad => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\,
	combout => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\);

-- Location: LCCOMB_X108_Y51_N4
\proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\ = \proc|sData2\(5) $ (\proc|sData1\(5) $ (\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(5),
	datab => \proc|sData1\(5),
	datad => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\,
	combout => \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X109_Y51_N12
\proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\ = \proc|sData1\(5) $ (\proc|sData2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData1\(5),
	datad => \proc|sData2\(5),
	combout => \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X114_Y49_N6
\proc|sram|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~10_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\proc|sram|addresses[5][2]~q\)) # (!\SW[5]~input_o\ & ((\proc|sram|addresses[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[5][2]~q\,
	datad => \proc|sram|addresses[4][2]~q\,
	combout => \proc|sram|Mux13~10_combout\);

-- Location: LCCOMB_X114_Y49_N8
\proc|sram|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux13~10_combout\ & (\proc|sram|addresses[7][2]~q\)) # (!\proc|sram|Mux13~10_combout\ & ((\proc|sram|addresses[6][2]~q\))))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[7][2]~q\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[6][2]~q\,
	datad => \proc|sram|Mux13~10_combout\,
	combout => \proc|sram|Mux13~11_combout\);

-- Location: LCCOMB_X110_Y53_N8
\proc|sram|addresses[11][2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[11][2]~59_combout\ = !\proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[11][2]~59_combout\);

-- Location: FF_X110_Y53_N9
\proc|sram|addresses[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[11][2]~59_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][2]~q\);

-- Location: LCCOMB_X109_Y53_N10
\proc|sram|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~12_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\) # (!\proc|sram|addresses[10][2]~q\)))) # (!\SW[6]~input_o\ & (!\proc|sram|addresses[8][2]~q\ & (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[8][2]~q\,
	datab => \SW[6]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \proc|sram|addresses[10][2]~q\,
	combout => \proc|sram|Mux13~12_combout\);

-- Location: LCCOMB_X109_Y53_N16
\proc|sram|Mux13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux13~12_combout\ & (!\proc|sram|addresses[11][2]~q\)) # (!\proc|sram|Mux13~12_combout\ & ((!\proc|sram|addresses[9][2]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|addresses[11][2]~q\,
	datac => \proc|sram|addresses[9][2]~q\,
	datad => \proc|sram|Mux13~12_combout\,
	combout => \proc|sram|Mux13~13_combout\);

-- Location: LCCOMB_X112_Y52_N10
\proc|sram|Mux13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~14_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (!\proc|sram|addresses[2][2]~q\)) # (!\SW[6]~input_o\ & ((!\proc|sram|addresses[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|addresses[2][2]~q\,
	datad => \proc|sram|addresses[0][2]~q\,
	combout => \proc|sram|Mux13~14_combout\);

-- Location: LCCOMB_X110_Y49_N18
\proc|sram|Mux13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~15_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux13~14_combout\ & (!\proc|sram|addresses[3][2]~q\)) # (!\proc|sram|Mux13~14_combout\ & ((!\proc|sram|addresses[1][2]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|addresses[3][2]~q\,
	datac => \proc|sram|Mux13~14_combout\,
	datad => \proc|sram|addresses[1][2]~q\,
	combout => \proc|sram|Mux13~15_combout\);

-- Location: LCCOMB_X109_Y49_N2
\proc|sram|Mux13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~16_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|Mux13~13_combout\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((\proc|sram|Mux13~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|Mux13~13_combout\,
	datad => \proc|sram|Mux13~15_combout\,
	combout => \proc|sram|Mux13~16_combout\);

-- Location: LCCOMB_X109_Y49_N8
\proc|sram|Mux13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~19_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux13~16_combout\ & (\proc|sram|Mux13~18_combout\)) # (!\proc|sram|Mux13~16_combout\ & ((\proc|sram|Mux13~11_combout\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux13~18_combout\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|Mux13~11_combout\,
	datad => \proc|sram|Mux13~16_combout\,
	combout => \proc|sram|Mux13~19_combout\);

-- Location: LCCOMB_X113_Y51_N26
\proc|sram|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((!\proc|sram|addresses[25][2]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (!\proc|sram|addresses[17][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[17][2]~q\,
	datad => \proc|sram|addresses[25][2]~q\,
	combout => \proc|sram|Mux13~0_combout\);

-- Location: LCCOMB_X110_Y49_N4
\proc|sram|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~1_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux13~0_combout\ & (\proc|sram|addresses[29][2]~q\)) # (!\proc|sram|Mux13~0_combout\ & ((\proc|sram|addresses[21][2]~q\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[29][2]~q\,
	datab => \proc|sram|addresses[21][2]~q\,
	datac => \SW[7]~input_o\,
	datad => \proc|sram|Mux13~0_combout\,
	combout => \proc|sram|Mux13~1_combout\);

-- Location: LCCOMB_X112_Y53_N12
\proc|sram|addresses[31][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[31][2]~feeder_combout\ = \proc|sramDataWrite\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(2),
	combout => \proc|sram|addresses[31][2]~feeder_combout\);

-- Location: FF_X112_Y53_N13
\proc|sram|addresses[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[31][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][2]~q\);

-- Location: LCCOMB_X113_Y53_N20
\proc|sram|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~7_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (!\proc|sram|addresses[27][2]~q\)) # (!\SW[8]~input_o\ & ((!\proc|sram|addresses[19][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[27][2]~q\,
	datad => \proc|sram|addresses[19][2]~q\,
	combout => \proc|sram|Mux13~7_combout\);

-- Location: LCCOMB_X111_Y53_N4
\proc|sram|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~8_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux13~7_combout\ & (\proc|sram|addresses[31][2]~q\)) # (!\proc|sram|Mux13~7_combout\ & ((\proc|sram|addresses[23][2]~q\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|addresses[31][2]~q\,
	datac => \proc|sram|addresses[23][2]~q\,
	datad => \proc|sram|Mux13~7_combout\,
	combout => \proc|sram|Mux13~8_combout\);

-- Location: LCCOMB_X111_Y50_N28
\proc|sram|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\proc|sram|addresses[22][2]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\proc|sram|addresses[18][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[18][2]~q\,
	datad => \proc|sram|addresses[22][2]~q\,
	combout => \proc|sram|Mux13~2_combout\);

-- Location: LCCOMB_X110_Y49_N22
\proc|sram|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~3_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux13~2_combout\ & ((\proc|sram|addresses[30][2]~q\))) # (!\proc|sram|Mux13~2_combout\ & (!\proc|sram|addresses[26][2]~q\)))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[26][2]~q\,
	datab => \proc|sram|addresses[30][2]~q\,
	datac => \SW[8]~input_o\,
	datad => \proc|sram|Mux13~2_combout\,
	combout => \proc|sram|Mux13~3_combout\);

-- Location: LCCOMB_X111_Y47_N30
\proc|sram|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~4_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\proc|sram|addresses[20][2]~q\))) # (!\SW[7]~input_o\ & (!\proc|sram|addresses[16][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[16][2]~q\,
	datad => \proc|sram|addresses[20][2]~q\,
	combout => \proc|sram|Mux13~4_combout\);

-- Location: LCCOMB_X110_Y49_N0
\proc|sram|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~5_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux13~4_combout\ & ((\proc|sram|addresses[28][2]~q\))) # (!\proc|sram|Mux13~4_combout\ & (!\proc|sram|addresses[24][2]~q\)))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[24][2]~q\,
	datab => \proc|sram|addresses[28][2]~q\,
	datac => \SW[8]~input_o\,
	datad => \proc|sram|Mux13~4_combout\,
	combout => \proc|sram|Mux13~5_combout\);

-- Location: LCCOMB_X110_Y49_N6
\proc|sram|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~6_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\proc|sram|Mux13~3_combout\)) # (!\SW[6]~input_o\ & ((\proc|sram|Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \proc|sram|Mux13~3_combout\,
	datad => \proc|sram|Mux13~5_combout\,
	combout => \proc|sram|Mux13~6_combout\);

-- Location: LCCOMB_X110_Y49_N24
\proc|sram|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~9_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux13~6_combout\ & ((\proc|sram|Mux13~8_combout\))) # (!\proc|sram|Mux13~6_combout\ & (\proc|sram|Mux13~1_combout\)))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|Mux13~1_combout\,
	datac => \proc|sram|Mux13~8_combout\,
	datad => \proc|sram|Mux13~6_combout\,
	combout => \proc|sram|Mux13~9_combout\);

-- Location: LCCOMB_X109_Y49_N16
\proc|sram|Mux13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux13~20_combout\ = (\SW[9]~input_o\ & ((\proc|sram|Mux13~9_combout\))) # (!\SW[9]~input_o\ & (\proc|sram|Mux13~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \proc|sram|Mux13~19_combout\,
	datad => \proc|sram|Mux13~9_combout\,
	combout => \proc|sram|Mux13~20_combout\);

-- Location: FF_X109_Y49_N17
\proc|sram|dataReadOne[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux13~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(2));

-- Location: LCCOMB_X108_Y50_N12
\proc|sData1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(2) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadOne\(2)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datab => \proc|sram|dataReadOne\(2),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(2));

-- Location: LCCOMB_X107_Y50_N18
\proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\ = (\proc|sData1\(2) & ((\proc|sData2\(2)) # (\proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\))) # (!\proc|sData1\(2) & (\proc|sData2\(2) & 
-- \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData1\(2),
	datac => \proc|sData2\(2),
	datad => \proc|alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X107_Y50_N0
\proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\ = (\proc|sData2\(3) & ((\proc|sData1\(3)) # (\proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\))) # (!\proc|sData2\(3) & (\proc|sData1\(3) & 
-- \proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(3),
	datac => \proc|sData1\(3),
	datad => \proc|alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X107_Y50_N22
\proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\ = (\proc|sData1\(4) & ((\proc|sData2\(4)) # (\proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\))) # (!\proc|sData1\(4) & (\proc|sData2\(4) & 
-- \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(4),
	datab => \proc|sData2\(4),
	datad => \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X108_Y51_N10
\proc|alu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux2~0_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[16]~input_o\ & (\proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\SW[15]~input_o\ & \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y51_N12
\proc|alu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux2~1_combout\ = (\proc|alu|Mux0~0_combout\ & ((\proc|alu|Mux2~0_combout\ & ((!\proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\))) # (!\proc|alu|Mux2~0_combout\ & (\proc|alu|ShiftRight0~6_combout\)))) # 
-- (!\proc|alu|Mux0~0_combout\ & (((\proc|alu|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|ShiftRight0~6_combout\,
	datab => \proc|alu|Mux0~0_combout\,
	datac => \proc|alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \proc|alu|Mux2~0_combout\,
	combout => \proc|alu|Mux2~1_combout\);

-- Location: LCCOMB_X108_Y51_N8
\proc|alu|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux2~3_combout\ = (\SW[17]~input_o\ & ((\proc|alu|Mux2~1_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \proc|alu|Mux2~2_combout\,
	datad => \proc|alu|Mux2~1_combout\,
	combout => \proc|alu|Mux2~3_combout\);

-- Location: LCCOMB_X112_Y50_N8
\proc|sramDataWrite[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(5) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|alu|Mux2~3_combout\))) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|sramDataWrite\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sramDataWrite\(5),
	datac => \proc|alu|Mux2~3_combout\,
	datad => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	combout => \proc|sramDataWrite\(5));

-- Location: FF_X108_Y49_N25
\proc|sram|addresses[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[14][5]~q\);

-- Location: FF_X108_Y49_N11
\proc|sram|addresses[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][5]~q\);

-- Location: LCCOMB_X108_Y49_N24
\proc|sram|Mux26~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~17_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\proc|sram|addresses[14][5]~q\)) # (!\SW[1]~input_o\ & ((\proc|sram|addresses[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[14][5]~q\,
	datad => \proc|sram|addresses[12][5]~q\,
	combout => \proc|sram|Mux26~17_combout\);

-- Location: FF_X112_Y49_N29
\proc|sram|addresses[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][5]~q\);

-- Location: FF_X112_Y49_N19
\proc|sram|addresses[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][5]~q\);

-- Location: LCCOMB_X112_Y49_N28
\proc|sram|Mux26~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~18_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux26~17_combout\ & (\proc|sram|addresses[15][5]~q\)) # (!\proc|sram|Mux26~17_combout\ & ((\proc|sram|addresses[13][5]~q\))))) # (!\SW[0]~input_o\ & (\proc|sram|Mux26~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|Mux26~17_combout\,
	datac => \proc|sram|addresses[15][5]~q\,
	datad => \proc|sram|addresses[13][5]~q\,
	combout => \proc|sram|Mux26~18_combout\);

-- Location: FF_X111_Y49_N23
\proc|sram|addresses[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][5]~q\);

-- Location: FF_X114_Y49_N23
\proc|sram|addresses[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][5]~q\);

-- Location: FF_X114_Y49_N25
\proc|sram|addresses[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][5]~q\);

-- Location: FF_X111_Y49_N29
\proc|sram|addresses[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][5]~q\);

-- Location: LCCOMB_X114_Y49_N24
\proc|sram|Mux26~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\proc|sram|addresses[6][5]~q\)) # (!\SW[1]~input_o\ & ((\proc|sram|addresses[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[6][5]~q\,
	datad => \proc|sram|addresses[4][5]~q\,
	combout => \proc|sram|Mux26~12_combout\);

-- Location: LCCOMB_X114_Y49_N18
\proc|sram|Mux26~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux26~12_combout\ & (\proc|sram|addresses[7][5]~q\)) # (!\proc|sram|Mux26~12_combout\ & ((\proc|sram|addresses[5][5]~q\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux26~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|addresses[7][5]~q\,
	datac => \proc|sram|addresses[5][5]~q\,
	datad => \proc|sram|Mux26~12_combout\,
	combout => \proc|sram|Mux26~13_combout\);

-- Location: FF_X112_Y52_N3
\proc|sram|addresses[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][5]~q\);

-- Location: FF_X114_Y51_N23
\proc|sram|addresses[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][5]~q\);

-- Location: FF_X113_Y52_N7
\proc|sram|addresses[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][5]~q\);

-- Location: FF_X113_Y52_N21
\proc|sram|addresses[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][5]~q\);

-- Location: LCCOMB_X114_Y52_N28
\proc|sram|Mux26~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~14_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\proc|sram|addresses[1][5]~q\))) # (!\SW[0]~input_o\ & (\proc|sram|addresses[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[0][5]~q\,
	datad => \proc|sram|addresses[1][5]~q\,
	combout => \proc|sram|Mux26~14_combout\);

-- Location: LCCOMB_X114_Y51_N28
\proc|sram|Mux26~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~15_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux26~14_combout\ & ((\proc|sram|addresses[3][5]~q\))) # (!\proc|sram|Mux26~14_combout\ & (\proc|sram|addresses[2][5]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux26~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[2][5]~q\,
	datac => \proc|sram|addresses[3][5]~q\,
	datad => \proc|sram|Mux26~14_combout\,
	combout => \proc|sram|Mux26~15_combout\);

-- Location: LCCOMB_X114_Y51_N10
\proc|sram|Mux26~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~16_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|Mux26~13_combout\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\proc|sram|Mux26~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux26~13_combout\,
	datad => \proc|sram|Mux26~15_combout\,
	combout => \proc|sram|Mux26~16_combout\);

-- Location: LCCOMB_X114_Y51_N4
\proc|sram|Mux26~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~19_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux26~16_combout\ & ((\proc|sram|Mux26~18_combout\))) # (!\proc|sram|Mux26~16_combout\ & (\proc|sram|Mux26~11_combout\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux26~11_combout\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux26~18_combout\,
	datad => \proc|sram|Mux26~16_combout\,
	combout => \proc|sram|Mux26~19_combout\);

-- Location: FF_X112_Y53_N5
\proc|sram|addresses[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][5]~q\);

-- Location: FF_X111_Y53_N25
\proc|sram|addresses[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][5]~q\);

-- Location: LCCOMB_X111_Y53_N24
\proc|sram|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~7_combout\ = (\SW[2]~input_o\ & ((\proc|sram|addresses[23][5]~q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\proc|sram|addresses[19][5]~q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[23][5]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[19][5]~q\,
	datad => \SW[3]~input_o\,
	combout => \proc|sram|Mux26~7_combout\);

-- Location: FF_X113_Y53_N9
\proc|sram|addresses[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][5]~q\);

-- Location: LCCOMB_X111_Y51_N4
\proc|sram|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~8_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux26~7_combout\ & (\proc|sram|addresses[31][5]~q\)) # (!\proc|sram|Mux26~7_combout\ & ((\proc|sram|addresses[27][5]~q\))))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[31][5]~q\,
	datac => \proc|sram|Mux26~7_combout\,
	datad => \proc|sram|addresses[27][5]~q\,
	combout => \proc|sram|Mux26~8_combout\);

-- Location: FF_X111_Y51_N15
\proc|sram|addresses[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][5]~q\);

-- Location: FF_X112_Y51_N3
\proc|sram|addresses[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][5]~q\);

-- Location: LCCOMB_X111_Y51_N0
\proc|sram|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|addresses[21][5]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\proc|sram|addresses[17][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[17][5]~q\,
	datad => \proc|sram|addresses[21][5]~q\,
	combout => \proc|sram|Mux26~2_combout\);

-- Location: FF_X111_Y51_N9
\proc|sram|addresses[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][5]~q\);

-- Location: FF_X112_Y51_N29
\proc|sram|addresses[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][5]~q\);

-- Location: LCCOMB_X111_Y51_N8
\proc|sram|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux26~2_combout\ & ((\proc|sram|addresses[29][5]~q\))) # (!\proc|sram|Mux26~2_combout\ & (\proc|sram|addresses[25][5]~q\)))) # (!\SW[3]~input_o\ & (\proc|sram|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|Mux26~2_combout\,
	datac => \proc|sram|addresses[25][5]~q\,
	datad => \proc|sram|addresses[29][5]~q\,
	combout => \proc|sram|Mux26~3_combout\);

-- Location: FF_X112_Y47_N31
\proc|sram|addresses[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][5]~q\);

-- Location: FF_X112_Y47_N17
\proc|sram|addresses[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][5]~q\);

-- Location: LCCOMB_X113_Y47_N20
\proc|sram|addresses[24][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[24][5]~feeder_combout\ = \proc|sramDataWrite\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(5),
	combout => \proc|sram|addresses[24][5]~feeder_combout\);

-- Location: FF_X113_Y47_N21
\proc|sram|addresses[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[24][5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][5]~q\);

-- Location: FF_X111_Y47_N19
\proc|sram|addresses[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][5]~q\);

-- Location: LCCOMB_X113_Y47_N24
\proc|sram|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~4_combout\ = (\SW[3]~input_o\ & ((\proc|sram|addresses[24][5]~q\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((!\SW[2]~input_o\ & \proc|sram|addresses[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[24][5]~q\,
	datac => \SW[2]~input_o\,
	datad => \proc|sram|addresses[16][5]~q\,
	combout => \proc|sram|Mux26~4_combout\);

-- Location: LCCOMB_X112_Y47_N16
\proc|sram|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~5_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux26~4_combout\ & ((\proc|sram|addresses[28][5]~q\))) # (!\proc|sram|Mux26~4_combout\ & (\proc|sram|addresses[20][5]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[20][5]~q\,
	datac => \proc|sram|addresses[28][5]~q\,
	datad => \proc|sram|Mux26~4_combout\,
	combout => \proc|sram|Mux26~5_combout\);

-- Location: LCCOMB_X111_Y51_N2
\proc|sram|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~6_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|Mux26~3_combout\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\proc|sram|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux26~3_combout\,
	datad => \proc|sram|Mux26~5_combout\,
	combout => \proc|sram|Mux26~6_combout\);

-- Location: LCCOMB_X111_Y51_N26
\proc|sram|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~9_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux26~6_combout\ & ((\proc|sram|Mux26~8_combout\))) # (!\proc|sram|Mux26~6_combout\ & (\proc|sram|Mux26~1_combout\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux26~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux26~8_combout\,
	datad => \proc|sram|Mux26~6_combout\,
	combout => \proc|sram|Mux26~9_combout\);

-- Location: LCCOMB_X114_Y51_N2
\proc|sram|Mux26~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux26~20_combout\ = (\SW[4]~input_o\ & ((\proc|sram|Mux26~9_combout\))) # (!\SW[4]~input_o\ & (\proc|sram|Mux26~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sram|Mux26~19_combout\,
	datad => \proc|sram|Mux26~9_combout\,
	combout => \proc|sram|Mux26~20_combout\);

-- Location: FF_X114_Y51_N3
\proc|sram|dataReadTwo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux26~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(5));

-- Location: LCCOMB_X114_Y51_N14
\proc|sData2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(5) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadTwo\(5))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sram|dataReadTwo\(5),
	datac => \proc|sData2\(5),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(5));

-- Location: LCCOMB_X110_Y51_N16
\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\ = (!\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ & ((\proc|sData2\(5) & (\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\ & \proc|sData1\(5))) # 
-- (!\proc|sData2\(5) & ((\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\) # (\proc|sData1\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\,
	datab => \proc|sData2\(5),
	datac => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\,
	datad => \proc|sData1\(5),
	combout => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\);

-- Location: LCCOMB_X110_Y51_N0
\proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\ = \proc|alu|aluOut~0_combout\ $ (((\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\) # ((\proc|sData1\(6) & !\proc|sData2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|aluOut~0_combout\,
	datab => \proc|sData1\(6),
	datac => \proc|sData2\(6),
	datad => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\,
	combout => \proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X110_Y51_N30
\proc|alu|aluOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|aluOut~0_combout\ = \proc|sData2\(7) $ (\proc|sData1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(7),
	datad => \proc|sData1\(7),
	combout => \proc|alu|aluOut~0_combout\);

-- Location: LCCOMB_X108_Y51_N16
\proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\ = (\proc|sData2\(5) & ((\proc|sData1\(5)) # (\proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\))) # (!\proc|sData2\(5) & (\proc|sData1\(5) & 
-- \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(5),
	datab => \proc|sData1\(5),
	datad => \proc|alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X108_Y51_N20
\proc|alu|adder|nAdders:6:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\ = (\proc|sData2\(6) & ((\proc|sData1\(6)) # (\proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\))) # (!\proc|sData2\(6) & (\proc|sData1\(6) & 
-- \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(6),
	datab => \proc|sData1\(6),
	datad => \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X108_Y51_N6
\proc|alu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux0~1_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[16]~input_o\ & (\proc|alu|aluOut~0_combout\ $ (((\SW[15]~input_o\ & \proc|alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \proc|alu|aluOut~0_combout\,
	datad => \proc|alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y51_N24
\proc|alu|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux0~4_combout\ = (\proc|alu|Mux0~0_combout\ & ((\proc|alu|Mux0~1_combout\ & ((!\proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\))) # (!\proc|alu|Mux0~1_combout\ & (\proc|alu|ShiftRight0~8_combout\)))) # 
-- (!\proc|alu|Mux0~0_combout\ & (((\proc|alu|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|ShiftRight0~8_combout\,
	datab => \proc|alu|Mux0~0_combout\,
	datac => \proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \proc|alu|Mux0~1_combout\,
	combout => \proc|alu|Mux0~4_combout\);

-- Location: LCCOMB_X108_Y51_N2
\proc|alu|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux0~5_combout\ = (\SW[17]~input_o\ & ((\proc|alu|Mux0~4_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \proc|alu|Mux0~3_combout\,
	datad => \proc|alu|Mux0~4_combout\,
	combout => \proc|alu|Mux0~5_combout\);

-- Location: LCCOMB_X108_Y51_N30
\proc|sramDataWrite[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(7) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|alu|Mux0~5_combout\))) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|sramDataWrite\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sramDataWrite\(7),
	datac => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	datad => \proc|alu|Mux0~5_combout\,
	combout => \proc|sramDataWrite\(7));

-- Location: FF_X112_Y49_N3
\proc|sram|addresses[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][7]~q\);

-- Location: FF_X112_Y49_N1
\proc|sram|addresses[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][7]~q\);

-- Location: FF_X108_Y49_N13
\proc|sram|addresses[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][7]~q\);

-- Location: LCCOMB_X108_Y49_N12
\proc|sram|Mux24~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~17_combout\ = (\SW[1]~input_o\ & ((\proc|sram|addresses[14][7]~q\) # ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\proc|sram|addresses[12][7]~q\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[14][7]~q\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[12][7]~q\,
	datad => \SW[0]~input_o\,
	combout => \proc|sram|Mux24~17_combout\);

-- Location: LCCOMB_X111_Y51_N10
\proc|sram|Mux24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~18_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux24~17_combout\ & (\proc|sram|addresses[15][7]~q\)) # (!\proc|sram|Mux24~17_combout\ & ((\proc|sram|addresses[13][7]~q\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux24~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|addresses[15][7]~q\,
	datac => \proc|sram|addresses[13][7]~q\,
	datad => \proc|sram|Mux24~17_combout\,
	combout => \proc|sram|Mux24~18_combout\);

-- Location: FF_X111_Y52_N21
\proc|sram|addresses[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][7]~q\);

-- Location: FF_X109_Y51_N13
\proc|sram|addresses[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][7]~q\);

-- Location: FF_X113_Y52_N25
\proc|sram|addresses[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][7]~q\);

-- Location: FF_X113_Y52_N3
\proc|sram|addresses[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][7]~q\);

-- Location: LCCOMB_X113_Y52_N24
\proc|sram|Mux24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~14_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|addresses[1][7]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\proc|sram|addresses[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[1][7]~q\,
	datad => \proc|sram|addresses[0][7]~q\,
	combout => \proc|sram|Mux24~14_combout\);

-- Location: LCCOMB_X110_Y52_N8
\proc|sram|Mux24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~15_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux24~14_combout\ & ((\proc|sram|addresses[3][7]~q\))) # (!\proc|sram|Mux24~14_combout\ & (\proc|sram|addresses[2][7]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[2][7]~q\,
	datac => \proc|sram|addresses[3][7]~q\,
	datad => \proc|sram|Mux24~14_combout\,
	combout => \proc|sram|Mux24~15_combout\);

-- Location: FF_X111_Y49_N3
\proc|sram|addresses[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][7]~q\);

-- Location: FF_X111_Y49_N1
\proc|sram|addresses[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][7]~q\);

-- Location: FF_X114_Y49_N13
\proc|sram|addresses[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][7]~q\);

-- Location: LCCOMB_X111_Y49_N0
\proc|sram|Mux24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\proc|sram|addresses[6][7]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\proc|sram|addresses[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[4][7]~q\,
	datad => \proc|sram|addresses[6][7]~q\,
	combout => \proc|sram|Mux24~12_combout\);

-- Location: LCCOMB_X111_Y49_N2
\proc|sram|Mux24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux24~12_combout\ & ((\proc|sram|addresses[7][7]~q\))) # (!\proc|sram|Mux24~12_combout\ & (\proc|sram|addresses[5][7]~q\)))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[5][7]~q\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[7][7]~q\,
	datad => \proc|sram|Mux24~12_combout\,
	combout => \proc|sram|Mux24~13_combout\);

-- Location: LCCOMB_X110_Y51_N28
\proc|sram|Mux24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~16_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\proc|sram|Mux24~13_combout\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\proc|sram|Mux24~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux24~15_combout\,
	datad => \proc|sram|Mux24~13_combout\,
	combout => \proc|sram|Mux24~16_combout\);

-- Location: LCCOMB_X110_Y51_N14
\proc|sram|Mux24~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~19_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux24~16_combout\ & ((\proc|sram|Mux24~18_combout\))) # (!\proc|sram|Mux24~16_combout\ & (\proc|sram|Mux24~11_combout\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux24~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux24~11_combout\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux24~18_combout\,
	datad => \proc|sram|Mux24~16_combout\,
	combout => \proc|sram|Mux24~19_combout\);

-- Location: FF_X113_Y50_N1
\proc|sram|addresses[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][7]~q\);

-- Location: FF_X113_Y50_N15
\proc|sram|addresses[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][7]~q\);

-- Location: LCCOMB_X111_Y50_N8
\proc|sram|addresses[18][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[18][7]~feeder_combout\ = \proc|sramDataWrite\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(7),
	combout => \proc|sram|addresses[18][7]~feeder_combout\);

-- Location: FF_X111_Y50_N9
\proc|sram|addresses[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[18][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[18][7]~q\);

-- Location: FF_X112_Y50_N27
\proc|sram|addresses[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[26][7]~q\);

-- Location: LCCOMB_X111_Y50_N6
\proc|sram|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\proc|sram|addresses[26][7]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\proc|sram|addresses[18][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[18][7]~q\,
	datad => \proc|sram|addresses[26][7]~q\,
	combout => \proc|sram|Mux24~0_combout\);

-- Location: LCCOMB_X113_Y50_N14
\proc|sram|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux24~0_combout\ & ((\proc|sram|addresses[30][7]~q\))) # (!\proc|sram|Mux24~0_combout\ & (\proc|sram|addresses[22][7]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[22][7]~q\,
	datac => \proc|sram|addresses[30][7]~q\,
	datad => \proc|sram|Mux24~0_combout\,
	combout => \proc|sram|Mux24~1_combout\);

-- Location: FF_X112_Y47_N29
\proc|sram|addresses[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][7]~q\);

-- Location: FF_X112_Y47_N5
\proc|sram|addresses[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][7]~q\);

-- Location: FF_X111_Y47_N15
\proc|sram|addresses[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][7]~q\);

-- Location: FF_X113_Y47_N19
\proc|sram|addresses[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][7]~q\);

-- Location: LCCOMB_X111_Y47_N14
\proc|sram|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~4_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|addresses[24][7]~q\))) # (!\SW[3]~input_o\ & (\proc|sram|addresses[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[16][7]~q\,
	datad => \proc|sram|addresses[24][7]~q\,
	combout => \proc|sram|Mux24~4_combout\);

-- Location: LCCOMB_X112_Y47_N4
\proc|sram|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~5_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux24~4_combout\ & ((\proc|sram|addresses[28][7]~q\))) # (!\proc|sram|Mux24~4_combout\ & (\proc|sram|addresses[20][7]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[20][7]~q\,
	datac => \proc|sram|addresses[28][7]~q\,
	datad => \proc|sram|Mux24~4_combout\,
	combout => \proc|sram|Mux24~5_combout\);

-- Location: LCCOMB_X111_Y51_N18
\proc|sram|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~6_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\proc|sram|Mux24~3_combout\)) # (!\SW[0]~input_o\ & ((\proc|sram|Mux24~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux24~3_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \proc|sram|Mux24~5_combout\,
	combout => \proc|sram|Mux24~6_combout\);

-- Location: LCCOMB_X111_Y51_N28
\proc|sram|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~9_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux24~6_combout\ & (\proc|sram|Mux24~8_combout\)) # (!\proc|sram|Mux24~6_combout\ & ((\proc|sram|Mux24~1_combout\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux24~8_combout\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux24~1_combout\,
	datad => \proc|sram|Mux24~6_combout\,
	combout => \proc|sram|Mux24~9_combout\);

-- Location: LCCOMB_X110_Y51_N8
\proc|sram|Mux24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux24~20_combout\ = (\SW[4]~input_o\ & ((\proc|sram|Mux24~9_combout\))) # (!\SW[4]~input_o\ & (\proc|sram|Mux24~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sram|Mux24~19_combout\,
	datad => \proc|sram|Mux24~9_combout\,
	combout => \proc|sram|Mux24~20_combout\);

-- Location: FF_X110_Y51_N9
\proc|sram|dataReadTwo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux24~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(7));

-- Location: LCCOMB_X110_Y51_N18
\proc|sData2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(7) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadTwo\(7)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(7),
	datac => \proc|sram|dataReadTwo\(7),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(7));

-- Location: LCCOMB_X110_Y51_N20
\proc|alu|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~3_combout\ = (\proc|sData2\(6)) # ((\proc|sData2\(7)) # ((\proc|sData2\(5)) # (\proc|sData2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(6),
	datab => \proc|sData2\(7),
	datac => \proc|sData2\(5),
	datad => \proc|sData2\(4),
	combout => \proc|alu|ShiftRight0~3_combout\);

-- Location: LCCOMB_X109_Y50_N12
\proc|alu|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~6_combout\ = ((\proc|sData2\(2)) # ((\proc|sData2\(3)) # (\proc|alu|ShiftRight0~3_combout\))) # (!\SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \proc|sData2\(2),
	datac => \proc|sData2\(3),
	datad => \proc|alu|ShiftRight0~3_combout\,
	combout => \proc|alu|Mux4~6_combout\);

-- Location: LCCOMB_X109_Y50_N4
\proc|alu|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~8_combout\ = (!\proc|sData2\(1) & (\proc|sData1\(7) & !\proc|sData2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(1),
	datac => \proc|sData1\(7),
	datad => \proc|sData2\(0),
	combout => \proc|alu|ShiftRight0~8_combout\);

-- Location: LCCOMB_X109_Y50_N14
\proc|alu|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~13_combout\ = ((\proc|sData2\(2) & (!\proc|sData2\(3) & !\proc|alu|ShiftRight0~3_combout\))) # (!\SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \proc|sData2\(2),
	datac => \proc|sData2\(3),
	datad => \proc|alu|ShiftRight0~3_combout\,
	combout => \proc|alu|Mux4~13_combout\);

-- Location: LCCOMB_X109_Y50_N20
\proc|alu|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~7_combout\ = (\proc|alu|Mux4~6_combout\ & ((\SW[15]~input_o\))) # (!\proc|alu|Mux4~6_combout\ & (\proc|sData2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(1),
	datac => \SW[15]~input_o\,
	datad => \proc|alu|Mux4~6_combout\,
	combout => \proc|alu|Mux4~7_combout\);

-- Location: LCCOMB_X109_Y50_N18
\proc|alu|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~10_combout\ = (\proc|alu|Mux4~13_combout\ & ((\proc|alu|Mux4~7_combout\ & ((\proc|alu|ShiftRight0~8_combout\))) # (!\proc|alu|Mux4~7_combout\ & (!\proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\)))) # 
-- (!\proc|alu|Mux4~13_combout\ & (((!\proc|alu|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\,
	datab => \proc|alu|ShiftRight0~8_combout\,
	datac => \proc|alu|Mux4~13_combout\,
	datad => \proc|alu|Mux4~7_combout\,
	combout => \proc|alu|Mux4~10_combout\);

-- Location: LCCOMB_X108_Y50_N6
\proc|alu|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~11_combout\ = (\proc|alu|Mux4~6_combout\ & (((\proc|alu|Mux4~10_combout\)))) # (!\proc|alu|Mux4~6_combout\ & ((\proc|alu|Mux4~10_combout\ & (\proc|alu|ShiftRight0~11_combout\)) # (!\proc|alu|Mux4~10_combout\ & 
-- ((\proc|alu|ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|ShiftRight0~11_combout\,
	datab => \proc|alu|ShiftRight0~5_combout\,
	datac => \proc|alu|Mux4~6_combout\,
	datad => \proc|alu|Mux4~10_combout\,
	combout => \proc|alu|Mux4~11_combout\);

-- Location: LCCOMB_X108_Y50_N20
\proc|alu|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux4~12_combout\ = (\proc|alu|Mux4~5_combout\ & ((\proc|alu|Mux4~9_combout\ & ((\proc|alu|Mux4~11_combout\))) # (!\proc|alu|Mux4~9_combout\ & (\proc|alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\)))) # (!\proc|alu|Mux4~5_combout\ & 
-- (\proc|alu|Mux4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux4~5_combout\,
	datab => \proc|alu|Mux4~9_combout\,
	datac => \proc|alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \proc|alu|Mux4~11_combout\,
	combout => \proc|alu|Mux4~12_combout\);

-- Location: LCCOMB_X112_Y49_N4
\proc|sramDataWrite[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(3) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|alu|Mux4~12_combout\))) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|sramDataWrite\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sramDataWrite\(3),
	datac => \proc|alu|Mux4~12_combout\,
	datad => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	combout => \proc|sramDataWrite\(3));

-- Location: LCCOMB_X112_Y48_N6
\proc|sram|addresses[29][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[29][3]~feeder_combout\ = \proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[29][3]~feeder_combout\);

-- Location: FF_X112_Y48_N7
\proc|sram|addresses[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[29][3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][3]~q\);

-- Location: LCCOMB_X113_Y51_N18
\proc|sram|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((!\proc|sram|addresses[21][3]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\proc|sram|addresses[17][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[17][3]~q\,
	datad => \proc|sram|addresses[21][3]~q\,
	combout => \proc|sram|Mux28~2_combout\);

-- Location: LCCOMB_X113_Y51_N20
\proc|sram|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux28~2_combout\ & (\proc|sram|addresses[29][3]~q\)) # (!\proc|sram|Mux28~2_combout\ & ((\proc|sram|addresses[25][3]~q\))))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[29][3]~q\,
	datac => \proc|sram|addresses[25][3]~q\,
	datad => \proc|sram|Mux28~2_combout\,
	combout => \proc|sram|Mux28~3_combout\);

-- Location: LCCOMB_X113_Y47_N6
\proc|sram|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~4_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\proc|sram|addresses[24][3]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((!\proc|sram|addresses[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[24][3]~q\,
	datad => \proc|sram|addresses[16][3]~q\,
	combout => \proc|sram|Mux28~4_combout\);

-- Location: LCCOMB_X112_Y47_N26
\proc|sram|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~5_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux28~4_combout\ & ((\proc|sram|addresses[28][3]~q\))) # (!\proc|sram|Mux28~4_combout\ & (!\proc|sram|addresses[20][3]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[20][3]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[28][3]~q\,
	datad => \proc|sram|Mux28~4_combout\,
	combout => \proc|sram|Mux28~5_combout\);

-- Location: LCCOMB_X107_Y50_N26
\proc|sram|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~6_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|Mux28~3_combout\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\proc|sram|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux28~3_combout\,
	datad => \proc|sram|Mux28~5_combout\,
	combout => \proc|sram|Mux28~6_combout\);

-- Location: LCCOMB_X111_Y47_N4
\proc|sram|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|addresses[26][3]~q\))) # (!\SW[3]~input_o\ & (!\proc|sram|addresses[18][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[18][3]~q\,
	datad => \proc|sram|addresses[26][3]~q\,
	combout => \proc|sram|Mux28~0_combout\);

-- Location: LCCOMB_X114_Y50_N24
\proc|sram|addresses[22][3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[22][3]~64_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[22][3]~64_combout\);

-- Location: FF_X114_Y50_N25
\proc|sram|addresses[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[22][3]~64_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][3]~q\);

-- Location: LCCOMB_X111_Y47_N10
\proc|sram|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux28~0_combout\ & (\proc|sram|addresses[30][3]~q\)) # (!\proc|sram|Mux28~0_combout\ & ((!\proc|sram|addresses[22][3]~q\))))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|addresses[30][3]~q\,
	datac => \proc|sram|Mux28~0_combout\,
	datad => \proc|sram|addresses[22][3]~q\,
	combout => \proc|sram|Mux28~1_combout\);

-- Location: LCCOMB_X107_Y50_N8
\proc|sram|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~9_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux28~6_combout\ & (\proc|sram|Mux28~8_combout\)) # (!\proc|sram|Mux28~6_combout\ & ((\proc|sram|Mux28~1_combout\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux28~8_combout\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux28~6_combout\,
	datad => \proc|sram|Mux28~1_combout\,
	combout => \proc|sram|Mux28~9_combout\);

-- Location: FF_X109_Y52_N17
\proc|sram|addresses[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][3]~q\);

-- Location: LCCOMB_X109_Y53_N14
\proc|sram|Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\proc|sram|addresses[9][3]~q\)) # (!\SW[0]~input_o\ & ((\proc|sram|addresses[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[9][3]~q\,
	datad => \proc|sram|addresses[8][3]~q\,
	combout => \proc|sram|Mux28~10_combout\);

-- Location: LCCOMB_X108_Y53_N16
\proc|sram|Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux28~10_combout\ & ((\proc|sram|addresses[11][3]~q\))) # (!\proc|sram|Mux28~10_combout\ & (\proc|sram|addresses[10][3]~q\)))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[10][3]~q\,
	datac => \proc|sram|Mux28~10_combout\,
	datad => \proc|sram|addresses[11][3]~q\,
	combout => \proc|sram|Mux28~11_combout\);

-- Location: FF_X112_Y49_N5
\proc|sram|addresses[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[15][3]~q\);

-- Location: FF_X112_Y49_N23
\proc|sram|addresses[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[13][3]~q\);

-- Location: LCCOMB_X112_Y49_N22
\proc|sram|Mux28~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~18_combout\ = (\proc|sram|Mux28~17_combout\ & ((\proc|sram|addresses[15][3]~q\) # ((!\SW[0]~input_o\)))) # (!\proc|sram|Mux28~17_combout\ & (((\proc|sram|addresses[13][3]~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux28~17_combout\,
	datab => \proc|sram|addresses[15][3]~q\,
	datac => \proc|sram|addresses[13][3]~q\,
	datad => \SW[0]~input_o\,
	combout => \proc|sram|Mux28~18_combout\);

-- Location: LCCOMB_X112_Y46_N26
\proc|sram|addresses[4][3]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[4][3]~74_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[4][3]~74_combout\);

-- Location: FF_X112_Y46_N27
\proc|sram|addresses[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[4][3]~74_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][3]~q\);

-- Location: LCCOMB_X112_Y46_N16
\proc|sram|addresses[6][3]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[6][3]~73_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[6][3]~73_combout\);

-- Location: FF_X112_Y46_N17
\proc|sram|addresses[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[6][3]~73_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][3]~q\);

-- Location: LCCOMB_X112_Y46_N24
\proc|sram|Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\proc|sram|addresses[6][3]~q\))) # (!\SW[1]~input_o\ & (!\proc|sram|addresses[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[4][3]~q\,
	datad => \proc|sram|addresses[6][3]~q\,
	combout => \proc|sram|Mux28~12_combout\);

-- Location: LCCOMB_X112_Y46_N22
\proc|sram|Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux28~12_combout\ & (!\proc|sram|addresses[7][3]~q\)) # (!\proc|sram|Mux28~12_combout\ & ((!\proc|sram|addresses[5][3]~q\))))) # (!\SW[0]~input_o\ & (\proc|sram|Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|Mux28~12_combout\,
	datac => \proc|sram|addresses[7][3]~q\,
	datad => \proc|sram|addresses[5][3]~q\,
	combout => \proc|sram|Mux28~13_combout\);

-- Location: LCCOMB_X112_Y52_N12
\proc|sram|addresses[2][3]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[2][3]~76_combout\ = !\proc|sramDataWrite\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(3),
	combout => \proc|sram|addresses[2][3]~76_combout\);

-- Location: FF_X112_Y52_N13
\proc|sram|addresses[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[2][3]~76_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][3]~q\);

-- Location: LCCOMB_X114_Y52_N20
\proc|sram|Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~14_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (!\proc|sram|addresses[1][3]~q\)) # (!\SW[0]~input_o\ & ((!\proc|sram|addresses[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[1][3]~q\,
	datad => \proc|sram|addresses[0][3]~q\,
	combout => \proc|sram|Mux28~14_combout\);

-- Location: LCCOMB_X109_Y52_N30
\proc|sram|Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~15_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux28~14_combout\ & (!\proc|sram|addresses[3][3]~q\)) # (!\proc|sram|Mux28~14_combout\ & ((!\proc|sram|addresses[2][3]~q\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[3][3]~q\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[2][3]~q\,
	datad => \proc|sram|Mux28~14_combout\,
	combout => \proc|sram|Mux28~15_combout\);

-- Location: LCCOMB_X108_Y50_N22
\proc|sram|Mux28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~16_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\proc|sram|Mux28~13_combout\)) # (!\SW[2]~input_o\ & ((\proc|sram|Mux28~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|Mux28~13_combout\,
	datad => \proc|sram|Mux28~15_combout\,
	combout => \proc|sram|Mux28~16_combout\);

-- Location: LCCOMB_X107_Y50_N10
\proc|sram|Mux28~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~19_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux28~16_combout\ & ((\proc|sram|Mux28~18_combout\))) # (!\proc|sram|Mux28~16_combout\ & (\proc|sram|Mux28~11_combout\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|Mux28~11_combout\,
	datac => \proc|sram|Mux28~18_combout\,
	datad => \proc|sram|Mux28~16_combout\,
	combout => \proc|sram|Mux28~19_combout\);

-- Location: LCCOMB_X107_Y50_N2
\proc|sram|Mux28~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux28~20_combout\ = (\SW[4]~input_o\ & (\proc|sram|Mux28~9_combout\)) # (!\SW[4]~input_o\ & ((\proc|sram|Mux28~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \proc|sram|Mux28~9_combout\,
	datad => \proc|sram|Mux28~19_combout\,
	combout => \proc|sram|Mux28~20_combout\);

-- Location: FF_X107_Y50_N3
\proc|sram|dataReadTwo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux28~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(3));

-- Location: LCCOMB_X107_Y50_N24
\proc|sData2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(3) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadTwo\(3)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(3),
	datac => \proc|sram|dataReadTwo\(3),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(3));

-- Location: LCCOMB_X110_Y51_N12
\proc|alu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~2_combout\ = (\SW[15]~input_o\ & (\SW[16]~input_o\ & (!\proc|sData2\(3) & !\proc|alu|ShiftRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \proc|sData2\(3),
	datad => \proc|alu|ShiftRight0~3_combout\,
	combout => \proc|alu|Mux7~2_combout\);

-- Location: LCCOMB_X109_Y50_N30
\proc|alu|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~9_combout\ = (\proc|sData2\(0) & ((\proc|sData1\(3)))) # (!\proc|sData2\(0) & (\proc|sData1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(2),
	datac => \proc|sData1\(3),
	datad => \proc|sData2\(0),
	combout => \proc|alu|ShiftRight0~9_combout\);

-- Location: LCCOMB_X110_Y50_N28
\proc|alu|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~3_combout\ = (!\proc|sData2\(1) & ((\proc|sData2\(0) & ((\proc|sData1\(1)))) # (!\proc|sData2\(0) & (\proc|sData1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(0),
	datab => \proc|sData2\(1),
	datac => \proc|sData1\(0),
	datad => \proc|sData1\(1),
	combout => \proc|alu|Mux7~3_combout\);

-- Location: LCCOMB_X109_Y50_N16
\proc|alu|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~4_combout\ = (!\proc|sData2\(2) & ((\proc|alu|Mux7~3_combout\) # ((\proc|sData2\(1) & \proc|alu|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(1),
	datab => \proc|sData2\(2),
	datac => \proc|alu|ShiftRight0~9_combout\,
	datad => \proc|alu|Mux7~3_combout\,
	combout => \proc|alu|Mux7~4_combout\);

-- Location: LCCOMB_X109_Y50_N26
\proc|alu|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~5_combout\ = (\proc|alu|Mux7~2_combout\ & ((\proc|alu|Mux7~4_combout\) # ((\proc|sData2\(2) & \proc|alu|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(2),
	datab => \proc|alu|ShiftRight0~2_combout\,
	datac => \proc|alu|Mux7~2_combout\,
	datad => \proc|alu|Mux7~4_combout\,
	combout => \proc|alu|Mux7~5_combout\);

-- Location: LCCOMB_X109_Y48_N22
\proc|alu|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux7~6_combout\ = (\SW[17]~input_o\ & ((\proc|alu|Mux7~1_combout\) # ((\proc|alu|Mux7~5_combout\)))) # (!\SW[17]~input_o\ & (((\proc|alu|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \proc|alu|Mux7~1_combout\,
	datac => \proc|alu|Mux7~0_combout\,
	datad => \proc|alu|Mux7~5_combout\,
	combout => \proc|alu|Mux7~6_combout\);

-- Location: LCCOMB_X112_Y49_N14
\proc|sramDataWrite[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(0) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|alu|Mux7~6_combout\))) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|sramDataWrite\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sramDataWrite\(0),
	datac => \proc|alu|Mux7~6_combout\,
	datad => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	combout => \proc|sramDataWrite\(0));

-- Location: FF_X112_Y53_N11
\proc|sram|addresses[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][0]~q\);

-- Location: FF_X113_Y53_N17
\proc|sram|addresses[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[19][0]~q\);

-- Location: FF_X113_Y53_N7
\proc|sram|addresses[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[27][0]~q\);

-- Location: LCCOMB_X113_Y53_N16
\proc|sram|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~7_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|addresses[27][0]~q\))) # (!\SW[3]~input_o\ & (\proc|sram|addresses[19][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[19][0]~q\,
	datad => \proc|sram|addresses[27][0]~q\,
	combout => \proc|sram|Mux31~7_combout\);

-- Location: LCCOMB_X112_Y53_N10
\proc|sram|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~8_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux31~7_combout\ & ((\proc|sram|addresses[31][0]~q\))) # (!\proc|sram|Mux31~7_combout\ & (\proc|sram|addresses[23][0]~q\)))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[23][0]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[31][0]~q\,
	datad => \proc|sram|Mux31~7_combout\,
	combout => \proc|sram|Mux31~8_combout\);

-- Location: FF_X113_Y51_N1
\proc|sram|addresses[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][0]~q\);

-- Location: FF_X113_Y51_N11
\proc|sram|addresses[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][0]~q\);

-- Location: LCCOMB_X113_Y51_N0
\proc|sram|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|addresses[25][0]~q\))) # (!\SW[3]~input_o\ & (\proc|sram|addresses[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|addresses[17][0]~q\,
	datad => \proc|sram|addresses[25][0]~q\,
	combout => \proc|sram|Mux31~0_combout\);

-- Location: FF_X112_Y51_N13
\proc|sram|addresses[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][0]~q\);

-- Location: FF_X112_Y51_N21
\proc|sram|addresses[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][0]~q\);

-- Location: LCCOMB_X112_Y51_N12
\proc|sram|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~1_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux31~0_combout\ & ((\proc|sram|addresses[29][0]~q\))) # (!\proc|sram|Mux31~0_combout\ & (\proc|sram|addresses[21][0]~q\)))) # (!\SW[2]~input_o\ & (\proc|sram|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|Mux31~0_combout\,
	datac => \proc|sram|addresses[21][0]~q\,
	datad => \proc|sram|addresses[29][0]~q\,
	combout => \proc|sram|Mux31~1_combout\);

-- Location: LCCOMB_X112_Y50_N2
\proc|sram|addresses[22][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[22][0]~17_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[22][0]~17_combout\);

-- Location: FF_X112_Y50_N3
\proc|sram|addresses[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[22][0]~17_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[22][0]~q\);

-- Location: LCCOMB_X111_Y50_N4
\proc|sram|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~2_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\) # (!\proc|sram|addresses[22][0]~q\)))) # (!\SW[2]~input_o\ & (!\proc|sram|addresses[18][0]~q\ & ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[18][0]~q\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[22][0]~q\,
	datad => \SW[3]~input_o\,
	combout => \proc|sram|Mux31~2_combout\);

-- Location: LCCOMB_X113_Y50_N28
\proc|sram|addresses[30][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[30][0]~19_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[30][0]~19_combout\);

-- Location: FF_X113_Y50_N29
\proc|sram|addresses[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[30][0]~19_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[30][0]~q\);

-- Location: LCCOMB_X111_Y50_N30
\proc|sram|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~3_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux31~2_combout\ & ((!\proc|sram|addresses[30][0]~q\))) # (!\proc|sram|Mux31~2_combout\ & (!\proc|sram|addresses[26][0]~q\)))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[26][0]~q\,
	datab => \SW[3]~input_o\,
	datac => \proc|sram|Mux31~2_combout\,
	datad => \proc|sram|addresses[30][0]~q\,
	combout => \proc|sram|Mux31~3_combout\);

-- Location: LCCOMB_X112_Y47_N0
\proc|sram|addresses[28][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[28][0]~23_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[28][0]~23_combout\);

-- Location: FF_X112_Y47_N1
\proc|sram|addresses[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[28][0]~23_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[28][0]~q\);

-- Location: LCCOMB_X113_Y47_N12
\proc|sram|addresses[24][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[24][0]~20_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[24][0]~20_combout\);

-- Location: FF_X113_Y47_N13
\proc|sram|addresses[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[24][0]~20_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[24][0]~q\);

-- Location: LCCOMB_X112_Y47_N22
\proc|sram|addresses[20][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[20][0]~21_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[20][0]~21_combout\);

-- Location: FF_X112_Y47_N23
\proc|sram|addresses[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[20][0]~21_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[20][0]~q\);

-- Location: LCCOMB_X113_Y49_N8
\proc|sram|addresses[16][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[16][0]~22_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[16][0]~22_combout\);

-- Location: FF_X113_Y49_N9
\proc|sram|addresses[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[16][0]~22_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[16][0]~q\);

-- Location: LCCOMB_X112_Y48_N18
\proc|sram|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~4_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (!\proc|sram|addresses[20][0]~q\)) # (!\SW[2]~input_o\ & ((!\proc|sram|addresses[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|addresses[20][0]~q\,
	datad => \proc|sram|addresses[16][0]~q\,
	combout => \proc|sram|Mux31~4_combout\);

-- Location: LCCOMB_X112_Y48_N12
\proc|sram|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~5_combout\ = (\SW[3]~input_o\ & ((\proc|sram|Mux31~4_combout\ & (!\proc|sram|addresses[28][0]~q\)) # (!\proc|sram|Mux31~4_combout\ & ((!\proc|sram|addresses[24][0]~q\))))) # (!\SW[3]~input_o\ & (((\proc|sram|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|sram|addresses[28][0]~q\,
	datac => \proc|sram|addresses[24][0]~q\,
	datad => \proc|sram|Mux31~4_combout\,
	combout => \proc|sram|Mux31~5_combout\);

-- Location: LCCOMB_X111_Y50_N0
\proc|sram|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~6_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\proc|sram|Mux31~3_combout\)) # (!\SW[1]~input_o\ & ((\proc|sram|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|Mux31~3_combout\,
	datad => \proc|sram|Mux31~5_combout\,
	combout => \proc|sram|Mux31~6_combout\);

-- Location: LCCOMB_X111_Y50_N10
\proc|sram|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~9_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux31~6_combout\ & (\proc|sram|Mux31~8_combout\)) # (!\proc|sram|Mux31~6_combout\ & ((\proc|sram|Mux31~1_combout\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|Mux31~8_combout\,
	datac => \proc|sram|Mux31~1_combout\,
	datad => \proc|sram|Mux31~6_combout\,
	combout => \proc|sram|Mux31~9_combout\);

-- Location: FF_X111_Y49_N25
\proc|sram|addresses[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[7][0]~q\);

-- Location: LCCOMB_X114_Y49_N30
\proc|sram|addresses[6][0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[6][0]~24_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[6][0]~24_combout\);

-- Location: FF_X114_Y49_N31
\proc|sram|addresses[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[6][0]~24_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][0]~q\);

-- Location: FF_X114_Y49_N5
\proc|sram|addresses[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[5][0]~q\);

-- Location: LCCOMB_X111_Y49_N12
\proc|sram|addresses[4][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[4][0]~25_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[4][0]~25_combout\);

-- Location: FF_X111_Y49_N13
\proc|sram|addresses[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[4][0]~25_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[4][0]~q\);

-- Location: LCCOMB_X114_Y49_N4
\proc|sram|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\proc|sram|addresses[5][0]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((!\proc|sram|addresses[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[5][0]~q\,
	datad => \proc|sram|addresses[4][0]~q\,
	combout => \proc|sram|Mux31~10_combout\);

-- Location: LCCOMB_X110_Y50_N8
\proc|sram|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~11_combout\ = (\SW[1]~input_o\ & ((\proc|sram|Mux31~10_combout\ & (\proc|sram|addresses[7][0]~q\)) # (!\proc|sram|Mux31~10_combout\ & ((!\proc|sram|addresses[6][0]~q\))))) # (!\SW[1]~input_o\ & (((\proc|sram|Mux31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[7][0]~q\,
	datac => \proc|sram|addresses[6][0]~q\,
	datad => \proc|sram|Mux31~10_combout\,
	combout => \proc|sram|Mux31~11_combout\);

-- Location: LCCOMB_X114_Y53_N20
\proc|sram|addresses[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[3][0]~feeder_combout\ = \proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[3][0]~feeder_combout\);

-- Location: FF_X114_Y53_N21
\proc|sram|addresses[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[3][0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[3][0]~q\);

-- Location: FF_X113_Y52_N1
\proc|sram|addresses[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[1][0]~q\);

-- Location: LCCOMB_X113_Y52_N30
\proc|sram|addresses[0][0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[0][0]~29_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[0][0]~29_combout\);

-- Location: FF_X113_Y52_N31
\proc|sram|addresses[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[0][0]~29_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[0][0]~q\);

-- Location: LCCOMB_X112_Y52_N30
\proc|sram|addresses[2][0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[2][0]~28_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[2][0]~28_combout\);

-- Location: FF_X112_Y52_N31
\proc|sram|addresses[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[2][0]~28_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[2][0]~q\);

-- Location: LCCOMB_X113_Y52_N10
\proc|sram|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~14_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\proc|sram|addresses[2][0]~q\))) # (!\SW[1]~input_o\ & (!\proc|sram|addresses[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \proc|sram|addresses[0][0]~q\,
	datad => \proc|sram|addresses[2][0]~q\,
	combout => \proc|sram|Mux31~14_combout\);

-- Location: LCCOMB_X114_Y53_N0
\proc|sram|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~15_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux31~14_combout\ & (\proc|sram|addresses[3][0]~q\)) # (!\proc|sram|Mux31~14_combout\ & ((\proc|sram|addresses[1][0]~q\))))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|sram|addresses[3][0]~q\,
	datac => \proc|sram|addresses[1][0]~q\,
	datad => \proc|sram|Mux31~14_combout\,
	combout => \proc|sram|Mux31~15_combout\);

-- Location: FF_X110_Y53_N27
\proc|sram|addresses[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[11][0]~q\);

-- Location: LCCOMB_X110_Y53_N16
\proc|sram|addresses[8][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[8][0]~27_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[8][0]~27_combout\);

-- Location: FF_X110_Y53_N17
\proc|sram|addresses[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[8][0]~27_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[8][0]~q\);

-- Location: LCCOMB_X109_Y53_N22
\proc|sram|addresses[10][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[10][0]~26_combout\ = !\proc|sramDataWrite\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(0),
	combout => \proc|sram|addresses[10][0]~26_combout\);

-- Location: FF_X109_Y53_N23
\proc|sram|addresses[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[10][0]~26_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[10][0]~q\);

-- Location: LCCOMB_X110_Y53_N18
\proc|sram|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~12_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\) # (!\proc|sram|addresses[10][0]~q\)))) # (!\SW[1]~input_o\ & (!\proc|sram|addresses[8][0]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \proc|sram|addresses[8][0]~q\,
	datac => \SW[0]~input_o\,
	datad => \proc|sram|addresses[10][0]~q\,
	combout => \proc|sram|Mux31~12_combout\);

-- Location: LCCOMB_X110_Y53_N26
\proc|sram|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~13_combout\ = (\SW[0]~input_o\ & ((\proc|sram|Mux31~12_combout\ & ((\proc|sram|addresses[11][0]~q\))) # (!\proc|sram|Mux31~12_combout\ & (\proc|sram|addresses[9][0]~q\)))) # (!\SW[0]~input_o\ & (((\proc|sram|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[9][0]~q\,
	datab => \SW[0]~input_o\,
	datac => \proc|sram|addresses[11][0]~q\,
	datad => \proc|sram|Mux31~12_combout\,
	combout => \proc|sram|Mux31~13_combout\);

-- Location: LCCOMB_X110_Y50_N18
\proc|sram|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~16_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\proc|sram|Mux31~13_combout\))) # (!\SW[3]~input_o\ & (\proc|sram|Mux31~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|sram|Mux31~15_combout\,
	datac => \SW[3]~input_o\,
	datad => \proc|sram|Mux31~13_combout\,
	combout => \proc|sram|Mux31~16_combout\);

-- Location: LCCOMB_X110_Y50_N20
\proc|sram|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~19_combout\ = (\SW[2]~input_o\ & ((\proc|sram|Mux31~16_combout\ & (\proc|sram|Mux31~18_combout\)) # (!\proc|sram|Mux31~16_combout\ & ((\proc|sram|Mux31~11_combout\))))) # (!\SW[2]~input_o\ & (((\proc|sram|Mux31~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux31~18_combout\,
	datab => \SW[2]~input_o\,
	datac => \proc|sram|Mux31~11_combout\,
	datad => \proc|sram|Mux31~16_combout\,
	combout => \proc|sram|Mux31~19_combout\);

-- Location: LCCOMB_X110_Y50_N30
\proc|sram|Mux31~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux31~20_combout\ = (\SW[4]~input_o\ & (\proc|sram|Mux31~9_combout\)) # (!\SW[4]~input_o\ & ((\proc|sram|Mux31~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \proc|sram|Mux31~9_combout\,
	datad => \proc|sram|Mux31~19_combout\,
	combout => \proc|sram|Mux31~20_combout\);

-- Location: FF_X110_Y50_N31
\proc|sram|dataReadTwo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux31~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadTwo\(0));

-- Location: LCCOMB_X108_Y50_N2
\proc|sData2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData2\(0) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sram|dataReadTwo\(0)))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sData2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sData2\(0),
	datac => \proc|sram|dataReadTwo\(0),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData2\(0));

-- Location: LCCOMB_X109_Y50_N8
\proc|alu|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~0_combout\ = (\proc|sData2\(1) & ((\proc|sData2\(0) & (\proc|sData1\(7))) # (!\proc|sData2\(0) & ((\proc|sData1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(1),
	datab => \proc|sData1\(7),
	datac => \proc|sData1\(6),
	datad => \proc|sData2\(0),
	combout => \proc|alu|ShiftRight0~0_combout\);

-- Location: LCCOMB_X109_Y50_N22
\proc|alu|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~1_combout\ = (\proc|sData2\(0) & ((\proc|sData1\(5)))) # (!\proc|sData2\(0) & (\proc|sData1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(4),
	datab => \proc|sData1\(5),
	datad => \proc|sData2\(0),
	combout => \proc|alu|ShiftRight0~1_combout\);

-- Location: LCCOMB_X109_Y50_N0
\proc|alu|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~2_combout\ = (\proc|alu|ShiftRight0~0_combout\) # ((\proc|alu|ShiftRight0~1_combout\ & !\proc|sData2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|alu|ShiftRight0~0_combout\,
	datac => \proc|alu|ShiftRight0~1_combout\,
	datad => \proc|sData2\(1),
	combout => \proc|alu|ShiftRight0~2_combout\);

-- Location: LCCOMB_X109_Y51_N4
\proc|alu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux3~0_combout\ = (\SW[16]~input_o\ & (((!\SW[15]~input_o\)))) # (!\SW[16]~input_o\ & (\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\SW[15]~input_o\ & \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \proc|alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y51_N6
\proc|alu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux3~1_combout\ = (\proc|alu|Mux3~0_combout\ & (((!\proc|alu|Mux0~0_combout\)) # (!\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\))) # (!\proc|alu|Mux3~0_combout\ & (((\proc|alu|ShiftRight0~2_combout\ & 
-- \proc|alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\,
	datab => \proc|alu|ShiftRight0~2_combout\,
	datac => \proc|alu|Mux3~0_combout\,
	datad => \proc|alu|Mux0~0_combout\,
	combout => \proc|alu|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y51_N20
\proc|alu|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux3~3_combout\ = (\SW[17]~input_o\ & ((\proc|alu|Mux3~1_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \proc|alu|Mux3~2_combout\,
	datad => \proc|alu|Mux3~1_combout\,
	combout => \proc|alu|Mux3~3_combout\);

-- Location: LCCOMB_X112_Y53_N4
\proc|sramDataWrite[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sramDataWrite\(4) = (GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & ((\proc|alu|Mux3~3_combout\))) # (!GLOBAL(\proc|sramDataWrite[7]~0clkctrl_outclk\) & (\proc|sramDataWrite\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sramDataWrite[7]~0clkctrl_outclk\,
	datab => \proc|sramDataWrite\(4),
	datad => \proc|alu|Mux3~3_combout\,
	combout => \proc|sramDataWrite\(4));

-- Location: FF_X112_Y53_N27
\proc|sram|addresses[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[31][4]~q\);

-- Location: FF_X111_Y53_N17
\proc|sram|addresses[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[23][4]~q\);

-- Location: LCCOMB_X113_Y53_N18
\proc|sram|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~7_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\proc|sram|addresses[27][4]~q\))) # (!\SW[8]~input_o\ & (\proc|sram|addresses[19][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[19][4]~q\,
	datad => \proc|sram|addresses[27][4]~q\,
	combout => \proc|sram|Mux11~7_combout\);

-- Location: LCCOMB_X111_Y53_N16
\proc|sram|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~8_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux11~7_combout\ & (\proc|sram|addresses[31][4]~q\)) # (!\proc|sram|Mux11~7_combout\ & ((\proc|sram|addresses[23][4]~q\))))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|addresses[31][4]~q\,
	datac => \proc|sram|addresses[23][4]~q\,
	datad => \proc|sram|Mux11~7_combout\,
	combout => \proc|sram|Mux11~8_combout\);

-- Location: FF_X113_Y51_N3
\proc|sram|addresses[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[17][4]~q\);

-- Location: FF_X113_Y51_N25
\proc|sram|addresses[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[25][4]~q\);

-- Location: LCCOMB_X113_Y51_N2
\proc|sram|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\proc|sram|addresses[25][4]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\proc|sram|addresses[17][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[17][4]~q\,
	datad => \proc|sram|addresses[25][4]~q\,
	combout => \proc|sram|Mux11~0_combout\);

-- Location: FF_X112_Y51_N9
\proc|sram|addresses[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[29][4]~q\);

-- Location: FF_X112_Y53_N17
\proc|sram|addresses[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \proc|sramDataWrite\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \proc|sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[21][4]~q\);

-- Location: LCCOMB_X113_Y51_N8
\proc|sram|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~1_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux11~0_combout\ & (\proc|sram|addresses[29][4]~q\)) # (!\proc|sram|Mux11~0_combout\ & ((\proc|sram|addresses[21][4]~q\))))) # (!\SW[7]~input_o\ & (\proc|sram|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|Mux11~0_combout\,
	datac => \proc|sram|addresses[29][4]~q\,
	datad => \proc|sram|addresses[21][4]~q\,
	combout => \proc|sram|Mux11~1_combout\);

-- Location: LCCOMB_X112_Y50_N4
\proc|sram|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~3_combout\ = (\proc|sram|Mux11~2_combout\ & (((\proc|sram|addresses[30][4]~q\)) # (!\SW[8]~input_o\))) # (!\proc|sram|Mux11~2_combout\ & (\SW[8]~input_o\ & (\proc|sram|addresses[26][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|Mux11~2_combout\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|addresses[26][4]~q\,
	datad => \proc|sram|addresses[30][4]~q\,
	combout => \proc|sram|Mux11~3_combout\);

-- Location: LCCOMB_X114_Y47_N28
\proc|sram|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~4_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\proc|sram|addresses[20][4]~q\))) # (!\SW[7]~input_o\ & (\proc|sram|addresses[16][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \proc|sram|addresses[16][4]~q\,
	datad => \proc|sram|addresses[20][4]~q\,
	combout => \proc|sram|Mux11~4_combout\);

-- Location: LCCOMB_X114_Y47_N22
\proc|sram|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~5_combout\ = (\SW[8]~input_o\ & ((\proc|sram|Mux11~4_combout\ & (\proc|sram|addresses[28][4]~q\)) # (!\proc|sram|Mux11~4_combout\ & ((\proc|sram|addresses[24][4]~q\))))) # (!\SW[8]~input_o\ & (((\proc|sram|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \proc|sram|addresses[28][4]~q\,
	datac => \proc|sram|addresses[24][4]~q\,
	datad => \proc|sram|Mux11~4_combout\,
	combout => \proc|sram|Mux11~5_combout\);

-- Location: LCCOMB_X114_Y50_N20
\proc|sram|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~6_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\proc|sram|Mux11~3_combout\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((\proc|sram|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|Mux11~3_combout\,
	datad => \proc|sram|Mux11~5_combout\,
	combout => \proc|sram|Mux11~6_combout\);

-- Location: LCCOMB_X114_Y50_N14
\proc|sram|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~9_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux11~6_combout\ & (\proc|sram|Mux11~8_combout\)) # (!\proc|sram|Mux11~6_combout\ & ((\proc|sram|Mux11~1_combout\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|Mux11~8_combout\,
	datac => \proc|sram|Mux11~1_combout\,
	datad => \proc|sram|Mux11~6_combout\,
	combout => \proc|sram|Mux11~9_combout\);

-- Location: LCCOMB_X113_Y46_N8
\proc|sram|addresses[6][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[6][4]~0_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[6][4]~0_combout\);

-- Location: FF_X113_Y46_N9
\proc|sram|addresses[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[6][4]~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[6][4]~q\);

-- Location: LCCOMB_X113_Y46_N2
\proc|sram|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~10_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((!\proc|sram|addresses[5][4]~q\))) # (!\SW[5]~input_o\ & (!\proc|sram|addresses[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[4][4]~q\,
	datad => \proc|sram|addresses[5][4]~q\,
	combout => \proc|sram|Mux11~10_combout\);

-- Location: LCCOMB_X113_Y46_N24
\proc|sram|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~11_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux11~10_combout\ & ((!\proc|sram|addresses[7][4]~q\))) # (!\proc|sram|Mux11~10_combout\ & (!\proc|sram|addresses[6][4]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[6][4]~q\,
	datac => \proc|sram|addresses[7][4]~q\,
	datad => \proc|sram|Mux11~10_combout\,
	combout => \proc|sram|Mux11~11_combout\);

-- Location: LCCOMB_X113_Y48_N2
\proc|sram|addresses[12][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|addresses[12][4]~14_combout\ = !\proc|sramDataWrite\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|sramDataWrite\(4),
	combout => \proc|sram|addresses[12][4]~14_combout\);

-- Location: FF_X113_Y48_N3
\proc|sram|addresses[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|addresses[12][4]~14_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \proc|sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|addresses[12][4]~q\);

-- Location: LCCOMB_X113_Y48_N12
\proc|sram|Mux11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~17_combout\ = (\SW[5]~input_o\ & (((\SW[6]~input_o\)) # (!\proc|sram|addresses[13][4]~q\))) # (!\SW[5]~input_o\ & (((!\SW[6]~input_o\ & !\proc|sram|addresses[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[13][4]~q\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \proc|sram|addresses[12][4]~q\,
	combout => \proc|sram|Mux11~17_combout\);

-- Location: LCCOMB_X113_Y48_N26
\proc|sram|Mux11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~18_combout\ = (\SW[6]~input_o\ & ((\proc|sram|Mux11~17_combout\ & ((!\proc|sram|addresses[15][4]~q\))) # (!\proc|sram|Mux11~17_combout\ & (!\proc|sram|addresses[14][4]~q\)))) # (!\SW[6]~input_o\ & (((\proc|sram|Mux11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \proc|sram|addresses[14][4]~q\,
	datac => \proc|sram|addresses[15][4]~q\,
	datad => \proc|sram|Mux11~17_combout\,
	combout => \proc|sram|Mux11~18_combout\);

-- Location: LCCOMB_X113_Y52_N22
\proc|sram|Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\proc|sram|addresses[2][4]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (!\proc|sram|addresses[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[0][4]~q\,
	datad => \proc|sram|addresses[2][4]~q\,
	combout => \proc|sram|Mux11~14_combout\);

-- Location: LCCOMB_X114_Y52_N0
\proc|sram|Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~15_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux11~14_combout\ & (!\proc|sram|addresses[3][4]~q\)) # (!\proc|sram|Mux11~14_combout\ & ((!\proc|sram|addresses[1][4]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \proc|sram|addresses[3][4]~q\,
	datac => \proc|sram|addresses[1][4]~q\,
	datad => \proc|sram|Mux11~14_combout\,
	combout => \proc|sram|Mux11~15_combout\);

-- Location: LCCOMB_X110_Y52_N0
\proc|sram|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\proc|sram|addresses[10][4]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\proc|sram|addresses[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[10][4]~q\,
	datad => \proc|sram|addresses[8][4]~q\,
	combout => \proc|sram|Mux11~12_combout\);

-- Location: LCCOMB_X110_Y52_N20
\proc|sram|Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~13_combout\ = (\SW[5]~input_o\ & ((\proc|sram|Mux11~12_combout\ & (!\proc|sram|addresses[11][4]~q\)) # (!\proc|sram|Mux11~12_combout\ & ((!\proc|sram|addresses[9][4]~q\))))) # (!\SW[5]~input_o\ & (((\proc|sram|Mux11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sram|addresses[11][4]~q\,
	datab => \SW[5]~input_o\,
	datac => \proc|sram|addresses[9][4]~q\,
	datad => \proc|sram|Mux11~12_combout\,
	combout => \proc|sram|Mux11~13_combout\);

-- Location: LCCOMB_X114_Y50_N0
\proc|sram|Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~16_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\proc|sram|Mux11~13_combout\))) # (!\SW[8]~input_o\ & (\proc|sram|Mux11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \proc|sram|Mux11~15_combout\,
	datad => \proc|sram|Mux11~13_combout\,
	combout => \proc|sram|Mux11~16_combout\);

-- Location: LCCOMB_X114_Y50_N10
\proc|sram|Mux11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~19_combout\ = (\SW[7]~input_o\ & ((\proc|sram|Mux11~16_combout\ & ((\proc|sram|Mux11~18_combout\))) # (!\proc|sram|Mux11~16_combout\ & (\proc|sram|Mux11~11_combout\)))) # (!\SW[7]~input_o\ & (((\proc|sram|Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|sram|Mux11~11_combout\,
	datac => \proc|sram|Mux11~18_combout\,
	datad => \proc|sram|Mux11~16_combout\,
	combout => \proc|sram|Mux11~19_combout\);

-- Location: LCCOMB_X114_Y50_N12
\proc|sram|Mux11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sram|Mux11~20_combout\ = (\SW[9]~input_o\ & (\proc|sram|Mux11~9_combout\)) # (!\SW[9]~input_o\ & ((\proc|sram|Mux11~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \proc|sram|Mux11~9_combout\,
	datad => \proc|sram|Mux11~19_combout\,
	combout => \proc|sram|Mux11~20_combout\);

-- Location: FF_X114_Y50_N13
\proc|sram|dataReadOne[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \proc|sram|Mux11~20_combout\,
	ena => \proc|sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|sram|dataReadOne\(4));

-- Location: LCCOMB_X114_Y50_N8
\proc|sData1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|sData1\(4) = (GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & (\proc|sram|dataReadOne\(4))) # (!GLOBAL(\proc|nextState.EXECUTE~0clkctrl_outclk\) & ((\proc|sData1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|sram|dataReadOne\(4),
	datac => \proc|sData1\(4),
	datad => \proc|nextState.EXECUTE~0clkctrl_outclk\,
	combout => \proc|sData1\(4));

-- Location: LCCOMB_X114_Y50_N4
\proc|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector27~0_combout\ = (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & ((\proc|sData1\(4)))) # (!\proc|currState.EXECUTE~q\ & (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \proc|sData1\(4),
	datac => \proc|currState.EXECUTE~q\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|Selector27~0_combout\);

-- Location: LCCOMB_X109_Y52_N18
\proc|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector27~1_combout\ = (\proc|Selector27~0_combout\) # ((\SW[14]~input_o\ & \proc|currState.MEM_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|Selector27~0_combout\,
	combout => \proc|Selector27~1_combout\);

-- Location: LCCOMB_X108_Y53_N24
\proc|hexIn7[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn7\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector27~1_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn7\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexIn7\(0),
	datac => \proc|Selector27~1_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn7\(0));

-- Location: LCCOMB_X108_Y53_N12
\proc|hexComp7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux6~0_combout\ = (\proc|hexIn7\(1) & (!\proc|hexIn7\(2) & (\proc|hexIn7\(3) & \proc|hexIn7\(0)))) # (!\proc|hexIn7\(1) & (\proc|hexIn7\(2) $ (((!\proc|hexIn7\(3) & \proc|hexIn7\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(2),
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn7\(0),
	combout => \proc|hexComp7|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y53_N18
\proc|hexComp7|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux6~1_combout\ = (\proc|hexComp7|Mux6~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp7|Mux6~0_combout\,
	combout => \proc|hexComp7|Mux6~1_combout\);

-- Location: LCCOMB_X108_Y53_N6
\proc|HEX7[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(0) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp7|Mux6~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX7\(0),
	combout => \proc|HEX7\(0));

-- Location: LCCOMB_X108_Y53_N8
\proc|hexComp7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux5~0_combout\ = (\proc|hexIn7\(1) & ((\proc|hexIn7\(0) & ((\proc|hexIn7\(3)))) # (!\proc|hexIn7\(0) & (\proc|hexIn7\(2))))) # (!\proc|hexIn7\(1) & (\proc|hexIn7\(2) & (\proc|hexIn7\(3) $ (\proc|hexIn7\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(2),
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn7\(0),
	combout => \proc|hexComp7|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y47_N16
\proc|hexComp7|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux5~1_combout\ = (\proc|hexComp7|Mux5~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp7|Mux5~0_combout\,
	combout => \proc|hexComp7|Mux5~1_combout\);

-- Location: LCCOMB_X109_Y47_N2
\proc|HEX7[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(1) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp7|Mux5~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX7\(1),
	combout => \proc|HEX7\(1));

-- Location: LCCOMB_X108_Y53_N22
\proc|hexComp7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux4~0_combout\ = (\proc|hexIn7\(2) & (\proc|hexIn7\(3) & ((\proc|hexIn7\(1)) # (!\proc|hexIn7\(0))))) # (!\proc|hexIn7\(2) & (\proc|hexIn7\(1) & (!\proc|hexIn7\(3) & !\proc|hexIn7\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(2),
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn7\(0),
	combout => \proc|hexComp7|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y47_N20
\proc|hexComp7|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux4~1_combout\ = (\proc|hexComp7|Mux4~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp7|Mux4~0_combout\,
	combout => \proc|hexComp7|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y47_N0
\proc|HEX7[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(2) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp7|Mux4~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX7\(2),
	combout => \proc|HEX7\(2));

-- Location: LCCOMB_X108_Y53_N28
\proc|hexComp7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux3~0_combout\ = (\proc|hexIn7\(0) & (\proc|hexIn7\(1) $ (((!\proc|hexIn7\(2)))))) # (!\proc|hexIn7\(0) & ((\proc|hexIn7\(1) & (\proc|hexIn7\(3) & !\proc|hexIn7\(2))) # (!\proc|hexIn7\(1) & (!\proc|hexIn7\(3) & \proc|hexIn7\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(0),
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn7\(2),
	combout => \proc|hexComp7|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y47_N22
\proc|hexComp7|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux3~1_combout\ = (\proc|hexComp7|Mux3~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp7|Mux3~0_combout\,
	combout => \proc|hexComp7|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y47_N12
\proc|HEX7[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(3) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexComp7|Mux3~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX7\(3),
	combout => \proc|HEX7\(3));

-- Location: LCCOMB_X108_Y53_N14
\proc|hexComp7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux2~0_combout\ = (\proc|hexIn7\(1) & (!\proc|hexIn7\(3) & ((\proc|hexIn7\(0))))) # (!\proc|hexIn7\(1) & ((\proc|hexIn7\(2) & (!\proc|hexIn7\(3))) # (!\proc|hexIn7\(2) & ((\proc|hexIn7\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(3),
	datac => \proc|hexIn7\(2),
	datad => \proc|hexIn7\(0),
	combout => \proc|hexComp7|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y47_N4
\proc|hexComp7|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux2~1_combout\ = (\proc|hexComp7|Mux2~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp7|Mux2~0_combout\,
	combout => \proc|hexComp7|Mux2~1_combout\);

-- Location: LCCOMB_X109_Y47_N6
\proc|HEX7[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(4) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexComp7|Mux2~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX7\(4),
	combout => \proc|HEX7\(4));

-- Location: LCCOMB_X108_Y53_N20
\proc|hexComp7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux1~0_combout\ = (\proc|hexIn7\(1) & (!\proc|hexIn7\(3) & ((\proc|hexIn7\(0)) # (!\proc|hexIn7\(2))))) # (!\proc|hexIn7\(1) & ((\proc|hexIn7\(2) & (\proc|hexIn7\(3))) # (!\proc|hexIn7\(2) & (!\proc|hexIn7\(3) & \proc|hexIn7\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn7\(1),
	datab => \proc|hexIn7\(2),
	datac => \proc|hexIn7\(3),
	datad => \proc|hexIn7\(0),
	combout => \proc|hexComp7|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y45_N16
\proc|hexComp7|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux1~1_combout\ = (\proc|hexComp7|Mux1~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp7|Mux1~0_combout\,
	combout => \proc|hexComp7|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y45_N0
\proc|HEX7[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(5) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \proc|hexComp7|Mux1~1_combout\,
	datad => \proc|HEX7\(5),
	combout => \proc|HEX7\(5));

-- Location: LCCOMB_X108_Y52_N8
\proc|hexComp7|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp7|Mux0~1_combout\ = (!\proc|hexComp7|Mux0~0_combout\ & \proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp7|Mux0~0_combout\,
	datac => \proc|currState.FETCH~q\,
	combout => \proc|hexComp7|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y52_N18
\proc|HEX7[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX7\(6) = (\KEY[1]~input_o\ & (\proc|hexComp7|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX7\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp7|Mux0~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX7\(6),
	combout => \proc|HEX7\(6));

-- Location: LCCOMB_X109_Y49_N28
\proc|hexIn6[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn6\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector23~1_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn6\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector23~1_combout\,
	datac => \proc|hexIn0[0]~0clkctrl_outclk\,
	datad => \proc|hexIn6\(0),
	combout => \proc|hexIn6\(0));

-- Location: LCCOMB_X109_Y52_N4
\proc|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector24~0_combout\ = (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & (\proc|sData1\(1))) # (!\proc|currState.EXECUTE~q\ & ((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(1),
	datab => \SW[6]~input_o\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector24~0_combout\);

-- Location: LCCOMB_X109_Y52_N26
\proc|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector24~1_combout\ = (\proc|Selector24~0_combout\) # ((\SW[11]~input_o\ & \proc|currState.MEM_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|Selector24~0_combout\,
	combout => \proc|Selector24~1_combout\);

-- Location: LCCOMB_X109_Y49_N22
\proc|hexIn6[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn6\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector24~1_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn6\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector24~1_combout\,
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn6\(1));

-- Location: LCCOMB_X109_Y49_N20
\proc|hexIn6[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn6\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector25~1_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector25~1_combout\,
	datab => \proc|hexIn6\(2),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn6\(2));

-- Location: LCCOMB_X109_Y49_N4
\proc|hexComp6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux6~0_combout\ = (\proc|hexIn6\(1) & (\proc|hexIn6\(3) & (\proc|hexIn6\(0) & !\proc|hexIn6\(2)))) # (!\proc|hexIn6\(1) & (\proc|hexIn6\(2) $ (((!\proc|hexIn6\(3) & \proc|hexIn6\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(3),
	datab => \proc|hexIn6\(0),
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn6\(2),
	combout => \proc|hexComp6|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y48_N16
\proc|hexComp6|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux6~1_combout\ = (\proc|hexComp6|Mux6~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|hexComp6|Mux6~0_combout\,
	combout => \proc|hexComp6|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y48_N12
\proc|HEX6[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(0) = (\KEY[1]~input_o\ & (\proc|hexComp6|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX6\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|hexComp6|Mux6~1_combout\,
	datad => \proc|HEX6\(0),
	combout => \proc|HEX6\(0));

-- Location: LCCOMB_X109_Y49_N14
\proc|hexComp6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux5~0_combout\ = (\proc|hexIn6\(3) & ((\proc|hexIn6\(0) & ((\proc|hexIn6\(1)))) # (!\proc|hexIn6\(0) & (\proc|hexIn6\(2))))) # (!\proc|hexIn6\(3) & (\proc|hexIn6\(2) & (\proc|hexIn6\(1) $ (\proc|hexIn6\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(3),
	datab => \proc|hexIn6\(2),
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn6\(0),
	combout => \proc|hexComp6|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y45_N16
\proc|hexComp6|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux5~1_combout\ = (\proc|hexComp6|Mux5~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp6|Mux5~0_combout\,
	combout => \proc|hexComp6|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y45_N26
\proc|HEX6[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(1) = (\KEY[1]~input_o\ & ((\proc|hexComp6|Mux5~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX6\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|HEX6\(1),
	datad => \proc|hexComp6|Mux5~1_combout\,
	combout => \proc|HEX6\(1));

-- Location: LCCOMB_X109_Y49_N24
\proc|hexComp6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux4~0_combout\ = (\proc|hexIn6\(3) & (\proc|hexIn6\(2) & ((\proc|hexIn6\(1)) # (!\proc|hexIn6\(0))))) # (!\proc|hexIn6\(3) & (!\proc|hexIn6\(0) & (\proc|hexIn6\(1) & !\proc|hexIn6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(3),
	datab => \proc|hexIn6\(0),
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn6\(2),
	combout => \proc|hexComp6|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y49_N10
\proc|hexComp6|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux4~1_combout\ = (\proc|hexComp6|Mux4~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp6|Mux4~0_combout\,
	combout => \proc|hexComp6|Mux4~1_combout\);

-- Location: LCCOMB_X109_Y49_N18
\proc|HEX6[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(2) = (\KEY[1]~input_o\ & (\proc|hexComp6|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX6\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp6|Mux4~1_combout\,
	datad => \proc|HEX6\(2),
	combout => \proc|HEX6\(2));

-- Location: LCCOMB_X109_Y49_N12
\proc|hexComp6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux3~0_combout\ = (\proc|hexIn6\(0) & ((\proc|hexIn6\(1) $ (!\proc|hexIn6\(2))))) # (!\proc|hexIn6\(0) & ((\proc|hexIn6\(3) & (\proc|hexIn6\(1) & !\proc|hexIn6\(2))) # (!\proc|hexIn6\(3) & (!\proc|hexIn6\(1) & \proc|hexIn6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(3),
	datab => \proc|hexIn6\(0),
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn6\(2),
	combout => \proc|hexComp6|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y45_N6
\proc|hexComp6|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux3~1_combout\ = (\proc|hexComp6|Mux3~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp6|Mux3~0_combout\,
	combout => \proc|hexComp6|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y45_N24
\proc|HEX6[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(3) = (\KEY[1]~input_o\ & (\proc|hexComp6|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp6|Mux3~1_combout\,
	datad => \proc|HEX6\(3),
	combout => \proc|HEX6\(3));

-- Location: LCCOMB_X109_Y49_N6
\proc|hexComp6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux2~0_combout\ = (\proc|hexIn6\(1) & (!\proc|hexIn6\(3) & ((\proc|hexIn6\(0))))) # (!\proc|hexIn6\(1) & ((\proc|hexIn6\(2) & (!\proc|hexIn6\(3))) # (!\proc|hexIn6\(2) & ((\proc|hexIn6\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(3),
	datab => \proc|hexIn6\(2),
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn6\(0),
	combout => \proc|hexComp6|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y45_N28
\proc|hexComp6|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux2~1_combout\ = (\proc|hexComp6|Mux2~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp6|Mux2~0_combout\,
	combout => \proc|hexComp6|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y45_N18
\proc|HEX6[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(4) = (\KEY[1]~input_o\ & (\proc|hexComp6|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX6\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp6|Mux2~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX6\(4),
	combout => \proc|HEX6\(4));

-- Location: LCCOMB_X114_Y50_N30
\proc|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector26~0_combout\ = (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & (\proc|sData1\(3))) # (!\proc|currState.EXECUTE~q\ & ((\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData1\(3),
	datab => \SW[8]~input_o\,
	datac => \proc|currState.EXECUTE~q\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|Selector26~0_combout\);

-- Location: LCCOMB_X112_Y49_N8
\proc|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector26~1_combout\ = (\proc|Selector26~0_combout\) # ((\proc|currState.MEM_WRITE~q\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datab => \SW[13]~input_o\,
	datad => \proc|Selector26~0_combout\,
	combout => \proc|Selector26~1_combout\);

-- Location: LCCOMB_X109_Y49_N26
\proc|hexIn6[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn6\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector26~1_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn6\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector26~1_combout\,
	datac => \proc|hexIn6\(3),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn6\(3));

-- Location: LCCOMB_X109_Y49_N0
\proc|hexComp6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux1~0_combout\ = (\proc|hexIn6\(1) & (!\proc|hexIn6\(3) & ((\proc|hexIn6\(0)) # (!\proc|hexIn6\(2))))) # (!\proc|hexIn6\(1) & ((\proc|hexIn6\(2) & (\proc|hexIn6\(3))) # (!\proc|hexIn6\(2) & (!\proc|hexIn6\(3) & \proc|hexIn6\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(1),
	datab => \proc|hexIn6\(2),
	datac => \proc|hexIn6\(3),
	datad => \proc|hexIn6\(0),
	combout => \proc|hexComp6|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y50_N4
\proc|hexComp6|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux1~1_combout\ = (\proc|hexComp6|Mux1~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp6|Mux1~0_combout\,
	combout => \proc|hexComp6|Mux1~1_combout\);

-- Location: LCCOMB_X106_Y50_N10
\proc|HEX6[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(5) = (\KEY[1]~input_o\ & (\proc|hexComp6|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX6\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp6|Mux1~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX6\(5),
	combout => \proc|HEX6\(5));

-- Location: LCCOMB_X109_Y49_N30
\proc|hexComp6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux0~0_combout\ = (\proc|hexIn6\(3)) # ((\proc|hexIn6\(1) & ((!\proc|hexIn6\(2)) # (!\proc|hexIn6\(0)))) # (!\proc|hexIn6\(1) & ((\proc|hexIn6\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn6\(3),
	datab => \proc|hexIn6\(0),
	datac => \proc|hexIn6\(1),
	datad => \proc|hexIn6\(2),
	combout => \proc|hexComp6|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y45_N2
\proc|hexComp6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp6|Mux0~1_combout\ = (\proc|currState.FETCH~q\ & !\proc|hexComp6|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp6|Mux0~0_combout\,
	combout => \proc|hexComp6|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y45_N12
\proc|HEX6[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX6\(6) = (\KEY[1]~input_o\ & (\proc|hexComp6|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX6\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp6|Mux0~1_combout\,
	datad => \proc|HEX6\(6),
	combout => \proc|HEX6\(6));

-- Location: LCCOMB_X111_Y52_N18
\proc|hexIn5[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn5\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector22~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector22~0_combout\,
	datab => \proc|hexIn5\(3),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn5\(3));

-- Location: LCCOMB_X110_Y52_N16
\proc|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector21~0_combout\ = (\proc|sData2\(6) & \proc|currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sData2\(6),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector21~0_combout\);

-- Location: LCCOMB_X111_Y52_N8
\proc|hexIn5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn5\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector21~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector21~0_combout\,
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn5\(2));

-- Location: LCCOMB_X111_Y51_N24
\proc|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector20~0_combout\ = (\proc|currState.EXECUTE~q\ & \proc|sData2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.EXECUTE~q\,
	datad => \proc|sData2\(5),
	combout => \proc|Selector20~0_combout\);

-- Location: LCCOMB_X111_Y52_N20
\proc|hexIn5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn5\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector20~0_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn5\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(1),
	datab => \proc|Selector20~0_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn5\(1));

-- Location: LCCOMB_X111_Y52_N0
\proc|hexComp5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux6~0_combout\ = (\proc|hexIn5\(2) & (!\proc|hexIn5\(1) & ((\proc|hexIn5\(3)) # (!\proc|hexIn5\(0))))) # (!\proc|hexIn5\(2) & (\proc|hexIn5\(0) & (\proc|hexIn5\(3) $ (!\proc|hexIn5\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(0),
	datab => \proc|hexIn5\(3),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(1),
	combout => \proc|hexComp5|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y48_N8
\proc|hexComp5|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux6~1_combout\ = ((\proc|hexComp5|Mux6~0_combout\) # (\proc|currState.MEM_WRITE~q\)) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|hexComp5|Mux6~0_combout\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|hexComp5|Mux6~1_combout\);

-- Location: LCCOMB_X111_Y48_N10
\proc|HEX5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(0) = (\KEY[1]~input_o\ & (\proc|hexComp5|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp5|Mux6~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX5\(0),
	combout => \proc|HEX5\(0));

-- Location: LCCOMB_X111_Y52_N14
\proc|hexComp5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux5~0_combout\ = (\proc|hexIn5\(1) & ((\proc|hexIn5\(0) & ((\proc|hexIn5\(3)))) # (!\proc|hexIn5\(0) & (\proc|hexIn5\(2))))) # (!\proc|hexIn5\(1) & (\proc|hexIn5\(2) & (\proc|hexIn5\(0) $ (\proc|hexIn5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(0),
	datab => \proc|hexIn5\(1),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(3),
	combout => \proc|hexComp5|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y48_N8
\proc|hexComp5|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux5~1_combout\ = (\proc|hexComp5|Mux5~0_combout\) # ((\proc|currState.MEM_WRITE~q\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexComp5|Mux5~0_combout\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|currState.FETCH~q\,
	combout => \proc|hexComp5|Mux5~1_combout\);

-- Location: LCCOMB_X114_Y48_N26
\proc|HEX5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(1) = (\KEY[1]~input_o\ & ((\proc|hexComp5|Mux5~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX5\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|HEX5\(1),
	datad => \proc|hexComp5|Mux5~1_combout\,
	combout => \proc|HEX5\(1));

-- Location: LCCOMB_X111_Y52_N28
\proc|hexComp5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux4~0_combout\ = (\proc|hexIn5\(2) & (\proc|hexIn5\(3) & ((\proc|hexIn5\(1)) # (!\proc|hexIn5\(0))))) # (!\proc|hexIn5\(2) & (!\proc|hexIn5\(0) & (\proc|hexIn5\(1) & !\proc|hexIn5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(0),
	datab => \proc|hexIn5\(1),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(3),
	combout => \proc|hexComp5|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y52_N10
\proc|hexComp5|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux4~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp5|Mux4~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp5|Mux4~0_combout\,
	combout => \proc|hexComp5|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y52_N2
\proc|HEX5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(2) = (\KEY[1]~input_o\ & (\proc|hexComp5|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX5\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp5|Mux4~1_combout\,
	datad => \proc|HEX5\(2),
	combout => \proc|HEX5\(2));

-- Location: LCCOMB_X111_Y52_N16
\proc|hexComp5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux3~0_combout\ = (\proc|hexIn5\(0) & (\proc|hexIn5\(1) $ ((!\proc|hexIn5\(2))))) # (!\proc|hexIn5\(0) & ((\proc|hexIn5\(1) & (!\proc|hexIn5\(2) & \proc|hexIn5\(3))) # (!\proc|hexIn5\(1) & (\proc|hexIn5\(2) & !\proc|hexIn5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(0),
	datab => \proc|hexIn5\(1),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(3),
	combout => \proc|hexComp5|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y52_N6
\proc|hexComp5|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux3~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp5|Mux3~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp5|Mux3~0_combout\,
	combout => \proc|hexComp5|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y52_N24
\proc|HEX5[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(3) = (\KEY[1]~input_o\ & (\proc|hexComp5|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX5\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp5|Mux3~1_combout\,
	datad => \proc|HEX5\(3),
	combout => \proc|HEX5\(3));

-- Location: LCCOMB_X111_Y52_N22
\proc|hexIn5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn5\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector19~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector19~0_combout\,
	datac => \proc|hexIn5\(0),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn5\(0));

-- Location: LCCOMB_X110_Y52_N24
\proc|hexComp5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux2~0_combout\ = (\proc|hexIn5\(1) & (!\proc|hexIn5\(3) & ((\proc|hexIn5\(0))))) # (!\proc|hexIn5\(1) & ((\proc|hexIn5\(2) & (!\proc|hexIn5\(3))) # (!\proc|hexIn5\(2) & ((\proc|hexIn5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(1),
	datab => \proc|hexIn5\(3),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(0),
	combout => \proc|hexComp5|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y52_N28
\proc|hexComp5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux2~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp5|Mux2~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp5|Mux2~0_combout\,
	combout => \proc|hexComp5|Mux2~1_combout\);

-- Location: LCCOMB_X109_Y52_N10
\proc|HEX5[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(4) = (\KEY[1]~input_o\ & (\proc|hexComp5|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX5\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp5|Mux2~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX5\(4),
	combout => \proc|HEX5\(4));

-- Location: LCCOMB_X111_Y52_N4
\proc|hexComp5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux1~0_combout\ = (\proc|hexIn5\(1) & (!\proc|hexIn5\(3) & ((\proc|hexIn5\(0)) # (!\proc|hexIn5\(2))))) # (!\proc|hexIn5\(1) & ((\proc|hexIn5\(2) & ((\proc|hexIn5\(3)))) # (!\proc|hexIn5\(2) & (\proc|hexIn5\(0) & !\proc|hexIn5\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(0),
	datab => \proc|hexIn5\(1),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(3),
	combout => \proc|hexComp5|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y48_N16
\proc|hexComp5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux1~1_combout\ = ((\proc|currState.MEM_WRITE~q\) # (\proc|hexComp5|Mux1~0_combout\)) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.FETCH~q\,
	datab => \proc|currState.MEM_WRITE~q\,
	datad => \proc|hexComp5|Mux1~0_combout\,
	combout => \proc|hexComp5|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y48_N18
\proc|HEX5[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(5) = (\KEY[1]~input_o\ & (\proc|hexComp5|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX5\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \proc|hexComp5|Mux1~1_combout\,
	datad => \proc|HEX5\(5),
	combout => \proc|HEX5\(5));

-- Location: LCCOMB_X111_Y52_N30
\proc|hexComp5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux0~0_combout\ = (\proc|hexIn5\(3)) # ((\proc|hexIn5\(1) & ((!\proc|hexIn5\(2)) # (!\proc|hexIn5\(0)))) # (!\proc|hexIn5\(1) & ((\proc|hexIn5\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn5\(0),
	datab => \proc|hexIn5\(1),
	datac => \proc|hexIn5\(2),
	datad => \proc|hexIn5\(3),
	combout => \proc|hexComp5|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y48_N22
\proc|hexComp5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp5|Mux0~1_combout\ = ((\proc|hexComp5|Mux0~0_combout\) # (\proc|currState.MEM_WRITE~q\)) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|hexComp5|Mux0~0_combout\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|hexComp5|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y48_N0
\proc|HEX5[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX5\(6) = (\KEY[1]~input_o\ & ((!\proc|hexComp5|Mux0~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX5\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|HEX5\(6),
	datab => \KEY[1]~input_o\,
	datad => \proc|hexComp5|Mux0~1_combout\,
	combout => \proc|HEX5\(6));

-- Location: LCCOMB_X110_Y48_N18
\proc|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector16~0_combout\ = (\proc|currState.EXECUTE~q\ & ((\proc|sData2\(1)))) # (!\proc|currState.EXECUTE~q\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \proc|sData2\(1),
	datad => \proc|currState.EXECUTE~q\,
	combout => \proc|Selector16~0_combout\);

-- Location: LCCOMB_X111_Y45_N8
\proc|hexIn4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn4\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector16~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector16~0_combout\,
	datac => \proc|hexIn4\(1),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn4\(1));

-- Location: LCCOMB_X111_Y45_N14
\proc|hexIn4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn4\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector17~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector17~0_combout\,
	datac => \proc|hexIn4\(2),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn4\(2));

-- Location: LCCOMB_X111_Y45_N22
\proc|hexIn4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn4\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector14~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector14~0_combout\,
	datac => \proc|hexIn4\(0),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn4\(0));

-- Location: LCCOMB_X111_Y48_N14
\proc|hexComp4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux6~0_combout\ = (\proc|hexIn4\(1) & (\proc|hexIn4\(3) & (!\proc|hexIn4\(2) & \proc|hexIn4\(0)))) # (!\proc|hexIn4\(1) & (\proc|hexIn4\(2) $ (((!\proc|hexIn4\(3) & \proc|hexIn4\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(3),
	datab => \proc|hexIn4\(1),
	datac => \proc|hexIn4\(2),
	datad => \proc|hexIn4\(0),
	combout => \proc|hexComp4|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y48_N2
\proc|hexComp4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux6~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp4|Mux6~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp4|Mux6~0_combout\,
	combout => \proc|hexComp4|Mux6~1_combout\);

-- Location: LCCOMB_X114_Y48_N14
\proc|HEX4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(0) = (\KEY[1]~input_o\ & ((\proc|hexComp4|Mux6~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|HEX4\(0),
	datab => \KEY[1]~input_o\,
	datad => \proc|hexComp4|Mux6~1_combout\,
	combout => \proc|HEX4\(0));

-- Location: LCCOMB_X111_Y48_N28
\proc|hexComp4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux5~0_combout\ = (\proc|hexIn4\(3) & ((\proc|hexIn4\(0) & ((\proc|hexIn4\(1)))) # (!\proc|hexIn4\(0) & (\proc|hexIn4\(2))))) # (!\proc|hexIn4\(3) & (\proc|hexIn4\(2) & (\proc|hexIn4\(0) $ (\proc|hexIn4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(3),
	datab => \proc|hexIn4\(0),
	datac => \proc|hexIn4\(2),
	datad => \proc|hexIn4\(1),
	combout => \proc|hexComp4|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y48_N26
\proc|hexComp4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux5~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp4|Mux5~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp4|Mux5~0_combout\,
	combout => \proc|hexComp4|Mux5~1_combout\);

-- Location: LCCOMB_X111_Y48_N16
\proc|HEX4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(1) = (\KEY[1]~input_o\ & (\proc|hexComp4|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|hexComp4|Mux5~1_combout\,
	datad => \proc|HEX4\(1),
	combout => \proc|HEX4\(1));

-- Location: LCCOMB_X111_Y48_N22
\proc|hexIn4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn4\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector18~0_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector18~0_combout\,
	datac => \proc|hexIn4\(3),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn4\(3));

-- Location: LCCOMB_X111_Y45_N4
\proc|hexComp4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux4~0_combout\ = (\proc|hexIn4\(2) & (\proc|hexIn4\(3) & ((\proc|hexIn4\(1)) # (!\proc|hexIn4\(0))))) # (!\proc|hexIn4\(2) & (!\proc|hexIn4\(0) & (\proc|hexIn4\(1) & !\proc|hexIn4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(0),
	datab => \proc|hexIn4\(2),
	datac => \proc|hexIn4\(1),
	datad => \proc|hexIn4\(3),
	combout => \proc|hexComp4|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y45_N10
\proc|hexComp4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux4~1_combout\ = ((\proc|hexComp4|Mux4~0_combout\) # (\proc|currState.MEM_WRITE~q\)) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.FETCH~q\,
	datac => \proc|hexComp4|Mux4~0_combout\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|hexComp4|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y45_N18
\proc|HEX4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(2) = (\KEY[1]~input_o\ & (\proc|hexComp4|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp4|Mux4~1_combout\,
	datad => \proc|HEX4\(2),
	combout => \proc|HEX4\(2));

-- Location: LCCOMB_X111_Y45_N0
\proc|hexComp4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux3~0_combout\ = (\proc|hexIn4\(0) & (\proc|hexIn4\(2) $ ((!\proc|hexIn4\(1))))) # (!\proc|hexIn4\(0) & ((\proc|hexIn4\(2) & (!\proc|hexIn4\(1) & !\proc|hexIn4\(3))) # (!\proc|hexIn4\(2) & (\proc|hexIn4\(1) & \proc|hexIn4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(0),
	datab => \proc|hexIn4\(2),
	datac => \proc|hexIn4\(1),
	datad => \proc|hexIn4\(3),
	combout => \proc|hexComp4|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y45_N26
\proc|hexComp4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux3~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp4|Mux3~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp4|Mux3~0_combout\,
	combout => \proc|hexComp4|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y45_N20
\proc|HEX4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(3) = (\KEY[1]~input_o\ & (\proc|hexComp4|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp4|Mux3~1_combout\,
	datad => \proc|HEX4\(3),
	combout => \proc|HEX4\(3));

-- Location: LCCOMB_X111_Y48_N12
\proc|hexComp4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux2~0_combout\ = (\proc|hexIn4\(1) & (!\proc|hexIn4\(3) & ((\proc|hexIn4\(0))))) # (!\proc|hexIn4\(1) & ((\proc|hexIn4\(2) & (!\proc|hexIn4\(3))) # (!\proc|hexIn4\(2) & ((\proc|hexIn4\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(3),
	datab => \proc|hexIn4\(1),
	datac => \proc|hexIn4\(2),
	datad => \proc|hexIn4\(0),
	combout => \proc|hexComp4|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y48_N2
\proc|hexComp4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux2~1_combout\ = ((\proc|currState.MEM_WRITE~q\) # (\proc|hexComp4|Mux2~0_combout\)) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|hexComp4|Mux2~0_combout\,
	combout => \proc|hexComp4|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y48_N6
\proc|HEX4[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(4) = (\KEY[1]~input_o\ & (\proc|hexComp4|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX4\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexComp4|Mux2~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX4\(4),
	combout => \proc|HEX4\(4));

-- Location: LCCOMB_X111_Y45_N12
\proc|hexComp4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux1~0_combout\ = (\proc|hexIn4\(2) & ((\proc|hexIn4\(1) & (\proc|hexIn4\(0) & !\proc|hexIn4\(3))) # (!\proc|hexIn4\(1) & ((\proc|hexIn4\(3)))))) # (!\proc|hexIn4\(2) & (!\proc|hexIn4\(3) & ((\proc|hexIn4\(0)) # (\proc|hexIn4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(0),
	datab => \proc|hexIn4\(2),
	datac => \proc|hexIn4\(1),
	datad => \proc|hexIn4\(3),
	combout => \proc|hexComp4|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y45_N6
\proc|hexComp4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux1~1_combout\ = (\proc|currState.MEM_WRITE~q\) # ((\proc|hexComp4|Mux1~0_combout\) # (!\proc|currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp4|Mux1~0_combout\,
	combout => \proc|hexComp4|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y45_N2
\proc|HEX4[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(5) = (\KEY[1]~input_o\ & (\proc|hexComp4|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX4\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp4|Mux1~1_combout\,
	datad => \proc|HEX4\(5),
	combout => \proc|HEX4\(5));

-- Location: LCCOMB_X111_Y48_N0
\proc|hexComp4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux0~0_combout\ = (\proc|hexIn4\(3)) # ((\proc|hexIn4\(1) & ((!\proc|hexIn4\(0)) # (!\proc|hexIn4\(2)))) # (!\proc|hexIn4\(1) & (\proc|hexIn4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn4\(3),
	datab => \proc|hexIn4\(1),
	datac => \proc|hexIn4\(2),
	datad => \proc|hexIn4\(0),
	combout => \proc|hexComp4|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y48_N18
\proc|hexComp4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp4|Mux0~1_combout\ = ((\proc|currState.MEM_WRITE~q\) # (\proc|hexComp4|Mux0~0_combout\)) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|currState.MEM_WRITE~q\,
	datad => \proc|hexComp4|Mux0~0_combout\,
	combout => \proc|hexComp4|Mux0~1_combout\);

-- Location: LCCOMB_X111_Y48_N4
\proc|HEX4[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX4\(6) = (\KEY[1]~input_o\ & (!\proc|hexComp4|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX4\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp4|Mux0~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX4\(6),
	combout => \proc|HEX4\(6));

-- Location: LCCOMB_X110_Y49_N30
\proc|hexIn2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn2~0_combout\ = (\proc|currState.MEM_WRITE~q\) # (\proc|currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.EXECUTE~q\,
	combout => \proc|hexIn2~0_combout\);

-- Location: LCCOMB_X107_Y51_N6
\proc|alu|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux0~2_combout\ = (\proc|alu|Mux0~0_combout\ & ((\proc|alu|Mux0~1_combout\ & ((!\proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\))) # (!\proc|alu|Mux0~1_combout\ & (\proc|alu|ShiftRight0~8_combout\)))) # 
-- (!\proc|alu|Mux0~0_combout\ & (((\proc|alu|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux0~0_combout\,
	datab => \proc|alu|ShiftRight0~8_combout\,
	datac => \proc|alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \proc|alu|Mux0~1_combout\,
	combout => \proc|alu|Mux0~2_combout\);

-- Location: LCCOMB_X107_Y51_N4
\proc|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector13~0_combout\ = (\proc|hexIn2~0_combout\ & ((\SW[17]~input_o\ & ((\proc|alu|Mux0~2_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \proc|alu|Mux0~3_combout\,
	datac => \proc|hexIn2~0_combout\,
	datad => \proc|alu|Mux0~2_combout\,
	combout => \proc|Selector13~0_combout\);

-- Location: LCCOMB_X107_Y51_N22
\proc|hexIn3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn3\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector13~0_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(3),
	datac => \proc|hexIn0[0]~0clkctrl_outclk\,
	datad => \proc|Selector13~0_combout\,
	combout => \proc|hexIn3\(3));

-- Location: LCCOMB_X107_Y51_N28
\proc|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector11~0_combout\ = (\proc|hexIn2~0_combout\ & ((\SW[17]~input_o\ & (\proc|alu|Mux2~1_combout\)) # (!\SW[17]~input_o\ & ((\proc|alu|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \proc|hexIn2~0_combout\,
	datac => \proc|alu|Mux2~1_combout\,
	datad => \proc|alu|Mux2~2_combout\,
	combout => \proc|Selector11~0_combout\);

-- Location: LCCOMB_X107_Y51_N30
\proc|hexIn3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn3\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector11~0_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(1),
	datac => \proc|hexIn0[0]~0clkctrl_outclk\,
	datad => \proc|Selector11~0_combout\,
	combout => \proc|hexIn3\(1));

-- Location: LCCOMB_X109_Y51_N2
\proc|alu|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux1~2_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((\proc|sData2\(6)) # (\proc|sData1\(6)))) # (!\SW[15]~input_o\ & (\proc|sData2\(6) & \proc|sData1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \proc|sData2\(6),
	datad => \proc|sData1\(6),
	combout => \proc|alu|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y51_N10
\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ = \proc|sData2\(6) $ (\proc|sData1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|sData2\(6),
	datad => \proc|sData1\(6),
	combout => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X108_Y51_N26
\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\ = \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\proc|sData2\(5) & (\proc|sData1\(5) & \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\)) # 
-- (!\proc|sData2\(5) & ((\proc|sData1\(5)) # (\proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(5),
	datab => \proc|sData1\(5),
	datac => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \proc|alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\,
	combout => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X108_Y51_N18
\proc|alu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux1~0_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[16]~input_o\ & (\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\SW[15]~input_o\ & \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \proc|alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\,
	combout => \proc|alu|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y51_N0
\proc|alu|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux1~1_combout\ = (\proc|alu|Mux0~0_combout\ & ((\proc|alu|Mux1~0_combout\ & ((!\proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\))) # (!\proc|alu|Mux1~0_combout\ & (\proc|alu|ShiftRight0~7_combout\)))) # 
-- (!\proc|alu|Mux0~0_combout\ & (((\proc|alu|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|ShiftRight0~7_combout\,
	datab => \proc|alu|Mux0~0_combout\,
	datac => \proc|alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \proc|alu|Mux1~0_combout\,
	combout => \proc|alu|Mux1~1_combout\);

-- Location: LCCOMB_X108_Y51_N14
\proc|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector12~0_combout\ = (\proc|hexIn2~0_combout\ & ((\SW[17]~input_o\ & ((\proc|alu|Mux1~1_combout\))) # (!\SW[17]~input_o\ & (\proc|alu|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \proc|alu|Mux1~2_combout\,
	datac => \proc|hexIn2~0_combout\,
	datad => \proc|alu|Mux1~1_combout\,
	combout => \proc|Selector12~0_combout\);

-- Location: LCCOMB_X107_Y51_N16
\proc|hexIn3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn3\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector12~0_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexIn3\(2),
	datac => \proc|Selector12~0_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn3\(2));

-- Location: LCCOMB_X107_Y51_N20
\proc|hexComp3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux6~0_combout\ = (\proc|hexIn3\(1) & (\proc|hexIn3\(0) & (\proc|hexIn3\(3) & !\proc|hexIn3\(2)))) # (!\proc|hexIn3\(1) & (\proc|hexIn3\(2) $ (((\proc|hexIn3\(0) & !\proc|hexIn3\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(0),
	datab => \proc|hexIn3\(3),
	datac => \proc|hexIn3\(1),
	datad => \proc|hexIn3\(2),
	combout => \proc|hexComp3|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y45_N28
\proc|hexComp3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux6~1_combout\ = (\proc|hexComp3|Mux6~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp3|Mux6~0_combout\,
	combout => \proc|hexComp3|Mux6~1_combout\);

-- Location: LCCOMB_X111_Y45_N16
\proc|HEX3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(0) = (\KEY[1]~input_o\ & (\proc|hexComp3|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp3|Mux6~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX3\(0),
	combout => \proc|HEX3\(0));

-- Location: LCCOMB_X109_Y51_N26
\proc|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector10~0_combout\ = (\proc|hexIn2~0_combout\ & ((\SW[17]~input_o\ & (\proc|alu|Mux3~1_combout\)) # (!\SW[17]~input_o\ & ((\proc|alu|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux3~1_combout\,
	datab => \proc|alu|Mux3~2_combout\,
	datac => \SW[17]~input_o\,
	datad => \proc|hexIn2~0_combout\,
	combout => \proc|Selector10~0_combout\);

-- Location: LCCOMB_X107_Y51_N12
\proc|hexIn3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn3\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector10~0_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(0),
	datac => \proc|Selector10~0_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn3\(0));

-- Location: LCCOMB_X107_Y51_N26
\proc|hexComp3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux5~0_combout\ = (\proc|hexIn3\(1) & ((\proc|hexIn3\(0) & (\proc|hexIn3\(3))) # (!\proc|hexIn3\(0) & ((\proc|hexIn3\(2)))))) # (!\proc|hexIn3\(1) & (\proc|hexIn3\(2) & (\proc|hexIn3\(0) $ (\proc|hexIn3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(1),
	datab => \proc|hexIn3\(0),
	datac => \proc|hexIn3\(3),
	datad => \proc|hexIn3\(2),
	combout => \proc|hexComp3|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y51_N8
\proc|hexComp3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux5~1_combout\ = (\proc|hexComp3|Mux5~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp3|Mux5~0_combout\,
	combout => \proc|hexComp3|Mux5~1_combout\);

-- Location: LCCOMB_X107_Y51_N10
\proc|HEX3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(1) = (\KEY[1]~input_o\ & (\proc|hexComp3|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp3|Mux5~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX3\(1),
	combout => \proc|HEX3\(1));

-- Location: LCCOMB_X107_Y51_N2
\proc|hexComp3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux4~0_combout\ = (\proc|hexIn3\(3) & (\proc|hexIn3\(2) & ((\proc|hexIn3\(1)) # (!\proc|hexIn3\(0))))) # (!\proc|hexIn3\(3) & (!\proc|hexIn3\(2) & (\proc|hexIn3\(1) & !\proc|hexIn3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(3),
	datab => \proc|hexIn3\(2),
	datac => \proc|hexIn3\(1),
	datad => \proc|hexIn3\(0),
	combout => \proc|hexComp3|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y48_N8
\proc|hexComp3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux4~1_combout\ = (\proc|hexComp3|Mux4~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|hexComp3|Mux4~0_combout\,
	datad => \proc|currState.FETCH~q\,
	combout => \proc|hexComp3|Mux4~1_combout\);

-- Location: LCCOMB_X107_Y48_N0
\proc|HEX3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(2) = (\KEY[1]~input_o\ & (\proc|hexComp3|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp3|Mux4~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX3\(2),
	combout => \proc|HEX3\(2));

-- Location: LCCOMB_X107_Y51_N0
\proc|hexComp3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux3~0_combout\ = (\proc|hexIn3\(0) & ((\proc|hexIn3\(1) $ (!\proc|hexIn3\(2))))) # (!\proc|hexIn3\(0) & ((\proc|hexIn3\(3) & (\proc|hexIn3\(1) & !\proc|hexIn3\(2))) # (!\proc|hexIn3\(3) & (!\proc|hexIn3\(1) & \proc|hexIn3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(3),
	datab => \proc|hexIn3\(0),
	datac => \proc|hexIn3\(1),
	datad => \proc|hexIn3\(2),
	combout => \proc|hexComp3|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y47_N26
\proc|hexComp3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux3~1_combout\ = (\proc|hexComp3|Mux3~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|hexComp3|Mux3~0_combout\,
	datad => \proc|currState.FETCH~q\,
	combout => \proc|hexComp3|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y47_N2
\proc|HEX3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(3) = (\KEY[1]~input_o\ & (\proc|hexComp3|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|hexComp3|Mux3~1_combout\,
	datad => \proc|HEX3\(3),
	combout => \proc|HEX3\(3));

-- Location: LCCOMB_X107_Y51_N14
\proc|hexComp3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux2~0_combout\ = (\proc|hexIn3\(1) & (((!\proc|hexIn3\(3) & \proc|hexIn3\(0))))) # (!\proc|hexIn3\(1) & ((\proc|hexIn3\(2) & (!\proc|hexIn3\(3))) # (!\proc|hexIn3\(2) & ((\proc|hexIn3\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(1),
	datab => \proc|hexIn3\(2),
	datac => \proc|hexIn3\(3),
	datad => \proc|hexIn3\(0),
	combout => \proc|hexComp3|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y44_N20
\proc|hexComp3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux2~1_combout\ = (\proc|hexComp3|Mux2~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp3|Mux2~0_combout\,
	combout => \proc|hexComp3|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y44_N26
\proc|HEX3[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(4) = (\KEY[1]~input_o\ & ((\proc|hexComp3|Mux2~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \proc|HEX3\(4),
	datad => \proc|hexComp3|Mux2~1_combout\,
	combout => \proc|HEX3\(4));

-- Location: LCCOMB_X107_Y51_N24
\proc|hexComp3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux1~0_combout\ = (\proc|hexIn3\(1) & (!\proc|hexIn3\(3) & ((\proc|hexIn3\(0)) # (!\proc|hexIn3\(2))))) # (!\proc|hexIn3\(1) & ((\proc|hexIn3\(2) & (\proc|hexIn3\(3))) # (!\proc|hexIn3\(2) & (!\proc|hexIn3\(3) & \proc|hexIn3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(1),
	datab => \proc|hexIn3\(2),
	datac => \proc|hexIn3\(3),
	datad => \proc|hexIn3\(0),
	combout => \proc|hexComp3|Mux1~0_combout\);

-- Location: LCCOMB_X106_Y51_N8
\proc|hexComp3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux1~1_combout\ = (\proc|hexComp3|Mux1~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|currState.FETCH~q\,
	datad => \proc|hexComp3|Mux1~0_combout\,
	combout => \proc|hexComp3|Mux1~1_combout\);

-- Location: LCCOMB_X106_Y51_N10
\proc|HEX3[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(5) = (\KEY[1]~input_o\ & (\proc|hexComp3|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp3|Mux1~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX3\(5),
	combout => \proc|HEX3\(5));

-- Location: LCCOMB_X107_Y51_N18
\proc|hexComp3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux0~0_combout\ = (\proc|hexIn3\(3)) # ((\proc|hexIn3\(2) & ((!\proc|hexIn3\(0)) # (!\proc|hexIn3\(1)))) # (!\proc|hexIn3\(2) & (\proc|hexIn3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn3\(3),
	datab => \proc|hexIn3\(2),
	datac => \proc|hexIn3\(1),
	datad => \proc|hexIn3\(0),
	combout => \proc|hexComp3|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y48_N22
\proc|hexComp3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp3|Mux0~1_combout\ = (!\proc|hexComp3|Mux0~0_combout\ & \proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|hexComp3|Mux0~0_combout\,
	datad => \proc|currState.FETCH~q\,
	combout => \proc|hexComp3|Mux0~1_combout\);

-- Location: LCCOMB_X107_Y48_N2
\proc|HEX3[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX3\(6) = (\KEY[1]~input_o\ & (\proc|hexComp3|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexComp3|Mux0~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX3\(6),
	combout => \proc|HEX3\(6));

-- Location: LCCOMB_X109_Y48_N16
\proc|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector5~2_combout\ = (\proc|currState.EXECUTE~q\ & (((\proc|alu|Mux7~6_combout\)))) # (!\proc|currState.EXECUTE~q\ & ((\proc|currState.MEM_WRITE~q\ & ((\proc|alu|Mux7~6_combout\))) # (!\proc|currState.MEM_WRITE~q\ & (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \proc|currState.EXECUTE~q\,
	datac => \proc|alu|Mux7~6_combout\,
	datad => \proc|currState.MEM_WRITE~q\,
	combout => \proc|Selector5~2_combout\);

-- Location: LCCOMB_X109_Y48_N8
\proc|hexIn2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn2\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector5~2_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexIn2\(0),
	datac => \proc|Selector5~2_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn2\(0));

-- Location: LCCOMB_X109_Y48_N30
\proc|hexIn2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn2\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|Selector7~2_combout\)) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|hexIn2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector7~2_combout\,
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn2\(1));

-- Location: LCCOMB_X108_Y50_N28
\proc|alu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux5~0_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((\proc|sData1\(2)) # (\proc|sData2\(2)))) # (!\SW[15]~input_o\ & (\proc|sData1\(2) & \proc|sData2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \proc|sData1\(2),
	datad => \proc|sData2\(2),
	combout => \proc|alu|Mux5~0_combout\);

-- Location: LCCOMB_X109_Y51_N28
\proc|alu|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|ShiftRight0~7_combout\ = (!\proc|sData2\(1) & ((\proc|sData2\(0) & (\proc|sData1\(7))) # (!\proc|sData2\(0) & ((\proc|sData1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|sData2\(0),
	datab => \proc|sData2\(1),
	datac => \proc|sData1\(7),
	datad => \proc|sData1\(6),
	combout => \proc|alu|ShiftRight0~7_combout\);

-- Location: LCCOMB_X109_Y50_N2
\proc|alu|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux5~2_combout\ = (\proc|alu|Mux4~13_combout\ & ((\proc|alu|Mux4~7_combout\ & ((\proc|alu|ShiftRight0~7_combout\))) # (!\proc|alu|Mux4~7_combout\ & (!\proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\)))) # 
-- (!\proc|alu|Mux4~13_combout\ & (((!\proc|alu|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\,
	datab => \proc|alu|ShiftRight0~7_combout\,
	datac => \proc|alu|Mux4~13_combout\,
	datad => \proc|alu|Mux4~7_combout\,
	combout => \proc|alu|Mux5~2_combout\);

-- Location: LCCOMB_X109_Y50_N24
\proc|alu|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux5~3_combout\ = (\proc|alu|Mux4~6_combout\ & (((\proc|alu|Mux5~2_combout\)))) # (!\proc|alu|Mux4~6_combout\ & ((\proc|alu|Mux5~2_combout\ & (\proc|alu|ShiftRight0~9_combout\)) # (!\proc|alu|Mux5~2_combout\ & 
-- ((\proc|alu|ShiftRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|ShiftRight0~9_combout\,
	datab => \proc|alu|Mux4~6_combout\,
	datac => \proc|alu|ShiftRight0~1_combout\,
	datad => \proc|alu|Mux5~2_combout\,
	combout => \proc|alu|Mux5~3_combout\);

-- Location: LCCOMB_X110_Y50_N12
\proc|alu|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|alu|Mux5~4_combout\ = (\proc|alu|Mux5~1_combout\ & (((\proc|alu|Mux5~3_combout\) # (!\proc|alu|Mux4~4_combout\)))) # (!\proc|alu|Mux5~1_combout\ & (\proc|alu|Mux5~0_combout\ & (\proc|alu|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|alu|Mux5~1_combout\,
	datab => \proc|alu|Mux5~0_combout\,
	datac => \proc|alu|Mux4~4_combout\,
	datad => \proc|alu|Mux5~3_combout\,
	combout => \proc|alu|Mux5~4_combout\);

-- Location: LCCOMB_X109_Y48_N28
\proc|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|Selector8~2_combout\ = (\proc|currState.MEM_WRITE~q\ & (((\proc|alu|Mux5~4_combout\)))) # (!\proc|currState.MEM_WRITE~q\ & ((\proc|currState.EXECUTE~q\ & ((\proc|alu|Mux5~4_combout\))) # (!\proc|currState.EXECUTE~q\ & (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \proc|currState.MEM_WRITE~q\,
	datac => \proc|currState.EXECUTE~q\,
	datad => \proc|alu|Mux5~4_combout\,
	combout => \proc|Selector8~2_combout\);

-- Location: LCCOMB_X109_Y48_N24
\proc|hexIn2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn2\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((\proc|Selector8~2_combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexIn2\(2),
	datac => \proc|Selector8~2_combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn2\(2));

-- Location: LCCOMB_X109_Y48_N0
\proc|hexComp2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux6~0_combout\ = (\proc|hexIn2\(1) & (\proc|hexIn2\(3) & (\proc|hexIn2\(0) & !\proc|hexIn2\(2)))) # (!\proc|hexIn2\(1) & (\proc|hexIn2\(2) $ (((!\proc|hexIn2\(3) & \proc|hexIn2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y48_N10
\proc|hexComp2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux6~1_combout\ = (\proc|hexComp2|Mux6~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|hexComp2|Mux6~0_combout\,
	datad => \proc|currState.FETCH~q\,
	combout => \proc|hexComp2|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y48_N2
\proc|HEX2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(0) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp2|Mux6~1_combout\,
	datad => \proc|HEX2\(0),
	combout => \proc|HEX2\(0));

-- Location: LCCOMB_X109_Y48_N2
\proc|hexComp2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux5~0_combout\ = (\proc|hexIn2\(3) & ((\proc|hexIn2\(0) & (\proc|hexIn2\(1))) # (!\proc|hexIn2\(0) & ((\proc|hexIn2\(2)))))) # (!\proc|hexIn2\(3) & (\proc|hexIn2\(2) & (\proc|hexIn2\(0) $ (\proc|hexIn2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y48_N24
\proc|hexComp2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux5~1_combout\ = (\proc|hexComp2|Mux5~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp2|Mux5~0_combout\,
	combout => \proc|hexComp2|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y48_N20
\proc|HEX2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(1) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp2|Mux5~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX2\(1),
	combout => \proc|HEX2\(1));

-- Location: LCCOMB_X109_Y48_N20
\proc|hexComp2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux4~0_combout\ = (\proc|hexIn2\(3) & (\proc|hexIn2\(2) & ((\proc|hexIn2\(1)) # (!\proc|hexIn2\(0))))) # (!\proc|hexIn2\(3) & (!\proc|hexIn2\(0) & (\proc|hexIn2\(1) & !\proc|hexIn2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux4~0_combout\);

-- Location: LCCOMB_X110_Y45_N20
\proc|hexComp2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux4~1_combout\ = (\proc|hexComp2|Mux4~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp2|Mux4~0_combout\,
	combout => \proc|hexComp2|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y45_N10
\proc|HEX2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(2) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp2|Mux4~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX2\(2),
	combout => \proc|HEX2\(2));

-- Location: LCCOMB_X109_Y48_N6
\proc|hexComp2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux3~0_combout\ = (\proc|hexIn2\(0) & ((\proc|hexIn2\(1) $ (!\proc|hexIn2\(2))))) # (!\proc|hexIn2\(0) & ((\proc|hexIn2\(3) & (\proc|hexIn2\(1) & !\proc|hexIn2\(2))) # (!\proc|hexIn2\(3) & (!\proc|hexIn2\(1) & \proc|hexIn2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y44_N10
\proc|hexComp2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux3~1_combout\ = (\proc|hexComp2|Mux3~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp2|Mux3~0_combout\,
	combout => \proc|hexComp2|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y44_N0
\proc|HEX2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(3) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp2|Mux3~1_combout\,
	datad => \proc|HEX2\(3),
	combout => \proc|HEX2\(3));

-- Location: LCCOMB_X109_Y48_N4
\proc|hexComp2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux2~0_combout\ = (\proc|hexIn2\(1) & (!\proc|hexIn2\(3) & (\proc|hexIn2\(0)))) # (!\proc|hexIn2\(1) & ((\proc|hexIn2\(2) & (!\proc|hexIn2\(3))) # (!\proc|hexIn2\(2) & ((\proc|hexIn2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y44_N28
\proc|hexComp2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux2~1_combout\ = (\proc|hexComp2|Mux2~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|hexComp2|Mux2~0_combout\,
	combout => \proc|hexComp2|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y44_N2
\proc|HEX2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(4) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp2|Mux2~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX2\(4),
	combout => \proc|HEX2\(4));

-- Location: LCCOMB_X109_Y48_N18
\proc|hexComp2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux1~0_combout\ = (\proc|hexIn2\(3) & (((!\proc|hexIn2\(1) & \proc|hexIn2\(2))))) # (!\proc|hexIn2\(3) & ((\proc|hexIn2\(0) & ((\proc|hexIn2\(1)) # (!\proc|hexIn2\(2)))) # (!\proc|hexIn2\(0) & (\proc|hexIn2\(1) & !\proc|hexIn2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y44_N6
\proc|hexComp2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux1~1_combout\ = (\proc|hexComp2|Mux1~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datac => \proc|hexComp2|Mux1~0_combout\,
	combout => \proc|hexComp2|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y44_N12
\proc|HEX2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(5) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp2|Mux1~1_combout\,
	datad => \proc|HEX2\(5),
	combout => \proc|HEX2\(5));

-- Location: LCCOMB_X109_Y48_N12
\proc|hexComp2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux0~0_combout\ = (\proc|hexIn2\(3)) # ((\proc|hexIn2\(1) & ((!\proc|hexIn2\(2)) # (!\proc|hexIn2\(0)))) # (!\proc|hexIn2\(1) & ((\proc|hexIn2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn2\(3),
	datab => \proc|hexIn2\(0),
	datac => \proc|hexIn2\(1),
	datad => \proc|hexIn2\(2),
	combout => \proc|hexComp2|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y44_N24
\proc|hexComp2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp2|Mux0~1_combout\ = (\proc|currState.FETCH~q\ & !\proc|hexComp2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|currState.FETCH~q\,
	datad => \proc|hexComp2|Mux0~0_combout\,
	combout => \proc|hexComp2|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y44_N18
\proc|HEX2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX2\(6) = (\KEY[1]~input_o\ & (\proc|hexComp2|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexComp2|Mux0~1_combout\,
	datab => \KEY[1]~input_o\,
	datad => \proc|HEX2\(6),
	combout => \proc|HEX2\(6));

-- Location: LCCOMB_X106_Y49_N20
\pc|currState.three~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.three~feeder_combout\ = \pc|currState.two~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|currState.two~q\,
	combout => \pc|currState.three~feeder_combout\);

-- Location: FF_X106_Y49_N21
\pc|currState.three\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.three~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.three~q\);

-- Location: LCCOMB_X106_Y49_N0
\pc|currState.four~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.four~feeder_combout\ = \pc|currState.three~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|currState.three~q\,
	combout => \pc|currState.four~feeder_combout\);

-- Location: FF_X106_Y49_N1
\pc|currState.four\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.four~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.four~q\);

-- Location: LCCOMB_X106_Y49_N28
\pc|currState.five~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.five~feeder_combout\ = \pc|currState.four~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|currState.four~q\,
	combout => \pc|currState.five~feeder_combout\);

-- Location: FF_X106_Y49_N29
\pc|currState.five\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.five~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.five~q\);

-- Location: LCCOMB_X105_Y49_N24
\pc|currState.six~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.six~feeder_combout\ = \pc|currState.five~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|currState.five~q\,
	combout => \pc|currState.six~feeder_combout\);

-- Location: FF_X105_Y49_N25
\pc|currState.six\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.six~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.six~q\);

-- Location: LCCOMB_X105_Y49_N6
\pc|currState.seven~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.seven~feeder_combout\ = \pc|currState.six~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|currState.six~q\,
	combout => \pc|currState.seven~feeder_combout\);

-- Location: FF_X105_Y49_N7
\pc|currState.seven\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.seven~feeder_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.seven~q\);

-- Location: FF_X106_Y49_N5
\pc|currState.eight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.seven~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.eight~q\);

-- Location: FF_X106_Y49_N9
\pc|currState.nine\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.eight~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.nine~q\);

-- Location: FF_X106_Y49_N23
\pc|currState.ten\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.nine~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.ten~q\);

-- Location: FF_X106_Y49_N7
\pc|currState.eleven\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.ten~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.eleven~q\);

-- Location: FF_X106_Y49_N31
\pc|currState.twelve\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.eleven~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.twelve~q\);

-- Location: FF_X106_Y49_N17
\pc|currState.thirteen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.twelve~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.thirteen~q\);

-- Location: FF_X106_Y49_N27
\pc|currState.fourteen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.thirteen~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.fourteen~q\);

-- Location: FF_X106_Y49_N11
\pc|currState.fifteen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.fourteen~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.fifteen~q\);

-- Location: LCCOMB_X106_Y49_N12
\pc|currState.zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.zero~0_combout\ = !\pc|currState.fifteen~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|currState.fifteen~q\,
	combout => \pc|currState.zero~0_combout\);

-- Location: FF_X106_Y49_N13
\pc|currState.zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.zero~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.zero~q\);

-- Location: LCCOMB_X106_Y49_N14
\pc|currState.one~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|currState.one~0_combout\ = !\pc|currState.zero~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pc|currState.zero~q\,
	combout => \pc|currState.one~0_combout\);

-- Location: FF_X106_Y49_N15
\pc|currState.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	d => \pc|currState.one~0_combout\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.one~q\);

-- Location: FF_X106_Y49_N3
\pc|currState.two\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \proc|incCounter~clkctrl_outclk\,
	asdata => \pc|currState.one~q\,
	clrn => \ALT_INV_KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|currState.two~q\);

-- Location: LCCOMB_X106_Y49_N24
\pc|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr0~0_combout\ = (\pc|currState.zero~q\ & (!\pc|currState.two~q\ & (!\pc|currState.one~q\ & !\pc|currState.three~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|currState.zero~q\,
	datab => \pc|currState.two~q\,
	datac => \pc|currState.one~q\,
	datad => \pc|currState.three~q\,
	combout => \pc|WideOr0~0_combout\);

-- Location: LCCOMB_X106_Y49_N16
\pc|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr1~combout\ = (\pc|WideOr1~0_combout\) # (!\pc|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|WideOr1~0_combout\,
	datab => \pc|WideOr0~0_combout\,
	combout => \pc|WideOr1~combout\);

-- Location: LCCOMB_X106_Y49_N8
\proc|hexIn0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn0\(2) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((!\pc|WideOr1~combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(2),
	datab => \pc|WideOr1~combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn0\(2));

-- Location: LCCOMB_X106_Y49_N2
\pc|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr2~1_combout\ = (\pc|currState.thirteen~q\) # ((\pc|currState.five~q\) # ((\pc|currState.one~q\) # (\pc|currState.nine~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|currState.thirteen~q\,
	datab => \pc|currState.five~q\,
	datac => \pc|currState.one~q\,
	datad => \pc|currState.nine~q\,
	combout => \pc|WideOr2~1_combout\);

-- Location: LCCOMB_X106_Y49_N4
\pc|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr2~combout\ = (\pc|WideOr2~1_combout\) # (!\pc|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|WideOr2~0_combout\,
	datab => \pc|WideOr2~1_combout\,
	combout => \pc|WideOr2~combout\);

-- Location: LCCOMB_X106_Y49_N10
\proc|hexIn0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn0\(1) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((!\pc|WideOr2~combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(1),
	datab => \pc|WideOr2~combout\,
	datad => \proc|hexIn0[0]~0clkctrl_outclk\,
	combout => \proc|hexIn0\(1));

-- Location: LCCOMB_X106_Y49_N26
\pc|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr3~0_combout\ = (\pc|currState.ten~q\) # ((\pc|currState.two~q\) # ((\pc|currState.fourteen~q\) # (\pc|currState.six~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|currState.ten~q\,
	datab => \pc|currState.two~q\,
	datac => \pc|currState.fourteen~q\,
	datad => \pc|currState.six~q\,
	combout => \pc|WideOr3~0_combout\);

-- Location: LCCOMB_X106_Y49_N22
\pc|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr3~combout\ = (\pc|WideOr3~0_combout\) # (!\pc|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|WideOr2~0_combout\,
	datad => \pc|WideOr3~0_combout\,
	combout => \pc|WideOr3~combout\);

-- Location: LCCOMB_X106_Y49_N18
\proc|hexIn0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn0\(0) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((!\pc|WideOr3~combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexIn0[0]~0clkctrl_outclk\,
	datac => \proc|hexIn0\(0),
	datad => \pc|WideOr3~combout\,
	combout => \proc|hexIn0\(0));

-- Location: LCCOMB_X105_Y49_N16
\proc|hexComp0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux6~0_combout\ = (\proc|hexIn0\(2) & (!\proc|hexIn0\(1) & ((\proc|hexIn0\(3)) # (!\proc|hexIn0\(0))))) # (!\proc|hexIn0\(2) & (\proc|hexIn0\(0) & (\proc|hexIn0\(3) $ (!\proc|hexIn0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(3),
	datab => \proc|hexIn0\(2),
	datac => \proc|hexIn0\(1),
	datad => \proc|hexIn0\(0),
	combout => \proc|hexComp0|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y49_N26
\proc|hexComp0|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux6~1_combout\ = (\proc|hexComp0|Mux6~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux6~0_combout\,
	combout => \proc|hexComp0|Mux6~1_combout\);

-- Location: LCCOMB_X105_Y49_N12
\proc|HEX0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(0) = (\KEY[1]~input_o\ & ((\proc|hexComp0|Mux6~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|HEX0\(0),
	datac => \KEY[1]~input_o\,
	datad => \proc|hexComp0|Mux6~1_combout\,
	combout => \proc|HEX0\(0));

-- Location: LCCOMB_X105_Y49_N8
\pc|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr0~1_combout\ = (\pc|currState.seven~q\) # ((\pc|currState.six~q\) # ((\pc|currState.four~q\) # (\pc|currState.five~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|currState.seven~q\,
	datab => \pc|currState.six~q\,
	datac => \pc|currState.four~q\,
	datad => \pc|currState.five~q\,
	combout => \pc|WideOr0~1_combout\);

-- Location: LCCOMB_X105_Y49_N10
\pc|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|WideOr0~combout\ = (\pc|WideOr0~1_combout\) # (!\pc|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|WideOr0~1_combout\,
	datad => \pc|WideOr0~0_combout\,
	combout => \pc|WideOr0~combout\);

-- Location: LCCOMB_X105_Y49_N20
\proc|hexIn0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexIn0\(3) = (GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & ((!\pc|WideOr0~combout\))) # (!GLOBAL(\proc|hexIn0[0]~0clkctrl_outclk\) & (\proc|hexIn0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexIn0\(3),
	datac => \proc|hexIn0[0]~0clkctrl_outclk\,
	datad => \pc|WideOr0~combout\,
	combout => \proc|hexIn0\(3));

-- Location: LCCOMB_X107_Y49_N12
\proc|hexComp0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux5~0_combout\ = (\proc|hexIn0\(1) & ((\proc|hexIn0\(0) & ((\proc|hexIn0\(3)))) # (!\proc|hexIn0\(0) & (\proc|hexIn0\(2))))) # (!\proc|hexIn0\(1) & (\proc|hexIn0\(2) & (\proc|hexIn0\(0) $ (\proc|hexIn0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(2),
	datab => \proc|hexIn0\(0),
	datac => \proc|hexIn0\(1),
	datad => \proc|hexIn0\(3),
	combout => \proc|hexComp0|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y49_N10
\proc|hexComp0|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux5~1_combout\ = (\proc|hexComp0|Mux5~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux5~0_combout\,
	combout => \proc|hexComp0|Mux5~1_combout\);

-- Location: LCCOMB_X107_Y49_N8
\proc|HEX0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(1) = (\KEY[1]~input_o\ & (\proc|hexComp0|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp0|Mux5~1_combout\,
	datac => \proc|HEX0\(1),
	combout => \proc|HEX0\(1));

-- Location: LCCOMB_X107_Y49_N16
\proc|hexComp0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux4~0_combout\ = (\proc|hexIn0\(2) & (\proc|hexIn0\(3) & ((\proc|hexIn0\(1)) # (!\proc|hexIn0\(0))))) # (!\proc|hexIn0\(2) & (!\proc|hexIn0\(0) & (\proc|hexIn0\(1) & !\proc|hexIn0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(2),
	datab => \proc|hexIn0\(0),
	datac => \proc|hexIn0\(1),
	datad => \proc|hexIn0\(3),
	combout => \proc|hexComp0|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y49_N6
\proc|hexComp0|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux4~1_combout\ = (\proc|hexComp0|Mux4~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux4~0_combout\,
	combout => \proc|hexComp0|Mux4~1_combout\);

-- Location: LCCOMB_X107_Y49_N30
\proc|HEX0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(2) = (\KEY[1]~input_o\ & ((\proc|hexComp0|Mux4~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \proc|HEX0\(2),
	datad => \proc|hexComp0|Mux4~1_combout\,
	combout => \proc|HEX0\(2));

-- Location: LCCOMB_X107_Y49_N0
\proc|hexComp0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux3~0_combout\ = (\proc|hexIn0\(0) & (\proc|hexIn0\(2) $ ((!\proc|hexIn0\(1))))) # (!\proc|hexIn0\(0) & ((\proc|hexIn0\(2) & (!\proc|hexIn0\(1) & !\proc|hexIn0\(3))) # (!\proc|hexIn0\(2) & (\proc|hexIn0\(1) & \proc|hexIn0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(2),
	datab => \proc|hexIn0\(0),
	datac => \proc|hexIn0\(1),
	datad => \proc|hexIn0\(3),
	combout => \proc|hexComp0|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y49_N18
\proc|hexComp0|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux3~1_combout\ = (\proc|hexComp0|Mux3~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux3~0_combout\,
	combout => \proc|hexComp0|Mux3~1_combout\);

-- Location: LCCOMB_X107_Y49_N4
\proc|HEX0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(3) = (\KEY[1]~input_o\ & ((\proc|hexComp0|Mux3~1_combout\))) # (!\KEY[1]~input_o\ & (\proc|HEX0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \proc|HEX0\(3),
	datad => \proc|hexComp0|Mux3~1_combout\,
	combout => \proc|HEX0\(3));

-- Location: LCCOMB_X107_Y49_N28
\proc|hexComp0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux2~0_combout\ = (\proc|hexIn0\(1) & (((\proc|hexIn0\(0) & !\proc|hexIn0\(3))))) # (!\proc|hexIn0\(1) & ((\proc|hexIn0\(2) & ((!\proc|hexIn0\(3)))) # (!\proc|hexIn0\(2) & (\proc|hexIn0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(2),
	datab => \proc|hexIn0\(0),
	datac => \proc|hexIn0\(1),
	datad => \proc|hexIn0\(3),
	combout => \proc|hexComp0|Mux2~0_combout\);

-- Location: LCCOMB_X107_Y49_N2
\proc|hexComp0|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux2~1_combout\ = (\proc|hexComp0|Mux2~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux2~0_combout\,
	combout => \proc|hexComp0|Mux2~1_combout\);

-- Location: LCCOMB_X107_Y49_N22
\proc|HEX0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(4) = (\KEY[1]~input_o\ & (\proc|hexComp0|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp0|Mux2~1_combout\,
	datac => \proc|HEX0\(4),
	combout => \proc|HEX0\(4));

-- Location: LCCOMB_X107_Y49_N20
\proc|hexComp0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux1~0_combout\ = (\proc|hexIn0\(2) & ((\proc|hexIn0\(1) & (\proc|hexIn0\(0) & !\proc|hexIn0\(3))) # (!\proc|hexIn0\(1) & ((\proc|hexIn0\(3)))))) # (!\proc|hexIn0\(2) & (!\proc|hexIn0\(3) & ((\proc|hexIn0\(0)) # (\proc|hexIn0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(2),
	datab => \proc|hexIn0\(0),
	datac => \proc|hexIn0\(1),
	datad => \proc|hexIn0\(3),
	combout => \proc|hexComp0|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y49_N26
\proc|hexComp0|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux1~1_combout\ = (\proc|hexComp0|Mux1~0_combout\) # (!\proc|currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux1~0_combout\,
	combout => \proc|hexComp0|Mux1~1_combout\);

-- Location: LCCOMB_X107_Y49_N24
\proc|HEX0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(5) = (\KEY[1]~input_o\ & (\proc|hexComp0|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \proc|hexComp0|Mux1~1_combout\,
	datad => \proc|HEX0\(5),
	combout => \proc|HEX0\(5));

-- Location: LCCOMB_X105_Y49_N28
\proc|hexComp0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux0~0_combout\ = (\proc|hexIn0\(3)) # ((\proc|hexIn0\(1) & ((!\proc|hexIn0\(0)) # (!\proc|hexIn0\(2)))) # (!\proc|hexIn0\(1) & (\proc|hexIn0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|hexIn0\(3),
	datab => \proc|hexIn0\(1),
	datac => \proc|hexIn0\(2),
	datad => \proc|hexIn0\(0),
	combout => \proc|hexComp0|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y49_N2
\proc|hexComp0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|hexComp0|Mux0~1_combout\ = (\proc|currState.FETCH~q\ & !\proc|hexComp0|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|currState.FETCH~q\,
	datad => \proc|hexComp0|Mux0~0_combout\,
	combout => \proc|hexComp0|Mux0~1_combout\);

-- Location: LCCOMB_X105_Y49_N18
\proc|HEX0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \proc|HEX0\(6) = (\KEY[1]~input_o\ & (\proc|hexComp0|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\proc|HEX0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|hexComp0|Mux0~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \proc|HEX0\(6),
	combout => \proc|HEX0\(6));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


