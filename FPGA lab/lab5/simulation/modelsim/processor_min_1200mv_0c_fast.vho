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

-- DATE "12/08/2016 20:10:12"

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

ENTITY 	processor IS
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
END processor;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processor IS
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
SIGNAL \hexIn0[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sramDataWrite[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \nextState.EXECUTE~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \alu|Mux2~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~7_combout\ : std_logic;
SIGNAL \alu|Mux1~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~8_combout\ : std_logic;
SIGNAL \alu|Mux5~4_combout\ : std_logic;
SIGNAL \alu|Mux5~5_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \alu|Mux5~7_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \alu|Mux5~10_combout\ : std_logic;
SIGNAL \alu|Mux5~11_combout\ : std_logic;
SIGNAL \alu|Mux5~12_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \sram|addresses[21][4]~q\ : std_logic;
SIGNAL \sram|addresses[28][4]~q\ : std_logic;
SIGNAL \sram|addresses[7][4]~q\ : std_logic;
SIGNAL \sram|Mux11~14_combout\ : std_logic;
SIGNAL \sram|addresses[14][4]~q\ : std_logic;
SIGNAL \sram|addresses[22][5]~q\ : std_logic;
SIGNAL \sram|Mux10~7_combout\ : std_logic;
SIGNAL \sram|addresses[10][5]~q\ : std_logic;
SIGNAL \sram|Mux10~10_combout\ : std_logic;
SIGNAL \sram|Mux10~11_combout\ : std_logic;
SIGNAL \sram|addresses[5][5]~q\ : std_logic;
SIGNAL \sram|Mux10~12_combout\ : std_logic;
SIGNAL \sram|Mux10~13_combout\ : std_logic;
SIGNAL \sram|Mux10~14_combout\ : std_logic;
SIGNAL \sram|addresses[30][6]~q\ : std_logic;
SIGNAL \sram|addresses[28][6]~q\ : std_logic;
SIGNAL \sram|addresses[27][6]~q\ : std_logic;
SIGNAL \sram|addresses[19][6]~q\ : std_logic;
SIGNAL \sram|Mux9~7_combout\ : std_logic;
SIGNAL \sram|Mux9~8_combout\ : std_logic;
SIGNAL \sram|addresses[3][6]~q\ : std_logic;
SIGNAL \sram|addresses[14][6]~q\ : std_logic;
SIGNAL \sram|addresses[13][6]~q\ : std_logic;
SIGNAL \sram|addresses[12][6]~q\ : std_logic;
SIGNAL \sram|Mux9~17_combout\ : std_logic;
SIGNAL \sram|addresses[15][6]~q\ : std_logic;
SIGNAL \sram|Mux9~18_combout\ : std_logic;
SIGNAL \sram|addresses[26][7]~q\ : std_logic;
SIGNAL \sram|addresses[18][7]~q\ : std_logic;
SIGNAL \sram|Mux8~0_combout\ : std_logic;
SIGNAL \sram|addresses[26][0]~q\ : std_logic;
SIGNAL \sram|addresses[28][0]~q\ : std_logic;
SIGNAL \sram|addresses[6][0]~q\ : std_logic;
SIGNAL \sram|Mux15~17_combout\ : std_logic;
SIGNAL \sram|addresses[15][0]~q\ : std_logic;
SIGNAL \sram|Mux15~18_combout\ : std_logic;
SIGNAL \sram|addresses[20][1]~q\ : std_logic;
SIGNAL \sram|addresses[14][1]~q\ : std_logic;
SIGNAL \sram|Mux14~17_combout\ : std_logic;
SIGNAL \sram|Mux14~18_combout\ : std_logic;
SIGNAL \sram|addresses[21][2]~q\ : std_logic;
SIGNAL \sram|addresses[25][2]~q\ : std_logic;
SIGNAL \sram|addresses[17][2]~q\ : std_logic;
SIGNAL \sram|Mux13~0_combout\ : std_logic;
SIGNAL \sram|addresses[29][2]~q\ : std_logic;
SIGNAL \sram|Mux13~1_combout\ : std_logic;
SIGNAL \sram|addresses[26][2]~q\ : std_logic;
SIGNAL \sram|addresses[22][2]~q\ : std_logic;
SIGNAL \sram|addresses[18][2]~q\ : std_logic;
SIGNAL \sram|Mux13~2_combout\ : std_logic;
SIGNAL \sram|addresses[30][2]~q\ : std_logic;
SIGNAL \sram|Mux13~3_combout\ : std_logic;
SIGNAL \sram|addresses[24][2]~q\ : std_logic;
SIGNAL \sram|addresses[20][2]~q\ : std_logic;
SIGNAL \sram|addresses[16][2]~q\ : std_logic;
SIGNAL \sram|Mux13~4_combout\ : std_logic;
SIGNAL \sram|addresses[28][2]~q\ : std_logic;
SIGNAL \sram|Mux13~5_combout\ : std_logic;
SIGNAL \sram|Mux13~6_combout\ : std_logic;
SIGNAL \sram|addresses[23][2]~q\ : std_logic;
SIGNAL \sram|addresses[27][2]~q\ : std_logic;
SIGNAL \sram|addresses[19][2]~q\ : std_logic;
SIGNAL \sram|Mux13~7_combout\ : std_logic;
SIGNAL \sram|addresses[31][2]~q\ : std_logic;
SIGNAL \sram|Mux13~8_combout\ : std_logic;
SIGNAL \sram|Mux13~9_combout\ : std_logic;
SIGNAL \sram|addresses[6][2]~q\ : std_logic;
SIGNAL \sram|addresses[5][2]~q\ : std_logic;
SIGNAL \sram|addresses[4][2]~q\ : std_logic;
SIGNAL \sram|Mux13~10_combout\ : std_logic;
SIGNAL \sram|addresses[7][2]~q\ : std_logic;
SIGNAL \sram|Mux13~11_combout\ : std_logic;
SIGNAL \sram|addresses[9][2]~q\ : std_logic;
SIGNAL \sram|addresses[10][2]~q\ : std_logic;
SIGNAL \sram|addresses[8][2]~q\ : std_logic;
SIGNAL \sram|Mux13~12_combout\ : std_logic;
SIGNAL \sram|addresses[11][2]~q\ : std_logic;
SIGNAL \sram|Mux13~13_combout\ : std_logic;
SIGNAL \sram|addresses[1][2]~q\ : std_logic;
SIGNAL \sram|addresses[2][2]~q\ : std_logic;
SIGNAL \sram|addresses[0][2]~q\ : std_logic;
SIGNAL \sram|Mux13~14_combout\ : std_logic;
SIGNAL \sram|addresses[3][2]~q\ : std_logic;
SIGNAL \sram|Mux13~15_combout\ : std_logic;
SIGNAL \sram|Mux13~16_combout\ : std_logic;
SIGNAL \sram|addresses[14][2]~q\ : std_logic;
SIGNAL \sram|addresses[13][2]~q\ : std_logic;
SIGNAL \sram|addresses[12][2]~q\ : std_logic;
SIGNAL \sram|Mux13~17_combout\ : std_logic;
SIGNAL \sram|addresses[15][2]~q\ : std_logic;
SIGNAL \sram|Mux13~18_combout\ : std_logic;
SIGNAL \sram|Mux13~19_combout\ : std_logic;
SIGNAL \sram|Mux13~20_combout\ : std_logic;
SIGNAL \sram|addresses[26][3]~q\ : std_logic;
SIGNAL \sram|Mux12~17_combout\ : std_logic;
SIGNAL \sram|Mux27~0_combout\ : std_logic;
SIGNAL \sram|Mux27~1_combout\ : std_logic;
SIGNAL \sram|Mux26~0_combout\ : std_logic;
SIGNAL \sram|Mux26~1_combout\ : std_logic;
SIGNAL \sram|Mux25~7_combout\ : std_logic;
SIGNAL \sram|Mux25~14_combout\ : std_logic;
SIGNAL \sram|Mux25~15_combout\ : std_logic;
SIGNAL \sram|Mux25~17_combout\ : std_logic;
SIGNAL \sram|Mux25~18_combout\ : std_logic;
SIGNAL \sram|Mux24~0_combout\ : std_logic;
SIGNAL \sram|Mux24~1_combout\ : std_logic;
SIGNAL \sram|Mux24~10_combout\ : std_logic;
SIGNAL \sram|Mux24~11_combout\ : std_logic;
SIGNAL \sram|Mux30~4_combout\ : std_logic;
SIGNAL \sram|Mux30~5_combout\ : std_logic;
SIGNAL \sram|Mux30~10_combout\ : std_logic;
SIGNAL \sram|Mux30~11_combout\ : std_logic;
SIGNAL \sram|Mux30~12_combout\ : std_logic;
SIGNAL \sram|Mux30~13_combout\ : std_logic;
SIGNAL \sram|Mux29~0_combout\ : std_logic;
SIGNAL \sram|Mux29~1_combout\ : std_logic;
SIGNAL \sram|Mux29~2_combout\ : std_logic;
SIGNAL \sram|Mux29~3_combout\ : std_logic;
SIGNAL \sram|Mux29~4_combout\ : std_logic;
SIGNAL \sram|Mux29~5_combout\ : std_logic;
SIGNAL \sram|Mux29~6_combout\ : std_logic;
SIGNAL \sram|Mux29~7_combout\ : std_logic;
SIGNAL \sram|Mux29~8_combout\ : std_logic;
SIGNAL \sram|Mux29~9_combout\ : std_logic;
SIGNAL \sram|Mux29~10_combout\ : std_logic;
SIGNAL \sram|Mux29~11_combout\ : std_logic;
SIGNAL \sram|Mux29~12_combout\ : std_logic;
SIGNAL \sram|Mux29~13_combout\ : std_logic;
SIGNAL \sram|Mux29~14_combout\ : std_logic;
SIGNAL \sram|Mux29~15_combout\ : std_logic;
SIGNAL \sram|Mux29~16_combout\ : std_logic;
SIGNAL \sram|Mux29~17_combout\ : std_logic;
SIGNAL \sram|Mux29~18_combout\ : std_logic;
SIGNAL \sram|Mux29~19_combout\ : std_logic;
SIGNAL \sram|Mux29~20_combout\ : std_logic;
SIGNAL \alu|Mux2~3_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \sram|addresses[7][4]~3_combout\ : std_logic;
SIGNAL \sram|addresses[14][4]~12_combout\ : std_logic;
SIGNAL \sram|addresses[26][0]~16_combout\ : std_logic;
SIGNAL \sram|addresses[28][0]~23_combout\ : std_logic;
SIGNAL \sram|addresses[6][0]~24_combout\ : std_logic;
SIGNAL \sram|addresses[20][1]~36_combout\ : std_logic;
SIGNAL \sram|addresses[25][2]~48_combout\ : std_logic;
SIGNAL \sram|addresses[17][2]~49_combout\ : std_logic;
SIGNAL \sram|addresses[26][2]~50_combout\ : std_logic;
SIGNAL \sram|addresses[18][2]~51_combout\ : std_logic;
SIGNAL \sram|addresses[24][2]~52_combout\ : std_logic;
SIGNAL \sram|addresses[16][2]~53_combout\ : std_logic;
SIGNAL \sram|addresses[27][2]~54_combout\ : std_logic;
SIGNAL \sram|addresses[19][2]~55_combout\ : std_logic;
SIGNAL \sram|addresses[9][2]~56_combout\ : std_logic;
SIGNAL \sram|addresses[10][2]~57_combout\ : std_logic;
SIGNAL \sram|addresses[8][2]~58_combout\ : std_logic;
SIGNAL \sram|addresses[11][2]~59_combout\ : std_logic;
SIGNAL \sram|addresses[1][2]~60_combout\ : std_logic;
SIGNAL \sram|addresses[2][2]~61_combout\ : std_logic;
SIGNAL \sram|addresses[0][2]~62_combout\ : std_logic;
SIGNAL \sram|addresses[3][2]~63_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \sram|addresses[28][4]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[28][6]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[3][6]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[6][2]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[15][2]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[29][2]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[22][2]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[28][2]~feeder_combout\ : std_logic;
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
SIGNAL \nextState.FETCH~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \nextState.FETCH~0_combout\ : std_logic;
SIGNAL \currState.FETCH~q\ : std_logic;
SIGNAL \nextState.DECODE~0_combout\ : std_logic;
SIGNAL \currState.DECODE~q\ : std_logic;
SIGNAL \nextState.EXECUTE~0_combout\ : std_logic;
SIGNAL \currState.EXECUTE~q\ : std_logic;
SIGNAL \nextState.MEM_WRITE~0_combout\ : std_logic;
SIGNAL \currState.MEM_WRITE~q\ : std_logic;
SIGNAL \LEDG[0]$latch~combout\ : std_logic;
SIGNAL \LEDG[1]$latch~combout\ : std_logic;
SIGNAL \LEDG[2]$latch~combout\ : std_logic;
SIGNAL \LEDG[3]$latch~combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \hexIn0[0]~0_combout\ : std_logic;
SIGNAL \hexIn0[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \nextState.EXECUTE~0clkctrl_outclk\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \sramDataWrite[7]~0_combout\ : std_logic;
SIGNAL \sramDataWrite[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \sramEnable~2_combout\ : std_logic;
SIGNAL \sramEnable~combout\ : std_logic;
SIGNAL \rw~0_combout\ : std_logic;
SIGNAL \rw~combout\ : std_logic;
SIGNAL \sram|Decoder0~0_combout\ : std_logic;
SIGNAL \sram|Decoder0~1_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \sram|Decoder0~39_combout\ : std_logic;
SIGNAL \sram|addresses[13][5]~q\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \sram|Decoder0~16_combout\ : std_logic;
SIGNAL \sram|Decoder0~40_combout\ : std_logic;
SIGNAL \sram|addresses[12][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~10_combout\ : std_logic;
SIGNAL \sram|Decoder0~38_combout\ : std_logic;
SIGNAL \sram|addresses[14][5]~q\ : std_logic;
SIGNAL \sram|Mux10~17_combout\ : std_logic;
SIGNAL \sram|Mux10~18_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \sram|Decoder0~8_combout\ : std_logic;
SIGNAL \sram|Decoder0~35_combout\ : std_logic;
SIGNAL \sram|addresses[2][5]~q\ : std_logic;
SIGNAL \sram|addresses[3][5]~feeder_combout\ : std_logic;
SIGNAL \sram|Decoder0~22_combout\ : std_logic;
SIGNAL \sram|Decoder0~37_combout\ : std_logic;
SIGNAL \sram|addresses[3][5]~q\ : std_logic;
SIGNAL \sram|Mux10~15_combout\ : std_logic;
SIGNAL \sram|Mux10~16_combout\ : std_logic;
SIGNAL \sram|Mux10~19_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \sram|Decoder0~20_combout\ : std_logic;
SIGNAL \sram|Decoder0~25_combout\ : std_logic;
SIGNAL \sram|addresses[31][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~23_combout\ : std_logic;
SIGNAL \sram|addresses[27][5]~q\ : std_logic;
SIGNAL \sram|Mux10~8_combout\ : std_logic;
SIGNAL \sram|Decoder0~13_combout\ : std_logic;
SIGNAL \sram|addresses[30][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~9_combout\ : std_logic;
SIGNAL \sram|addresses[26][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~12_combout\ : std_logic;
SIGNAL \sram|addresses[18][5]~q\ : std_logic;
SIGNAL \sram|Mux10~0_combout\ : std_logic;
SIGNAL \sram|Mux10~1_combout\ : std_logic;
SIGNAL \sram|Decoder0~19_combout\ : std_logic;
SIGNAL \sram|addresses[28][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~14_combout\ : std_logic;
SIGNAL \sram|Decoder0~18_combout\ : std_logic;
SIGNAL \sram|addresses[16][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~15_combout\ : std_logic;
SIGNAL \sram|addresses[24][5]~q\ : std_logic;
SIGNAL \sram|Mux10~4_combout\ : std_logic;
SIGNAL \sram|Mux10~5_combout\ : std_logic;
SIGNAL \sram|addresses[29][5]~feeder_combout\ : std_logic;
SIGNAL \sram|Decoder0~7_combout\ : std_logic;
SIGNAL \sram|addresses[29][5]~q\ : std_logic;
SIGNAL \sram|addresses[25][5]~feeder_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \sram|Decoder0~3_combout\ : std_logic;
SIGNAL \sram|Decoder0~4_combout\ : std_logic;
SIGNAL \sram|Decoder0~5_combout\ : std_logic;
SIGNAL \sram|addresses[25][5]~q\ : std_logic;
SIGNAL \sram|addresses[17][5]~feeder_combout\ : std_logic;
SIGNAL \sram|Decoder0~6_combout\ : std_logic;
SIGNAL \sram|addresses[17][5]~q\ : std_logic;
SIGNAL \sram|Decoder0~2_combout\ : std_logic;
SIGNAL \sram|addresses[21][5]~q\ : std_logic;
SIGNAL \sram|Mux10~2_combout\ : std_logic;
SIGNAL \sram|Mux10~3_combout\ : std_logic;
SIGNAL \sram|Mux10~6_combout\ : std_logic;
SIGNAL \sram|Mux10~9_combout\ : std_logic;
SIGNAL \sram|Mux10~20_combout\ : std_logic;
SIGNAL \sram|dataReadOne[7]~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \sram|addresses[3][4]~11_combout\ : std_logic;
SIGNAL \sram|addresses[3][4]~q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \sram|addresses[0][4]~10_combout\ : std_logic;
SIGNAL \sram|Decoder0~36_combout\ : std_logic;
SIGNAL \sram|addresses[0][4]~q\ : std_logic;
SIGNAL \sram|addresses[2][4]~9_combout\ : std_logic;
SIGNAL \sram|addresses[2][4]~q\ : std_logic;
SIGNAL \sram|Mux27~14_combout\ : std_logic;
SIGNAL \sram|addresses[1][4]~8_combout\ : std_logic;
SIGNAL \sram|Decoder0~34_combout\ : std_logic;
SIGNAL \sram|addresses[1][4]~q\ : std_logic;
SIGNAL \sram|Mux27~15_combout\ : std_logic;
SIGNAL \sram|addresses[11][4]~7_combout\ : std_logic;
SIGNAL \sram|Decoder0~33_combout\ : std_logic;
SIGNAL \sram|addresses[11][4]~q\ : std_logic;
SIGNAL \sram|addresses[9][4]~4_combout\ : std_logic;
SIGNAL \sram|Decoder0~30_combout\ : std_logic;
SIGNAL \sram|addresses[9][4]~q\ : std_logic;
SIGNAL \sram|addresses[8][4]~6_combout\ : std_logic;
SIGNAL \sram|Decoder0~32_combout\ : std_logic;
SIGNAL \sram|addresses[8][4]~q\ : std_logic;
SIGNAL \sram|addresses[10][4]~5_combout\ : std_logic;
SIGNAL \sram|Decoder0~31_combout\ : std_logic;
SIGNAL \sram|addresses[10][4]~q\ : std_logic;
SIGNAL \sram|Mux27~12_combout\ : std_logic;
SIGNAL \sram|Mux27~13_combout\ : std_logic;
SIGNAL \sram|Mux27~16_combout\ : std_logic;
SIGNAL \sram|addresses[6][4]~0_combout\ : std_logic;
SIGNAL \sram|Decoder0~26_combout\ : std_logic;
SIGNAL \sram|addresses[6][4]~q\ : std_logic;
SIGNAL \sram|addresses[5][4]~1_combout\ : std_logic;
SIGNAL \sram|Decoder0~27_combout\ : std_logic;
SIGNAL \sram|addresses[5][4]~q\ : std_logic;
SIGNAL \sram|addresses[4][4]~2_combout\ : std_logic;
SIGNAL \sram|Decoder0~28_combout\ : std_logic;
SIGNAL \sram|addresses[4][4]~q\ : std_logic;
SIGNAL \sram|Mux27~10_combout\ : std_logic;
SIGNAL \sram|Mux27~11_combout\ : std_logic;
SIGNAL \sram|addresses[15][4]~15_combout\ : std_logic;
SIGNAL \sram|Decoder0~41_combout\ : std_logic;
SIGNAL \sram|addresses[15][4]~q\ : std_logic;
SIGNAL \sram|addresses[13][4]~13_combout\ : std_logic;
SIGNAL \sram|addresses[13][4]~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \sram|addresses[12][4]~14_combout\ : std_logic;
SIGNAL \sram|addresses[12][4]~q\ : std_logic;
SIGNAL \sram|Mux27~17_combout\ : std_logic;
SIGNAL \sram|Mux27~18_combout\ : std_logic;
SIGNAL \sram|Mux27~19_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \sram|addresses[31][4]~q\ : std_logic;
SIGNAL \sram|Decoder0~24_combout\ : std_logic;
SIGNAL \sram|addresses[19][4]~q\ : std_logic;
SIGNAL \sram|addresses[27][4]~q\ : std_logic;
SIGNAL \sram|Mux27~7_combout\ : std_logic;
SIGNAL \sram|Mux27~8_combout\ : std_logic;
SIGNAL \sram|addresses[24][4]~q\ : std_logic;
SIGNAL \sram|addresses[16][4]~q\ : std_logic;
SIGNAL \sram|Decoder0~17_combout\ : std_logic;
SIGNAL \sram|addresses[20][4]~q\ : std_logic;
SIGNAL \sram|Mux27~4_combout\ : std_logic;
SIGNAL \sram|Mux27~5_combout\ : std_logic;
SIGNAL \sram|addresses[26][4]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[26][4]~q\ : std_logic;
SIGNAL \sram|addresses[30][4]~q\ : std_logic;
SIGNAL \sram|Decoder0~11_combout\ : std_logic;
SIGNAL \sram|addresses[22][4]~q\ : std_logic;
SIGNAL \sram|addresses[18][4]~q\ : std_logic;
SIGNAL \sram|Mux27~2_combout\ : std_logic;
SIGNAL \sram|Mux27~3_combout\ : std_logic;
SIGNAL \sram|Mux27~6_combout\ : std_logic;
SIGNAL \sram|Mux27~9_combout\ : std_logic;
SIGNAL \sram|Mux27~20_combout\ : std_logic;
SIGNAL \alu|Mux3~3_combout\ : std_logic;
SIGNAL \sram|addresses[15][7]~q\ : std_logic;
SIGNAL \sram|addresses[12][7]~q\ : std_logic;
SIGNAL \sram|addresses[14][7]~q\ : std_logic;
SIGNAL \sram|Mux8~17_combout\ : std_logic;
SIGNAL \sram|Mux8~18_combout\ : std_logic;
SIGNAL \sram|addresses[10][7]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[10][7]~q\ : std_logic;
SIGNAL \sram|addresses[9][7]~q\ : std_logic;
SIGNAL \sram|addresses[8][7]~q\ : std_logic;
SIGNAL \sram|Mux8~10_combout\ : std_logic;
SIGNAL \sram|addresses[11][7]~q\ : std_logic;
SIGNAL \sram|Mux8~11_combout\ : std_logic;
SIGNAL \sram|Decoder0~29_combout\ : std_logic;
SIGNAL \sram|addresses[7][7]~q\ : std_logic;
SIGNAL \sram|addresses[6][7]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[6][7]~q\ : std_logic;
SIGNAL \sram|addresses[4][7]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[4][7]~q\ : std_logic;
SIGNAL \sram|Mux8~12_combout\ : std_logic;
SIGNAL \sram|Mux8~13_combout\ : std_logic;
SIGNAL \sram|addresses[3][7]~q\ : std_logic;
SIGNAL \sram|addresses[2][7]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[2][7]~q\ : std_logic;
SIGNAL \sram|addresses[1][7]~q\ : std_logic;
SIGNAL \sram|addresses[0][7]~q\ : std_logic;
SIGNAL \sram|Mux8~14_combout\ : std_logic;
SIGNAL \sram|Mux8~15_combout\ : std_logic;
SIGNAL \sram|Mux8~16_combout\ : std_logic;
SIGNAL \sram|Mux8~19_combout\ : std_logic;
SIGNAL \sram|addresses[30][7]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[30][7]~q\ : std_logic;
SIGNAL \sram|addresses[22][7]~q\ : std_logic;
SIGNAL \sram|Mux8~1_combout\ : std_logic;
SIGNAL \sram|addresses[27][7]~q\ : std_logic;
SIGNAL \sram|addresses[19][7]~q\ : std_logic;
SIGNAL \sram|Decoder0~21_combout\ : std_logic;
SIGNAL \sram|addresses[23][7]~q\ : std_logic;
SIGNAL \sram|Mux8~7_combout\ : std_logic;
SIGNAL \sram|Mux8~8_combout\ : std_logic;
SIGNAL \sram|addresses[29][7]~q\ : std_logic;
SIGNAL \sram|addresses[25][7]~q\ : std_logic;
SIGNAL \sram|addresses[17][7]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[17][7]~q\ : std_logic;
SIGNAL \sram|addresses[21][7]~q\ : std_logic;
SIGNAL \sram|Mux8~2_combout\ : std_logic;
SIGNAL \sram|Mux8~3_combout\ : std_logic;
SIGNAL \sram|addresses[20][7]~q\ : std_logic;
SIGNAL \sram|addresses[16][7]~q\ : std_logic;
SIGNAL \sram|addresses[24][7]~q\ : std_logic;
SIGNAL \sram|Mux8~4_combout\ : std_logic;
SIGNAL \sram|Mux8~5_combout\ : std_logic;
SIGNAL \sram|Mux8~6_combout\ : std_logic;
SIGNAL \sram|Mux8~9_combout\ : std_logic;
SIGNAL \sram|Mux8~20_combout\ : std_logic;
SIGNAL \alu|Mux0~2_combout\ : std_logic;
SIGNAL \alu|aluOut~0_combout\ : std_logic;
SIGNAL \sram|addresses[21][6]~q\ : std_logic;
SIGNAL \sram|addresses[29][6]~q\ : std_logic;
SIGNAL \sram|addresses[17][6]~q\ : std_logic;
SIGNAL \sram|Mux9~0_combout\ : std_logic;
SIGNAL \sram|Mux9~1_combout\ : std_logic;
SIGNAL \sram|addresses[24][6]~q\ : std_logic;
SIGNAL \sram|addresses[20][6]~q\ : std_logic;
SIGNAL \sram|addresses[16][6]~q\ : std_logic;
SIGNAL \sram|Mux9~4_combout\ : std_logic;
SIGNAL \sram|Mux9~5_combout\ : std_logic;
SIGNAL \sram|addresses[26][6]~q\ : std_logic;
SIGNAL \sram|addresses[22][6]~q\ : std_logic;
SIGNAL \sram|addresses[18][6]~q\ : std_logic;
SIGNAL \sram|Mux9~2_combout\ : std_logic;
SIGNAL \sram|Mux9~3_combout\ : std_logic;
SIGNAL \sram|Mux9~6_combout\ : std_logic;
SIGNAL \sram|Mux9~9_combout\ : std_logic;
SIGNAL \sram|addresses[1][6]~q\ : std_logic;
SIGNAL \sram|addresses[0][6]~q\ : std_logic;
SIGNAL \sram|addresses[2][6]~q\ : std_logic;
SIGNAL \sram|Mux9~14_combout\ : std_logic;
SIGNAL \sram|Mux9~15_combout\ : std_logic;
SIGNAL \sram|addresses[9][6]~q\ : std_logic;
SIGNAL \sram|addresses[10][6]~q\ : std_logic;
SIGNAL \sram|addresses[8][6]~q\ : std_logic;
SIGNAL \sram|Mux9~12_combout\ : std_logic;
SIGNAL \sram|Mux9~13_combout\ : std_logic;
SIGNAL \sram|Mux9~16_combout\ : std_logic;
SIGNAL \sram|addresses[7][6]~q\ : std_logic;
SIGNAL \sram|addresses[4][6]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[4][6]~q\ : std_logic;
SIGNAL \sram|addresses[5][6]~q\ : std_logic;
SIGNAL \sram|Mux9~10_combout\ : std_logic;
SIGNAL \sram|Mux9~11_combout\ : std_logic;
SIGNAL \sram|Mux9~19_combout\ : std_logic;
SIGNAL \sram|Mux9~20_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \sram|addresses[8][5]~q\ : std_logic;
SIGNAL \sram|addresses[9][5]~q\ : std_logic;
SIGNAL \sram|Mux26~10_combout\ : std_logic;
SIGNAL \sram|addresses[11][5]~q\ : std_logic;
SIGNAL \sram|Mux26~11_combout\ : std_logic;
SIGNAL \sram|addresses[15][5]~q\ : std_logic;
SIGNAL \sram|Mux26~17_combout\ : std_logic;
SIGNAL \sram|Mux26~18_combout\ : std_logic;
SIGNAL \sram|addresses[1][5]~q\ : std_logic;
SIGNAL \sram|addresses[0][5]~q\ : std_logic;
SIGNAL \sram|Mux26~14_combout\ : std_logic;
SIGNAL \sram|Mux26~15_combout\ : std_logic;
SIGNAL \sram|addresses[7][5]~q\ : std_logic;
SIGNAL \sram|addresses[6][5]~q\ : std_logic;
SIGNAL \sram|addresses[4][5]~q\ : std_logic;
SIGNAL \sram|Mux26~12_combout\ : std_logic;
SIGNAL \sram|Mux26~13_combout\ : std_logic;
SIGNAL \sram|Mux26~16_combout\ : std_logic;
SIGNAL \sram|Mux26~19_combout\ : std_logic;
SIGNAL \sram|addresses[23][5]~q\ : std_logic;
SIGNAL \sram|addresses[19][5]~q\ : std_logic;
SIGNAL \sram|Mux26~7_combout\ : std_logic;
SIGNAL \sram|Mux26~8_combout\ : std_logic;
SIGNAL \sram|addresses[20][5]~q\ : std_logic;
SIGNAL \sram|Mux26~4_combout\ : std_logic;
SIGNAL \sram|Mux26~5_combout\ : std_logic;
SIGNAL \sram|Mux26~2_combout\ : std_logic;
SIGNAL \sram|Mux26~3_combout\ : std_logic;
SIGNAL \sram|Mux26~6_combout\ : std_logic;
SIGNAL \sram|Mux26~9_combout\ : std_logic;
SIGNAL \sram|Mux26~20_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \alu|Mux5~6_combout\ : std_logic;
SIGNAL \sram|addresses[13][3]~q\ : std_logic;
SIGNAL \sram|addresses[15][3]~q\ : std_logic;
SIGNAL \sram|Mux12~18_combout\ : std_logic;
SIGNAL \sram|addresses[4][3]~74_combout\ : std_logic;
SIGNAL \sram|addresses[4][3]~q\ : std_logic;
SIGNAL \sram|addresses[6][3]~73_combout\ : std_logic;
SIGNAL \sram|addresses[6][3]~q\ : std_logic;
SIGNAL \sram|Mux12~12_combout\ : std_logic;
SIGNAL \sram|addresses[7][3]~75_combout\ : std_logic;
SIGNAL \sram|addresses[7][3]~q\ : std_logic;
SIGNAL \sram|addresses[5][3]~72_combout\ : std_logic;
SIGNAL \sram|addresses[5][3]~q\ : std_logic;
SIGNAL \sram|Mux12~13_combout\ : std_logic;
SIGNAL \sram|addresses[2][3]~76_combout\ : std_logic;
SIGNAL \sram|addresses[2][3]~q\ : std_logic;
SIGNAL \sram|addresses[1][3]~77_combout\ : std_logic;
SIGNAL \sram|addresses[1][3]~q\ : std_logic;
SIGNAL \sram|addresses[0][3]~78_combout\ : std_logic;
SIGNAL \sram|addresses[0][3]~q\ : std_logic;
SIGNAL \sram|Mux12~14_combout\ : std_logic;
SIGNAL \sram|Mux12~15_combout\ : std_logic;
SIGNAL \sram|Mux12~16_combout\ : std_logic;
SIGNAL \sram|addresses[8][3]~q\ : std_logic;
SIGNAL \sram|addresses[9][3]~q\ : std_logic;
SIGNAL \sram|Mux12~10_combout\ : std_logic;
SIGNAL \sram|addresses[11][3]~q\ : std_logic;
SIGNAL \sram|Mux12~11_combout\ : std_logic;
SIGNAL \sram|Mux12~19_combout\ : std_logic;
SIGNAL \sram|addresses[27][3]~q\ : std_logic;
SIGNAL \sram|addresses[31][3]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[31][3]~q\ : std_logic;
SIGNAL \sram|addresses[19][3]~71_combout\ : std_logic;
SIGNAL \sram|addresses[19][3]~q\ : std_logic;
SIGNAL \sram|addresses[23][3]~70_combout\ : std_logic;
SIGNAL \sram|addresses[23][3]~q\ : std_logic;
SIGNAL \sram|Mux12~7_combout\ : std_logic;
SIGNAL \sram|Mux12~8_combout\ : std_logic;
SIGNAL \sram|addresses[30][3]~q\ : std_logic;
SIGNAL \sram|addresses[18][3]~65_combout\ : std_logic;
SIGNAL \sram|addresses[18][3]~q\ : std_logic;
SIGNAL \sram|Mux12~0_combout\ : std_logic;
SIGNAL \sram|Mux12~1_combout\ : std_logic;
SIGNAL \sram|addresses[20][3]~68_combout\ : std_logic;
SIGNAL \sram|addresses[20][3]~q\ : std_logic;
SIGNAL \sram|addresses[28][3]~q\ : std_logic;
SIGNAL \sram|addresses[24][3]~q\ : std_logic;
SIGNAL \sram|addresses[16][3]~69_combout\ : std_logic;
SIGNAL \sram|addresses[16][3]~q\ : std_logic;
SIGNAL \sram|Mux12~4_combout\ : std_logic;
SIGNAL \sram|Mux12~5_combout\ : std_logic;
SIGNAL \sram|addresses[25][3]~q\ : std_logic;
SIGNAL \sram|addresses[17][3]~67_combout\ : std_logic;
SIGNAL \sram|addresses[17][3]~q\ : std_logic;
SIGNAL \sram|addresses[21][3]~66_combout\ : std_logic;
SIGNAL \sram|addresses[21][3]~q\ : std_logic;
SIGNAL \sram|Mux12~2_combout\ : std_logic;
SIGNAL \sram|Mux12~3_combout\ : std_logic;
SIGNAL \sram|Mux12~6_combout\ : std_logic;
SIGNAL \sram|Mux12~9_combout\ : std_logic;
SIGNAL \sram|Mux12~20_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \alu|Mux4~0_combout\ : std_logic;
SIGNAL \alu|Mux4~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~11_combout\ : std_logic;
SIGNAL \sram|addresses[4][0]~25_combout\ : std_logic;
SIGNAL \sram|addresses[4][0]~q\ : std_logic;
SIGNAL \sram|addresses[5][0]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[5][0]~q\ : std_logic;
SIGNAL \sram|Mux15~10_combout\ : std_logic;
SIGNAL \sram|addresses[7][0]~q\ : std_logic;
SIGNAL \sram|Mux15~11_combout\ : std_logic;
SIGNAL \sram|addresses[9][0]~q\ : std_logic;
SIGNAL \sram|addresses[11][0]~q\ : std_logic;
SIGNAL \sram|addresses[10][0]~26_combout\ : std_logic;
SIGNAL \sram|addresses[10][0]~q\ : std_logic;
SIGNAL \sram|addresses[8][0]~27_combout\ : std_logic;
SIGNAL \sram|addresses[8][0]~q\ : std_logic;
SIGNAL \sram|Mux15~12_combout\ : std_logic;
SIGNAL \sram|Mux15~13_combout\ : std_logic;
SIGNAL \sram|addresses[3][0]~q\ : std_logic;
SIGNAL \sram|addresses[2][0]~28_combout\ : std_logic;
SIGNAL \sram|addresses[2][0]~q\ : std_logic;
SIGNAL \sram|addresses[0][0]~29_combout\ : std_logic;
SIGNAL \sram|addresses[0][0]~q\ : std_logic;
SIGNAL \sram|Mux15~14_combout\ : std_logic;
SIGNAL \sram|Mux15~15_combout\ : std_logic;
SIGNAL \sram|Mux15~16_combout\ : std_logic;
SIGNAL \sram|Mux15~19_combout\ : std_logic;
SIGNAL \sram|addresses[29][0]~q\ : std_logic;
SIGNAL \sram|addresses[17][0]~q\ : std_logic;
SIGNAL \sram|addresses[25][0]~q\ : std_logic;
SIGNAL \sram|Mux15~0_combout\ : std_logic;
SIGNAL \sram|addresses[21][0]~q\ : std_logic;
SIGNAL \sram|Mux15~1_combout\ : std_logic;
SIGNAL \sram|addresses[20][0]~21_combout\ : std_logic;
SIGNAL \sram|addresses[20][0]~q\ : std_logic;
SIGNAL \sram|addresses[16][0]~22_combout\ : std_logic;
SIGNAL \sram|addresses[16][0]~q\ : std_logic;
SIGNAL \sram|Mux15~4_combout\ : std_logic;
SIGNAL \sram|addresses[24][0]~20_combout\ : std_logic;
SIGNAL \sram|addresses[24][0]~q\ : std_logic;
SIGNAL \sram|Mux15~5_combout\ : std_logic;
SIGNAL \sram|addresses[30][0]~19_combout\ : std_logic;
SIGNAL \sram|addresses[30][0]~q\ : std_logic;
SIGNAL \sram|addresses[18][0]~18_combout\ : std_logic;
SIGNAL \sram|addresses[18][0]~q\ : std_logic;
SIGNAL \sram|addresses[22][0]~17_combout\ : std_logic;
SIGNAL \sram|addresses[22][0]~q\ : std_logic;
SIGNAL \sram|Mux15~2_combout\ : std_logic;
SIGNAL \sram|Mux15~3_combout\ : std_logic;
SIGNAL \sram|Mux15~6_combout\ : std_logic;
SIGNAL \sram|addresses[23][0]~q\ : std_logic;
SIGNAL \sram|addresses[27][0]~q\ : std_logic;
SIGNAL \sram|addresses[19][0]~q\ : std_logic;
SIGNAL \sram|Mux15~7_combout\ : std_logic;
SIGNAL \sram|Mux15~8_combout\ : std_logic;
SIGNAL \sram|Mux15~9_combout\ : std_logic;
SIGNAL \sram|Mux15~20_combout\ : std_logic;
SIGNAL \alu|Mux7~1_combout\ : std_logic;
SIGNAL \alu|Mux7~0_combout\ : std_logic;
SIGNAL \alu|Mux7~2_combout\ : std_logic;
SIGNAL \sram|addresses[27][1]~q\ : std_logic;
SIGNAL \sram|addresses[23][1]~q\ : std_logic;
SIGNAL \sram|addresses[19][1]~q\ : std_logic;
SIGNAL \sram|Mux14~7_combout\ : std_logic;
SIGNAL \sram|Mux14~8_combout\ : std_logic;
SIGNAL \sram|addresses[28][1]~39_combout\ : std_logic;
SIGNAL \sram|addresses[28][1]~q\ : std_logic;
SIGNAL \sram|addresses[16][1]~38_combout\ : std_logic;
SIGNAL \sram|addresses[16][1]~q\ : std_logic;
SIGNAL \sram|addresses[24][1]~37_combout\ : std_logic;
SIGNAL \sram|addresses[24][1]~q\ : std_logic;
SIGNAL \sram|Mux14~4_combout\ : std_logic;
SIGNAL \sram|Mux14~5_combout\ : std_logic;
SIGNAL \sram|addresses[25][1]~32_combout\ : std_logic;
SIGNAL \sram|addresses[25][1]~q\ : std_logic;
SIGNAL \sram|addresses[21][1]~33_combout\ : std_logic;
SIGNAL \sram|addresses[21][1]~q\ : std_logic;
SIGNAL \sram|addresses[17][1]~34_combout\ : std_logic;
SIGNAL \sram|addresses[17][1]~q\ : std_logic;
SIGNAL \sram|Mux14~2_combout\ : std_logic;
SIGNAL \sram|addresses[29][1]~35_combout\ : std_logic;
SIGNAL \sram|addresses[29][1]~q\ : std_logic;
SIGNAL \sram|Mux14~3_combout\ : std_logic;
SIGNAL \sram|Mux14~6_combout\ : std_logic;
SIGNAL \sram|addresses[30][1]~q\ : std_logic;
SIGNAL \sram|addresses[26][1]~q\ : std_logic;
SIGNAL \sram|addresses[18][1]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[18][1]~q\ : std_logic;
SIGNAL \sram|Mux14~0_combout\ : std_logic;
SIGNAL \sram|Mux14~1_combout\ : std_logic;
SIGNAL \sram|Mux14~9_combout\ : std_logic;
SIGNAL \sram|addresses[8][1]~41_combout\ : std_logic;
SIGNAL \sram|addresses[8][1]~q\ : std_logic;
SIGNAL \sram|addresses[9][1]~40_combout\ : std_logic;
SIGNAL \sram|addresses[9][1]~q\ : std_logic;
SIGNAL \sram|Mux14~10_combout\ : std_logic;
SIGNAL \sram|addresses[10][1]~q\ : std_logic;
SIGNAL \sram|addresses[11][1]~q\ : std_logic;
SIGNAL \sram|Mux14~11_combout\ : std_logic;
SIGNAL \sram|addresses[3][1]~q\ : std_logic;
SIGNAL \sram|addresses[2][1]~q\ : std_logic;
SIGNAL \sram|addresses[1][1]~44_combout\ : std_logic;
SIGNAL \sram|addresses[1][1]~q\ : std_logic;
SIGNAL \sram|addresses[0][1]~45_combout\ : std_logic;
SIGNAL \sram|addresses[0][1]~q\ : std_logic;
SIGNAL \sram|Mux14~14_combout\ : std_logic;
SIGNAL \sram|Mux14~15_combout\ : std_logic;
SIGNAL \sram|addresses[5][1]~42_combout\ : std_logic;
SIGNAL \sram|addresses[5][1]~q\ : std_logic;
SIGNAL \sram|addresses[7][1]~q\ : std_logic;
SIGNAL \sram|addresses[6][1]~q\ : std_logic;
SIGNAL \sram|addresses[4][1]~43_combout\ : std_logic;
SIGNAL \sram|addresses[4][1]~q\ : std_logic;
SIGNAL \sram|Mux14~12_combout\ : std_logic;
SIGNAL \sram|Mux14~13_combout\ : std_logic;
SIGNAL \sram|Mux14~16_combout\ : std_logic;
SIGNAL \sram|Mux14~19_combout\ : std_logic;
SIGNAL \sram|Mux14~20_combout\ : std_logic;
SIGNAL \sram|Mux30~2_combout\ : std_logic;
SIGNAL \sram|Mux30~3_combout\ : std_logic;
SIGNAL \sram|Mux30~6_combout\ : std_logic;
SIGNAL \sram|addresses[22][1]~q\ : std_logic;
SIGNAL \sram|Mux30~0_combout\ : std_logic;
SIGNAL \sram|Mux30~1_combout\ : std_logic;
SIGNAL \sram|Mux30~7_combout\ : std_logic;
SIGNAL \sram|addresses[31][1]~q\ : std_logic;
SIGNAL \sram|Mux30~8_combout\ : std_logic;
SIGNAL \sram|Mux30~9_combout\ : std_logic;
SIGNAL \sram|addresses[15][1]~q\ : std_logic;
SIGNAL \sram|addresses[13][1]~46_combout\ : std_logic;
SIGNAL \sram|addresses[13][1]~q\ : std_logic;
SIGNAL \sram|addresses[12][1]~47_combout\ : std_logic;
SIGNAL \sram|addresses[12][1]~q\ : std_logic;
SIGNAL \sram|Mux30~17_combout\ : std_logic;
SIGNAL \sram|Mux30~18_combout\ : std_logic;
SIGNAL \sram|Mux30~14_combout\ : std_logic;
SIGNAL \sram|Mux30~15_combout\ : std_logic;
SIGNAL \sram|Mux30~16_combout\ : std_logic;
SIGNAL \sram|Mux30~19_combout\ : std_logic;
SIGNAL \sram|Mux30~20_combout\ : std_logic;
SIGNAL \alu|Mux7~3_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~9_combout\ : std_logic;
SIGNAL \alu|Mux7~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~0_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~2_combout\ : std_logic;
SIGNAL \alu|Mux7~5_combout\ : std_logic;
SIGNAL \alu|Mux7~6_combout\ : std_logic;
SIGNAL \sram|addresses[31][0]~q\ : std_logic;
SIGNAL \sram|Mux31~7_combout\ : std_logic;
SIGNAL \sram|Mux31~8_combout\ : std_logic;
SIGNAL \sram|Mux31~0_combout\ : std_logic;
SIGNAL \sram|Mux31~1_combout\ : std_logic;
SIGNAL \sram|Mux31~4_combout\ : std_logic;
SIGNAL \sram|Mux31~5_combout\ : std_logic;
SIGNAL \sram|Mux31~2_combout\ : std_logic;
SIGNAL \sram|Mux31~3_combout\ : std_logic;
SIGNAL \sram|Mux31~6_combout\ : std_logic;
SIGNAL \sram|Mux31~9_combout\ : std_logic;
SIGNAL \sram|addresses[14][0]~30_combout\ : std_logic;
SIGNAL \sram|addresses[14][0]~q\ : std_logic;
SIGNAL \sram|addresses[12][0]~31_combout\ : std_logic;
SIGNAL \sram|addresses[12][0]~q\ : std_logic;
SIGNAL \sram|addresses[13][0]~q\ : std_logic;
SIGNAL \sram|Mux31~17_combout\ : std_logic;
SIGNAL \sram|Mux31~18_combout\ : std_logic;
SIGNAL \sram|Mux31~10_combout\ : std_logic;
SIGNAL \sram|Mux31~11_combout\ : std_logic;
SIGNAL \sram|Mux31~12_combout\ : std_logic;
SIGNAL \sram|Mux31~13_combout\ : std_logic;
SIGNAL \sram|addresses[1][0]~q\ : std_logic;
SIGNAL \sram|Mux31~14_combout\ : std_logic;
SIGNAL \sram|Mux31~15_combout\ : std_logic;
SIGNAL \sram|Mux31~16_combout\ : std_logic;
SIGNAL \sram|Mux31~19_combout\ : std_logic;
SIGNAL \sram|Mux31~20_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~5_combout\ : std_logic;
SIGNAL \alu|Mux5~13_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \alu|Mux5~8_combout\ : std_logic;
SIGNAL \alu|Mux5~9_combout\ : std_logic;
SIGNAL \alu|Mux4~2_combout\ : std_logic;
SIGNAL \alu|Mux4~3_combout\ : std_logic;
SIGNAL \alu|Mux4~4_combout\ : std_logic;
SIGNAL \sram|addresses[10][3]~q\ : std_logic;
SIGNAL \sram|Mux28~10_combout\ : std_logic;
SIGNAL \sram|Mux28~11_combout\ : std_logic;
SIGNAL \sram|Mux28~12_combout\ : std_logic;
SIGNAL \sram|Mux28~13_combout\ : std_logic;
SIGNAL \sram|addresses[3][3]~79_combout\ : std_logic;
SIGNAL \sram|addresses[3][3]~q\ : std_logic;
SIGNAL \sram|Mux28~14_combout\ : std_logic;
SIGNAL \sram|Mux28~15_combout\ : std_logic;
SIGNAL \sram|Mux28~16_combout\ : std_logic;
SIGNAL \sram|addresses[14][3]~q\ : std_logic;
SIGNAL \sram|addresses[12][3]~q\ : std_logic;
SIGNAL \sram|Mux28~17_combout\ : std_logic;
SIGNAL \sram|Mux28~18_combout\ : std_logic;
SIGNAL \sram|Mux28~19_combout\ : std_logic;
SIGNAL \sram|Mux28~7_combout\ : std_logic;
SIGNAL \sram|Mux28~8_combout\ : std_logic;
SIGNAL \sram|addresses[22][3]~64_combout\ : std_logic;
SIGNAL \sram|addresses[22][3]~q\ : std_logic;
SIGNAL \sram|Mux28~0_combout\ : std_logic;
SIGNAL \sram|Mux28~1_combout\ : std_logic;
SIGNAL \sram|Mux28~4_combout\ : std_logic;
SIGNAL \sram|Mux28~5_combout\ : std_logic;
SIGNAL \sram|addresses[29][3]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[29][3]~q\ : std_logic;
SIGNAL \sram|Mux28~2_combout\ : std_logic;
SIGNAL \sram|Mux28~3_combout\ : std_logic;
SIGNAL \sram|Mux28~6_combout\ : std_logic;
SIGNAL \sram|Mux28~9_combout\ : std_logic;
SIGNAL \sram|Mux28~20_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \alu|Mux1~0_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \alu|Mux1~1_combout\ : std_logic;
SIGNAL \alu|Mux1~3_combout\ : std_logic;
SIGNAL \sram|addresses[6][6]~feeder_combout\ : std_logic;
SIGNAL \sram|addresses[6][6]~q\ : std_logic;
SIGNAL \sram|Mux25~10_combout\ : std_logic;
SIGNAL \sram|Mux25~11_combout\ : std_logic;
SIGNAL \sram|addresses[11][6]~q\ : std_logic;
SIGNAL \sram|Mux25~12_combout\ : std_logic;
SIGNAL \sram|Mux25~13_combout\ : std_logic;
SIGNAL \sram|Mux25~16_combout\ : std_logic;
SIGNAL \sram|Mux25~19_combout\ : std_logic;
SIGNAL \sram|addresses[25][6]~q\ : std_logic;
SIGNAL \sram|Mux25~0_combout\ : std_logic;
SIGNAL \sram|Mux25~1_combout\ : std_logic;
SIGNAL \sram|addresses[31][6]~q\ : std_logic;
SIGNAL \sram|addresses[23][6]~q\ : std_logic;
SIGNAL \sram|Mux25~8_combout\ : std_logic;
SIGNAL \sram|Mux25~2_combout\ : std_logic;
SIGNAL \sram|Mux25~3_combout\ : std_logic;
SIGNAL \sram|Mux25~4_combout\ : std_logic;
SIGNAL \sram|Mux25~5_combout\ : std_logic;
SIGNAL \sram|Mux25~6_combout\ : std_logic;
SIGNAL \sram|Mux25~9_combout\ : std_logic;
SIGNAL \sram|Mux25~20_combout\ : std_logic;
SIGNAL \alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\ : std_logic;
SIGNAL \alu|Mux0~0_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \alu|Mux0~3_combout\ : std_logic;
SIGNAL \alu|Mux0~4_combout\ : std_logic;
SIGNAL \sram|addresses[13][7]~q\ : std_logic;
SIGNAL \sram|Mux24~17_combout\ : std_logic;
SIGNAL \sram|Mux24~18_combout\ : std_logic;
SIGNAL \sram|Mux24~14_combout\ : std_logic;
SIGNAL \sram|Mux24~15_combout\ : std_logic;
SIGNAL \sram|addresses[5][7]~q\ : std_logic;
SIGNAL \sram|Mux24~12_combout\ : std_logic;
SIGNAL \sram|Mux24~13_combout\ : std_logic;
SIGNAL \sram|Mux24~16_combout\ : std_logic;
SIGNAL \sram|Mux24~19_combout\ : std_logic;
SIGNAL \sram|addresses[31][7]~q\ : std_logic;
SIGNAL \sram|Mux24~7_combout\ : std_logic;
SIGNAL \sram|Mux24~8_combout\ : std_logic;
SIGNAL \sram|Mux24~2_combout\ : std_logic;
SIGNAL \sram|Mux24~3_combout\ : std_logic;
SIGNAL \sram|addresses[28][7]~q\ : std_logic;
SIGNAL \sram|Mux24~4_combout\ : std_logic;
SIGNAL \sram|Mux24~5_combout\ : std_logic;
SIGNAL \sram|Mux24~6_combout\ : std_logic;
SIGNAL \sram|Mux24~9_combout\ : std_logic;
SIGNAL \sram|Mux24~20_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~3_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~4_combout\ : std_logic;
SIGNAL \alu|Mux3~0_combout\ : std_logic;
SIGNAL \alu|Mux3~1_combout\ : std_logic;
SIGNAL \alu|Mux3~2_combout\ : std_logic;
SIGNAL \alu|Mux3~4_combout\ : std_logic;
SIGNAL \sram|addresses[29][4]~q\ : std_logic;
SIGNAL \sram|addresses[17][4]~q\ : std_logic;
SIGNAL \sram|addresses[25][4]~q\ : std_logic;
SIGNAL \sram|Mux11~0_combout\ : std_logic;
SIGNAL \sram|Mux11~1_combout\ : std_logic;
SIGNAL \sram|addresses[23][4]~q\ : std_logic;
SIGNAL \sram|Mux11~7_combout\ : std_logic;
SIGNAL \sram|Mux11~8_combout\ : std_logic;
SIGNAL \sram|Mux11~2_combout\ : std_logic;
SIGNAL \sram|Mux11~3_combout\ : std_logic;
SIGNAL \sram|Mux11~4_combout\ : std_logic;
SIGNAL \sram|Mux11~5_combout\ : std_logic;
SIGNAL \sram|Mux11~6_combout\ : std_logic;
SIGNAL \sram|Mux11~9_combout\ : std_logic;
SIGNAL \sram|Mux11~10_combout\ : std_logic;
SIGNAL \sram|Mux11~11_combout\ : std_logic;
SIGNAL \sram|Mux11~15_combout\ : std_logic;
SIGNAL \sram|Mux11~12_combout\ : std_logic;
SIGNAL \sram|Mux11~13_combout\ : std_logic;
SIGNAL \sram|Mux11~16_combout\ : std_logic;
SIGNAL \sram|Mux11~17_combout\ : std_logic;
SIGNAL \sram|Mux11~18_combout\ : std_logic;
SIGNAL \sram|Mux11~19_combout\ : std_logic;
SIGNAL \sram|Mux11~20_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \hexComp7|Mux6~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux6~1_combout\ : std_logic;
SIGNAL \HEX7[0]$latch~combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux5~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux5~1_combout\ : std_logic;
SIGNAL \HEX7[1]$latch~combout\ : std_logic;
SIGNAL \hexComp7|Mux4~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux4~1_combout\ : std_logic;
SIGNAL \HEX7[2]$latch~combout\ : std_logic;
SIGNAL \hexComp7|Mux3~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux3~1_combout\ : std_logic;
SIGNAL \HEX7[3]$latch~combout\ : std_logic;
SIGNAL \hexComp7|Mux2~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux2~1_combout\ : std_logic;
SIGNAL \HEX7[4]$latch~combout\ : std_logic;
SIGNAL \hexComp7|Mux1~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux1~1_combout\ : std_logic;
SIGNAL \HEX7[5]$latch~combout\ : std_logic;
SIGNAL \hexComp7|Mux0~0_combout\ : std_logic;
SIGNAL \hexComp7|Mux0~1_combout\ : std_logic;
SIGNAL \HEX7[6]$latch~combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector26~1_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \hexComp6|Mux6~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux6~1_combout\ : std_logic;
SIGNAL \HEX6[0]$latch~combout\ : std_logic;
SIGNAL \hexComp6|Mux5~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux5~1_combout\ : std_logic;
SIGNAL \HEX6[1]$latch~combout\ : std_logic;
SIGNAL \hexComp6|Mux4~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux4~1_combout\ : std_logic;
SIGNAL \HEX6[2]$latch~combout\ : std_logic;
SIGNAL \hexComp6|Mux3~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux3~1_combout\ : std_logic;
SIGNAL \HEX6[3]$latch~combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \hexComp6|Mux2~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux2~1_combout\ : std_logic;
SIGNAL \HEX6[4]$latch~combout\ : std_logic;
SIGNAL \hexComp6|Mux1~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux1~1_combout\ : std_logic;
SIGNAL \HEX6[5]$latch~combout\ : std_logic;
SIGNAL \hexComp6|Mux0~0_combout\ : std_logic;
SIGNAL \hexComp6|Mux0~1_combout\ : std_logic;
SIGNAL \HEX6[6]$latch~combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux6~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux6~1_combout\ : std_logic;
SIGNAL \HEX5[0]$latch~combout\ : std_logic;
SIGNAL \hexComp5|Mux5~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux5~1_combout\ : std_logic;
SIGNAL \HEX5[1]$latch~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux4~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux4~1_combout\ : std_logic;
SIGNAL \HEX5[2]$latch~combout\ : std_logic;
SIGNAL \hexComp5|Mux3~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux3~1_combout\ : std_logic;
SIGNAL \HEX5[3]$latch~combout\ : std_logic;
SIGNAL \hexComp5|Mux2~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux2~1_combout\ : std_logic;
SIGNAL \HEX5[4]$latch~combout\ : std_logic;
SIGNAL \hexComp5|Mux1~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux1~1_combout\ : std_logic;
SIGNAL \HEX5[5]$latch~combout\ : std_logic;
SIGNAL \hexComp5|Mux0~0_combout\ : std_logic;
SIGNAL \hexComp5|Mux0~1_combout\ : std_logic;
SIGNAL \HEX5[6]$latch~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux6~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux6~1_combout\ : std_logic;
SIGNAL \HEX4[0]$latch~combout\ : std_logic;
SIGNAL \hexComp4|Mux5~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux5~1_combout\ : std_logic;
SIGNAL \HEX4[1]$latch~combout\ : std_logic;
SIGNAL \hexComp4|Mux4~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux4~1_combout\ : std_logic;
SIGNAL \HEX4[2]$latch~combout\ : std_logic;
SIGNAL \hexComp4|Mux3~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux3~1_combout\ : std_logic;
SIGNAL \HEX4[3]$latch~combout\ : std_logic;
SIGNAL \hexComp4|Mux2~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux2~1_combout\ : std_logic;
SIGNAL \HEX4[4]$latch~combout\ : std_logic;
SIGNAL \hexComp4|Mux1~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux1~1_combout\ : std_logic;
SIGNAL \HEX4[5]$latch~combout\ : std_logic;
SIGNAL \hexComp4|Mux0~0_combout\ : std_logic;
SIGNAL \hexComp4|Mux0~1_combout\ : std_logic;
SIGNAL \HEX4[6]$latch~combout\ : std_logic;
SIGNAL \hexIn2~0_combout\ : std_logic;
SIGNAL \alu|Mux0~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\ : std_logic;
SIGNAL \alu|Mux2~0_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \alu|Mux2~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux6~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux6~1_combout\ : std_logic;
SIGNAL \HEX3[0]$latch~combout\ : std_logic;
SIGNAL \hexComp3|Mux5~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux5~1_combout\ : std_logic;
SIGNAL \HEX3[1]$latch~combout\ : std_logic;
SIGNAL \hexComp3|Mux4~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux4~1_combout\ : std_logic;
SIGNAL \HEX3[2]$latch~combout\ : std_logic;
SIGNAL \hexComp3|Mux3~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux3~1_combout\ : std_logic;
SIGNAL \HEX3[3]$latch~combout\ : std_logic;
SIGNAL \hexComp3|Mux2~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux2~1_combout\ : std_logic;
SIGNAL \HEX3[4]$latch~combout\ : std_logic;
SIGNAL \hexComp3|Mux1~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux1~1_combout\ : std_logic;
SIGNAL \HEX3[5]$latch~combout\ : std_logic;
SIGNAL \hexComp3|Mux0~0_combout\ : std_logic;
SIGNAL \hexComp3|Mux0~1_combout\ : std_logic;
SIGNAL \HEX3[6]$latch~combout\ : std_logic;
SIGNAL \alu|Mux6~3_combout\ : std_logic;
SIGNAL \alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\ : std_logic;
SIGNAL \alu|Mux6~0_combout\ : std_logic;
SIGNAL \alu|Mux6~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~10_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~12_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~6_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~13_combout\ : std_logic;
SIGNAL \alu|Mux6~2_combout\ : std_logic;
SIGNAL \alu|Mux6~4_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \hexComp2|Mux6~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux6~1_combout\ : std_logic;
SIGNAL \HEX2[0]$latch~combout\ : std_logic;
SIGNAL \hexComp2|Mux5~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux5~1_combout\ : std_logic;
SIGNAL \HEX2[1]$latch~combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \hexComp2|Mux4~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux4~1_combout\ : std_logic;
SIGNAL \HEX2[2]$latch~combout\ : std_logic;
SIGNAL \hexComp2|Mux3~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux3~1_combout\ : std_logic;
SIGNAL \HEX2[3]$latch~combout\ : std_logic;
SIGNAL \hexComp2|Mux2~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux2~1_combout\ : std_logic;
SIGNAL \HEX2[4]$latch~combout\ : std_logic;
SIGNAL \hexComp2|Mux1~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux1~1_combout\ : std_logic;
SIGNAL \HEX2[5]$latch~combout\ : std_logic;
SIGNAL \hexComp2|Mux0~0_combout\ : std_logic;
SIGNAL \hexComp2|Mux0~1_combout\ : std_logic;
SIGNAL \HEX2[6]$latch~combout\ : std_logic;
SIGNAL \HEX0[6]$latch~combout\ : std_logic;
SIGNAL sramDataWrite : std_logic_vector(15 DOWNTO 0);
SIGNAL sData2 : std_logic_vector(7 DOWNTO 0);
SIGNAL sData1 : std_logic_vector(7 DOWNTO 0);
SIGNAL hexIn7 : std_logic_vector(3 DOWNTO 0);
SIGNAL hexIn6 : std_logic_vector(3 DOWNTO 0);
SIGNAL hexIn5 : std_logic_vector(3 DOWNTO 0);
SIGNAL hexIn4 : std_logic_vector(3 DOWNTO 0);
SIGNAL hexIn3 : std_logic_vector(3 DOWNTO 0);
SIGNAL hexIn2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \sram|dataReadTwo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sram|dataReadOne\ : std_logic_vector(15 DOWNTO 0);

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

\hexIn0[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hexIn0[0]~0_combout\);

\sramDataWrite[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sramDataWrite[7]~0_combout\);

\nextState.EXECUTE~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nextState.EXECUTE~0_combout\);

-- Location: LCCOMB_X111_Y37_N6
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\currState.MEM_WRITE~q\ & ((\currState.EXECUTE~q\ & (sData1(0))) # (!\currState.EXECUTE~q\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(0),
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.EXECUTE~q\,
	datad => \SW[5]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X111_Y37_N20
\Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\Selector24~0_combout\) # ((\currState.MEM_WRITE~q\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datab => \SW[10]~input_o\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X111_Y35_N8
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\currState.MEM_WRITE~q\ & ((\currState.EXECUTE~q\ & ((sData1(1)))) # (!\currState.EXECUTE~q\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \currState.MEM_WRITE~q\,
	datac => sData1(1),
	datad => \currState.EXECUTE~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X110_Y37_N6
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\currState.EXECUTE~q\ & sData2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.EXECUTE~q\,
	datad => sData2(5),
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X111_Y34_N28
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\currState.EXECUTE~q\ & sData2(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.EXECUTE~q\,
	datad => sData2(7),
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X112_Y36_N18
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\currState.EXECUTE~q\ & ((sData2(0)))) # (!\currState.EXECUTE~q\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.EXECUTE~q\,
	datac => \SW[0]~input_o\,
	datad => sData2(0),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X113_Y36_N20
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\currState.EXECUTE~q\ & ((sData2(1)))) # (!\currState.EXECUTE~q\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \currState.EXECUTE~q\,
	datad => sData2(1),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X113_Y34_N12
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\currState.EXECUTE~q\ & (sData2(2))) # (!\currState.EXECUTE~q\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datac => sData2(2),
	datad => \SW[2]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X109_Y36_N22
\alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ = sData1(4) $ (sData2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sData1(4),
	datad => sData2(4),
	combout => \alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X109_Y36_N28
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\hexIn2~0_combout\ & ((\SW[17]~input_o\ & ((\alu|Mux3~2_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~3_combout\,
	datab => \SW[17]~input_o\,
	datac => \hexIn2~0_combout\,
	datad => \alu|Mux3~2_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X112_Y39_N10
\alu|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux2~2_combout\ = \SW[16]~input_o\ $ (((sData2(5) & ((\SW[15]~input_o\) # (sData1(5)))) # (!sData2(5) & (\SW[15]~input_o\ & sData1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(5),
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => sData1(5),
	combout => \alu|Mux2~2_combout\);

-- Location: LCCOMB_X110_Y36_N26
\alu|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~7_combout\ = (!sData2(1) & ((sData2(0) & (sData1(7))) # (!sData2(0) & ((sData1(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datab => sData2(0),
	datac => sData1(7),
	datad => sData1(6),
	combout => \alu|ShiftRight0~7_combout\);

-- Location: LCCOMB_X110_Y37_N10
\alu|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux1~2_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((sData2(6)) # (sData1(6)))) # (!\SW[15]~input_o\ & (sData2(6) & sData1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => sData2(6),
	datad => sData1(6),
	combout => \alu|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y36_N22
\alu|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~8_combout\ = (sData1(7) & (!sData2(0) & !sData2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(7),
	datab => sData2(0),
	datac => sData2(1),
	combout => \alu|ShiftRight0~8_combout\);

-- Location: LCCOMB_X110_Y36_N24
\alu|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~4_combout\ = \SW[16]~input_o\ $ (((sData1(2) & ((sData2(2)) # (\SW[15]~input_o\))) # (!sData1(2) & (sData2(2) & \SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => sData1(2),
	datac => sData2(2),
	datad => \SW[15]~input_o\,
	combout => \alu|Mux5~4_combout\);

-- Location: LCCOMB_X110_Y37_N28
\alu|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~5_combout\ = (\SW[16]~input_o\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \alu|Mux5~5_combout\);

-- Location: LCCOMB_X110_Y38_N8
\alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\ = sData1(2) $ (sData2(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData1(2),
	datad => sData2(2),
	combout => \alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X110_Y38_N26
\alu|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~7_combout\ = (\alu|Mux5~5_combout\ & (\alu|Mux5~6_combout\)) # (!\alu|Mux5~5_combout\ & (\alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\alu|Mux5~6_combout\ & \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~5_combout\,
	datab => \alu|Mux5~6_combout\,
	datac => \alu|subtracter|nAdders:2:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|Mux5~7_combout\);

-- Location: LCCOMB_X110_Y36_N4
\alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\ = sData1(2) $ (sData2(2) $ (\alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData1(2),
	datac => sData2(2),
	datad => \alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\,
	combout => \alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X110_Y36_N28
\alu|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~10_combout\ = (\alu|Mux5~13_combout\ & ((\alu|Mux5~9_combout\ & (\alu|ShiftRight0~7_combout\)) # (!\alu|Mux5~9_combout\ & ((!\alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\))))) # (!\alu|Mux5~13_combout\ & 
-- (((!\alu|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~7_combout\,
	datab => \alu|Mux5~13_combout\,
	datac => \alu|subtracter|nAdders:2:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \alu|Mux5~9_combout\,
	combout => \alu|Mux5~10_combout\);

-- Location: LCCOMB_X110_Y36_N2
\alu|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~11_combout\ = (\alu|Mux5~8_combout\ & (((\alu|Mux5~10_combout\)))) # (!\alu|Mux5~8_combout\ & ((\alu|Mux5~10_combout\ & ((\alu|ShiftRight0~9_combout\))) # (!\alu|Mux5~10_combout\ & (\alu|ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~8_combout\,
	datab => \alu|ShiftRight0~1_combout\,
	datac => \alu|ShiftRight0~9_combout\,
	datad => \alu|Mux5~10_combout\,
	combout => \alu|Mux5~11_combout\);

-- Location: LCCOMB_X110_Y36_N12
\alu|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~12_combout\ = (\alu|Mux5~5_combout\ & ((\alu|Mux5~7_combout\ & ((\alu|Mux5~11_combout\))) # (!\alu|Mux5~7_combout\ & (\alu|Mux5~4_combout\)))) # (!\alu|Mux5~5_combout\ & (((\alu|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~5_combout\,
	datab => \alu|Mux5~4_combout\,
	datac => \alu|Mux5~7_combout\,
	datad => \alu|Mux5~11_combout\,
	combout => \alu|Mux5~12_combout\);

-- Location: LCCOMB_X110_Y37_N14
\alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ = \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ & ((sData2(2)) # (sData1(2)))) # 
-- (!\alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ & (sData2(2) & sData1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	datab => \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\,
	datac => sData2(2),
	datad => sData1(2),
	combout => \alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: FF_X113_Y42_N13
\sram|dataReadOne[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux13~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(2));

-- Location: FF_X114_Y42_N17
\sram|dataReadTwo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux29~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(2));

-- Location: FF_X113_Y39_N29
\sram|addresses[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][4]~q\);

-- Location: FF_X114_Y42_N7
\sram|addresses[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[28][4]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][4]~q\);

-- Location: FF_X114_Y37_N31
\sram|addresses[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[7][4]~3_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][4]~q\);

-- Location: LCCOMB_X114_Y34_N12
\sram|Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\sram|addresses[2][4]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (!\sram|addresses[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[0][4]~q\,
	datad => \sram|addresses[2][4]~q\,
	combout => \sram|Mux11~14_combout\);

-- Location: FF_X113_Y39_N23
\sram|addresses[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[14][4]~12_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][4]~q\);

-- Location: FF_X112_Y39_N7
\sram|addresses[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][5]~q\);

-- Location: LCCOMB_X113_Y40_N6
\sram|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\sram|addresses[23][5]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\sram|addresses[19][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[19][5]~q\,
	datad => \sram|addresses[23][5]~q\,
	combout => \sram|Mux10~7_combout\);

-- Location: FF_X113_Y35_N31
\sram|addresses[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][5]~q\);

-- Location: LCCOMB_X114_Y35_N12
\sram|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~10_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\sram|addresses[9][5]~q\))) # (!\SW[5]~input_o\ & (\sram|addresses[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[8][5]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[9][5]~q\,
	datad => \SW[5]~input_o\,
	combout => \sram|Mux10~10_combout\);

-- Location: LCCOMB_X113_Y38_N22
\sram|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux10~10_combout\ & ((\sram|addresses[11][5]~q\))) # (!\sram|Mux10~10_combout\ & (\sram|addresses[10][5]~q\)))) # (!\SW[6]~input_o\ & (((\sram|Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[10][5]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[11][5]~q\,
	datad => \sram|Mux10~10_combout\,
	combout => \sram|Mux10~11_combout\);

-- Location: FF_X113_Y36_N15
\sram|addresses[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][5]~q\);

-- Location: LCCOMB_X113_Y38_N28
\sram|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\sram|addresses[6][5]~q\))) # (!\SW[6]~input_o\ & (\sram|addresses[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[4][5]~q\,
	datad => \sram|addresses[6][5]~q\,
	combout => \sram|Mux10~12_combout\);

-- Location: LCCOMB_X113_Y38_N2
\sram|Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux10~12_combout\ & ((\sram|addresses[7][5]~q\))) # (!\sram|Mux10~12_combout\ & (\sram|addresses[5][5]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|addresses[5][5]~q\,
	datac => \sram|addresses[7][5]~q\,
	datad => \sram|Mux10~12_combout\,
	combout => \sram|Mux10~13_combout\);

-- Location: LCCOMB_X112_Y37_N0
\sram|Mux10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\sram|addresses[1][5]~q\))) # (!\SW[5]~input_o\ & (\sram|addresses[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[0][5]~q\,
	datad => \sram|addresses[1][5]~q\,
	combout => \sram|Mux10~14_combout\);

-- Location: FF_X112_Y39_N9
\sram|addresses[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][6]~q\);

-- Location: FF_X111_Y42_N1
\sram|addresses[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[28][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][6]~q\);

-- Location: FF_X113_Y40_N17
\sram|addresses[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][6]~q\);

-- Location: FF_X113_Y40_N3
\sram|addresses[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][6]~q\);

-- Location: LCCOMB_X112_Y40_N18
\sram|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~7_combout\ = (\SW[7]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\sram|addresses[27][6]~q\))) # (!\SW[8]~input_o\ & (\sram|addresses[19][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[19][6]~q\,
	datac => \SW[8]~input_o\,
	datad => \sram|addresses[27][6]~q\,
	combout => \sram|Mux9~7_combout\);

-- Location: LCCOMB_X112_Y40_N16
\sram|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~8_combout\ = (\SW[7]~input_o\ & ((\sram|Mux9~7_combout\ & ((\sram|addresses[31][6]~q\))) # (!\sram|Mux9~7_combout\ & (\sram|addresses[23][6]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[23][6]~q\,
	datac => \sram|addresses[31][6]~q\,
	datad => \sram|Mux9~7_combout\,
	combout => \sram|Mux9~8_combout\);

-- Location: FF_X114_Y36_N31
\sram|addresses[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[3][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][6]~q\);

-- Location: FF_X113_Y39_N19
\sram|addresses[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][6]~q\);

-- Location: FF_X112_Y38_N19
\sram|addresses[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][6]~q\);

-- Location: FF_X111_Y38_N21
\sram|addresses[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][6]~q\);

-- Location: LCCOMB_X112_Y38_N18
\sram|Mux9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~17_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\sram|addresses[13][6]~q\)) # (!\SW[5]~input_o\ & ((\sram|addresses[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[13][6]~q\,
	datad => \sram|addresses[12][6]~q\,
	combout => \sram|Mux9~17_combout\);

-- Location: FF_X111_Y38_N31
\sram|addresses[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][6]~q\);

-- Location: LCCOMB_X111_Y38_N30
\sram|Mux9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~18_combout\ = (\SW[6]~input_o\ & ((\sram|Mux9~17_combout\ & (\sram|addresses[15][6]~q\)) # (!\sram|Mux9~17_combout\ & ((\sram|addresses[14][6]~q\))))) # (!\SW[6]~input_o\ & (\sram|Mux9~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux9~17_combout\,
	datac => \sram|addresses[15][6]~q\,
	datad => \sram|addresses[14][6]~q\,
	combout => \sram|Mux9~18_combout\);

-- Location: FF_X111_Y40_N25
\sram|addresses[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][7]~q\);

-- Location: FF_X111_Y40_N31
\sram|addresses[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][7]~q\);

-- Location: LCCOMB_X111_Y40_N30
\sram|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|addresses[26][7]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\sram|addresses[18][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[18][7]~q\,
	datad => \sram|addresses[26][7]~q\,
	combout => \sram|Mux8~0_combout\);

-- Location: FF_X111_Y40_N11
\sram|addresses[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[26][0]~16_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][0]~q\);

-- Location: FF_X114_Y42_N25
\sram|addresses[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[28][0]~23_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][0]~q\);

-- Location: FF_X114_Y40_N1
\sram|addresses[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[6][0]~24_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][0]~q\);

-- Location: LCCOMB_X112_Y38_N4
\sram|Mux15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~17_combout\ = (\SW[5]~input_o\ & ((\sram|addresses[13][0]~q\) # ((\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (((!\sram|addresses[12][0]~q\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[13][0]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[12][0]~q\,
	datad => \SW[6]~input_o\,
	combout => \sram|Mux15~17_combout\);

-- Location: FF_X112_Y35_N17
\sram|addresses[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][0]~q\);

-- Location: LCCOMB_X112_Y35_N16
\sram|Mux15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~18_combout\ = (\SW[6]~input_o\ & ((\sram|Mux15~17_combout\ & ((\sram|addresses[15][0]~q\))) # (!\sram|Mux15~17_combout\ & (!\sram|addresses[14][0]~q\)))) # (!\SW[6]~input_o\ & (((\sram|Mux15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[14][0]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[15][0]~q\,
	datad => \sram|Mux15~17_combout\,
	combout => \sram|Mux15~18_combout\);

-- Location: FF_X113_Y42_N25
\sram|addresses[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[20][1]~36_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][1]~q\);

-- Location: FF_X112_Y35_N23
\sram|addresses[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][1]~q\);

-- Location: LCCOMB_X112_Y35_N28
\sram|Mux14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~17_combout\ = (\SW[5]~input_o\ & (((\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\sram|addresses[14][1]~q\)) # (!\SW[6]~input_o\ & ((!\sram|addresses[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[14][1]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[12][1]~q\,
	datad => \SW[6]~input_o\,
	combout => \sram|Mux14~17_combout\);

-- Location: LCCOMB_X111_Y35_N0
\sram|Mux14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~18_combout\ = (\SW[5]~input_o\ & ((\sram|Mux14~17_combout\ & (\sram|addresses[15][1]~q\)) # (!\sram|Mux14~17_combout\ & ((!\sram|addresses[13][1]~q\))))) # (!\SW[5]~input_o\ & (((\sram|Mux14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[15][1]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[13][1]~q\,
	datad => \sram|Mux14~17_combout\,
	combout => \sram|Mux14~18_combout\);

-- Location: FF_X113_Y39_N31
\sram|addresses[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][2]~q\);

-- Location: FF_X111_Y39_N25
\sram|addresses[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[25][2]~48_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][2]~q\);

-- Location: FF_X112_Y41_N15
\sram|addresses[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[17][2]~49_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][2]~q\);

-- Location: LCCOMB_X112_Y41_N12
\sram|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~0_combout\ = (\SW[7]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((!\sram|addresses[25][2]~q\))) # (!\SW[8]~input_o\ & (!\sram|addresses[17][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[17][2]~q\,
	datac => \SW[8]~input_o\,
	datad => \sram|addresses[25][2]~q\,
	combout => \sram|Mux13~0_combout\);

-- Location: FF_X112_Y41_N11
\sram|addresses[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[29][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][2]~q\);

-- Location: LCCOMB_X112_Y41_N16
\sram|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux13~0_combout\ & (\sram|addresses[29][2]~q\)) # (!\sram|Mux13~0_combout\ & ((\sram|addresses[21][2]~q\))))) # (!\SW[7]~input_o\ & (((\sram|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[29][2]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[21][2]~q\,
	datad => \sram|Mux13~0_combout\,
	combout => \sram|Mux13~1_combout\);

-- Location: FF_X114_Y39_N21
\sram|addresses[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[26][2]~50_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][2]~q\);

-- Location: FF_X109_Y42_N1
\sram|addresses[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[22][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][2]~q\);

-- Location: FF_X109_Y42_N23
\sram|addresses[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[18][2]~51_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][2]~q\);

-- Location: LCCOMB_X109_Y42_N20
\sram|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\sram|addresses[22][2]~q\))) # (!\SW[7]~input_o\ & (!\sram|addresses[18][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[18][2]~q\,
	datad => \sram|addresses[22][2]~q\,
	combout => \sram|Mux13~2_combout\);

-- Location: FF_X112_Y39_N23
\sram|addresses[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][2]~q\);

-- Location: LCCOMB_X113_Y42_N30
\sram|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux13~2_combout\ & (\sram|addresses[30][2]~q\)) # (!\sram|Mux13~2_combout\ & ((!\sram|addresses[26][2]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[30][2]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[26][2]~q\,
	datad => \sram|Mux13~2_combout\,
	combout => \sram|Mux13~3_combout\);

-- Location: FF_X112_Y42_N21
\sram|addresses[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[24][2]~52_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][2]~q\);

-- Location: FF_X112_Y42_N31
\sram|addresses[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][2]~q\);

-- Location: FF_X111_Y42_N31
\sram|addresses[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[16][2]~53_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][2]~q\);

-- Location: LCCOMB_X112_Y42_N30
\sram|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~4_combout\ = (\SW[7]~input_o\ & (((\sram|addresses[20][2]~q\) # (\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & (!\sram|addresses[16][2]~q\ & ((!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[16][2]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[20][2]~q\,
	datad => \SW[8]~input_o\,
	combout => \sram|Mux13~4_combout\);

-- Location: FF_X114_Y42_N1
\sram|addresses[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[28][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][2]~q\);

-- Location: LCCOMB_X113_Y42_N16
\sram|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~5_combout\ = (\SW[8]~input_o\ & ((\sram|Mux13~4_combout\ & ((\sram|addresses[28][2]~q\))) # (!\sram|Mux13~4_combout\ & (!\sram|addresses[24][2]~q\)))) # (!\SW[8]~input_o\ & (((\sram|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[24][2]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[28][2]~q\,
	datad => \sram|Mux13~4_combout\,
	combout => \sram|Mux13~5_combout\);

-- Location: LCCOMB_X113_Y42_N22
\sram|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~6_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|Mux13~3_combout\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((\sram|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux13~3_combout\,
	datad => \sram|Mux13~5_combout\,
	combout => \sram|Mux13~6_combout\);

-- Location: FF_X112_Y40_N21
\sram|addresses[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][2]~q\);

-- Location: FF_X113_Y40_N27
\sram|addresses[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[27][2]~54_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][2]~q\);

-- Location: FF_X113_Y40_N29
\sram|addresses[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[19][2]~55_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][2]~q\);

-- Location: LCCOMB_X113_Y40_N18
\sram|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~7_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (!\sram|addresses[27][2]~q\)) # (!\SW[8]~input_o\ & ((!\sram|addresses[19][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[27][2]~q\,
	datad => \sram|addresses[19][2]~q\,
	combout => \sram|Mux13~7_combout\);

-- Location: FF_X112_Y40_N27
\sram|addresses[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][2]~q\);

-- Location: LCCOMB_X112_Y40_N26
\sram|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~8_combout\ = (\SW[7]~input_o\ & ((\sram|Mux13~7_combout\ & ((\sram|addresses[31][2]~q\))) # (!\sram|Mux13~7_combout\ & (\sram|addresses[23][2]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[23][2]~q\,
	datac => \sram|addresses[31][2]~q\,
	datad => \sram|Mux13~7_combout\,
	combout => \sram|Mux13~8_combout\);

-- Location: LCCOMB_X113_Y42_N8
\sram|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~9_combout\ = (\sram|Mux13~6_combout\ & (((\sram|Mux13~8_combout\)) # (!\SW[5]~input_o\))) # (!\sram|Mux13~6_combout\ & (\SW[5]~input_o\ & ((\sram|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux13~6_combout\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux13~8_combout\,
	datad => \sram|Mux13~1_combout\,
	combout => \sram|Mux13~9_combout\);

-- Location: FF_X112_Y36_N15
\sram|addresses[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[6][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][2]~q\);

-- Location: FF_X113_Y36_N11
\sram|addresses[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][2]~q\);

-- Location: FF_X113_Y38_N17
\sram|addresses[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][2]~q\);

-- Location: LCCOMB_X113_Y42_N10
\sram|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~10_combout\ = (\SW[5]~input_o\ & (((\sram|addresses[5][2]~q\) # (\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\sram|addresses[4][2]~q\ & ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[4][2]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[5][2]~q\,
	datad => \SW[6]~input_o\,
	combout => \sram|Mux13~10_combout\);

-- Location: FF_X113_Y36_N17
\sram|addresses[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][2]~q\);

-- Location: LCCOMB_X113_Y42_N4
\sram|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux13~10_combout\ & (\sram|addresses[7][2]~q\)) # (!\sram|Mux13~10_combout\ & ((\sram|addresses[6][2]~q\))))) # (!\SW[6]~input_o\ & (((\sram|Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[7][2]~q\,
	datac => \sram|addresses[6][2]~q\,
	datad => \sram|Mux13~10_combout\,
	combout => \sram|Mux13~11_combout\);

-- Location: FF_X114_Y35_N5
\sram|addresses[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[9][2]~56_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][2]~q\);

-- Location: FF_X113_Y35_N15
\sram|addresses[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[10][2]~57_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][2]~q\);

-- Location: FF_X114_Y35_N23
\sram|addresses[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[8][2]~58_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][2]~q\);

-- Location: LCCOMB_X113_Y35_N16
\sram|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\sram|addresses[10][2]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\sram|addresses[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[10][2]~q\,
	datad => \sram|addresses[8][2]~q\,
	combout => \sram|Mux13~12_combout\);

-- Location: FF_X113_Y38_N19
\sram|addresses[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[11][2]~59_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][2]~q\);

-- Location: LCCOMB_X113_Y42_N18
\sram|Mux13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux13~12_combout\ & (!\sram|addresses[11][2]~q\)) # (!\sram|Mux13~12_combout\ & ((!\sram|addresses[9][2]~q\))))) # (!\SW[5]~input_o\ & (((\sram|Mux13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|addresses[11][2]~q\,
	datac => \sram|addresses[9][2]~q\,
	datad => \sram|Mux13~12_combout\,
	combout => \sram|Mux13~13_combout\);

-- Location: FF_X114_Y45_N5
\sram|addresses[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[1][2]~60_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][2]~q\);

-- Location: FF_X114_Y38_N13
\sram|addresses[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[2][2]~61_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][2]~q\);

-- Location: FF_X114_Y34_N3
\sram|addresses[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[0][2]~62_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][2]~q\);

-- Location: LCCOMB_X113_Y42_N28
\sram|Mux13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\sram|addresses[2][2]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\sram|addresses[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[2][2]~q\,
	datad => \sram|addresses[0][2]~q\,
	combout => \sram|Mux13~14_combout\);

-- Location: FF_X114_Y43_N1
\sram|addresses[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[3][2]~63_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][2]~q\);

-- Location: LCCOMB_X113_Y42_N26
\sram|Mux13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~15_combout\ = (\SW[5]~input_o\ & ((\sram|Mux13~14_combout\ & ((!\sram|addresses[3][2]~q\))) # (!\sram|Mux13~14_combout\ & (!\sram|addresses[1][2]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[1][2]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[3][2]~q\,
	datad => \sram|Mux13~14_combout\,
	combout => \sram|Mux13~15_combout\);

-- Location: LCCOMB_X113_Y42_N0
\sram|Mux13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~16_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\sram|Mux13~13_combout\))) # (!\SW[8]~input_o\ & (\sram|Mux13~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux13~15_combout\,
	datad => \sram|Mux13~13_combout\,
	combout => \sram|Mux13~16_combout\);

-- Location: FF_X113_Y39_N13
\sram|addresses[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][2]~q\);

-- Location: FF_X112_Y38_N9
\sram|addresses[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][2]~q\);

-- Location: FF_X111_Y38_N13
\sram|addresses[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][2]~q\);

-- Location: LCCOMB_X112_Y38_N2
\sram|Mux13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~17_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\sram|addresses[13][2]~q\)) # (!\SW[5]~input_o\ & ((\sram|addresses[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[13][2]~q\,
	datac => \SW[5]~input_o\,
	datad => \sram|addresses[12][2]~q\,
	combout => \sram|Mux13~17_combout\);

-- Location: FF_X111_Y38_N7
\sram|addresses[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[15][2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][2]~q\);

-- Location: LCCOMB_X113_Y39_N2
\sram|Mux13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~18_combout\ = (\SW[6]~input_o\ & ((\sram|Mux13~17_combout\ & ((\sram|addresses[15][2]~q\))) # (!\sram|Mux13~17_combout\ & (\sram|addresses[14][2]~q\)))) # (!\SW[6]~input_o\ & (((\sram|Mux13~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[14][2]~q\,
	datac => \sram|addresses[15][2]~q\,
	datad => \sram|Mux13~17_combout\,
	combout => \sram|Mux13~18_combout\);

-- Location: LCCOMB_X113_Y42_N2
\sram|Mux13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~19_combout\ = (\SW[7]~input_o\ & ((\sram|Mux13~16_combout\ & ((\sram|Mux13~18_combout\))) # (!\sram|Mux13~16_combout\ & (\sram|Mux13~11_combout\)))) # (!\SW[7]~input_o\ & (((\sram|Mux13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|Mux13~11_combout\,
	datac => \sram|Mux13~18_combout\,
	datad => \sram|Mux13~16_combout\,
	combout => \sram|Mux13~19_combout\);

-- Location: LCCOMB_X113_Y42_N12
\sram|Mux13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux13~20_combout\ = (\SW[9]~input_o\ & (\sram|Mux13~9_combout\)) # (!\SW[9]~input_o\ & ((\sram|Mux13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \sram|Mux13~9_combout\,
	datad => \sram|Mux13~19_combout\,
	combout => \sram|Mux13~20_combout\);

-- Location: FF_X114_Y39_N11
\sram|addresses[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][3]~q\);

-- Location: LCCOMB_X112_Y38_N22
\sram|Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~17_combout\ = (\SW[6]~input_o\ & (((\sram|addresses[14][3]~q\) # (\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (\sram|addresses[12][3]~q\ & ((!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[12][3]~q\,
	datac => \sram|addresses[14][3]~q\,
	datad => \SW[5]~input_o\,
	combout => \sram|Mux12~17_combout\);

-- Location: LCCOMB_X111_Y39_N0
\sram|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[25][4]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\sram|addresses[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[25][4]~q\,
	datad => \sram|addresses[17][4]~q\,
	combout => \sram|Mux27~0_combout\);

-- Location: LCCOMB_X112_Y41_N8
\sram|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux27~0_combout\ & ((\sram|addresses[29][4]~q\))) # (!\sram|Mux27~0_combout\ & (\sram|addresses[21][4]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[21][4]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[29][4]~q\,
	datad => \sram|Mux27~0_combout\,
	combout => \sram|Mux27~1_combout\);

-- Location: LCCOMB_X111_Y40_N18
\sram|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[26][5]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\sram|addresses[18][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[18][5]~q\,
	datad => \sram|addresses[26][5]~q\,
	combout => \sram|Mux26~0_combout\);

-- Location: LCCOMB_X112_Y39_N4
\sram|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux26~0_combout\ & ((\sram|addresses[30][5]~q\))) # (!\sram|Mux26~0_combout\ & (\sram|addresses[22][5]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[22][5]~q\,
	datab => \sram|addresses[30][5]~q\,
	datac => \SW[2]~input_o\,
	datad => \sram|Mux26~0_combout\,
	combout => \sram|Mux26~1_combout\);

-- Location: LCCOMB_X113_Y40_N16
\sram|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~7_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[27][6]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\sram|addresses[19][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[27][6]~q\,
	datad => \sram|addresses[19][6]~q\,
	combout => \sram|Mux25~7_combout\);

-- Location: LCCOMB_X114_Y36_N12
\sram|Mux25~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~14_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\sram|addresses[2][6]~q\))) # (!\SW[1]~input_o\ & (\sram|addresses[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[0][6]~q\,
	datad => \sram|addresses[2][6]~q\,
	combout => \sram|Mux25~14_combout\);

-- Location: LCCOMB_X114_Y36_N22
\sram|Mux25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~15_combout\ = (\SW[0]~input_o\ & ((\sram|Mux25~14_combout\ & ((\sram|addresses[3][6]~q\))) # (!\sram|Mux25~14_combout\ & (\sram|addresses[1][6]~q\)))) # (!\SW[0]~input_o\ & (((\sram|Mux25~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[1][6]~q\,
	datac => \sram|addresses[3][6]~q\,
	datad => \sram|Mux25~14_combout\,
	combout => \sram|Mux25~15_combout\);

-- Location: LCCOMB_X111_Y38_N20
\sram|Mux25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~17_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\sram|addresses[13][6]~q\))) # (!\SW[0]~input_o\ & (\sram|addresses[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[12][6]~q\,
	datad => \sram|addresses[13][6]~q\,
	combout => \sram|Mux25~17_combout\);

-- Location: LCCOMB_X114_Y36_N26
\sram|Mux25~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~18_combout\ = (\sram|Mux25~17_combout\ & (((\sram|addresses[15][6]~q\)) # (!\SW[1]~input_o\))) # (!\sram|Mux25~17_combout\ & (\SW[1]~input_o\ & ((\sram|addresses[14][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux25~17_combout\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[15][6]~q\,
	datad => \sram|addresses[14][6]~q\,
	combout => \sram|Mux25~18_combout\);

-- Location: LCCOMB_X111_Y40_N24
\sram|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[26][7]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\sram|addresses[18][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[26][7]~q\,
	datad => \sram|addresses[18][7]~q\,
	combout => \sram|Mux24~0_combout\);

-- Location: LCCOMB_X111_Y40_N14
\sram|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux24~0_combout\ & ((\sram|addresses[30][7]~q\))) # (!\sram|Mux24~0_combout\ & (\sram|addresses[22][7]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[22][7]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[30][7]~q\,
	datad => \sram|Mux24~0_combout\,
	combout => \sram|Mux24~1_combout\);

-- Location: LCCOMB_X114_Y35_N10
\sram|Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\sram|addresses[9][7]~q\))) # (!\SW[0]~input_o\ & (\sram|addresses[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[8][7]~q\,
	datad => \sram|addresses[9][7]~q\,
	combout => \sram|Mux24~10_combout\);

-- Location: LCCOMB_X111_Y35_N14
\sram|Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux24~10_combout\ & ((\sram|addresses[11][7]~q\))) # (!\sram|Mux24~10_combout\ & (\sram|addresses[10][7]~q\)))) # (!\SW[1]~input_o\ & (((\sram|Mux24~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|addresses[10][7]~q\,
	datac => \sram|Mux24~10_combout\,
	datad => \sram|addresses[11][7]~q\,
	combout => \sram|Mux24~11_combout\);

-- Location: LCCOMB_X114_Y40_N12
\sram|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~4_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((!\sram|addresses[24][1]~q\))) # (!\SW[3]~input_o\ & (!\sram|addresses[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[16][1]~q\,
	datad => \sram|addresses[24][1]~q\,
	combout => \sram|Mux30~4_combout\);

-- Location: LCCOMB_X114_Y40_N6
\sram|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~5_combout\ = (\SW[2]~input_o\ & ((\sram|Mux30~4_combout\ & ((!\sram|addresses[28][1]~q\))) # (!\sram|Mux30~4_combout\ & (!\sram|addresses[20][1]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[20][1]~q\,
	datab => \sram|addresses[28][1]~q\,
	datac => \SW[2]~input_o\,
	datad => \sram|Mux30~4_combout\,
	combout => \sram|Mux30~5_combout\);

-- Location: LCCOMB_X113_Y35_N18
\sram|Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((!\sram|addresses[9][1]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\sram|addresses[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[8][1]~q\,
	datad => \sram|addresses[9][1]~q\,
	combout => \sram|Mux30~10_combout\);

-- Location: LCCOMB_X114_Y39_N14
\sram|Mux30~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux30~10_combout\ & (\sram|addresses[11][1]~q\)) # (!\sram|Mux30~10_combout\ & ((\sram|addresses[10][1]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[11][1]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[10][1]~q\,
	datad => \sram|Mux30~10_combout\,
	combout => \sram|Mux30~11_combout\);

-- Location: LCCOMB_X114_Y40_N24
\sram|Mux30~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|addresses[6][1]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((!\sram|addresses[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[6][1]~q\,
	datad => \sram|addresses[4][1]~q\,
	combout => \sram|Mux30~12_combout\);

-- Location: LCCOMB_X114_Y40_N10
\sram|Mux30~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~13_combout\ = (\sram|Mux30~12_combout\ & (((\sram|addresses[7][1]~q\) # (!\SW[0]~input_o\)))) # (!\sram|Mux30~12_combout\ & (!\sram|addresses[5][1]~q\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[5][1]~q\,
	datab => \sram|Mux30~12_combout\,
	datac => \SW[0]~input_o\,
	datad => \sram|addresses[7][1]~q\,
	combout => \sram|Mux30~13_combout\);

-- Location: LCCOMB_X112_Y41_N24
\sram|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((!\sram|addresses[25][2]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\sram|addresses[17][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[17][2]~q\,
	datad => \sram|addresses[25][2]~q\,
	combout => \sram|Mux29~0_combout\);

-- Location: LCCOMB_X112_Y41_N18
\sram|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux29~0_combout\ & (\sram|addresses[29][2]~q\)) # (!\sram|Mux29~0_combout\ & ((\sram|addresses[21][2]~q\))))) # (!\SW[2]~input_o\ & (((\sram|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[29][2]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[21][2]~q\,
	datad => \sram|Mux29~0_combout\,
	combout => \sram|Mux29~1_combout\);

-- Location: LCCOMB_X109_Y42_N14
\sram|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\sram|addresses[22][2]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\sram|addresses[18][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[18][2]~q\,
	datad => \sram|addresses[22][2]~q\,
	combout => \sram|Mux29~2_combout\);

-- Location: LCCOMB_X110_Y42_N10
\sram|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~3_combout\ = (\sram|Mux29~2_combout\ & (((\sram|addresses[30][2]~q\)) # (!\SW[3]~input_o\))) # (!\sram|Mux29~2_combout\ & (\SW[3]~input_o\ & ((!\sram|addresses[26][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux29~2_combout\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[30][2]~q\,
	datad => \sram|addresses[26][2]~q\,
	combout => \sram|Mux29~3_combout\);

-- Location: LCCOMB_X112_Y42_N18
\sram|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~4_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\sram|addresses[20][2]~q\))) # (!\SW[2]~input_o\ & (!\sram|addresses[16][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[16][2]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[20][2]~q\,
	datad => \SW[2]~input_o\,
	combout => \sram|Mux29~4_combout\);

-- Location: LCCOMB_X114_Y42_N4
\sram|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~5_combout\ = (\SW[3]~input_o\ & ((\sram|Mux29~4_combout\ & (\sram|addresses[28][2]~q\)) # (!\sram|Mux29~4_combout\ & ((!\sram|addresses[24][2]~q\))))) # (!\SW[3]~input_o\ & (((\sram|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[28][2]~q\,
	datac => \sram|addresses[24][2]~q\,
	datad => \sram|Mux29~4_combout\,
	combout => \sram|Mux29~5_combout\);

-- Location: LCCOMB_X114_Y42_N14
\sram|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~6_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|Mux29~3_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\sram|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|Mux29~5_combout\,
	datad => \sram|Mux29~3_combout\,
	combout => \sram|Mux29~6_combout\);

-- Location: LCCOMB_X113_Y40_N14
\sram|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~7_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((!\sram|addresses[27][2]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((!\sram|addresses[19][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[27][2]~q\,
	datad => \sram|addresses[19][2]~q\,
	combout => \sram|Mux29~7_combout\);

-- Location: LCCOMB_X112_Y40_N20
\sram|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~8_combout\ = (\SW[2]~input_o\ & ((\sram|Mux29~7_combout\ & (\sram|addresses[31][2]~q\)) # (!\sram|Mux29~7_combout\ & ((\sram|addresses[23][2]~q\))))) # (!\SW[2]~input_o\ & (((\sram|Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[31][2]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[23][2]~q\,
	datad => \sram|Mux29~7_combout\,
	combout => \sram|Mux29~8_combout\);

-- Location: LCCOMB_X114_Y42_N8
\sram|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~9_combout\ = (\SW[0]~input_o\ & ((\sram|Mux29~6_combout\ & (\sram|Mux29~8_combout\)) # (!\sram|Mux29~6_combout\ & ((\sram|Mux29~1_combout\))))) # (!\SW[0]~input_o\ & (((\sram|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|Mux29~8_combout\,
	datac => \sram|Mux29~6_combout\,
	datad => \sram|Mux29~1_combout\,
	combout => \sram|Mux29~9_combout\);

-- Location: LCCOMB_X113_Y36_N10
\sram|Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\sram|addresses[5][2]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\sram|addresses[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[5][2]~q\,
	datad => \sram|addresses[4][2]~q\,
	combout => \sram|Mux29~10_combout\);

-- Location: LCCOMB_X113_Y36_N16
\sram|Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux29~10_combout\ & ((\sram|addresses[7][2]~q\))) # (!\sram|Mux29~10_combout\ & (\sram|addresses[6][2]~q\)))) # (!\SW[1]~input_o\ & (((\sram|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[6][2]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[7][2]~q\,
	datad => \sram|Mux29~10_combout\,
	combout => \sram|Mux29~11_combout\);

-- Location: LCCOMB_X113_Y35_N22
\sram|Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\sram|addresses[10][2]~q\)) # (!\SW[1]~input_o\ & ((!\sram|addresses[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[10][2]~q\,
	datad => \sram|addresses[8][2]~q\,
	combout => \sram|Mux29~12_combout\);

-- Location: LCCOMB_X114_Y42_N10
\sram|Mux29~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~13_combout\ = (\SW[0]~input_o\ & ((\sram|Mux29~12_combout\ & ((!\sram|addresses[11][2]~q\))) # (!\sram|Mux29~12_combout\ & (!\sram|addresses[9][2]~q\)))) # (!\SW[0]~input_o\ & (((\sram|Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[9][2]~q\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[11][2]~q\,
	datad => \sram|Mux29~12_combout\,
	combout => \sram|Mux29~13_combout\);

-- Location: LCCOMB_X114_Y42_N28
\sram|Mux29~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~14_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((!\sram|addresses[2][2]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\sram|addresses[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[0][2]~q\,
	datad => \sram|addresses[2][2]~q\,
	combout => \sram|Mux29~14_combout\);

-- Location: LCCOMB_X114_Y42_N22
\sram|Mux29~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~15_combout\ = (\SW[0]~input_o\ & ((\sram|Mux29~14_combout\ & (!\sram|addresses[3][2]~q\)) # (!\sram|Mux29~14_combout\ & ((!\sram|addresses[1][2]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[3][2]~q\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[1][2]~q\,
	datad => \sram|Mux29~14_combout\,
	combout => \sram|Mux29~15_combout\);

-- Location: LCCOMB_X114_Y42_N12
\sram|Mux29~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~16_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|Mux29~13_combout\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\sram|Mux29~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|Mux29~15_combout\,
	datad => \sram|Mux29~13_combout\,
	combout => \sram|Mux29~16_combout\);

-- Location: LCCOMB_X111_Y38_N16
\sram|Mux29~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~17_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\sram|addresses[13][2]~q\)) # (!\SW[0]~input_o\ & ((\sram|addresses[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|addresses[13][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \sram|addresses[12][2]~q\,
	combout => \sram|Mux29~17_combout\);

-- Location: LCCOMB_X111_Y38_N2
\sram|Mux29~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~18_combout\ = (\SW[1]~input_o\ & ((\sram|Mux29~17_combout\ & ((\sram|addresses[15][2]~q\))) # (!\sram|Mux29~17_combout\ & (\sram|addresses[14][2]~q\)))) # (!\SW[1]~input_o\ & (\sram|Mux29~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|Mux29~17_combout\,
	datac => \sram|addresses[14][2]~q\,
	datad => \sram|addresses[15][2]~q\,
	combout => \sram|Mux29~18_combout\);

-- Location: LCCOMB_X114_Y42_N2
\sram|Mux29~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~19_combout\ = (\SW[2]~input_o\ & ((\sram|Mux29~16_combout\ & (\sram|Mux29~18_combout\)) # (!\sram|Mux29~16_combout\ & ((\sram|Mux29~11_combout\))))) # (!\SW[2]~input_o\ & (((\sram|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|Mux29~18_combout\,
	datac => \sram|Mux29~11_combout\,
	datad => \sram|Mux29~16_combout\,
	combout => \sram|Mux29~19_combout\);

-- Location: LCCOMB_X114_Y42_N16
\sram|Mux29~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux29~20_combout\ = (\SW[4]~input_o\ & (\sram|Mux29~9_combout\)) # (!\SW[4]~input_o\ & ((\sram|Mux29~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \sram|Mux29~9_combout\,
	datad => \sram|Mux29~19_combout\,
	combout => \sram|Mux29~20_combout\);

-- Location: LCCOMB_X112_Y39_N30
\alu|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux2~3_combout\ = (\SW[17]~input_o\ & ((\alu|Mux2~1_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~2_combout\,
	datac => \SW[17]~input_o\,
	datad => \alu|Mux2~1_combout\,
	combout => \alu|Mux2~3_combout\);

-- Location: LCCOMB_X109_Y36_N10
\alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\ = \alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\) # ((!sData2(3) & sData1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datab => sData1(3),
	datac => \alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\,
	combout => \alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X111_Y33_N8
\Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\currState.EXECUTE~q\ & (((\alu|Mux5~12_combout\)))) # (!\currState.EXECUTE~q\ & ((\currState.MEM_WRITE~q\ & ((\alu|Mux5~12_combout\))) # (!\currState.MEM_WRITE~q\ & (\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => \SW[17]~input_o\,
	datac => \currState.MEM_WRITE~q\,
	datad => \alu|Mux5~12_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X114_Y37_N30
\sram|addresses[7][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[7][4]~3_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[7][4]~3_combout\);

-- Location: LCCOMB_X113_Y39_N22
\sram|addresses[14][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[14][4]~12_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(4),
	combout => \sram|addresses[14][4]~12_combout\);

-- Location: LCCOMB_X111_Y40_N10
\sram|addresses[26][0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[26][0]~16_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[26][0]~16_combout\);

-- Location: LCCOMB_X114_Y42_N24
\sram|addresses[28][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[28][0]~23_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[28][0]~23_combout\);

-- Location: LCCOMB_X114_Y40_N0
\sram|addresses[6][0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[6][0]~24_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[6][0]~24_combout\);

-- Location: LCCOMB_X113_Y42_N24
\sram|addresses[20][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[20][1]~36_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[20][1]~36_combout\);

-- Location: LCCOMB_X111_Y39_N24
\sram|addresses[25][2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[25][2]~48_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[25][2]~48_combout\);

-- Location: LCCOMB_X112_Y41_N14
\sram|addresses[17][2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[17][2]~49_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[17][2]~49_combout\);

-- Location: LCCOMB_X114_Y39_N20
\sram|addresses[26][2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[26][2]~50_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[26][2]~50_combout\);

-- Location: LCCOMB_X109_Y42_N22
\sram|addresses[18][2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[18][2]~51_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[18][2]~51_combout\);

-- Location: LCCOMB_X112_Y42_N20
\sram|addresses[24][2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[24][2]~52_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[24][2]~52_combout\);

-- Location: LCCOMB_X111_Y42_N30
\sram|addresses[16][2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[16][2]~53_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[16][2]~53_combout\);

-- Location: LCCOMB_X113_Y40_N26
\sram|addresses[27][2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[27][2]~54_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[27][2]~54_combout\);

-- Location: LCCOMB_X113_Y40_N28
\sram|addresses[19][2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[19][2]~55_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[19][2]~55_combout\);

-- Location: LCCOMB_X114_Y35_N4
\sram|addresses[9][2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[9][2]~56_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[9][2]~56_combout\);

-- Location: LCCOMB_X113_Y35_N14
\sram|addresses[10][2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[10][2]~57_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[10][2]~57_combout\);

-- Location: LCCOMB_X114_Y35_N22
\sram|addresses[8][2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[8][2]~58_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[8][2]~58_combout\);

-- Location: LCCOMB_X113_Y38_N18
\sram|addresses[11][2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[11][2]~59_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[11][2]~59_combout\);

-- Location: LCCOMB_X114_Y45_N4
\sram|addresses[1][2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[1][2]~60_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[1][2]~60_combout\);

-- Location: LCCOMB_X114_Y38_N12
\sram|addresses[2][2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[2][2]~61_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[2][2]~61_combout\);

-- Location: LCCOMB_X114_Y34_N2
\sram|addresses[0][2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[0][2]~62_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[0][2]~62_combout\);

-- Location: LCCOMB_X114_Y43_N0
\sram|addresses[3][2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[3][2]~63_combout\ = !sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[3][2]~63_combout\);

-- Location: LCCOMB_X112_Y32_N30
\hexIn4[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn4(2) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector18~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn4(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector18~0_combout\,
	datac => hexIn4(2),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn4(2));

-- Location: LCCOMB_X110_Y34_N26
\hexIn3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn3(0) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector11~0_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datac => \Selector11~0_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn3(0));

-- Location: LCCOMB_X113_Y39_N30
\sramDataWrite[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(2) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((\alu|Mux5~12_combout\))) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (sramDataWrite(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sramDataWrite(2),
	datab => \alu|Mux5~12_combout\,
	datac => \sramDataWrite[7]~0clkctrl_outclk\,
	combout => sramDataWrite(2));

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

-- Location: LCCOMB_X114_Y42_N6
\sram|addresses[28][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[28][4]~feeder_combout\ = sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(4),
	combout => \sram|addresses[28][4]~feeder_combout\);

-- Location: LCCOMB_X111_Y42_N0
\sram|addresses[28][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[28][6]~feeder_combout\ = sramDataWrite(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(6),
	combout => \sram|addresses[28][6]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N30
\sram|addresses[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[3][6]~feeder_combout\ = sramDataWrite(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(6),
	combout => \sram|addresses[3][6]~feeder_combout\);

-- Location: LCCOMB_X112_Y36_N14
\sram|addresses[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[6][2]~feeder_combout\ = sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[6][2]~feeder_combout\);

-- Location: LCCOMB_X111_Y38_N6
\sram|addresses[15][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[15][2]~feeder_combout\ = sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[15][2]~feeder_combout\);

-- Location: LCCOMB_X112_Y41_N10
\sram|addresses[29][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[29][2]~feeder_combout\ = sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[29][2]~feeder_combout\);

-- Location: LCCOMB_X109_Y42_N0
\sram|addresses[22][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[22][2]~feeder_combout\ = sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(2),
	combout => \sram|addresses[22][2]~feeder_combout\);

-- Location: LCCOMB_X114_Y42_N0
\sram|addresses[28][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[28][2]~feeder_combout\ = sramDataWrite(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(2),
	combout => \sram|addresses[28][2]~feeder_combout\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]$latch~combout\,
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
	i => \LEDG[1]$latch~combout\,
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
	i => \LEDG[2]$latch~combout\,
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
	i => \LEDG[3]$latch~combout\,
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
	i => \HEX7[0]$latch~combout\,
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
	i => \HEX7[1]$latch~combout\,
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
	i => \HEX7[2]$latch~combout\,
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
	i => \HEX7[3]$latch~combout\,
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
	i => \HEX7[4]$latch~combout\,
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
	i => \HEX7[5]$latch~combout\,
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
	i => \HEX7[6]$latch~combout\,
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
	i => \HEX6[0]$latch~combout\,
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
	i => \HEX6[1]$latch~combout\,
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
	i => \HEX6[2]$latch~combout\,
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
	i => \HEX6[3]$latch~combout\,
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
	i => \HEX6[4]$latch~combout\,
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
	i => \HEX6[5]$latch~combout\,
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
	i => \HEX6[6]$latch~combout\,
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
	i => \HEX5[0]$latch~combout\,
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
	i => \HEX5[1]$latch~combout\,
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
	i => \HEX5[2]$latch~combout\,
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
	i => \HEX5[3]$latch~combout\,
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
	i => \HEX5[4]$latch~combout\,
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
	i => \HEX5[5]$latch~combout\,
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
	i => \HEX5[6]$latch~combout\,
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
	i => \HEX4[0]$latch~combout\,
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
	i => \HEX4[1]$latch~combout\,
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
	i => \HEX4[2]$latch~combout\,
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
	i => \HEX4[3]$latch~combout\,
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
	i => \HEX4[4]$latch~combout\,
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
	i => \HEX4[5]$latch~combout\,
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
	i => \HEX4[6]$latch~combout\,
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
	i => \HEX3[0]$latch~combout\,
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
	i => \HEX3[1]$latch~combout\,
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
	i => \HEX3[2]$latch~combout\,
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
	i => \HEX3[3]$latch~combout\,
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
	i => \HEX3[4]$latch~combout\,
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
	i => \HEX3[5]$latch~combout\,
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
	i => \HEX3[6]$latch~combout\,
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
	i => \HEX2[0]$latch~combout\,
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
	i => \HEX2[1]$latch~combout\,
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
	i => \HEX2[2]$latch~combout\,
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
	i => \HEX2[3]$latch~combout\,
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
	i => \HEX2[4]$latch~combout\,
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
	i => \HEX2[5]$latch~combout\,
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
	i => \HEX2[6]$latch~combout\,
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
	i => VCC,
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
	i => \LEDG[3]$latch~combout\,
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
	i => \LEDG[3]$latch~combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \HEX0[6]$latch~combout\,
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

-- Location: LCCOMB_X112_Y33_N28
\nextState.FETCH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.FETCH~1_combout\ = (\KEY[1]~input_o\ & !\currState.MEM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \currState.MEM_WRITE~q\,
	combout => \nextState.FETCH~1_combout\);

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

-- Location: LCCOMB_X113_Y37_N6
\nextState.FETCH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.FETCH~0_combout\ = (!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \nextState.FETCH~0_combout\);

-- Location: FF_X112_Y33_N27
\currState.FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \nextState.FETCH~1_combout\,
	sload => VCC,
	ena => \nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currState.FETCH~q\);

-- Location: LCCOMB_X113_Y37_N18
\nextState.DECODE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.DECODE~0_combout\ = (\KEY[1]~input_o\ & !\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \currState.FETCH~q\,
	combout => \nextState.DECODE~0_combout\);

-- Location: FF_X113_Y37_N3
\currState.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \nextState.DECODE~0_combout\,
	sload => VCC,
	ena => \nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currState.DECODE~q\);

-- Location: LCCOMB_X114_Y37_N14
\nextState.EXECUTE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.EXECUTE~0_combout\ = (\KEY[1]~input_o\ & \currState.DECODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \currState.DECODE~q\,
	combout => \nextState.EXECUTE~0_combout\);

-- Location: FF_X113_Y37_N7
\currState.EXECUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \nextState.EXECUTE~0_combout\,
	sload => VCC,
	ena => \nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currState.EXECUTE~q\);

-- Location: LCCOMB_X112_Y33_N4
\nextState.MEM_WRITE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.MEM_WRITE~0_combout\ = (\KEY[1]~input_o\ & \currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \currState.EXECUTE~q\,
	combout => \nextState.MEM_WRITE~0_combout\);

-- Location: FF_X112_Y33_N19
\currState.MEM_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \nextState.MEM_WRITE~0_combout\,
	sload => VCC,
	ena => \nextState.FETCH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currState.MEM_WRITE~q\);

-- Location: LCCOMB_X111_Y33_N2
\LEDG[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[0]$latch~combout\ = (\KEY[1]~input_o\ & (\currState.MEM_WRITE~q\)) # (!\KEY[1]~input_o\ & ((\LEDG[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datac => \KEY[1]~input_o\,
	datad => \LEDG[0]$latch~combout\,
	combout => \LEDG[0]$latch~combout\);

-- Location: LCCOMB_X114_Y37_N20
\LEDG[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[1]$latch~combout\ = (\KEY[1]~input_o\ & (\currState.EXECUTE~q\)) # (!\KEY[1]~input_o\ & ((\LEDG[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => \KEY[1]~input_o\,
	datad => \LEDG[1]$latch~combout\,
	combout => \LEDG[1]$latch~combout\);

-- Location: LCCOMB_X113_Y37_N2
\LEDG[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[2]$latch~combout\ = (\KEY[1]~input_o\ & (\currState.DECODE~q\)) # (!\KEY[1]~input_o\ & ((\LEDG[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \currState.DECODE~q\,
	datad => \LEDG[2]$latch~combout\,
	combout => \LEDG[2]$latch~combout\);

-- Location: LCCOMB_X111_Y37_N24
\LEDG[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[3]$latch~combout\ = (\KEY[1]~input_o\ & (!\currState.FETCH~q\)) # (!\KEY[1]~input_o\ & ((\LEDG[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \currState.FETCH~q\,
	datad => \LEDG[3]$latch~combout\,
	combout => \LEDG[3]$latch~combout\);

-- Location: LCCOMB_X111_Y37_N8
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (sData1(6) & \currState.EXECUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(6),
	datad => \currState.EXECUTE~q\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\hexIn0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexIn0[0]~0_combout\ = (\KEY[1]~input_o\ & \currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \currState.FETCH~q\,
	combout => \hexIn0[0]~0_combout\);

-- Location: CLKCTRL_G9
\hexIn0[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hexIn0[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hexIn0[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y33_N20
\hexIn7[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn7(2) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector31~0_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn7(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hexIn7(2),
	datac => \Selector31~0_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn7(2));

-- Location: CLKCTRL_G7
\nextState.EXECUTE~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nextState.EXECUTE~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nextState.EXECUTE~0clkctrl_outclk\);

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

-- Location: LCCOMB_X112_Y33_N6
\sramDataWrite[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sramDataWrite[7]~0_combout\ = (\currState.MEM_WRITE~q\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.MEM_WRITE~q\,
	datad => \KEY[1]~input_o\,
	combout => \sramDataWrite[7]~0_combout\);

-- Location: CLKCTRL_G8
\sramDataWrite[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sramDataWrite[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sramDataWrite[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X112_Y39_N6
\sramDataWrite[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(5) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (\alu|Mux2~3_combout\)) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((sramDataWrite(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~3_combout\,
	datab => sramDataWrite(5),
	datad => \sramDataWrite[7]~0clkctrl_outclk\,
	combout => sramDataWrite(5));

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

-- Location: LCCOMB_X114_Y37_N0
\sramEnable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sramEnable~2_combout\ = (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & (!\currState.EXECUTE~q\ & !\currState.DECODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \currState.EXECUTE~q\,
	datad => \currState.DECODE~q\,
	combout => \sramEnable~2_combout\);

-- Location: LCCOMB_X113_Y37_N4
sramEnable : cycloneive_lcell_comb
-- Equation(s):
-- \sramEnable~combout\ = (\sramEnable~2_combout\ & ((!\currState.MEM_WRITE~q\))) # (!\sramEnable~2_combout\ & (\sramEnable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sramEnable~combout\,
	datac => \sramEnable~2_combout\,
	datad => \currState.MEM_WRITE~q\,
	combout => \sramEnable~combout\);

-- Location: LCCOMB_X114_Y37_N2
\rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rw~0_combout\ = (!\currState.MEM_WRITE~q\ & (\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & !\currState.DECODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \currState.DECODE~q\,
	combout => \rw~0_combout\);

-- Location: LCCOMB_X113_Y37_N28
rw : cycloneive_lcell_comb
-- Equation(s):
-- \rw~combout\ = (\rw~0_combout\ & ((\currState.EXECUTE~q\))) # (!\rw~0_combout\ & (\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datac => \currState.EXECUTE~q\,
	datad => \rw~0_combout\,
	combout => \rw~combout\);

-- Location: LCCOMB_X113_Y37_N16
\sram|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~0_combout\ = (\sramEnable~combout\ & \rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sramEnable~combout\,
	datad => \rw~combout\,
	combout => \sram|Decoder0~0_combout\);

-- Location: LCCOMB_X113_Y37_N14
\sram|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~1_combout\ = (!\SW[11]~input_o\ & (\SW[12]~input_o\ & (\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~1_combout\);

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

-- Location: LCCOMB_X112_Y38_N8
\sram|Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~39_combout\ = (!\SW[14]~input_o\ & (\sram|Decoder0~1_combout\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \sram|Decoder0~1_combout\,
	datad => \SW[13]~input_o\,
	combout => \sram|Decoder0~39_combout\);

-- Location: FF_X112_Y38_N29
\sram|addresses[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][5]~q\);

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

-- Location: LCCOMB_X113_Y37_N24
\sram|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~16_combout\ = (!\SW[11]~input_o\ & (\SW[12]~input_o\ & (!\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~16_combout\);

-- Location: LCCOMB_X111_Y38_N12
\sram|Decoder0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~40_combout\ = (\SW[13]~input_o\ & (!\SW[14]~input_o\ & \sram|Decoder0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~16_combout\,
	combout => \sram|Decoder0~40_combout\);

-- Location: FF_X111_Y38_N19
\sram|addresses[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][5]~q\);

-- Location: LCCOMB_X113_Y37_N8
\sram|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~10_combout\ = (\SW[11]~input_o\ & (\SW[12]~input_o\ & (!\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~10_combout\);

-- Location: LCCOMB_X113_Y39_N12
\sram|Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~38_combout\ = (\SW[13]~input_o\ & (!\SW[14]~input_o\ & \sram|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~10_combout\,
	combout => \sram|Decoder0~38_combout\);

-- Location: FF_X113_Y39_N11
\sram|addresses[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][5]~q\);

-- Location: LCCOMB_X111_Y38_N8
\sram|Mux10~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~17_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|addresses[14][5]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\sram|addresses[12][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[12][5]~q\,
	datad => \sram|addresses[14][5]~q\,
	combout => \sram|Mux10~17_combout\);

-- Location: LCCOMB_X112_Y38_N28
\sram|Mux10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~18_combout\ = (\SW[5]~input_o\ & ((\sram|Mux10~17_combout\ & (\sram|addresses[15][5]~q\)) # (!\sram|Mux10~17_combout\ & ((\sram|addresses[13][5]~q\))))) # (!\SW[5]~input_o\ & (((\sram|Mux10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[15][5]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[13][5]~q\,
	datad => \sram|Mux10~17_combout\,
	combout => \sram|Mux10~18_combout\);

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

-- Location: LCCOMB_X113_Y37_N12
\sram|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~8_combout\ = (\SW[11]~input_o\ & (!\SW[12]~input_o\ & (!\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~8_combout\);

-- Location: LCCOMB_X114_Y38_N14
\sram|Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~35_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \sram|Decoder0~8_combout\,
	combout => \sram|Decoder0~35_combout\);

-- Location: FF_X113_Y41_N1
\sram|addresses[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][5]~q\);

-- Location: LCCOMB_X114_Y36_N0
\sram|addresses[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[3][5]~feeder_combout\ = sramDataWrite(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(5),
	combout => \sram|addresses[3][5]~feeder_combout\);

-- Location: LCCOMB_X113_Y37_N10
\sram|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~22_combout\ = (\SW[11]~input_o\ & (!\SW[12]~input_o\ & (\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~22_combout\);

-- Location: LCCOMB_X114_Y37_N6
\sram|Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~37_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~22_combout\,
	combout => \sram|Decoder0~37_combout\);

-- Location: FF_X114_Y36_N1
\sram|addresses[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[3][5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][5]~q\);

-- Location: LCCOMB_X113_Y41_N0
\sram|Mux10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~15_combout\ = (\sram|Mux10~14_combout\ & (((\sram|addresses[3][5]~q\)) # (!\SW[6]~input_o\))) # (!\sram|Mux10~14_combout\ & (\SW[6]~input_o\ & (\sram|addresses[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux10~14_combout\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[2][5]~q\,
	datad => \sram|addresses[3][5]~q\,
	combout => \sram|Mux10~15_combout\);

-- Location: LCCOMB_X113_Y41_N18
\sram|Mux10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~16_combout\ = (\SW[7]~input_o\ & ((\sram|Mux10~13_combout\) # ((\SW[8]~input_o\)))) # (!\SW[7]~input_o\ & (((!\SW[8]~input_o\ & \sram|Mux10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux10~13_combout\,
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \sram|Mux10~15_combout\,
	combout => \sram|Mux10~16_combout\);

-- Location: LCCOMB_X113_Y41_N16
\sram|Mux10~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~19_combout\ = (\SW[8]~input_o\ & ((\sram|Mux10~16_combout\ & ((\sram|Mux10~18_combout\))) # (!\sram|Mux10~16_combout\ & (\sram|Mux10~11_combout\)))) # (!\SW[8]~input_o\ & (((\sram|Mux10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux10~11_combout\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux10~18_combout\,
	datad => \sram|Mux10~16_combout\,
	combout => \sram|Mux10~19_combout\);

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

-- Location: LCCOMB_X113_Y37_N26
\sram|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~20_combout\ = (\SW[11]~input_o\ & (\SW[12]~input_o\ & (\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~20_combout\);

-- Location: LCCOMB_X112_Y39_N22
\sram|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~25_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~20_combout\,
	combout => \sram|Decoder0~25_combout\);

-- Location: FF_X112_Y40_N11
\sram|addresses[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][5]~q\);

-- Location: LCCOMB_X113_Y40_N2
\sram|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~23_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~22_combout\,
	combout => \sram|Decoder0~23_combout\);

-- Location: FF_X113_Y40_N5
\sram|addresses[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][5]~q\);

-- Location: LCCOMB_X112_Y40_N10
\sram|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~8_combout\ = (\sram|Mux10~7_combout\ & (((\sram|addresses[31][5]~q\)) # (!\SW[8]~input_o\))) # (!\sram|Mux10~7_combout\ & (\SW[8]~input_o\ & ((\sram|addresses[27][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux10~7_combout\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[31][5]~q\,
	datad => \sram|addresses[27][5]~q\,
	combout => \sram|Mux10~8_combout\);

-- Location: LCCOMB_X113_Y39_N10
\sram|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~13_combout\ = (\SW[13]~input_o\ & (\SW[14]~input_o\ & \sram|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~10_combout\,
	combout => \sram|Decoder0~13_combout\);

-- Location: FF_X112_Y39_N21
\sram|addresses[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][5]~q\);

-- Location: LCCOMB_X112_Y39_N0
\sram|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~9_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~8_combout\,
	combout => \sram|Decoder0~9_combout\);

-- Location: FF_X111_Y40_N21
\sram|addresses[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][5]~q\);

-- Location: LCCOMB_X112_Y39_N8
\sram|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~12_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~8_combout\,
	combout => \sram|Decoder0~12_combout\);

-- Location: FF_X111_Y40_N19
\sram|addresses[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][5]~q\);

-- Location: LCCOMB_X111_Y40_N20
\sram|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|addresses[26][5]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((\sram|addresses[18][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[26][5]~q\,
	datad => \sram|addresses[18][5]~q\,
	combout => \sram|Mux10~0_combout\);

-- Location: LCCOMB_X112_Y39_N20
\sram|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux10~0_combout\ & ((\sram|addresses[30][5]~q\))) # (!\sram|Mux10~0_combout\ & (\sram|addresses[22][5]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[22][5]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[30][5]~q\,
	datad => \sram|Mux10~0_combout\,
	combout => \sram|Mux10~1_combout\);

-- Location: LCCOMB_X114_Y42_N20
\sram|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~19_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \sram|Decoder0~16_combout\,
	combout => \sram|Decoder0~19_combout\);

-- Location: FF_X111_Y42_N29
\sram|addresses[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][5]~q\);

-- Location: LCCOMB_X113_Y37_N0
\sram|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~14_combout\ = (!\SW[11]~input_o\ & (!\SW[12]~input_o\ & (!\SW[10]~input_o\ & \sram|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \sram|Decoder0~0_combout\,
	combout => \sram|Decoder0~14_combout\);

-- Location: LCCOMB_X111_Y42_N14
\sram|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~18_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \sram|Decoder0~14_combout\,
	combout => \sram|Decoder0~18_combout\);

-- Location: FF_X111_Y42_N3
\sram|addresses[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][5]~q\);

-- Location: LCCOMB_X112_Y42_N4
\sram|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~15_combout\ = (\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~14_combout\,
	combout => \sram|Decoder0~15_combout\);

-- Location: FF_X112_Y42_N7
\sram|addresses[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][5]~q\);

-- Location: LCCOMB_X111_Y42_N2
\sram|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~4_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|addresses[24][5]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\sram|addresses[16][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[16][5]~q\,
	datad => \sram|addresses[24][5]~q\,
	combout => \sram|Mux10~4_combout\);

-- Location: LCCOMB_X111_Y42_N28
\sram|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~5_combout\ = (\SW[7]~input_o\ & ((\sram|Mux10~4_combout\ & ((\sram|addresses[28][5]~q\))) # (!\sram|Mux10~4_combout\ & (\sram|addresses[20][5]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[20][5]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[28][5]~q\,
	datad => \sram|Mux10~4_combout\,
	combout => \sram|Mux10~5_combout\);

-- Location: LCCOMB_X112_Y41_N28
\sram|addresses[29][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[29][5]~feeder_combout\ = sramDataWrite(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(5),
	combout => \sram|addresses[29][5]~feeder_combout\);

-- Location: LCCOMB_X113_Y39_N24
\sram|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~7_combout\ = (\SW[13]~input_o\ & (\SW[14]~input_o\ & \sram|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~1_combout\,
	combout => \sram|Decoder0~7_combout\);

-- Location: FF_X112_Y41_N29
\sram|addresses[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[29][5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][5]~q\);

-- Location: LCCOMB_X111_Y39_N20
\sram|addresses[25][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[25][5]~feeder_combout\ = sramDataWrite(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(5),
	combout => \sram|addresses[25][5]~feeder_combout\);

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

-- Location: LCCOMB_X112_Y35_N22
\sram|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~3_combout\ = (!\SW[11]~input_o\ & !\SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \sram|Decoder0~3_combout\);

-- Location: LCCOMB_X113_Y37_N30
\sram|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~4_combout\ = (\SW[10]~input_o\ & (\sram|Decoder0~3_combout\ & (\sramEnable~combout\ & \rw~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \sram|Decoder0~3_combout\,
	datac => \sramEnable~combout\,
	datad => \rw~combout\,
	combout => \sram|Decoder0~4_combout\);

-- Location: LCCOMB_X110_Y37_N24
\sram|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~5_combout\ = (\SW[14]~input_o\ & (\sram|Decoder0~4_combout\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \sram|Decoder0~4_combout\,
	datad => \SW[13]~input_o\,
	combout => \sram|Decoder0~5_combout\);

-- Location: FF_X111_Y39_N21
\sram|addresses[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[25][5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][5]~q\);

-- Location: LCCOMB_X112_Y41_N20
\sram|addresses[17][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[17][5]~feeder_combout\ = sramDataWrite(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(5),
	combout => \sram|addresses[17][5]~feeder_combout\);

-- Location: LCCOMB_X112_Y41_N4
\sram|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~6_combout\ = (!\SW[13]~input_o\ & (\SW[14]~input_o\ & \sram|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~4_combout\,
	combout => \sram|Decoder0~6_combout\);

-- Location: FF_X112_Y41_N21
\sram|addresses[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[17][5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][5]~q\);

-- Location: LCCOMB_X113_Y39_N4
\sram|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~2_combout\ = (!\SW[13]~input_o\ & (\SW[14]~input_o\ & \sram|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~1_combout\,
	combout => \sram|Decoder0~2_combout\);

-- Location: FF_X113_Y39_N25
\sram|addresses[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][5]~q\);

-- Location: LCCOMB_X112_Y41_N6
\sram|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~2_combout\ = (\SW[7]~input_o\ & (((\SW[8]~input_o\) # (\sram|addresses[21][5]~q\)))) # (!\SW[7]~input_o\ & (\sram|addresses[17][5]~q\ & (!\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[17][5]~q\,
	datac => \SW[8]~input_o\,
	datad => \sram|addresses[21][5]~q\,
	combout => \sram|Mux10~2_combout\);

-- Location: LCCOMB_X112_Y41_N30
\sram|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux10~2_combout\ & (\sram|addresses[29][5]~q\)) # (!\sram|Mux10~2_combout\ & ((\sram|addresses[25][5]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|addresses[29][5]~q\,
	datac => \sram|addresses[25][5]~q\,
	datad => \sram|Mux10~2_combout\,
	combout => \sram|Mux10~3_combout\);

-- Location: LCCOMB_X111_Y42_N18
\sram|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~6_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\sram|Mux10~3_combout\))) # (!\SW[5]~input_o\ & (\sram|Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux10~5_combout\,
	datac => \SW[5]~input_o\,
	datad => \sram|Mux10~3_combout\,
	combout => \sram|Mux10~6_combout\);

-- Location: LCCOMB_X111_Y42_N4
\sram|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~9_combout\ = (\SW[6]~input_o\ & ((\sram|Mux10~6_combout\ & (\sram|Mux10~8_combout\)) # (!\sram|Mux10~6_combout\ & ((\sram|Mux10~1_combout\))))) # (!\SW[6]~input_o\ & (((\sram|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux10~8_combout\,
	datac => \sram|Mux10~1_combout\,
	datad => \sram|Mux10~6_combout\,
	combout => \sram|Mux10~9_combout\);

-- Location: LCCOMB_X113_Y41_N2
\sram|Mux10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux10~20_combout\ = (\SW[9]~input_o\ & ((\sram|Mux10~9_combout\))) # (!\SW[9]~input_o\ & (\sram|Mux10~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram|Mux10~19_combout\,
	datac => \SW[9]~input_o\,
	datad => \sram|Mux10~9_combout\,
	combout => \sram|Mux10~20_combout\);

-- Location: LCCOMB_X114_Y38_N26
\sram|dataReadOne[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|dataReadOne[7]~0_combout\ = (!\rw~combout\ & (\sramEnable~combout\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datab => \sramEnable~combout\,
	datad => \KEY[1]~input_o\,
	combout => \sram|dataReadOne[7]~0_combout\);

-- Location: FF_X113_Y41_N3
\sram|dataReadOne[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux10~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(5));

-- Location: LCCOMB_X113_Y41_N26
\sData1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(5) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadOne\(5)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(5),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	datad => \sram|dataReadOne\(5),
	combout => sData1(5));

-- Location: LCCOMB_X113_Y36_N12
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\currState.EXECUTE~q\ & sData1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.EXECUTE~q\,
	datad => sData1(5),
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X114_Y33_N30
\hexIn7[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn7(1) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector29~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn7(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector29~0_combout\,
	datac => hexIn7(1),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn7(1));

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

-- Location: LCCOMB_X114_Y37_N10
\sram|addresses[3][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[3][4]~11_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[3][4]~11_combout\);

-- Location: FF_X114_Y37_N11
\sram|addresses[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[3][4]~11_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][4]~q\);

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

-- Location: LCCOMB_X114_Y34_N30
\sram|addresses[0][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[0][4]~10_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(4),
	combout => \sram|addresses[0][4]~10_combout\);

-- Location: LCCOMB_X114_Y37_N18
\sram|Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~36_combout\ = (\sram|Decoder0~14_combout\ & (!\SW[13]~input_o\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Decoder0~14_combout\,
	datab => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \sram|Decoder0~36_combout\);

-- Location: FF_X114_Y34_N31
\sram|addresses[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[0][4]~10_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][4]~q\);

-- Location: LCCOMB_X114_Y34_N28
\sram|addresses[2][4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[2][4]~9_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(4),
	combout => \sram|addresses[2][4]~9_combout\);

-- Location: FF_X114_Y34_N29
\sram|addresses[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[2][4]~9_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][4]~q\);

-- Location: LCCOMB_X114_Y34_N4
\sram|Mux27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~14_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\sram|addresses[2][4]~q\))) # (!\SW[1]~input_o\ & (!\sram|addresses[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[0][4]~q\,
	datad => \sram|addresses[2][4]~q\,
	combout => \sram|Mux27~14_combout\);

-- Location: LCCOMB_X112_Y37_N4
\sram|addresses[1][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[1][4]~8_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[1][4]~8_combout\);

-- Location: LCCOMB_X111_Y37_N10
\sram|Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~34_combout\ = (!\SW[13]~input_o\ & (\sram|Decoder0~4_combout\ & !\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \sram|Decoder0~4_combout\,
	datad => \SW[14]~input_o\,
	combout => \sram|Decoder0~34_combout\);

-- Location: FF_X112_Y37_N5
\sram|addresses[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[1][4]~8_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][4]~q\);

-- Location: LCCOMB_X114_Y34_N22
\sram|Mux27~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~15_combout\ = (\SW[0]~input_o\ & ((\sram|Mux27~14_combout\ & (!\sram|addresses[3][4]~q\)) # (!\sram|Mux27~14_combout\ & ((!\sram|addresses[1][4]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[3][4]~q\,
	datac => \sram|Mux27~14_combout\,
	datad => \sram|addresses[1][4]~q\,
	combout => \sram|Mux27~15_combout\);

-- Location: LCCOMB_X113_Y38_N30
\sram|addresses[11][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[11][4]~7_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[11][4]~7_combout\);

-- Location: LCCOMB_X112_Y38_N20
\sram|Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~33_combout\ = (\sram|Decoder0~22_combout\ & (!\SW[14]~input_o\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Decoder0~22_combout\,
	datab => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \sram|Decoder0~33_combout\);

-- Location: FF_X113_Y38_N31
\sram|addresses[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[11][4]~7_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][4]~q\);

-- Location: LCCOMB_X114_Y35_N8
\sram|addresses[9][4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[9][4]~4_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[9][4]~4_combout\);

-- Location: LCCOMB_X113_Y36_N14
\sram|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~30_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~4_combout\,
	combout => \sram|Decoder0~30_combout\);

-- Location: FF_X114_Y35_N9
\sram|addresses[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[9][4]~4_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][4]~q\);

-- Location: LCCOMB_X114_Y35_N30
\sram|addresses[8][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[8][4]~6_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[8][4]~6_combout\);

-- Location: LCCOMB_X113_Y35_N30
\sram|Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~32_combout\ = (\SW[13]~input_o\ & (!\SW[14]~input_o\ & \sram|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[14]~input_o\,
	datad => \sram|Decoder0~14_combout\,
	combout => \sram|Decoder0~32_combout\);

-- Location: FF_X114_Y35_N31
\sram|addresses[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[8][4]~6_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][4]~q\);

-- Location: LCCOMB_X113_Y35_N28
\sram|addresses[10][4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[10][4]~5_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[10][4]~5_combout\);

-- Location: LCCOMB_X112_Y35_N6
\sram|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~31_combout\ = (!\SW[14]~input_o\ & (\SW[13]~input_o\ & \sram|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~8_combout\,
	combout => \sram|Decoder0~31_combout\);

-- Location: FF_X113_Y35_N29
\sram|addresses[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[10][4]~5_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][4]~q\);

-- Location: LCCOMB_X114_Y34_N24
\sram|Mux27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\sram|addresses[10][4]~q\))) # (!\SW[1]~input_o\ & (!\sram|addresses[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[8][4]~q\,
	datad => \sram|addresses[10][4]~q\,
	combout => \sram|Mux27~12_combout\);

-- Location: LCCOMB_X114_Y34_N6
\sram|Mux27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~13_combout\ = (\SW[0]~input_o\ & ((\sram|Mux27~12_combout\ & (!\sram|addresses[11][4]~q\)) # (!\sram|Mux27~12_combout\ & ((!\sram|addresses[9][4]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux27~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[11][4]~q\,
	datac => \sram|addresses[9][4]~q\,
	datad => \sram|Mux27~12_combout\,
	combout => \sram|Mux27~13_combout\);

-- Location: LCCOMB_X114_Y34_N0
\sram|Mux27~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~16_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\sram|Mux27~13_combout\))) # (!\SW[3]~input_o\ & (\sram|Mux27~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|Mux27~15_combout\,
	datad => \sram|Mux27~13_combout\,
	combout => \sram|Mux27~16_combout\);

-- Location: LCCOMB_X114_Y41_N12
\sram|addresses[6][4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[6][4]~0_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(4),
	combout => \sram|addresses[6][4]~0_combout\);

-- Location: LCCOMB_X114_Y37_N28
\sram|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~26_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~10_combout\,
	combout => \sram|Decoder0~26_combout\);

-- Location: FF_X114_Y41_N13
\sram|addresses[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[6][4]~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][4]~q\);

-- Location: LCCOMB_X113_Y34_N30
\sram|addresses[5][4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[5][4]~1_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[5][4]~1_combout\);

-- Location: LCCOMB_X113_Y36_N6
\sram|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~27_combout\ = (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \sram|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \sram|Decoder0~1_combout\,
	combout => \sram|Decoder0~27_combout\);

-- Location: FF_X113_Y34_N31
\sram|addresses[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[5][4]~1_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][4]~q\);

-- Location: LCCOMB_X113_Y38_N24
\sram|addresses[4][4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[4][4]~2_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[4][4]~2_combout\);

-- Location: LCCOMB_X113_Y38_N16
\sram|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~28_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~16_combout\,
	combout => \sram|Decoder0~28_combout\);

-- Location: FF_X113_Y38_N25
\sram|addresses[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[4][4]~2_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][4]~q\);

-- Location: LCCOMB_X113_Y34_N28
\sram|Mux27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((!\sram|addresses[5][4]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((!\sram|addresses[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[5][4]~q\,
	datad => \sram|addresses[4][4]~q\,
	combout => \sram|Mux27~10_combout\);

-- Location: LCCOMB_X113_Y34_N26
\sram|Mux27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux27~10_combout\ & (!\sram|addresses[7][4]~q\)) # (!\sram|Mux27~10_combout\ & ((!\sram|addresses[6][4]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[7][4]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[6][4]~q\,
	datad => \sram|Mux27~10_combout\,
	combout => \sram|Mux27~11_combout\);

-- Location: LCCOMB_X113_Y34_N4
\sram|addresses[15][4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[15][4]~15_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[15][4]~15_combout\);

-- Location: LCCOMB_X112_Y38_N10
\sram|Decoder0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~41_combout\ = (\sram|Decoder0~20_combout\ & (!\SW[14]~input_o\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Decoder0~20_combout\,
	datab => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \sram|Decoder0~41_combout\);

-- Location: FF_X113_Y34_N5
\sram|addresses[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[15][4]~15_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][4]~q\);

-- Location: LCCOMB_X112_Y38_N16
\sram|addresses[13][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[13][4]~13_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[13][4]~13_combout\);

-- Location: FF_X112_Y38_N17
\sram|addresses[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[13][4]~13_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][4]~q\);

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

-- Location: LCCOMB_X111_Y38_N28
\sram|addresses[12][4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[12][4]~14_combout\ = !sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(4),
	combout => \sram|addresses[12][4]~14_combout\);

-- Location: FF_X111_Y38_N29
\sram|addresses[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[12][4]~14_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][4]~q\);

-- Location: LCCOMB_X112_Y38_N0
\sram|Mux27~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~17_combout\ = (\SW[1]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (!\sram|addresses[13][4]~q\)) # (!\SW[0]~input_o\ & ((!\sram|addresses[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|addresses[13][4]~q\,
	datac => \SW[0]~input_o\,
	datad => \sram|addresses[12][4]~q\,
	combout => \sram|Mux27~17_combout\);

-- Location: LCCOMB_X113_Y34_N24
\sram|Mux27~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~18_combout\ = (\sram|Mux27~17_combout\ & (((!\SW[1]~input_o\) # (!\sram|addresses[15][4]~q\)))) # (!\sram|Mux27~17_combout\ & (!\sram|addresses[14][4]~q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[14][4]~q\,
	datab => \sram|addresses[15][4]~q\,
	datac => \sram|Mux27~17_combout\,
	datad => \SW[1]~input_o\,
	combout => \sram|Mux27~18_combout\);

-- Location: LCCOMB_X114_Y34_N14
\sram|Mux27~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~19_combout\ = (\SW[2]~input_o\ & ((\sram|Mux27~16_combout\ & ((\sram|Mux27~18_combout\))) # (!\sram|Mux27~16_combout\ & (\sram|Mux27~11_combout\)))) # (!\SW[2]~input_o\ & (\sram|Mux27~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|Mux27~16_combout\,
	datac => \sram|Mux27~11_combout\,
	datad => \sram|Mux27~18_combout\,
	combout => \sram|Mux27~19_combout\);

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

-- Location: FF_X112_Y40_N23
\sram|addresses[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][4]~q\);

-- Location: LCCOMB_X113_Y40_N12
\sram|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~24_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~22_combout\,
	combout => \sram|Decoder0~24_combout\);

-- Location: FF_X113_Y40_N31
\sram|addresses[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][4]~q\);

-- Location: FF_X113_Y40_N25
\sram|addresses[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][4]~q\);

-- Location: LCCOMB_X113_Y40_N30
\sram|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~7_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[27][4]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\sram|addresses[19][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[19][4]~q\,
	datad => \sram|addresses[27][4]~q\,
	combout => \sram|Mux27~7_combout\);

-- Location: LCCOMB_X112_Y40_N22
\sram|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~8_combout\ = (\SW[2]~input_o\ & ((\sram|Mux27~7_combout\ & ((\sram|addresses[31][4]~q\))) # (!\sram|Mux27~7_combout\ & (\sram|addresses[23][4]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[23][4]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[31][4]~q\,
	datad => \sram|Mux27~7_combout\,
	combout => \sram|Mux27~8_combout\);

-- Location: FF_X112_Y42_N1
\sram|addresses[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][4]~q\);

-- Location: FF_X111_Y42_N25
\sram|addresses[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][4]~q\);

-- Location: LCCOMB_X112_Y42_N0
\sram|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~17_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~16_combout\,
	combout => \sram|Decoder0~17_combout\);

-- Location: FF_X112_Y42_N27
\sram|addresses[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][4]~q\);

-- Location: LCCOMB_X111_Y42_N24
\sram|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~4_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\sram|addresses[20][4]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\sram|addresses[16][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[16][4]~q\,
	datad => \sram|addresses[20][4]~q\,
	combout => \sram|Mux27~4_combout\);

-- Location: LCCOMB_X114_Y42_N26
\sram|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~5_combout\ = (\SW[3]~input_o\ & ((\sram|Mux27~4_combout\ & (\sram|addresses[28][4]~q\)) # (!\sram|Mux27~4_combout\ & ((\sram|addresses[24][4]~q\))))) # (!\SW[3]~input_o\ & (((\sram|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][4]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[24][4]~q\,
	datad => \sram|Mux27~4_combout\,
	combout => \sram|Mux27~5_combout\);

-- Location: LCCOMB_X114_Y39_N0
\sram|addresses[26][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[26][4]~feeder_combout\ = sramDataWrite(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(4),
	combout => \sram|addresses[26][4]~feeder_combout\);

-- Location: FF_X114_Y39_N1
\sram|addresses[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[26][4]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][4]~q\);

-- Location: FF_X112_Y39_N13
\sram|addresses[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][4]~q\);

-- Location: LCCOMB_X112_Y39_N16
\sram|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~11_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~10_combout\,
	combout => \sram|Decoder0~11_combout\);

-- Location: FF_X112_Y39_N1
\sram|addresses[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][4]~q\);

-- Location: FF_X111_Y40_N13
\sram|addresses[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][4]~q\);

-- Location: LCCOMB_X112_Y39_N14
\sram|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~2_combout\ = (\SW[2]~input_o\ & ((\sram|addresses[22][4]~q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((!\SW[3]~input_o\ & \sram|addresses[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[22][4]~q\,
	datac => \SW[3]~input_o\,
	datad => \sram|addresses[18][4]~q\,
	combout => \sram|Mux27~2_combout\);

-- Location: LCCOMB_X114_Y39_N24
\sram|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux27~2_combout\ & ((\sram|addresses[30][4]~q\))) # (!\sram|Mux27~2_combout\ & (\sram|addresses[26][4]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[26][4]~q\,
	datac => \sram|addresses[30][4]~q\,
	datad => \sram|Mux27~2_combout\,
	combout => \sram|Mux27~3_combout\);

-- Location: LCCOMB_X114_Y38_N10
\sram|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~6_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|Mux27~3_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\sram|Mux27~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|Mux27~5_combout\,
	datad => \sram|Mux27~3_combout\,
	combout => \sram|Mux27~6_combout\);

-- Location: LCCOMB_X114_Y38_N0
\sram|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~9_combout\ = (\SW[0]~input_o\ & ((\sram|Mux27~6_combout\ & ((\sram|Mux27~8_combout\))) # (!\sram|Mux27~6_combout\ & (\sram|Mux27~1_combout\)))) # (!\SW[0]~input_o\ & (((\sram|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux27~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \sram|Mux27~8_combout\,
	datad => \sram|Mux27~6_combout\,
	combout => \sram|Mux27~9_combout\);

-- Location: LCCOMB_X114_Y38_N28
\sram|Mux27~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux27~20_combout\ = (\SW[4]~input_o\ & ((\sram|Mux27~9_combout\))) # (!\SW[4]~input_o\ & (\sram|Mux27~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \sram|Mux27~19_combout\,
	datad => \sram|Mux27~9_combout\,
	combout => \sram|Mux27~20_combout\);

-- Location: FF_X114_Y38_N29
\sram|dataReadTwo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux27~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(4));

-- Location: LCCOMB_X114_Y38_N6
\sData2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(4) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(4)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(4),
	datab => \sram|dataReadTwo\(4),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData2(4));

-- Location: LCCOMB_X109_Y36_N26
\alu|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~3_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((sData1(4)) # (sData2(4)))) # (!\SW[15]~input_o\ & (sData1(4) & sData2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => sData1(4),
	datac => \SW[16]~input_o\,
	datad => sData2(4),
	combout => \alu|Mux3~3_combout\);

-- Location: LCCOMB_X114_Y42_N30
\sData2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(2) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (\sram|dataReadTwo\(2))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((sData2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|dataReadTwo\(2),
	datac => sData2(2),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData2(2));

-- Location: FF_X111_Y38_N11
\sram|addresses[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][7]~q\);

-- Location: FF_X111_Y38_N25
\sram|addresses[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][7]~q\);

-- Location: FF_X112_Y38_N7
\sram|addresses[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][7]~q\);

-- Location: LCCOMB_X111_Y38_N24
\sram|Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~17_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|addresses[14][7]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\sram|addresses[12][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[12][7]~q\,
	datad => \sram|addresses[14][7]~q\,
	combout => \sram|Mux8~17_combout\);

-- Location: LCCOMB_X111_Y38_N10
\sram|Mux8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~18_combout\ = (\SW[5]~input_o\ & ((\sram|Mux8~17_combout\ & ((\sram|addresses[15][7]~q\))) # (!\sram|Mux8~17_combout\ & (\sram|addresses[13][7]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[13][7]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[15][7]~q\,
	datad => \sram|Mux8~17_combout\,
	combout => \sram|Mux8~18_combout\);

-- Location: LCCOMB_X111_Y35_N28
\sram|addresses[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[10][7]~feeder_combout\ = sramDataWrite(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(7),
	combout => \sram|addresses[10][7]~feeder_combout\);

-- Location: FF_X111_Y35_N29
\sram|addresses[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[10][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][7]~q\);

-- Location: FF_X114_Y35_N17
\sram|addresses[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][7]~q\);

-- Location: FF_X114_Y35_N11
\sram|addresses[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][7]~q\);

-- Location: LCCOMB_X114_Y35_N16
\sram|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~10_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\sram|addresses[9][7]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((\sram|addresses[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[9][7]~q\,
	datad => \sram|addresses[8][7]~q\,
	combout => \sram|Mux8~10_combout\);

-- Location: FF_X111_Y35_N17
\sram|addresses[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][7]~q\);

-- Location: LCCOMB_X111_Y35_N10
\sram|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux8~10_combout\ & ((\sram|addresses[11][7]~q\))) # (!\sram|Mux8~10_combout\ & (\sram|addresses[10][7]~q\)))) # (!\SW[6]~input_o\ & (((\sram|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[10][7]~q\,
	datac => \sram|Mux8~10_combout\,
	datad => \sram|addresses[11][7]~q\,
	combout => \sram|Mux8~11_combout\);

-- Location: LCCOMB_X114_Y37_N12
\sram|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~29_combout\ = (!\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~20_combout\,
	combout => \sram|Decoder0~29_combout\);

-- Location: FF_X113_Y36_N21
\sram|addresses[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][7]~q\);

-- Location: LCCOMB_X114_Y41_N26
\sram|addresses[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[6][7]~feeder_combout\ = sramDataWrite(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(7),
	combout => \sram|addresses[6][7]~feeder_combout\);

-- Location: FF_X114_Y41_N27
\sram|addresses[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[6][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][7]~q\);

-- Location: LCCOMB_X114_Y41_N24
\sram|addresses[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[4][7]~feeder_combout\ = sramDataWrite(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(7),
	combout => \sram|addresses[4][7]~feeder_combout\);

-- Location: FF_X114_Y41_N25
\sram|addresses[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[4][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][7]~q\);

-- Location: LCCOMB_X114_Y41_N18
\sram|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\sram|addresses[6][7]~q\)) # (!\SW[6]~input_o\ & ((\sram|addresses[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[6][7]~q\,
	datad => \sram|addresses[4][7]~q\,
	combout => \sram|Mux8~12_combout\);

-- Location: LCCOMB_X110_Y38_N4
\sram|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux8~12_combout\ & ((\sram|addresses[7][7]~q\))) # (!\sram|Mux8~12_combout\ & (\sram|addresses[5][7]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[5][7]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[7][7]~q\,
	datad => \sram|Mux8~12_combout\,
	combout => \sram|Mux8~13_combout\);

-- Location: FF_X111_Y37_N21
\sram|addresses[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][7]~q\);

-- Location: LCCOMB_X110_Y38_N30
\sram|addresses[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[2][7]~feeder_combout\ = sramDataWrite(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(7),
	combout => \sram|addresses[2][7]~feeder_combout\);

-- Location: FF_X110_Y38_N31
\sram|addresses[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[2][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][7]~q\);

-- Location: FF_X112_Y37_N7
\sram|addresses[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][7]~q\);

-- Location: FF_X112_Y37_N13
\sram|addresses[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][7]~q\);

-- Location: LCCOMB_X112_Y37_N6
\sram|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\sram|addresses[1][7]~q\)) # (!\SW[5]~input_o\ & ((\sram|addresses[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[1][7]~q\,
	datad => \sram|addresses[0][7]~q\,
	combout => \sram|Mux8~14_combout\);

-- Location: LCCOMB_X110_Y38_N12
\sram|Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~15_combout\ = (\SW[6]~input_o\ & ((\sram|Mux8~14_combout\ & (\sram|addresses[3][7]~q\)) # (!\sram|Mux8~14_combout\ & ((\sram|addresses[2][7]~q\))))) # (!\SW[6]~input_o\ & (((\sram|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[3][7]~q\,
	datac => \sram|addresses[2][7]~q\,
	datad => \sram|Mux8~14_combout\,
	combout => \sram|Mux8~15_combout\);

-- Location: LCCOMB_X110_Y38_N2
\sram|Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~16_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\sram|Mux8~13_combout\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\sram|Mux8~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux8~13_combout\,
	datad => \sram|Mux8~15_combout\,
	combout => \sram|Mux8~16_combout\);

-- Location: LCCOMB_X110_Y38_N20
\sram|Mux8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~19_combout\ = (\SW[8]~input_o\ & ((\sram|Mux8~16_combout\ & (\sram|Mux8~18_combout\)) # (!\sram|Mux8~16_combout\ & ((\sram|Mux8~11_combout\))))) # (!\SW[8]~input_o\ & (((\sram|Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|Mux8~18_combout\,
	datac => \sram|Mux8~11_combout\,
	datad => \sram|Mux8~16_combout\,
	combout => \sram|Mux8~19_combout\);

-- Location: LCCOMB_X109_Y40_N4
\sram|addresses[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[30][7]~feeder_combout\ = sramDataWrite(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(7),
	combout => \sram|addresses[30][7]~feeder_combout\);

-- Location: FF_X109_Y40_N5
\sram|addresses[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[30][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][7]~q\);

-- Location: FF_X110_Y40_N9
\sram|addresses[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][7]~q\);

-- Location: LCCOMB_X111_Y40_N0
\sram|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~1_combout\ = (\sram|Mux8~0_combout\ & (((\sram|addresses[30][7]~q\)) # (!\SW[7]~input_o\))) # (!\sram|Mux8~0_combout\ & (\SW[7]~input_o\ & ((\sram|addresses[22][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux8~0_combout\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[30][7]~q\,
	datad => \sram|addresses[22][7]~q\,
	combout => \sram|Mux8~1_combout\);

-- Location: FF_X113_Y40_N9
\sram|addresses[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][7]~q\);

-- Location: FF_X113_Y40_N11
\sram|addresses[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][7]~q\);

-- Location: LCCOMB_X112_Y40_N14
\sram|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Decoder0~21_combout\ = (\SW[14]~input_o\ & (!\SW[13]~input_o\ & \sram|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \sram|Decoder0~20_combout\,
	combout => \sram|Decoder0~21_combout\);

-- Location: FF_X112_Y40_N3
\sram|addresses[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][7]~q\);

-- Location: LCCOMB_X113_Y40_N10
\sram|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\sram|addresses[23][7]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\sram|addresses[19][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[19][7]~q\,
	datad => \sram|addresses[23][7]~q\,
	combout => \sram|Mux8~7_combout\);

-- Location: LCCOMB_X113_Y40_N8
\sram|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~8_combout\ = (\SW[8]~input_o\ & ((\sram|Mux8~7_combout\ & (\sram|addresses[31][7]~q\)) # (!\sram|Mux8~7_combout\ & ((\sram|addresses[27][7]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[31][7]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[27][7]~q\,
	datad => \sram|Mux8~7_combout\,
	combout => \sram|Mux8~8_combout\);

-- Location: FF_X111_Y36_N21
\sram|addresses[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][7]~q\);

-- Location: FF_X111_Y39_N27
\sram|addresses[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][7]~q\);

-- Location: LCCOMB_X111_Y39_N4
\sram|addresses[17][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[17][7]~feeder_combout\ = sramDataWrite(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(7),
	combout => \sram|addresses[17][7]~feeder_combout\);

-- Location: FF_X111_Y39_N5
\sram|addresses[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[17][7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][7]~q\);

-- Location: FF_X113_Y39_N5
\sram|addresses[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][7]~q\);

-- Location: LCCOMB_X111_Y39_N6
\sram|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\sram|addresses[21][7]~q\))) # (!\SW[7]~input_o\ & (\sram|addresses[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[17][7]~q\,
	datad => \sram|addresses[21][7]~q\,
	combout => \sram|Mux8~2_combout\);

-- Location: LCCOMB_X111_Y39_N26
\sram|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux8~2_combout\ & (\sram|addresses[29][7]~q\)) # (!\sram|Mux8~2_combout\ & ((\sram|addresses[25][7]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|addresses[29][7]~q\,
	datac => \sram|addresses[25][7]~q\,
	datad => \sram|Mux8~2_combout\,
	combout => \sram|Mux8~3_combout\);

-- Location: FF_X112_Y42_N15
\sram|addresses[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][7]~q\);

-- Location: FF_X111_Y42_N23
\sram|addresses[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][7]~q\);

-- Location: FF_X112_Y42_N17
\sram|addresses[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][7]~q\);

-- Location: LCCOMB_X111_Y42_N22
\sram|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~4_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|addresses[24][7]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\sram|addresses[16][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[16][7]~q\,
	datad => \sram|addresses[24][7]~q\,
	combout => \sram|Mux8~4_combout\);

-- Location: LCCOMB_X112_Y42_N14
\sram|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~5_combout\ = (\SW[7]~input_o\ & ((\sram|Mux8~4_combout\ & (\sram|addresses[28][7]~q\)) # (!\sram|Mux8~4_combout\ & ((\sram|addresses[20][7]~q\))))) # (!\SW[7]~input_o\ & (((\sram|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][7]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[20][7]~q\,
	datad => \sram|Mux8~4_combout\,
	combout => \sram|Mux8~5_combout\);

-- Location: LCCOMB_X111_Y40_N2
\sram|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~6_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (\sram|Mux8~3_combout\)) # (!\SW[5]~input_o\ & ((\sram|Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux8~3_combout\,
	datad => \sram|Mux8~5_combout\,
	combout => \sram|Mux8~6_combout\);

-- Location: LCCOMB_X111_Y40_N4
\sram|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~9_combout\ = (\SW[6]~input_o\ & ((\sram|Mux8~6_combout\ & ((\sram|Mux8~8_combout\))) # (!\sram|Mux8~6_combout\ & (\sram|Mux8~1_combout\)))) # (!\SW[6]~input_o\ & (((\sram|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux8~1_combout\,
	datac => \sram|Mux8~8_combout\,
	datad => \sram|Mux8~6_combout\,
	combout => \sram|Mux8~9_combout\);

-- Location: LCCOMB_X110_Y36_N14
\sram|Mux8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux8~20_combout\ = (\SW[9]~input_o\ & ((\sram|Mux8~9_combout\))) # (!\SW[9]~input_o\ & (\sram|Mux8~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \sram|Mux8~19_combout\,
	datad => \sram|Mux8~9_combout\,
	combout => \sram|Mux8~20_combout\);

-- Location: FF_X110_Y36_N15
\sram|dataReadOne[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux8~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(7));

-- Location: LCCOMB_X110_Y36_N30
\sData1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(7) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadOne\(7)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(7),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	datad => \sram|dataReadOne\(7),
	combout => sData1(7));

-- Location: LCCOMB_X109_Y36_N12
\alu|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux0~2_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((sData1(7)) # (sData2(7)))) # (!\SW[15]~input_o\ & (sData1(7) & sData2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => sData1(7),
	datad => sData2(7),
	combout => \alu|Mux0~2_combout\);

-- Location: LCCOMB_X111_Y36_N20
\alu|aluOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|aluOut~0_combout\ = sData1(7) $ (sData2(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(7),
	datab => sData2(7),
	combout => \alu|aluOut~0_combout\);

-- Location: FF_X113_Y39_N9
\sram|addresses[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][6]~q\);

-- Location: FF_X112_Y41_N5
\sram|addresses[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][6]~q\);

-- Location: FF_X111_Y39_N17
\sram|addresses[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][6]~q\);

-- Location: LCCOMB_X111_Y39_N16
\sram|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~0_combout\ = (\SW[8]~input_o\ & ((\sram|addresses[25][6]~q\) # ((\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (((\sram|addresses[17][6]~q\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[25][6]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[17][6]~q\,
	datad => \SW[7]~input_o\,
	combout => \sram|Mux9~0_combout\);

-- Location: LCCOMB_X112_Y41_N26
\sram|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux9~0_combout\ & ((\sram|addresses[29][6]~q\))) # (!\sram|Mux9~0_combout\ & (\sram|addresses[21][6]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[21][6]~q\,
	datac => \sram|addresses[29][6]~q\,
	datad => \sram|Mux9~0_combout\,
	combout => \sram|Mux9~1_combout\);

-- Location: FF_X112_Y42_N5
\sram|addresses[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][6]~q\);

-- Location: FF_X112_Y42_N23
\sram|addresses[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][6]~q\);

-- Location: FF_X111_Y42_N11
\sram|addresses[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][6]~q\);

-- Location: LCCOMB_X112_Y42_N22
\sram|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~4_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\sram|addresses[20][6]~q\)) # (!\SW[7]~input_o\ & ((\sram|addresses[16][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[20][6]~q\,
	datad => \sram|addresses[16][6]~q\,
	combout => \sram|Mux9~4_combout\);

-- Location: LCCOMB_X112_Y42_N24
\sram|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~5_combout\ = (\sram|Mux9~4_combout\ & ((\sram|addresses[28][6]~q\) # ((!\SW[8]~input_o\)))) # (!\sram|Mux9~4_combout\ & (((\sram|addresses[24][6]~q\ & \SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][6]~q\,
	datab => \sram|addresses[24][6]~q\,
	datac => \sram|Mux9~4_combout\,
	datad => \SW[8]~input_o\,
	combout => \sram|Mux9~5_combout\);

-- Location: FF_X111_Y40_N9
\sram|addresses[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][6]~q\);

-- Location: FF_X112_Y39_N3
\sram|addresses[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][6]~q\);

-- Location: FF_X111_Y40_N7
\sram|addresses[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][6]~q\);

-- Location: LCCOMB_X112_Y39_N2
\sram|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\sram|addresses[22][6]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\sram|addresses[18][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[22][6]~q\,
	datad => \sram|addresses[18][6]~q\,
	combout => \sram|Mux9~2_combout\);

-- Location: LCCOMB_X111_Y40_N16
\sram|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux9~2_combout\ & (\sram|addresses[30][6]~q\)) # (!\sram|Mux9~2_combout\ & ((\sram|addresses[26][6]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[30][6]~q\,
	datab => \sram|addresses[26][6]~q\,
	datac => \SW[8]~input_o\,
	datad => \sram|Mux9~2_combout\,
	combout => \sram|Mux9~3_combout\);

-- Location: LCCOMB_X111_Y40_N26
\sram|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~6_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|Mux9~3_combout\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\sram|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux9~5_combout\,
	datad => \sram|Mux9~3_combout\,
	combout => \sram|Mux9~6_combout\);

-- Location: LCCOMB_X113_Y41_N22
\sram|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~9_combout\ = (\SW[5]~input_o\ & ((\sram|Mux9~6_combout\ & (\sram|Mux9~8_combout\)) # (!\sram|Mux9~6_combout\ & ((\sram|Mux9~1_combout\))))) # (!\SW[5]~input_o\ & (((\sram|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux9~8_combout\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux9~1_combout\,
	datad => \sram|Mux9~6_combout\,
	combout => \sram|Mux9~9_combout\);

-- Location: FF_X112_Y37_N27
\sram|addresses[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][6]~q\);

-- Location: FF_X112_Y37_N25
\sram|addresses[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][6]~q\);

-- Location: FF_X114_Y38_N23
\sram|addresses[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][6]~q\);

-- Location: LCCOMB_X112_Y37_N24
\sram|Mux9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|addresses[2][6]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\sram|addresses[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[0][6]~q\,
	datad => \sram|addresses[2][6]~q\,
	combout => \sram|Mux9~14_combout\);

-- Location: LCCOMB_X112_Y37_N26
\sram|Mux9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~15_combout\ = (\SW[5]~input_o\ & ((\sram|Mux9~14_combout\ & (\sram|addresses[3][6]~q\)) # (!\sram|Mux9~14_combout\ & ((\sram|addresses[1][6]~q\))))) # (!\SW[5]~input_o\ & (((\sram|Mux9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[3][6]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[1][6]~q\,
	datad => \sram|Mux9~14_combout\,
	combout => \sram|Mux9~15_combout\);

-- Location: FF_X114_Y35_N21
\sram|addresses[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][6]~q\);

-- Location: FF_X113_Y35_N25
\sram|addresses[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][6]~q\);

-- Location: FF_X114_Y35_N19
\sram|addresses[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][6]~q\);

-- Location: LCCOMB_X113_Y35_N24
\sram|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|addresses[10][6]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((\sram|addresses[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[10][6]~q\,
	datad => \sram|addresses[8][6]~q\,
	combout => \sram|Mux9~12_combout\);

-- Location: LCCOMB_X114_Y35_N20
\sram|Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux9~12_combout\ & (\sram|addresses[11][6]~q\)) # (!\sram|Mux9~12_combout\ & ((\sram|addresses[9][6]~q\))))) # (!\SW[5]~input_o\ & (((\sram|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[11][6]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[9][6]~q\,
	datad => \sram|Mux9~12_combout\,
	combout => \sram|Mux9~13_combout\);

-- Location: LCCOMB_X112_Y37_N30
\sram|Mux9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~16_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|Mux9~13_combout\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & (\sram|Mux9~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|Mux9~15_combout\,
	datad => \sram|Mux9~13_combout\,
	combout => \sram|Mux9~16_combout\);

-- Location: FF_X114_Y37_N13
\sram|addresses[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][6]~q\);

-- Location: LCCOMB_X114_Y41_N4
\sram|addresses[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[4][6]~feeder_combout\ = sramDataWrite(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(6),
	combout => \sram|addresses[4][6]~feeder_combout\);

-- Location: FF_X114_Y41_N5
\sram|addresses[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[4][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][6]~q\);

-- Location: FF_X113_Y36_N13
\sram|addresses[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][6]~q\);

-- Location: LCCOMB_X114_Y41_N2
\sram|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~10_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\sram|addresses[5][6]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\sram|addresses[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[4][6]~q\,
	datad => \sram|addresses[5][6]~q\,
	combout => \sram|Mux9~10_combout\);

-- Location: LCCOMB_X114_Y41_N20
\sram|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux9~10_combout\ & ((\sram|addresses[7][6]~q\))) # (!\sram|Mux9~10_combout\ & (\sram|addresses[6][6]~q\)))) # (!\SW[6]~input_o\ & (((\sram|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[6][6]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[7][6]~q\,
	datad => \sram|Mux9~10_combout\,
	combout => \sram|Mux9~11_combout\);

-- Location: LCCOMB_X112_Y37_N20
\sram|Mux9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~19_combout\ = (\SW[7]~input_o\ & ((\sram|Mux9~16_combout\ & (\sram|Mux9~18_combout\)) # (!\sram|Mux9~16_combout\ & ((\sram|Mux9~11_combout\))))) # (!\SW[7]~input_o\ & (((\sram|Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux9~18_combout\,
	datab => \SW[7]~input_o\,
	datac => \sram|Mux9~16_combout\,
	datad => \sram|Mux9~11_combout\,
	combout => \sram|Mux9~19_combout\);

-- Location: LCCOMB_X113_Y41_N24
\sram|Mux9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux9~20_combout\ = (\SW[9]~input_o\ & (\sram|Mux9~9_combout\)) # (!\SW[9]~input_o\ & ((\sram|Mux9~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \sram|Mux9~9_combout\,
	datad => \sram|Mux9~19_combout\,
	combout => \sram|Mux9~20_combout\);

-- Location: FF_X113_Y41_N25
\sram|dataReadOne[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux9~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(6));

-- Location: LCCOMB_X113_Y41_N28
\sData1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(6) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadOne\(6)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData1(6),
	datac => \sram|dataReadOne\(6),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData1(6));

-- Location: LCCOMB_X110_Y36_N0
\alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ = sData2(6) $ (sData1(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sData2(6),
	datad => sData1(6),
	combout => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: FF_X114_Y35_N7
\sram|addresses[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][5]~q\);

-- Location: FF_X114_Y35_N13
\sram|addresses[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][5]~q\);

-- Location: LCCOMB_X114_Y35_N6
\sram|Mux26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\sram|addresses[9][5]~q\))) # (!\SW[0]~input_o\ & (\sram|addresses[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[8][5]~q\,
	datad => \sram|addresses[9][5]~q\,
	combout => \sram|Mux26~10_combout\);

-- Location: FF_X113_Y38_N21
\sram|addresses[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][5]~q\);

-- Location: LCCOMB_X113_Y35_N10
\sram|Mux26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux26~10_combout\ & ((\sram|addresses[11][5]~q\))) # (!\sram|Mux26~10_combout\ & (\sram|addresses[10][5]~q\)))) # (!\SW[1]~input_o\ & (((\sram|Mux26~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[10][5]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux26~10_combout\,
	datad => \sram|addresses[11][5]~q\,
	combout => \sram|Mux26~11_combout\);

-- Location: FF_X111_Y38_N15
\sram|addresses[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][5]~q\);

-- Location: LCCOMB_X111_Y38_N18
\sram|Mux26~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~17_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|addresses[14][5]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\sram|addresses[12][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[12][5]~q\,
	datad => \sram|addresses[14][5]~q\,
	combout => \sram|Mux26~17_combout\);

-- Location: LCCOMB_X111_Y38_N14
\sram|Mux26~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~18_combout\ = (\SW[0]~input_o\ & ((\sram|Mux26~17_combout\ & ((\sram|addresses[15][5]~q\))) # (!\sram|Mux26~17_combout\ & (\sram|addresses[13][5]~q\)))) # (!\SW[0]~input_o\ & (((\sram|Mux26~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[13][5]~q\,
	datac => \sram|addresses[15][5]~q\,
	datad => \sram|Mux26~17_combout\,
	combout => \sram|Mux26~18_combout\);

-- Location: FF_X112_Y37_N19
\sram|addresses[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][5]~q\);

-- Location: FF_X112_Y37_N1
\sram|addresses[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][5]~q\);

-- Location: LCCOMB_X112_Y37_N18
\sram|Mux26~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~14_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\sram|addresses[1][5]~q\)) # (!\SW[0]~input_o\ & ((\sram|addresses[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[1][5]~q\,
	datad => \sram|addresses[0][5]~q\,
	combout => \sram|Mux26~14_combout\);

-- Location: LCCOMB_X113_Y36_N4
\sram|Mux26~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~15_combout\ = (\SW[1]~input_o\ & ((\sram|Mux26~14_combout\ & (\sram|addresses[3][5]~q\)) # (!\sram|Mux26~14_combout\ & ((\sram|addresses[2][5]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux26~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|addresses[3][5]~q\,
	datac => \sram|addresses[2][5]~q\,
	datad => \sram|Mux26~14_combout\,
	combout => \sram|Mux26~15_combout\);

-- Location: FF_X114_Y37_N29
\sram|addresses[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][5]~q\);

-- Location: FF_X114_Y40_N31
\sram|addresses[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][5]~q\);

-- Location: FF_X113_Y38_N29
\sram|addresses[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][5]~q\);

-- Location: LCCOMB_X114_Y40_N30
\sram|Mux26~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|addresses[6][5]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\sram|addresses[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[6][5]~q\,
	datad => \sram|addresses[4][5]~q\,
	combout => \sram|Mux26~12_combout\);

-- Location: LCCOMB_X114_Y36_N28
\sram|Mux26~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~13_combout\ = (\sram|Mux26~12_combout\ & (((\sram|addresses[7][5]~q\) # (!\SW[0]~input_o\)))) # (!\sram|Mux26~12_combout\ & (\sram|addresses[5][5]~q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[5][5]~q\,
	datab => \sram|addresses[7][5]~q\,
	datac => \sram|Mux26~12_combout\,
	datad => \SW[0]~input_o\,
	combout => \sram|Mux26~13_combout\);

-- Location: LCCOMB_X114_Y36_N6
\sram|Mux26~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~16_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\sram|Mux26~13_combout\))) # (!\SW[2]~input_o\ & (\sram|Mux26~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|Mux26~15_combout\,
	datad => \sram|Mux26~13_combout\,
	combout => \sram|Mux26~16_combout\);

-- Location: LCCOMB_X114_Y36_N8
\sram|Mux26~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~19_combout\ = (\SW[3]~input_o\ & ((\sram|Mux26~16_combout\ & ((\sram|Mux26~18_combout\))) # (!\sram|Mux26~16_combout\ & (\sram|Mux26~11_combout\)))) # (!\SW[3]~input_o\ & (((\sram|Mux26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|Mux26~11_combout\,
	datac => \sram|Mux26~18_combout\,
	datad => \sram|Mux26~16_combout\,
	combout => \sram|Mux26~19_combout\);

-- Location: FF_X112_Y40_N5
\sram|addresses[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][5]~q\);

-- Location: FF_X113_Y40_N7
\sram|addresses[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][5]~q\);

-- Location: LCCOMB_X112_Y40_N4
\sram|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\sram|addresses[23][5]~q\)) # (!\SW[2]~input_o\ & ((\sram|addresses[19][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[23][5]~q\,
	datad => \sram|addresses[19][5]~q\,
	combout => \sram|Mux26~7_combout\);

-- Location: LCCOMB_X113_Y40_N4
\sram|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~8_combout\ = (\SW[3]~input_o\ & ((\sram|Mux26~7_combout\ & ((\sram|addresses[31][5]~q\))) # (!\sram|Mux26~7_combout\ & (\sram|addresses[27][5]~q\)))) # (!\SW[3]~input_o\ & (\sram|Mux26~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|Mux26~7_combout\,
	datac => \sram|addresses[27][5]~q\,
	datad => \sram|addresses[31][5]~q\,
	combout => \sram|Mux26~8_combout\);

-- Location: FF_X112_Y42_N9
\sram|addresses[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][5]~q\);

-- Location: LCCOMB_X112_Y42_N6
\sram|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~4_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\sram|addresses[24][5]~q\)) # (!\SW[3]~input_o\ & ((\sram|addresses[16][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[24][5]~q\,
	datad => \sram|addresses[16][5]~q\,
	combout => \sram|Mux26~4_combout\);

-- Location: LCCOMB_X112_Y42_N8
\sram|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~5_combout\ = (\SW[2]~input_o\ & ((\sram|Mux26~4_combout\ & (\sram|addresses[28][5]~q\)) # (!\sram|Mux26~4_combout\ & ((\sram|addresses[20][5]~q\))))) # (!\SW[2]~input_o\ & (((\sram|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[28][5]~q\,
	datac => \sram|addresses[20][5]~q\,
	datad => \sram|Mux26~4_combout\,
	combout => \sram|Mux26~5_combout\);

-- Location: LCCOMB_X113_Y39_N26
\sram|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~2_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\sram|addresses[21][5]~q\)) # (!\SW[2]~input_o\ & ((\sram|addresses[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[21][5]~q\,
	datac => \SW[2]~input_o\,
	datad => \sram|addresses[17][5]~q\,
	combout => \sram|Mux26~2_combout\);

-- Location: LCCOMB_X111_Y39_N18
\sram|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux26~2_combout\ & ((\sram|addresses[29][5]~q\))) # (!\sram|Mux26~2_combout\ & (\sram|addresses[25][5]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[25][5]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[29][5]~q\,
	datad => \sram|Mux26~2_combout\,
	combout => \sram|Mux26~3_combout\);

-- Location: LCCOMB_X114_Y36_N24
\sram|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~6_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\sram|Mux26~3_combout\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\sram|Mux26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux26~5_combout\,
	datad => \sram|Mux26~3_combout\,
	combout => \sram|Mux26~6_combout\);

-- Location: LCCOMB_X114_Y36_N18
\sram|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~9_combout\ = (\SW[1]~input_o\ & ((\sram|Mux26~6_combout\ & ((\sram|Mux26~8_combout\))) # (!\sram|Mux26~6_combout\ & (\sram|Mux26~1_combout\)))) # (!\SW[1]~input_o\ & (((\sram|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux26~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux26~8_combout\,
	datad => \sram|Mux26~6_combout\,
	combout => \sram|Mux26~9_combout\);

-- Location: LCCOMB_X114_Y36_N16
\sram|Mux26~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux26~20_combout\ = (\SW[4]~input_o\ & ((\sram|Mux26~9_combout\))) # (!\SW[4]~input_o\ & (\sram|Mux26~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \sram|Mux26~19_combout\,
	datad => \sram|Mux26~9_combout\,
	combout => \sram|Mux26~20_combout\);

-- Location: FF_X114_Y36_N17
\sram|dataReadTwo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux26~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(5));

-- Location: LCCOMB_X111_Y36_N26
\sData2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(5) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(5)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(5),
	datac => \sram|dataReadTwo\(5),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData2(5));

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

-- Location: LCCOMB_X111_Y35_N16
\alu|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~6_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\) # (\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \alu|Mux5~6_combout\);

-- Location: FF_X112_Y38_N13
\sram|addresses[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][3]~q\);

-- Location: FF_X111_Y38_N27
\sram|addresses[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][3]~q\);

-- Location: LCCOMB_X112_Y38_N12
\sram|Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~18_combout\ = (\sram|Mux12~17_combout\ & (((\sram|addresses[15][3]~q\)) # (!\SW[5]~input_o\))) # (!\sram|Mux12~17_combout\ & (\SW[5]~input_o\ & (\sram|addresses[13][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux12~17_combout\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[13][3]~q\,
	datad => \sram|addresses[15][3]~q\,
	combout => \sram|Mux12~18_combout\);

-- Location: LCCOMB_X114_Y41_N14
\sram|addresses[4][3]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[4][3]~74_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[4][3]~74_combout\);

-- Location: FF_X114_Y41_N15
\sram|addresses[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[4][3]~74_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][3]~q\);

-- Location: LCCOMB_X114_Y41_N16
\sram|addresses[6][3]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[6][3]~73_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[6][3]~73_combout\);

-- Location: FF_X114_Y41_N17
\sram|addresses[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[6][3]~73_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][3]~q\);

-- Location: LCCOMB_X114_Y41_N0
\sram|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((!\sram|addresses[6][3]~q\))) # (!\SW[6]~input_o\ & (!\sram|addresses[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[4][3]~q\,
	datad => \sram|addresses[6][3]~q\,
	combout => \sram|Mux12~12_combout\);

-- Location: LCCOMB_X114_Y37_N8
\sram|addresses[7][3]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[7][3]~75_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[7][3]~75_combout\);

-- Location: FF_X114_Y37_N9
\sram|addresses[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[7][3]~75_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][3]~q\);

-- Location: LCCOMB_X113_Y36_N22
\sram|addresses[5][3]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[5][3]~72_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[5][3]~72_combout\);

-- Location: FF_X113_Y36_N23
\sram|addresses[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[5][3]~72_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][3]~q\);

-- Location: LCCOMB_X114_Y41_N22
\sram|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux12~12_combout\ & (!\sram|addresses[7][3]~q\)) # (!\sram|Mux12~12_combout\ & ((!\sram|addresses[5][3]~q\))))) # (!\SW[5]~input_o\ & (\sram|Mux12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|Mux12~12_combout\,
	datac => \sram|addresses[7][3]~q\,
	datad => \sram|addresses[5][3]~q\,
	combout => \sram|Mux12~13_combout\);

-- Location: LCCOMB_X114_Y33_N0
\sram|addresses[2][3]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[2][3]~76_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[2][3]~76_combout\);

-- Location: FF_X114_Y33_N1
\sram|addresses[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[2][3]~76_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][3]~q\);

-- Location: LCCOMB_X112_Y37_N10
\sram|addresses[1][3]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[1][3]~77_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[1][3]~77_combout\);

-- Location: FF_X112_Y37_N11
\sram|addresses[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[1][3]~77_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][3]~q\);

-- Location: LCCOMB_X112_Y37_N16
\sram|addresses[0][3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[0][3]~78_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[0][3]~78_combout\);

-- Location: FF_X112_Y37_N17
\sram|addresses[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[0][3]~78_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][3]~q\);

-- Location: LCCOMB_X112_Y37_N14
\sram|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (!\sram|addresses[1][3]~q\)) # (!\SW[5]~input_o\ & ((!\sram|addresses[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[1][3]~q\,
	datad => \sram|addresses[0][3]~q\,
	combout => \sram|Mux12~14_combout\);

-- Location: LCCOMB_X114_Y41_N28
\sram|Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~15_combout\ = (\SW[6]~input_o\ & ((\sram|Mux12~14_combout\ & (!\sram|addresses[3][3]~q\)) # (!\sram|Mux12~14_combout\ & ((!\sram|addresses[2][3]~q\))))) # (!\SW[6]~input_o\ & (((\sram|Mux12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[3][3]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[2][3]~q\,
	datad => \sram|Mux12~14_combout\,
	combout => \sram|Mux12~15_combout\);

-- Location: LCCOMB_X114_Y41_N10
\sram|Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~16_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\sram|Mux12~13_combout\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\sram|Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux12~13_combout\,
	datad => \sram|Mux12~15_combout\,
	combout => \sram|Mux12~16_combout\);

-- Location: FF_X114_Y35_N15
\sram|addresses[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][3]~q\);

-- Location: FF_X114_Y35_N25
\sram|addresses[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][3]~q\);

-- Location: LCCOMB_X114_Y35_N24
\sram|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~10_combout\ = (\SW[5]~input_o\ & (((\sram|addresses[9][3]~q\) # (\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\sram|addresses[8][3]~q\ & ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|addresses[8][3]~q\,
	datac => \sram|addresses[9][3]~q\,
	datad => \SW[6]~input_o\,
	combout => \sram|Mux12~10_combout\);

-- Location: FF_X113_Y35_N13
\sram|addresses[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][3]~q\);

-- Location: LCCOMB_X113_Y35_N2
\sram|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux12~10_combout\ & ((\sram|addresses[11][3]~q\))) # (!\sram|Mux12~10_combout\ & (\sram|addresses[10][3]~q\)))) # (!\SW[6]~input_o\ & (\sram|Mux12~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux12~10_combout\,
	datac => \sram|addresses[10][3]~q\,
	datad => \sram|addresses[11][3]~q\,
	combout => \sram|Mux12~11_combout\);

-- Location: LCCOMB_X113_Y41_N8
\sram|Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~19_combout\ = (\SW[8]~input_o\ & ((\sram|Mux12~16_combout\ & (\sram|Mux12~18_combout\)) # (!\sram|Mux12~16_combout\ & ((\sram|Mux12~11_combout\))))) # (!\SW[8]~input_o\ & (((\sram|Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|Mux12~18_combout\,
	datac => \sram|Mux12~16_combout\,
	datad => \sram|Mux12~11_combout\,
	combout => \sram|Mux12~19_combout\);

-- Location: FF_X113_Y40_N1
\sram|addresses[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][3]~q\);

-- Location: LCCOMB_X109_Y39_N22
\sram|addresses[31][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[31][3]~feeder_combout\ = sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[31][3]~feeder_combout\);

-- Location: FF_X109_Y39_N23
\sram|addresses[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[31][3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][3]~q\);

-- Location: LCCOMB_X113_Y33_N22
\sram|addresses[19][3]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[19][3]~71_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(3),
	combout => \sram|addresses[19][3]~71_combout\);

-- Location: FF_X113_Y33_N23
\sram|addresses[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[19][3]~71_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][3]~q\);

-- Location: LCCOMB_X113_Y33_N28
\sram|addresses[23][3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[23][3]~70_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(3),
	combout => \sram|addresses[23][3]~70_combout\);

-- Location: FF_X113_Y33_N29
\sram|addresses[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[23][3]~70_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][3]~q\);

-- Location: LCCOMB_X113_Y33_N20
\sram|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\sram|addresses[23][3]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\sram|addresses[19][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[19][3]~q\,
	datad => \sram|addresses[23][3]~q\,
	combout => \sram|Mux12~7_combout\);

-- Location: LCCOMB_X112_Y41_N22
\sram|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~8_combout\ = (\SW[8]~input_o\ & ((\sram|Mux12~7_combout\ & ((\sram|addresses[31][3]~q\))) # (!\sram|Mux12~7_combout\ & (\sram|addresses[27][3]~q\)))) # (!\SW[8]~input_o\ & (((\sram|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|addresses[27][3]~q\,
	datac => \sram|addresses[31][3]~q\,
	datad => \sram|Mux12~7_combout\,
	combout => \sram|Mux12~8_combout\);

-- Location: FF_X114_Y39_N23
\sram|addresses[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][3]~q\);

-- Location: LCCOMB_X114_Y43_N10
\sram|addresses[18][3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[18][3]~65_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[18][3]~65_combout\);

-- Location: FF_X114_Y43_N11
\sram|addresses[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[18][3]~65_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][3]~q\);

-- Location: LCCOMB_X114_Y39_N28
\sram|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~0_combout\ = (\SW[8]~input_o\ & ((\sram|addresses[26][3]~q\) # ((\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (((!\sram|addresses[18][3]~q\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[26][3]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[18][3]~q\,
	datad => \SW[7]~input_o\,
	combout => \sram|Mux12~0_combout\);

-- Location: LCCOMB_X114_Y39_N22
\sram|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux12~0_combout\ & ((\sram|addresses[30][3]~q\))) # (!\sram|Mux12~0_combout\ & (!\sram|addresses[22][3]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[22][3]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[30][3]~q\,
	datad => \sram|Mux12~0_combout\,
	combout => \sram|Mux12~1_combout\);

-- Location: LCCOMB_X112_Y42_N28
\sram|addresses[20][3]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[20][3]~68_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[20][3]~68_combout\);

-- Location: FF_X112_Y42_N29
\sram|addresses[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[20][3]~68_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][3]~q\);

-- Location: FF_X111_Y42_N7
\sram|addresses[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][3]~q\);

-- Location: FF_X112_Y42_N3
\sram|addresses[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][3]~q\);

-- Location: LCCOMB_X111_Y42_N8
\sram|addresses[16][3]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[16][3]~69_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(3),
	combout => \sram|addresses[16][3]~69_combout\);

-- Location: FF_X111_Y42_N9
\sram|addresses[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[16][3]~69_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][3]~q\);

-- Location: LCCOMB_X112_Y42_N2
\sram|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~4_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|addresses[24][3]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((!\sram|addresses[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[24][3]~q\,
	datad => \sram|addresses[16][3]~q\,
	combout => \sram|Mux12~4_combout\);

-- Location: LCCOMB_X111_Y42_N6
\sram|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~5_combout\ = (\SW[7]~input_o\ & ((\sram|Mux12~4_combout\ & ((\sram|addresses[28][3]~q\))) # (!\sram|Mux12~4_combout\ & (!\sram|addresses[20][3]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[20][3]~q\,
	datac => \sram|addresses[28][3]~q\,
	datad => \sram|Mux12~4_combout\,
	combout => \sram|Mux12~5_combout\);

-- Location: FF_X110_Y37_N29
\sram|addresses[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][3]~q\);

-- Location: LCCOMB_X110_Y37_N30
\sram|addresses[17][3]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[17][3]~67_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[17][3]~67_combout\);

-- Location: FF_X110_Y37_N31
\sram|addresses[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[17][3]~67_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][3]~q\);

-- Location: LCCOMB_X113_Y39_N16
\sram|addresses[21][3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[21][3]~66_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[21][3]~66_combout\);

-- Location: FF_X113_Y39_N17
\sram|addresses[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[21][3]~66_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][3]~q\);

-- Location: LCCOMB_X110_Y37_N0
\sram|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\sram|addresses[21][3]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\sram|addresses[17][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[17][3]~q\,
	datad => \sram|addresses[21][3]~q\,
	combout => \sram|Mux12~2_combout\);

-- Location: LCCOMB_X110_Y37_N18
\sram|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux12~2_combout\ & (\sram|addresses[29][3]~q\)) # (!\sram|Mux12~2_combout\ & ((\sram|addresses[25][3]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[29][3]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[25][3]~q\,
	datad => \sram|Mux12~2_combout\,
	combout => \sram|Mux12~3_combout\);

-- Location: LCCOMB_X113_Y41_N12
\sram|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~6_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\sram|Mux12~3_combout\))) # (!\SW[5]~input_o\ & (\sram|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux12~5_combout\,
	datad => \sram|Mux12~3_combout\,
	combout => \sram|Mux12~6_combout\);

-- Location: LCCOMB_X113_Y41_N10
\sram|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~9_combout\ = (\SW[6]~input_o\ & ((\sram|Mux12~6_combout\ & (\sram|Mux12~8_combout\)) # (!\sram|Mux12~6_combout\ & ((\sram|Mux12~1_combout\))))) # (!\SW[6]~input_o\ & (((\sram|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux12~8_combout\,
	datac => \sram|Mux12~1_combout\,
	datad => \sram|Mux12~6_combout\,
	combout => \sram|Mux12~9_combout\);

-- Location: LCCOMB_X113_Y41_N14
\sram|Mux12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux12~20_combout\ = (\SW[9]~input_o\ & ((\sram|Mux12~9_combout\))) # (!\SW[9]~input_o\ & (\sram|Mux12~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \sram|Mux12~19_combout\,
	datad => \sram|Mux12~9_combout\,
	combout => \sram|Mux12~20_combout\);

-- Location: FF_X113_Y41_N15
\sram|dataReadOne[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux12~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(3));

-- Location: LCCOMB_X113_Y41_N30
\sData1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(3) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadOne\(3)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(3),
	datac => \sram|dataReadOne\(3),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData1(3));

-- Location: LCCOMB_X110_Y37_N2
\alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ = sData2(3) $ (sData1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sData2(3),
	datad => sData1(3),
	combout => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X111_Y35_N2
\alu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~0_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((sData2(3)) # (sData1(3)))) # (!\SW[15]~input_o\ & (sData2(3) & sData1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => sData2(3),
	datac => sData1(3),
	datad => \SW[16]~input_o\,
	combout => \alu|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y35_N4
\alu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~1_combout\ = (\alu|Mux5~5_combout\ & ((\alu|Mux5~6_combout\) # ((\alu|Mux4~0_combout\)))) # (!\alu|Mux5~5_combout\ & (!\alu|Mux5~6_combout\ & (\alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~5_combout\,
	datab => \alu|Mux5~6_combout\,
	datac => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \alu|Mux4~0_combout\,
	combout => \alu|Mux4~1_combout\);

-- Location: LCCOMB_X110_Y39_N22
\alu|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~11_combout\ = (sData2(0) & (sData1(4))) # (!sData2(0) & ((sData1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(0),
	datac => sData1(4),
	datad => sData1(3),
	combout => \alu|ShiftRight0~11_combout\);

-- Location: LCCOMB_X113_Y38_N26
\sram|addresses[4][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[4][0]~25_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(0),
	combout => \sram|addresses[4][0]~25_combout\);

-- Location: FF_X113_Y38_N27
\sram|addresses[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[4][0]~25_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][0]~q\);

-- Location: LCCOMB_X111_Y45_N16
\sram|addresses[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[5][0]~feeder_combout\ = sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[5][0]~feeder_combout\);

-- Location: FF_X111_Y45_N17
\sram|addresses[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[5][0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][0]~q\);

-- Location: LCCOMB_X112_Y38_N24
\sram|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~10_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((\sram|addresses[5][0]~q\))) # (!\SW[5]~input_o\ & (!\sram|addresses[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[4][0]~q\,
	datac => \sram|addresses[5][0]~q\,
	datad => \SW[5]~input_o\,
	combout => \sram|Mux15~10_combout\);

-- Location: FF_X114_Y37_N7
\sram|addresses[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][0]~q\);

-- Location: LCCOMB_X113_Y38_N4
\sram|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~11_combout\ = (\sram|Mux15~10_combout\ & (((\sram|addresses[7][0]~q\) # (!\SW[6]~input_o\)))) # (!\sram|Mux15~10_combout\ & (!\sram|addresses[6][0]~q\ & ((\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[6][0]~q\,
	datab => \sram|Mux15~10_combout\,
	datac => \sram|addresses[7][0]~q\,
	datad => \SW[6]~input_o\,
	combout => \sram|Mux15~11_combout\);

-- Location: FF_X114_Y35_N1
\sram|addresses[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][0]~q\);

-- Location: FF_X113_Y38_N15
\sram|addresses[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][0]~q\);

-- Location: LCCOMB_X113_Y35_N26
\sram|addresses[10][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[10][0]~26_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(0),
	combout => \sram|addresses[10][0]~26_combout\);

-- Location: FF_X113_Y35_N27
\sram|addresses[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[10][0]~26_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][0]~q\);

-- Location: LCCOMB_X114_Y35_N2
\sram|addresses[8][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[8][0]~27_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[8][0]~27_combout\);

-- Location: FF_X114_Y35_N3
\sram|addresses[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[8][0]~27_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][0]~q\);

-- Location: LCCOMB_X113_Y35_N4
\sram|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\sram|addresses[10][0]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\sram|addresses[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[10][0]~q\,
	datad => \sram|addresses[8][0]~q\,
	combout => \sram|Mux15~12_combout\);

-- Location: LCCOMB_X113_Y38_N14
\sram|Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux15~12_combout\ & ((\sram|addresses[11][0]~q\))) # (!\sram|Mux15~12_combout\ & (\sram|addresses[9][0]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|addresses[9][0]~q\,
	datac => \sram|addresses[11][0]~q\,
	datad => \sram|Mux15~12_combout\,
	combout => \sram|Mux15~13_combout\);

-- Location: FF_X111_Y37_N9
\sram|addresses[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][0]~q\);

-- Location: LCCOMB_X114_Y38_N30
\sram|addresses[2][0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[2][0]~28_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[2][0]~28_combout\);

-- Location: FF_X114_Y38_N31
\sram|addresses[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[2][0]~28_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][0]~q\);

-- Location: LCCOMB_X112_Y37_N2
\sram|addresses[0][0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[0][0]~29_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[0][0]~29_combout\);

-- Location: FF_X112_Y37_N3
\sram|addresses[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[0][0]~29_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][0]~q\);

-- Location: LCCOMB_X112_Y37_N28
\sram|Mux15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~14_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\sram|addresses[2][0]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & ((!\sram|addresses[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[2][0]~q\,
	datad => \sram|addresses[0][0]~q\,
	combout => \sram|Mux15~14_combout\);

-- Location: LCCOMB_X112_Y37_N22
\sram|Mux15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~15_combout\ = (\SW[5]~input_o\ & ((\sram|Mux15~14_combout\ & ((\sram|addresses[3][0]~q\))) # (!\sram|Mux15~14_combout\ & (\sram|addresses[1][0]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[1][0]~q\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[3][0]~q\,
	datad => \sram|Mux15~14_combout\,
	combout => \sram|Mux15~15_combout\);

-- Location: LCCOMB_X113_Y38_N12
\sram|Mux15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~16_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|Mux15~13_combout\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((\sram|Mux15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|Mux15~13_combout\,
	datad => \sram|Mux15~15_combout\,
	combout => \sram|Mux15~16_combout\);

-- Location: LCCOMB_X113_Y38_N6
\sram|Mux15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~19_combout\ = (\SW[7]~input_o\ & ((\sram|Mux15~16_combout\ & (\sram|Mux15~18_combout\)) # (!\sram|Mux15~16_combout\ & ((\sram|Mux15~11_combout\))))) # (!\SW[7]~input_o\ & (((\sram|Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux15~18_combout\,
	datab => \SW[7]~input_o\,
	datac => \sram|Mux15~11_combout\,
	datad => \sram|Mux15~16_combout\,
	combout => \sram|Mux15~19_combout\);

-- Location: FF_X110_Y38_N9
\sram|addresses[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][0]~q\);

-- Location: FF_X111_Y39_N23
\sram|addresses[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][0]~q\);

-- Location: FF_X111_Y39_N29
\sram|addresses[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][0]~q\);

-- Location: LCCOMB_X111_Y39_N22
\sram|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~0_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\sram|addresses[25][0]~q\))) # (!\SW[8]~input_o\ & (\sram|addresses[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[17][0]~q\,
	datad => \sram|addresses[25][0]~q\,
	combout => \sram|Mux15~0_combout\);

-- Location: FF_X110_Y39_N5
\sram|addresses[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][0]~q\);

-- Location: LCCOMB_X110_Y38_N6
\sram|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux15~0_combout\ & (\sram|addresses[29][0]~q\)) # (!\sram|Mux15~0_combout\ & ((\sram|addresses[21][0]~q\))))) # (!\SW[7]~input_o\ & (((\sram|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|addresses[29][0]~q\,
	datac => \sram|Mux15~0_combout\,
	datad => \sram|addresses[21][0]~q\,
	combout => \sram|Mux15~1_combout\);

-- Location: LCCOMB_X110_Y42_N26
\sram|addresses[20][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[20][0]~21_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[20][0]~21_combout\);

-- Location: FF_X110_Y42_N27
\sram|addresses[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[20][0]~21_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[20][0]~q\);

-- Location: LCCOMB_X111_Y42_N26
\sram|addresses[16][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[16][0]~22_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[16][0]~22_combout\);

-- Location: FF_X111_Y42_N27
\sram|addresses[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[16][0]~22_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][0]~q\);

-- Location: LCCOMB_X110_Y42_N20
\sram|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~4_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\sram|addresses[20][0]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((!\sram|addresses[16][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[20][0]~q\,
	datad => \sram|addresses[16][0]~q\,
	combout => \sram|Mux15~4_combout\);

-- Location: LCCOMB_X110_Y39_N10
\sram|addresses[24][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[24][0]~20_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(0),
	combout => \sram|addresses[24][0]~20_combout\);

-- Location: FF_X110_Y39_N11
\sram|addresses[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[24][0]~20_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][0]~q\);

-- Location: LCCOMB_X110_Y42_N14
\sram|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~5_combout\ = (\sram|Mux15~4_combout\ & (((!\SW[8]~input_o\)) # (!\sram|addresses[28][0]~q\))) # (!\sram|Mux15~4_combout\ & (((!\sram|addresses[24][0]~q\ & \SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][0]~q\,
	datab => \sram|Mux15~4_combout\,
	datac => \sram|addresses[24][0]~q\,
	datad => \SW[8]~input_o\,
	combout => \sram|Mux15~5_combout\);

-- Location: LCCOMB_X114_Y39_N18
\sram|addresses[30][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[30][0]~19_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[30][0]~19_combout\);

-- Location: FF_X114_Y39_N19
\sram|addresses[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[30][0]~19_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][0]~q\);

-- Location: LCCOMB_X110_Y42_N8
\sram|addresses[18][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[18][0]~18_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[18][0]~18_combout\);

-- Location: FF_X110_Y42_N9
\sram|addresses[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[18][0]~18_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][0]~q\);

-- Location: LCCOMB_X112_Y39_N26
\sram|addresses[22][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[22][0]~17_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(0),
	combout => \sram|addresses[22][0]~17_combout\);

-- Location: FF_X112_Y39_N27
\sram|addresses[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[22][0]~17_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][0]~q\);

-- Location: LCCOMB_X110_Y42_N2
\sram|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~2_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\sram|addresses[22][0]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & (!\sram|addresses[18][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[18][0]~q\,
	datad => \sram|addresses[22][0]~q\,
	combout => \sram|Mux15~2_combout\);

-- Location: LCCOMB_X110_Y42_N24
\sram|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux15~2_combout\ & ((!\sram|addresses[30][0]~q\))) # (!\sram|Mux15~2_combout\ & (!\sram|addresses[26][0]~q\)))) # (!\SW[8]~input_o\ & (((\sram|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[26][0]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[30][0]~q\,
	datad => \sram|Mux15~2_combout\,
	combout => \sram|Mux15~3_combout\);

-- Location: LCCOMB_X110_Y42_N4
\sram|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~6_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((\sram|Mux15~3_combout\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\sram|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|Mux15~5_combout\,
	datad => \sram|Mux15~3_combout\,
	combout => \sram|Mux15~6_combout\);

-- Location: FF_X112_Y40_N7
\sram|addresses[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][0]~q\);

-- Location: FF_X113_Y40_N13
\sram|addresses[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][0]~q\);

-- Location: FF_X113_Y40_N23
\sram|addresses[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][0]~q\);

-- Location: LCCOMB_X112_Y40_N12
\sram|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~7_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & (\sram|addresses[27][0]~q\)) # (!\SW[8]~input_o\ & ((\sram|addresses[19][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[27][0]~q\,
	datad => \sram|addresses[19][0]~q\,
	combout => \sram|Mux15~7_combout\);

-- Location: LCCOMB_X112_Y40_N6
\sram|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~8_combout\ = (\SW[7]~input_o\ & ((\sram|Mux15~7_combout\ & (\sram|addresses[31][0]~q\)) # (!\sram|Mux15~7_combout\ & ((\sram|addresses[23][0]~q\))))) # (!\SW[7]~input_o\ & (((\sram|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[31][0]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[23][0]~q\,
	datad => \sram|Mux15~7_combout\,
	combout => \sram|Mux15~8_combout\);

-- Location: LCCOMB_X114_Y38_N16
\sram|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~9_combout\ = (\SW[5]~input_o\ & ((\sram|Mux15~6_combout\ & ((\sram|Mux15~8_combout\))) # (!\sram|Mux15~6_combout\ & (\sram|Mux15~1_combout\)))) # (!\SW[5]~input_o\ & (((\sram|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|Mux15~1_combout\,
	datac => \sram|Mux15~6_combout\,
	datad => \sram|Mux15~8_combout\,
	combout => \sram|Mux15~9_combout\);

-- Location: LCCOMB_X114_Y38_N18
\sram|Mux15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux15~20_combout\ = (\SW[9]~input_o\ & ((\sram|Mux15~9_combout\))) # (!\SW[9]~input_o\ & (\sram|Mux15~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \sram|Mux15~19_combout\,
	datad => \sram|Mux15~9_combout\,
	combout => \sram|Mux15~20_combout\);

-- Location: FF_X114_Y38_N19
\sram|dataReadOne[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux15~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(0));

-- Location: LCCOMB_X110_Y40_N12
\sData1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(0) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadOne\(0)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(0),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	datad => \sram|dataReadOne\(0),
	combout => sData1(0));

-- Location: LCCOMB_X109_Y39_N20
\alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~1_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\ & (sData1(0) $ (sData2(0))))) # (!\SW[16]~input_o\ & ((sData1(0) $ (sData2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => sData1(0),
	datad => sData2(0),
	combout => \alu|Mux7~1_combout\);

-- Location: LCCOMB_X110_Y39_N8
\alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~0_combout\ = \SW[16]~input_o\ $ (((sData1(0) & ((sData2(0)) # (\SW[15]~input_o\))) # (!sData1(0) & (sData2(0) & \SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(0),
	datab => \SW[16]~input_o\,
	datac => sData2(0),
	datad => \SW[15]~input_o\,
	combout => \alu|Mux7~0_combout\);

-- Location: LCCOMB_X110_Y39_N14
\alu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~2_combout\ = (\SW[15]~input_o\ & (!sData2(3) & (\SW[16]~input_o\ & !\alu|ShiftRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => sData2(3),
	datac => \SW[16]~input_o\,
	datad => \alu|ShiftRight0~3_combout\,
	combout => \alu|Mux7~2_combout\);

-- Location: LCCOMB_X113_Y38_N20
\sramDataWrite[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(1) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (\alu|Mux6~4_combout\)) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((sramDataWrite(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~4_combout\,
	datab => sramDataWrite(1),
	datad => \sramDataWrite[7]~0clkctrl_outclk\,
	combout => sramDataWrite(1));

-- Location: FF_X113_Y40_N21
\sram|addresses[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[27][1]~q\);

-- Location: FF_X112_Y40_N29
\sram|addresses[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][1]~q\);

-- Location: FF_X113_Y33_N3
\sram|addresses[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[19][1]~q\);

-- Location: LCCOMB_X112_Y40_N28
\sram|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~7_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((\sram|addresses[23][1]~q\)))) # (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\sram|addresses[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[23][1]~q\,
	datad => \sram|addresses[19][1]~q\,
	combout => \sram|Mux14~7_combout\);

-- Location: LCCOMB_X113_Y40_N20
\sram|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~8_combout\ = (\SW[8]~input_o\ & ((\sram|Mux14~7_combout\ & (\sram|addresses[31][1]~q\)) # (!\sram|Mux14~7_combout\ & ((\sram|addresses[27][1]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[31][1]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[27][1]~q\,
	datad => \sram|Mux14~7_combout\,
	combout => \sram|Mux14~8_combout\);

-- Location: LCCOMB_X114_Y42_N18
\sram|addresses[28][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[28][1]~39_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[28][1]~39_combout\);

-- Location: FF_X114_Y42_N19
\sram|addresses[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[28][1]~39_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][1]~q\);

-- Location: LCCOMB_X111_Y42_N20
\sram|addresses[16][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[16][1]~38_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[16][1]~38_combout\);

-- Location: FF_X111_Y42_N21
\sram|addresses[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[16][1]~38_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[16][1]~q\);

-- Location: LCCOMB_X112_Y42_N10
\sram|addresses[24][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[24][1]~37_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[24][1]~37_combout\);

-- Location: FF_X112_Y42_N11
\sram|addresses[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[24][1]~37_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[24][1]~q\);

-- Location: LCCOMB_X114_Y40_N2
\sram|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~4_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((!\sram|addresses[24][1]~q\))) # (!\SW[8]~input_o\ & (!\sram|addresses[16][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[16][1]~q\,
	datad => \sram|addresses[24][1]~q\,
	combout => \sram|Mux14~4_combout\);

-- Location: LCCOMB_X114_Y40_N8
\sram|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~5_combout\ = (\SW[7]~input_o\ & ((\sram|Mux14~4_combout\ & ((!\sram|addresses[28][1]~q\))) # (!\sram|Mux14~4_combout\ & (!\sram|addresses[20][1]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[20][1]~q\,
	datab => \sram|addresses[28][1]~q\,
	datac => \SW[7]~input_o\,
	datad => \sram|Mux14~4_combout\,
	combout => \sram|Mux14~5_combout\);

-- Location: LCCOMB_X111_Y39_N12
\sram|addresses[25][1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[25][1]~32_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[25][1]~32_combout\);

-- Location: FF_X111_Y39_N13
\sram|addresses[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[25][1]~32_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][1]~q\);

-- Location: LCCOMB_X113_Y39_N0
\sram|addresses[21][1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[21][1]~33_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[21][1]~33_combout\);

-- Location: FF_X113_Y39_N1
\sram|addresses[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[21][1]~33_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[21][1]~q\);

-- Location: LCCOMB_X111_Y39_N30
\sram|addresses[17][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[17][1]~34_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[17][1]~34_combout\);

-- Location: FF_X111_Y39_N31
\sram|addresses[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[17][1]~34_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][1]~q\);

-- Location: LCCOMB_X114_Y39_N8
\sram|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (!\sram|addresses[21][1]~q\)) # (!\SW[7]~input_o\ & ((!\sram|addresses[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[21][1]~q\,
	datad => \sram|addresses[17][1]~q\,
	combout => \sram|Mux14~2_combout\);

-- Location: LCCOMB_X112_Y41_N0
\sram|addresses[29][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[29][1]~35_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[29][1]~35_combout\);

-- Location: FF_X112_Y41_N1
\sram|addresses[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[29][1]~35_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][1]~q\);

-- Location: LCCOMB_X114_Y39_N2
\sram|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux14~2_combout\ & ((!\sram|addresses[29][1]~q\))) # (!\sram|Mux14~2_combout\ & (!\sram|addresses[25][1]~q\)))) # (!\SW[8]~input_o\ & (((\sram|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|addresses[25][1]~q\,
	datac => \sram|Mux14~2_combout\,
	datad => \sram|addresses[29][1]~q\,
	combout => \sram|Mux14~3_combout\);

-- Location: LCCOMB_X114_Y40_N22
\sram|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~6_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((\sram|Mux14~3_combout\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & (\sram|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|Mux14~5_combout\,
	datad => \sram|Mux14~3_combout\,
	combout => \sram|Mux14~6_combout\);

-- Location: FF_X114_Y39_N7
\sram|addresses[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[30][1]~q\);

-- Location: FF_X114_Y39_N13
\sram|addresses[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[26][1]~q\);

-- Location: LCCOMB_X110_Y42_N6
\sram|addresses[18][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[18][1]~feeder_combout\ = sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[18][1]~feeder_combout\);

-- Location: FF_X110_Y42_N7
\sram|addresses[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[18][1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[18][1]~q\);

-- Location: LCCOMB_X114_Y39_N12
\sram|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~0_combout\ = (\SW[8]~input_o\ & ((\SW[7]~input_o\) # ((\sram|addresses[26][1]~q\)))) # (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & ((\sram|addresses[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[26][1]~q\,
	datad => \sram|addresses[18][1]~q\,
	combout => \sram|Mux14~0_combout\);

-- Location: LCCOMB_X114_Y39_N6
\sram|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux14~0_combout\ & ((\sram|addresses[30][1]~q\))) # (!\sram|Mux14~0_combout\ & (\sram|addresses[22][1]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[22][1]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[30][1]~q\,
	datad => \sram|Mux14~0_combout\,
	combout => \sram|Mux14~1_combout\);

-- Location: LCCOMB_X114_Y40_N4
\sram|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~9_combout\ = (\SW[6]~input_o\ & ((\sram|Mux14~6_combout\ & (\sram|Mux14~8_combout\)) # (!\sram|Mux14~6_combout\ & ((\sram|Mux14~1_combout\))))) # (!\SW[6]~input_o\ & (((\sram|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux14~8_combout\,
	datac => \sram|Mux14~6_combout\,
	datad => \sram|Mux14~1_combout\,
	combout => \sram|Mux14~9_combout\);

-- Location: LCCOMB_X114_Y35_N26
\sram|addresses[8][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[8][1]~41_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[8][1]~41_combout\);

-- Location: FF_X114_Y35_N27
\sram|addresses[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[8][1]~41_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[8][1]~q\);

-- Location: LCCOMB_X114_Y35_N28
\sram|addresses[9][1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[9][1]~40_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[9][1]~40_combout\);

-- Location: FF_X114_Y35_N29
\sram|addresses[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[9][1]~40_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[9][1]~q\);

-- Location: LCCOMB_X113_Y35_N20
\sram|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~10_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & ((!\sram|addresses[9][1]~q\))) # (!\SW[5]~input_o\ & (!\sram|addresses[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[8][1]~q\,
	datad => \sram|addresses[9][1]~q\,
	combout => \sram|Mux14~10_combout\);

-- Location: FF_X113_Y35_N7
\sram|addresses[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][1]~q\);

-- Location: FF_X113_Y38_N9
\sram|addresses[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][1]~q\);

-- Location: LCCOMB_X113_Y35_N6
\sram|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux14~10_combout\ & ((\sram|addresses[11][1]~q\))) # (!\sram|Mux14~10_combout\ & (\sram|addresses[10][1]~q\)))) # (!\SW[6]~input_o\ & (\sram|Mux14~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|Mux14~10_combout\,
	datac => \sram|addresses[10][1]~q\,
	datad => \sram|addresses[11][1]~q\,
	combout => \sram|Mux14~11_combout\);

-- Location: FF_X114_Y37_N19
\sram|addresses[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][1]~q\);

-- Location: FF_X114_Y34_N17
\sram|addresses[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[2][1]~q\);

-- Location: LCCOMB_X113_Y37_N22
\sram|addresses[1][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[1][1]~44_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[1][1]~44_combout\);

-- Location: FF_X113_Y37_N23
\sram|addresses[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[1][1]~44_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][1]~q\);

-- Location: LCCOMB_X112_Y37_N8
\sram|addresses[0][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[0][1]~45_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[0][1]~45_combout\);

-- Location: FF_X112_Y37_N9
\sram|addresses[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[0][1]~45_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[0][1]~q\);

-- Location: LCCOMB_X114_Y37_N24
\sram|Mux14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~14_combout\ = (\SW[6]~input_o\ & (\SW[5]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (!\sram|addresses[1][1]~q\)) # (!\SW[5]~input_o\ & ((!\sram|addresses[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[1][1]~q\,
	datad => \sram|addresses[0][1]~q\,
	combout => \sram|Mux14~14_combout\);

-- Location: LCCOMB_X114_Y37_N26
\sram|Mux14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~15_combout\ = (\SW[6]~input_o\ & ((\sram|Mux14~14_combout\ & (\sram|addresses[3][1]~q\)) # (!\sram|Mux14~14_combout\ & ((\sram|addresses[2][1]~q\))))) # (!\SW[6]~input_o\ & (((\sram|Mux14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[3][1]~q\,
	datac => \sram|addresses[2][1]~q\,
	datad => \sram|Mux14~14_combout\,
	combout => \sram|Mux14~15_combout\);

-- Location: LCCOMB_X113_Y36_N28
\sram|addresses[5][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[5][1]~42_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sramDataWrite(1),
	combout => \sram|addresses[5][1]~42_combout\);

-- Location: FF_X113_Y36_N29
\sram|addresses[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[5][1]~42_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][1]~q\);

-- Location: FF_X114_Y37_N17
\sram|addresses[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[7][1]~q\);

-- Location: FF_X114_Y40_N15
\sram|addresses[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][1]~q\);

-- Location: LCCOMB_X113_Y38_N10
\sram|addresses[4][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[4][1]~43_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[4][1]~43_combout\);

-- Location: FF_X113_Y38_N11
\sram|addresses[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[4][1]~43_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[4][1]~q\);

-- Location: LCCOMB_X114_Y40_N14
\sram|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~12_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\sram|addresses[6][1]~q\)) # (!\SW[6]~input_o\ & ((!\sram|addresses[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[6][1]~q\,
	datad => \sram|addresses[4][1]~q\,
	combout => \sram|Mux14~12_combout\);

-- Location: LCCOMB_X114_Y37_N16
\sram|Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux14~12_combout\ & ((\sram|addresses[7][1]~q\))) # (!\sram|Mux14~12_combout\ & (!\sram|addresses[5][1]~q\)))) # (!\SW[5]~input_o\ & (((\sram|Mux14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|addresses[5][1]~q\,
	datac => \sram|addresses[7][1]~q\,
	datad => \sram|Mux14~12_combout\,
	combout => \sram|Mux14~13_combout\);

-- Location: LCCOMB_X114_Y37_N22
\sram|Mux14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~16_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\sram|Mux14~13_combout\))) # (!\SW[7]~input_o\ & (\sram|Mux14~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|Mux14~15_combout\,
	datad => \sram|Mux14~13_combout\,
	combout => \sram|Mux14~16_combout\);

-- Location: LCCOMB_X110_Y40_N6
\sram|Mux14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~19_combout\ = (\SW[8]~input_o\ & ((\sram|Mux14~16_combout\ & (\sram|Mux14~18_combout\)) # (!\sram|Mux14~16_combout\ & ((\sram|Mux14~11_combout\))))) # (!\SW[8]~input_o\ & (((\sram|Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux14~18_combout\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux14~11_combout\,
	datad => \sram|Mux14~16_combout\,
	combout => \sram|Mux14~19_combout\);

-- Location: LCCOMB_X110_Y40_N26
\sram|Mux14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux14~20_combout\ = (\SW[9]~input_o\ & (\sram|Mux14~9_combout\)) # (!\SW[9]~input_o\ & ((\sram|Mux14~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \sram|Mux14~9_combout\,
	datad => \sram|Mux14~19_combout\,
	combout => \sram|Mux14~20_combout\);

-- Location: FF_X110_Y40_N27
\sram|dataReadOne[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux14~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(1));

-- Location: LCCOMB_X110_Y40_N14
\sData1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(1) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadOne\(1)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData1(1),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	datad => \sram|dataReadOne\(1),
	combout => sData1(1));

-- Location: LCCOMB_X114_Y39_N26
\sram|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~2_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\) # (!\sram|addresses[21][1]~q\)))) # (!\SW[2]~input_o\ & (!\sram|addresses[17][1]~q\ & ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[17][1]~q\,
	datac => \sram|addresses[21][1]~q\,
	datad => \SW[3]~input_o\,
	combout => \sram|Mux30~2_combout\);

-- Location: LCCOMB_X114_Y39_N4
\sram|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux30~2_combout\ & ((!\sram|addresses[29][1]~q\))) # (!\sram|Mux30~2_combout\ & (!\sram|addresses[25][1]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[25][1]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|Mux30~2_combout\,
	datad => \sram|addresses[29][1]~q\,
	combout => \sram|Mux30~3_combout\);

-- Location: LCCOMB_X114_Y40_N16
\sram|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~6_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\) # (\sram|Mux30~3_combout\)))) # (!\SW[0]~input_o\ & (\sram|Mux30~5_combout\ & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux30~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \sram|Mux30~3_combout\,
	combout => \sram|Mux30~6_combout\);

-- Location: FF_X112_Y39_N17
\sram|addresses[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][1]~q\);

-- Location: LCCOMB_X110_Y42_N30
\sram|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\sram|addresses[26][1]~q\))) # (!\SW[3]~input_o\ & (\sram|addresses[18][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[18][1]~q\,
	datad => \sram|addresses[26][1]~q\,
	combout => \sram|Mux30~0_combout\);

-- Location: LCCOMB_X110_Y42_N28
\sram|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux30~0_combout\ & ((\sram|addresses[30][1]~q\))) # (!\sram|Mux30~0_combout\ & (\sram|addresses[22][1]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[22][1]~q\,
	datac => \sram|Mux30~0_combout\,
	datad => \sram|addresses[30][1]~q\,
	combout => \sram|Mux30~1_combout\);

-- Location: LCCOMB_X113_Y33_N14
\sram|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\sram|addresses[23][1]~q\))) # (!\SW[2]~input_o\ & (\sram|addresses[19][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[19][1]~q\,
	datad => \sram|addresses[23][1]~q\,
	combout => \sram|Mux30~7_combout\);

-- Location: FF_X112_Y40_N15
\sram|addresses[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][1]~q\);

-- Location: LCCOMB_X113_Y33_N4
\sram|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~8_combout\ = (\SW[3]~input_o\ & ((\sram|Mux30~7_combout\ & ((\sram|addresses[31][1]~q\))) # (!\sram|Mux30~7_combout\ & (\sram|addresses[27][1]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[27][1]~q\,
	datac => \sram|Mux30~7_combout\,
	datad => \sram|addresses[31][1]~q\,
	combout => \sram|Mux30~8_combout\);

-- Location: LCCOMB_X114_Y40_N26
\sram|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~9_combout\ = (\SW[1]~input_o\ & ((\sram|Mux30~6_combout\ & ((\sram|Mux30~8_combout\))) # (!\sram|Mux30~6_combout\ & (\sram|Mux30~1_combout\)))) # (!\SW[1]~input_o\ & (\sram|Mux30~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|Mux30~6_combout\,
	datac => \sram|Mux30~1_combout\,
	datad => \sram|Mux30~8_combout\,
	combout => \sram|Mux30~9_combout\);

-- Location: FF_X112_Y35_N7
\sram|addresses[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[15][1]~q\);

-- Location: LCCOMB_X113_Y38_N8
\sram|addresses[13][1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[13][1]~46_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[13][1]~46_combout\);

-- Location: FF_X112_Y38_N11
\sram|addresses[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \sram|addresses[13][1]~46_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][1]~q\);

-- Location: LCCOMB_X111_Y38_N22
\sram|addresses[12][1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[12][1]~47_combout\ = !sramDataWrite(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(1),
	combout => \sram|addresses[12][1]~47_combout\);

-- Location: FF_X111_Y38_N23
\sram|addresses[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[12][1]~47_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][1]~q\);

-- Location: LCCOMB_X112_Y35_N20
\sram|Mux30~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~17_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\sram|addresses[14][1]~q\)) # (!\SW[1]~input_o\ & ((!\sram|addresses[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[14][1]~q\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[12][1]~q\,
	datad => \SW[1]~input_o\,
	combout => \sram|Mux30~17_combout\);

-- Location: LCCOMB_X113_Y35_N0
\sram|Mux30~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~18_combout\ = (\SW[0]~input_o\ & ((\sram|Mux30~17_combout\ & (\sram|addresses[15][1]~q\)) # (!\sram|Mux30~17_combout\ & ((!\sram|addresses[13][1]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux30~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[15][1]~q\,
	datac => \sram|addresses[13][1]~q\,
	datad => \sram|Mux30~17_combout\,
	combout => \sram|Mux30~18_combout\);

-- Location: LCCOMB_X113_Y37_N20
\sram|Mux30~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~14_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((!\sram|addresses[1][1]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((!\sram|addresses[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[1][1]~q\,
	datad => \sram|addresses[0][1]~q\,
	combout => \sram|Mux30~14_combout\);

-- Location: LCCOMB_X114_Y34_N16
\sram|Mux30~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~15_combout\ = (\SW[1]~input_o\ & ((\sram|Mux30~14_combout\ & (\sram|addresses[3][1]~q\)) # (!\sram|Mux30~14_combout\ & ((\sram|addresses[2][1]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux30~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[3][1]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[2][1]~q\,
	datad => \sram|Mux30~14_combout\,
	combout => \sram|Mux30~15_combout\);

-- Location: LCCOMB_X114_Y40_N28
\sram|Mux30~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~16_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\sram|Mux30~13_combout\)) # (!\SW[2]~input_o\ & ((\sram|Mux30~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux30~13_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \sram|Mux30~15_combout\,
	combout => \sram|Mux30~16_combout\);

-- Location: LCCOMB_X114_Y40_N18
\sram|Mux30~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~19_combout\ = (\SW[3]~input_o\ & ((\sram|Mux30~16_combout\ & ((\sram|Mux30~18_combout\))) # (!\sram|Mux30~16_combout\ & (\sram|Mux30~11_combout\)))) # (!\SW[3]~input_o\ & (((\sram|Mux30~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux30~11_combout\,
	datab => \SW[3]~input_o\,
	datac => \sram|Mux30~18_combout\,
	datad => \sram|Mux30~16_combout\,
	combout => \sram|Mux30~19_combout\);

-- Location: LCCOMB_X114_Y40_N20
\sram|Mux30~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux30~20_combout\ = (\SW[4]~input_o\ & (\sram|Mux30~9_combout\)) # (!\SW[4]~input_o\ & ((\sram|Mux30~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \sram|Mux30~9_combout\,
	datad => \sram|Mux30~19_combout\,
	combout => \sram|Mux30~20_combout\);

-- Location: FF_X114_Y40_N21
\sram|dataReadTwo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux30~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(1));

-- Location: LCCOMB_X110_Y40_N22
\sData2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(1) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(1)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	datad => \sram|dataReadTwo\(1),
	combout => sData2(1));

-- Location: LCCOMB_X110_Y39_N0
\alu|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~3_combout\ = (!sData2(1) & ((sData2(0) & ((sData1(1)))) # (!sData2(0) & (sData1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(0),
	datab => sData1(1),
	datac => sData2(0),
	datad => sData2(1),
	combout => \alu|Mux7~3_combout\);

-- Location: LCCOMB_X111_Y39_N14
\sData1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(2) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (\sram|dataReadOne\(2))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((sData1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|dataReadOne\(2),
	datac => sData1(2),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData1(2));

-- Location: LCCOMB_X113_Y41_N20
\alu|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~9_combout\ = (sData2(0) & (sData1(3))) # (!sData2(0) & ((sData1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(3),
	datab => sData2(0),
	datad => sData1(2),
	combout => \alu|ShiftRight0~9_combout\);

-- Location: LCCOMB_X110_Y39_N30
\alu|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~4_combout\ = (!sData2(2) & ((\alu|Mux7~3_combout\) # ((sData2(1) & \alu|ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datab => sData2(2),
	datac => \alu|Mux7~3_combout\,
	datad => \alu|ShiftRight0~9_combout\,
	combout => \alu|Mux7~4_combout\);

-- Location: LCCOMB_X110_Y39_N12
\alu|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~1_combout\ = (sData2(0) & (sData1(5))) # (!sData2(0) & ((sData1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(0),
	datab => sData1(5),
	datac => sData1(4),
	combout => \alu|ShiftRight0~1_combout\);

-- Location: LCCOMB_X110_Y36_N16
\alu|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~0_combout\ = (sData2(1) & ((sData2(0) & (sData1(7))) # (!sData2(0) & ((sData1(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(7),
	datab => sData2(0),
	datac => sData2(1),
	datad => sData1(6),
	combout => \alu|ShiftRight0~0_combout\);

-- Location: LCCOMB_X110_Y39_N6
\alu|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~2_combout\ = (\alu|ShiftRight0~0_combout\) # ((!sData2(1) & \alu|ShiftRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datac => \alu|ShiftRight0~1_combout\,
	datad => \alu|ShiftRight0~0_combout\,
	combout => \alu|ShiftRight0~2_combout\);

-- Location: LCCOMB_X110_Y39_N20
\alu|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~5_combout\ = (\alu|Mux7~2_combout\ & ((\alu|Mux7~4_combout\) # ((sData2(2) & \alu|ShiftRight0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(2),
	datab => \alu|Mux7~2_combout\,
	datac => \alu|Mux7~4_combout\,
	datad => \alu|ShiftRight0~2_combout\,
	combout => \alu|Mux7~5_combout\);

-- Location: LCCOMB_X110_Y39_N26
\alu|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux7~6_combout\ = (\SW[17]~input_o\ & ((\alu|Mux7~1_combout\) # ((\alu|Mux7~5_combout\)))) # (!\SW[17]~input_o\ & (((\alu|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \alu|Mux7~1_combout\,
	datac => \alu|Mux7~0_combout\,
	datad => \alu|Mux7~5_combout\,
	combout => \alu|Mux7~6_combout\);

-- Location: LCCOMB_X110_Y39_N4
\sramDataWrite[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(0) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((\alu|Mux7~6_combout\))) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (sramDataWrite(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sramDataWrite(0),
	datac => \sramDataWrite[7]~0clkctrl_outclk\,
	datad => \alu|Mux7~6_combout\,
	combout => sramDataWrite(0));

-- Location: FF_X112_Y40_N31
\sram|addresses[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][0]~q\);

-- Location: LCCOMB_X113_Y40_N22
\sram|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~7_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[27][0]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\sram|addresses[19][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[19][0]~q\,
	datad => \sram|addresses[27][0]~q\,
	combout => \sram|Mux31~7_combout\);

-- Location: LCCOMB_X112_Y40_N30
\sram|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~8_combout\ = (\SW[2]~input_o\ & ((\sram|Mux31~7_combout\ & ((\sram|addresses[31][0]~q\))) # (!\sram|Mux31~7_combout\ & (\sram|addresses[23][0]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[23][0]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[31][0]~q\,
	datad => \sram|Mux31~7_combout\,
	combout => \sram|Mux31~8_combout\);

-- Location: LCCOMB_X111_Y39_N28
\sram|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~0_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\sram|addresses[25][0]~q\))) # (!\SW[3]~input_o\ & (\sram|addresses[17][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[17][0]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[25][0]~q\,
	datad => \SW[3]~input_o\,
	combout => \sram|Mux31~0_combout\);

-- Location: LCCOMB_X110_Y38_N24
\sram|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux31~0_combout\ & (\sram|addresses[29][0]~q\)) # (!\sram|Mux31~0_combout\ & ((\sram|addresses[21][0]~q\))))) # (!\SW[2]~input_o\ & (((\sram|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[29][0]~q\,
	datac => \sram|addresses[21][0]~q\,
	datad => \sram|Mux31~0_combout\,
	combout => \sram|Mux31~1_combout\);

-- Location: LCCOMB_X110_Y42_N16
\sram|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~4_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((!\sram|addresses[20][0]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((!\sram|addresses[16][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[20][0]~q\,
	datad => \sram|addresses[16][0]~q\,
	combout => \sram|Mux31~4_combout\);

-- Location: LCCOMB_X110_Y42_N22
\sram|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~5_combout\ = (\SW[3]~input_o\ & ((\sram|Mux31~4_combout\ & (!\sram|addresses[28][0]~q\)) # (!\sram|Mux31~4_combout\ & ((!\sram|addresses[24][0]~q\))))) # (!\SW[3]~input_o\ & (((\sram|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][0]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[24][0]~q\,
	datad => \sram|Mux31~4_combout\,
	combout => \sram|Mux31~5_combout\);

-- Location: LCCOMB_X110_Y42_N12
\sram|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((!\sram|addresses[22][0]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\sram|addresses[18][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[18][0]~q\,
	datad => \sram|addresses[22][0]~q\,
	combout => \sram|Mux31~2_combout\);

-- Location: LCCOMB_X110_Y42_N18
\sram|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux31~2_combout\ & ((!\sram|addresses[30][0]~q\))) # (!\sram|Mux31~2_combout\ & (!\sram|addresses[26][0]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[26][0]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[30][0]~q\,
	datad => \sram|Mux31~2_combout\,
	combout => \sram|Mux31~3_combout\);

-- Location: LCCOMB_X110_Y42_N0
\sram|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~6_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|Mux31~3_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\sram|Mux31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|Mux31~5_combout\,
	datad => \sram|Mux31~3_combout\,
	combout => \sram|Mux31~6_combout\);

-- Location: LCCOMB_X111_Y34_N22
\sram|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~9_combout\ = (\SW[0]~input_o\ & ((\sram|Mux31~6_combout\ & (\sram|Mux31~8_combout\)) # (!\sram|Mux31~6_combout\ & ((\sram|Mux31~1_combout\))))) # (!\SW[0]~input_o\ & (((\sram|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|Mux31~8_combout\,
	datac => \sram|Mux31~1_combout\,
	datad => \sram|Mux31~6_combout\,
	combout => \sram|Mux31~9_combout\);

-- Location: LCCOMB_X113_Y39_N14
\sram|addresses[14][0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[14][0]~30_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[14][0]~30_combout\);

-- Location: FF_X113_Y39_N15
\sram|addresses[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[14][0]~30_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][0]~q\);

-- Location: LCCOMB_X111_Y38_N4
\sram|addresses[12][0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[12][0]~31_combout\ = !sramDataWrite(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(0),
	combout => \sram|addresses[12][0]~31_combout\);

-- Location: FF_X111_Y38_N5
\sram|addresses[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[12][0]~31_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][0]~q\);

-- Location: FF_X112_Y38_N27
\sram|addresses[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][0]~q\);

-- Location: LCCOMB_X112_Y38_N26
\sram|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~17_combout\ = (\SW[0]~input_o\ & (((\sram|addresses[13][0]~q\) # (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (!\sram|addresses[12][0]~q\ & ((!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[12][0]~q\,
	datac => \sram|addresses[13][0]~q\,
	datad => \SW[1]~input_o\,
	combout => \sram|Mux31~17_combout\);

-- Location: LCCOMB_X113_Y34_N0
\sram|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~18_combout\ = (\SW[1]~input_o\ & ((\sram|Mux31~17_combout\ & (\sram|addresses[15][0]~q\)) # (!\sram|Mux31~17_combout\ & ((!\sram|addresses[14][0]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux31~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[15][0]~q\,
	datab => \sram|addresses[14][0]~q\,
	datac => \SW[1]~input_o\,
	datad => \sram|Mux31~17_combout\,
	combout => \sram|Mux31~18_combout\);

-- Location: LCCOMB_X113_Y34_N18
\sram|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~10_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\) # (\sram|addresses[5][0]~q\)))) # (!\SW[0]~input_o\ & (!\sram|addresses[4][0]~q\ & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[4][0]~q\,
	datac => \SW[1]~input_o\,
	datad => \sram|addresses[5][0]~q\,
	combout => \sram|Mux31~10_combout\);

-- Location: LCCOMB_X113_Y34_N8
\sram|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux31~10_combout\ & ((\sram|addresses[7][0]~q\))) # (!\sram|Mux31~10_combout\ & (!\sram|addresses[6][0]~q\)))) # (!\SW[1]~input_o\ & (((\sram|Mux31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[6][0]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[7][0]~q\,
	datad => \sram|Mux31~10_combout\,
	combout => \sram|Mux31~11_combout\);

-- Location: LCCOMB_X113_Y35_N8
\sram|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\sram|addresses[10][0]~q\)) # (!\SW[1]~input_o\ & ((!\sram|addresses[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[10][0]~q\,
	datad => \sram|addresses[8][0]~q\,
	combout => \sram|Mux31~12_combout\);

-- Location: LCCOMB_X114_Y35_N0
\sram|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~13_combout\ = (\SW[0]~input_o\ & ((\sram|Mux31~12_combout\ & (\sram|addresses[11][0]~q\)) # (!\sram|Mux31~12_combout\ & ((\sram|addresses[9][0]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[11][0]~q\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[9][0]~q\,
	datad => \sram|Mux31~12_combout\,
	combout => \sram|Mux31~13_combout\);

-- Location: FF_X111_Y37_N15
\sram|addresses[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[1][0]~q\);

-- Location: LCCOMB_X111_Y37_N16
\sram|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~14_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\sram|addresses[2][0]~q\)) # (!\SW[1]~input_o\ & ((!\sram|addresses[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[2][0]~q\,
	datad => \sram|addresses[0][0]~q\,
	combout => \sram|Mux31~14_combout\);

-- Location: LCCOMB_X111_Y37_N22
\sram|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~15_combout\ = (\SW[0]~input_o\ & ((\sram|Mux31~14_combout\ & (\sram|addresses[3][0]~q\)) # (!\sram|Mux31~14_combout\ & ((\sram|addresses[1][0]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux31~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[3][0]~q\,
	datac => \sram|addresses[1][0]~q\,
	datad => \sram|Mux31~14_combout\,
	combout => \sram|Mux31~15_combout\);

-- Location: LCCOMB_X113_Y34_N2
\sram|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~16_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\sram|Mux31~13_combout\)) # (!\SW[3]~input_o\ & ((\sram|Mux31~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|Mux31~13_combout\,
	datad => \sram|Mux31~15_combout\,
	combout => \sram|Mux31~16_combout\);

-- Location: LCCOMB_X113_Y34_N10
\sram|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~19_combout\ = (\SW[2]~input_o\ & ((\sram|Mux31~16_combout\ & (\sram|Mux31~18_combout\)) # (!\sram|Mux31~16_combout\ & ((\sram|Mux31~11_combout\))))) # (!\SW[2]~input_o\ & (((\sram|Mux31~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|Mux31~18_combout\,
	datac => \sram|Mux31~11_combout\,
	datad => \sram|Mux31~16_combout\,
	combout => \sram|Mux31~19_combout\);

-- Location: LCCOMB_X111_Y34_N16
\sram|Mux31~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux31~20_combout\ = (\SW[4]~input_o\ & (\sram|Mux31~9_combout\)) # (!\SW[4]~input_o\ & ((\sram|Mux31~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \sram|Mux31~9_combout\,
	datad => \sram|Mux31~19_combout\,
	combout => \sram|Mux31~20_combout\);

-- Location: FF_X111_Y34_N17
\sram|dataReadTwo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux31~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(0));

-- Location: LCCOMB_X110_Y40_N0
\sData2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(0) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(0)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData2(0),
	datac => \nextState.EXECUTE~0clkctrl_outclk\,
	datad => \sram|dataReadTwo\(0),
	combout => sData2(0));

-- Location: LCCOMB_X113_Y41_N4
\alu|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~5_combout\ = (sData2(0) & ((sData1(6)))) # (!sData2(0) & (sData1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(5),
	datab => sData1(6),
	datad => sData2(0),
	combout => \alu|ShiftRight0~5_combout\);

-- Location: LCCOMB_X110_Y36_N8
\alu|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~13_combout\ = ((!sData2(3) & (sData2(2) & !\alu|ShiftRight0~3_combout\))) # (!\SW[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datab => \SW[15]~input_o\,
	datac => sData2(2),
	datad => \alu|ShiftRight0~3_combout\,
	combout => \alu|Mux5~13_combout\);

-- Location: LCCOMB_X110_Y37_N20
\alu|subtracter|nAdders:1:sumOthers:faOthers|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ = (sData1(1) & (((sData1(0)) # (!sData2(0))) # (!sData2(1)))) # (!sData1(1) & (!sData2(1) & ((sData1(0)) # (!sData2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(1),
	datab => sData2(1),
	datac => sData1(0),
	datad => sData2(0),
	combout => \alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\);

-- Location: LCCOMB_X110_Y37_N12
\alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\ = \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((sData1(2) & ((\alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\) # (!sData2(2)))) # (!sData1(2) & 
-- (\alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ & !sData2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(2),
	datab => \alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\,
	datac => sData2(2),
	datad => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X110_Y36_N6
\alu|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~8_combout\ = (sData2(3)) # (((sData2(2)) # (\alu|ShiftRight0~3_combout\)) # (!\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datab => \SW[15]~input_o\,
	datac => sData2(2),
	datad => \alu|ShiftRight0~3_combout\,
	combout => \alu|Mux5~8_combout\);

-- Location: LCCOMB_X110_Y36_N10
\alu|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux5~9_combout\ = (\alu|Mux5~8_combout\ & (\SW[15]~input_o\)) # (!\alu|Mux5~8_combout\ & ((sData2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => sData2(1),
	datad => \alu|Mux5~8_combout\,
	combout => \alu|Mux5~9_combout\);

-- Location: LCCOMB_X110_Y36_N18
\alu|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~2_combout\ = (\alu|Mux5~13_combout\ & ((\alu|Mux5~9_combout\ & (\alu|ShiftRight0~8_combout\)) # (!\alu|Mux5~9_combout\ & ((!\alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\))))) # (!\alu|Mux5~13_combout\ & 
-- (((!\alu|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~8_combout\,
	datab => \alu|Mux5~13_combout\,
	datac => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \alu|Mux5~9_combout\,
	combout => \alu|Mux4~2_combout\);

-- Location: LCCOMB_X110_Y36_N20
\alu|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~3_combout\ = (\alu|Mux5~8_combout\ & (((\alu|Mux4~2_combout\)))) # (!\alu|Mux5~8_combout\ & ((\alu|Mux4~2_combout\ & (\alu|ShiftRight0~11_combout\)) # (!\alu|Mux4~2_combout\ & ((\alu|ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux5~8_combout\,
	datab => \alu|ShiftRight0~11_combout\,
	datac => \alu|ShiftRight0~5_combout\,
	datad => \alu|Mux4~2_combout\,
	combout => \alu|Mux4~3_combout\);

-- Location: LCCOMB_X111_Y35_N6
\alu|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux4~4_combout\ = (\alu|Mux5~6_combout\ & ((\alu|Mux4~1_combout\ & ((\alu|Mux4~3_combout\))) # (!\alu|Mux4~1_combout\ & (\alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\)))) # (!\alu|Mux5~6_combout\ & (((\alu|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|adder|nAdders:3:sumOthers:faOthers|ha1|SUM~combout\,
	datab => \alu|Mux5~6_combout\,
	datac => \alu|Mux4~1_combout\,
	datad => \alu|Mux4~3_combout\,
	combout => \alu|Mux4~4_combout\);

-- Location: LCCOMB_X114_Y39_N10
\sramDataWrite[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(3) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((\alu|Mux4~4_combout\))) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (sramDataWrite(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sramDataWrite(3),
	datac => \alu|Mux4~4_combout\,
	datad => \sramDataWrite[7]~0clkctrl_outclk\,
	combout => sramDataWrite(3));

-- Location: FF_X113_Y35_N3
\sram|addresses[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[10][3]~q\);

-- Location: LCCOMB_X114_Y35_N14
\sram|Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~10_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\sram|addresses[9][3]~q\))) # (!\SW[0]~input_o\ & (\sram|addresses[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[8][3]~q\,
	datad => \sram|addresses[9][3]~q\,
	combout => \sram|Mux28~10_combout\);

-- Location: LCCOMB_X113_Y35_N12
\sram|Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux28~10_combout\ & ((\sram|addresses[11][3]~q\))) # (!\sram|Mux28~10_combout\ & (\sram|addresses[10][3]~q\)))) # (!\SW[1]~input_o\ & (((\sram|Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|addresses[10][3]~q\,
	datac => \sram|addresses[11][3]~q\,
	datad => \sram|Mux28~10_combout\,
	combout => \sram|Mux28~11_combout\);

-- Location: LCCOMB_X114_Y41_N30
\sram|Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\sram|addresses[6][3]~q\))) # (!\SW[1]~input_o\ & (!\sram|addresses[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[4][3]~q\,
	datad => \sram|addresses[6][3]~q\,
	combout => \sram|Mux28~12_combout\);

-- Location: LCCOMB_X113_Y36_N0
\sram|Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~13_combout\ = (\SW[0]~input_o\ & ((\sram|Mux28~12_combout\ & ((!\sram|addresses[7][3]~q\))) # (!\sram|Mux28~12_combout\ & (!\sram|addresses[5][3]~q\)))) # (!\SW[0]~input_o\ & (((\sram|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[5][3]~q\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[7][3]~q\,
	datad => \sram|Mux28~12_combout\,
	combout => \sram|Mux28~13_combout\);

-- Location: LCCOMB_X111_Y37_N12
\sram|addresses[3][3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[3][3]~79_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[3][3]~79_combout\);

-- Location: FF_X111_Y37_N13
\sram|addresses[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[3][3]~79_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[3][3]~q\);

-- Location: LCCOMB_X111_Y37_N4
\sram|Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~14_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)) # (!\sram|addresses[1][3]~q\))) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\ & !\sram|addresses[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[1][3]~q\,
	datac => \SW[1]~input_o\,
	datad => \sram|addresses[0][3]~q\,
	combout => \sram|Mux28~14_combout\);

-- Location: LCCOMB_X112_Y36_N0
\sram|Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~15_combout\ = (\SW[1]~input_o\ & ((\sram|Mux28~14_combout\ & (!\sram|addresses[3][3]~q\)) # (!\sram|Mux28~14_combout\ & ((!\sram|addresses[2][3]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|addresses[3][3]~q\,
	datac => \sram|addresses[2][3]~q\,
	datad => \sram|Mux28~14_combout\,
	combout => \sram|Mux28~15_combout\);

-- Location: LCCOMB_X112_Y36_N26
\sram|Mux28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~16_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\sram|Mux28~13_combout\)) # (!\SW[2]~input_o\ & ((\sram|Mux28~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|Mux28~13_combout\,
	datad => \sram|Mux28~15_combout\,
	combout => \sram|Mux28~16_combout\);

-- Location: FF_X112_Y38_N23
\sram|addresses[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[14][3]~q\);

-- Location: FF_X111_Y38_N1
\sram|addresses[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[12][3]~q\);

-- Location: LCCOMB_X111_Y38_N0
\sram|Mux28~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~17_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\sram|addresses[14][3]~q\)) # (!\SW[1]~input_o\ & ((\sram|addresses[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[14][3]~q\,
	datac => \sram|addresses[12][3]~q\,
	datad => \SW[1]~input_o\,
	combout => \sram|Mux28~17_combout\);

-- Location: LCCOMB_X111_Y38_N26
\sram|Mux28~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~18_combout\ = (\SW[0]~input_o\ & ((\sram|Mux28~17_combout\ & ((\sram|addresses[15][3]~q\))) # (!\sram|Mux28~17_combout\ & (\sram|addresses[13][3]~q\)))) # (!\SW[0]~input_o\ & (((\sram|Mux28~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[13][3]~q\,
	datac => \sram|addresses[15][3]~q\,
	datad => \sram|Mux28~17_combout\,
	combout => \sram|Mux28~18_combout\);

-- Location: LCCOMB_X112_Y36_N4
\sram|Mux28~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~19_combout\ = (\SW[3]~input_o\ & ((\sram|Mux28~16_combout\ & ((\sram|Mux28~18_combout\))) # (!\sram|Mux28~16_combout\ & (\sram|Mux28~11_combout\)))) # (!\SW[3]~input_o\ & (((\sram|Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|Mux28~11_combout\,
	datac => \sram|Mux28~16_combout\,
	datad => \sram|Mux28~18_combout\,
	combout => \sram|Mux28~19_combout\);

-- Location: LCCOMB_X113_Y33_N18
\sram|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((!\sram|addresses[23][3]~q\))) # (!\SW[2]~input_o\ & (!\sram|addresses[19][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[19][3]~q\,
	datad => \sram|addresses[23][3]~q\,
	combout => \sram|Mux28~7_combout\);

-- Location: LCCOMB_X113_Y40_N0
\sram|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~8_combout\ = (\SW[3]~input_o\ & ((\sram|Mux28~7_combout\ & (\sram|addresses[31][3]~q\)) # (!\sram|Mux28~7_combout\ & ((\sram|addresses[27][3]~q\))))) # (!\SW[3]~input_o\ & (((\sram|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[31][3]~q\,
	datac => \sram|addresses[27][3]~q\,
	datad => \sram|Mux28~7_combout\,
	combout => \sram|Mux28~8_combout\);

-- Location: LCCOMB_X112_Y39_N28
\sram|addresses[22][3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[22][3]~64_combout\ = !sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[22][3]~64_combout\);

-- Location: FF_X112_Y39_N29
\sram|addresses[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[22][3]~64_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[22][3]~q\);

-- Location: LCCOMB_X114_Y39_N16
\sram|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~0_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\sram|addresses[26][3]~q\)) # (!\SW[3]~input_o\ & ((!\sram|addresses[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[26][3]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[18][3]~q\,
	datad => \SW[3]~input_o\,
	combout => \sram|Mux28~0_combout\);

-- Location: LCCOMB_X114_Y39_N30
\sram|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux28~0_combout\ & (\sram|addresses[30][3]~q\)) # (!\sram|Mux28~0_combout\ & ((!\sram|addresses[22][3]~q\))))) # (!\SW[2]~input_o\ & (((\sram|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[30][3]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[22][3]~q\,
	datad => \sram|Mux28~0_combout\,
	combout => \sram|Mux28~1_combout\);

-- Location: LCCOMB_X111_Y42_N12
\sram|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~4_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\sram|addresses[24][3]~q\))) # (!\SW[3]~input_o\ & (!\sram|addresses[16][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[16][3]~q\,
	datac => \sram|addresses[24][3]~q\,
	datad => \SW[3]~input_o\,
	combout => \sram|Mux28~4_combout\);

-- Location: LCCOMB_X112_Y36_N22
\sram|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~5_combout\ = (\SW[2]~input_o\ & ((\sram|Mux28~4_combout\ & ((\sram|addresses[28][3]~q\))) # (!\sram|Mux28~4_combout\ & (!\sram|addresses[20][3]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[20][3]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[28][3]~q\,
	datad => \sram|Mux28~4_combout\,
	combout => \sram|Mux28~5_combout\);

-- Location: LCCOMB_X109_Y37_N16
\sram|addresses[29][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[29][3]~feeder_combout\ = sramDataWrite(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(3),
	combout => \sram|addresses[29][3]~feeder_combout\);

-- Location: FF_X109_Y37_N17
\sram|addresses[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[29][3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][3]~q\);

-- Location: LCCOMB_X113_Y39_N6
\sram|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~2_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((!\sram|addresses[21][3]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\sram|addresses[17][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[17][3]~q\,
	datad => \sram|addresses[21][3]~q\,
	combout => \sram|Mux28~2_combout\);

-- Location: LCCOMB_X112_Y36_N16
\sram|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux28~2_combout\ & ((\sram|addresses[29][3]~q\))) # (!\sram|Mux28~2_combout\ & (\sram|addresses[25][3]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[25][3]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[29][3]~q\,
	datad => \sram|Mux28~2_combout\,
	combout => \sram|Mux28~3_combout\);

-- Location: LCCOMB_X112_Y36_N20
\sram|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~6_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\sram|Mux28~3_combout\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\sram|Mux28~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux28~5_combout\,
	datad => \sram|Mux28~3_combout\,
	combout => \sram|Mux28~6_combout\);

-- Location: LCCOMB_X112_Y36_N2
\sram|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~9_combout\ = (\SW[1]~input_o\ & ((\sram|Mux28~6_combout\ & (\sram|Mux28~8_combout\)) # (!\sram|Mux28~6_combout\ & ((\sram|Mux28~1_combout\))))) # (!\SW[1]~input_o\ & (((\sram|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \sram|Mux28~8_combout\,
	datac => \sram|Mux28~1_combout\,
	datad => \sram|Mux28~6_combout\,
	combout => \sram|Mux28~9_combout\);

-- Location: LCCOMB_X112_Y36_N12
\sram|Mux28~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux28~20_combout\ = (\SW[4]~input_o\ & ((\sram|Mux28~9_combout\))) # (!\SW[4]~input_o\ & (\sram|Mux28~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \sram|Mux28~19_combout\,
	datad => \sram|Mux28~9_combout\,
	combout => \sram|Mux28~20_combout\);

-- Location: FF_X112_Y36_N13
\sram|dataReadTwo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux28~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(3));

-- Location: LCCOMB_X112_Y36_N6
\sData2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(3) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(3)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datac => \sram|dataReadTwo\(3),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData2(3));

-- Location: LCCOMB_X110_Y40_N4
\alu|adder|nAdders:1:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ = (sData1(1) & ((sData2(1)) # ((sData1(0) & sData2(0))))) # (!sData1(1) & (sData1(0) & (sData2(1) & sData2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(0),
	datab => sData1(1),
	datac => sData2(1),
	datad => sData2(0),
	combout => \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X110_Y40_N2
\alu|adder|nAdders:2:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\ = (\alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ & ((sData2(2)) # (sData1(2)))) # (!\alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\ & (sData2(2) & sData1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|adder|nAdders:1:sumOthers:faOthers|COUT~0_combout\,
	datac => sData2(2),
	datad => sData1(2),
	combout => \alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X110_Y40_N16
\alu|adder|nAdders:3:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\ = (sData1(3) & ((sData2(3)) # (\alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\))) # (!sData1(3) & (sData2(3) & \alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(3),
	datac => sData2(3),
	datad => \alu|adder|nAdders:2:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X110_Y40_N10
\alu|adder|nAdders:4:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\ = (sData2(4) & ((sData1(4)) # (\alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\))) # (!sData2(4) & (sData1(4) & \alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(4),
	datac => sData1(4),
	datad => \alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X110_Y40_N20
\alu|adder|nAdders:5:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\ = (sData2(5) & ((sData1(5)) # (\alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\))) # (!sData2(5) & (sData1(5) & \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData2(5),
	datac => sData1(5),
	datad => \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X109_Y36_N8
\alu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux1~0_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[16]~input_o\ & (\alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\SW[15]~input_o\ & \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y36_N10
\alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\ = (!sData2(3) & sData1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datad => sData1(3),
	combout => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\);

-- Location: LCCOMB_X110_Y37_N4
\alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\ = (!\alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\ & ((sData1(2) & ((\alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\) # (!sData2(2)))) # (!sData1(2) & 
-- (\alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\ & !sData2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(2),
	datab => \alu|subtracter|nAdders:1:sumOthers:faOthers|COUT~combout\,
	datac => sData2(2),
	datad => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\);

-- Location: LCCOMB_X111_Y36_N16
\alu|subtracter|nAdders:4:sumOthers:faOthers|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\ = (sData1(4) & (((\alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\) # (\alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\)) # (!sData2(4)))) # (!sData1(4) & (!sData2(4) & 
-- ((\alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\) # (\alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(4),
	datab => sData2(4),
	datac => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha0|COUT~combout\,
	datad => \alu|subtracter|nAdders:3:sumOthers:faOthers|ha1|COUT~combout\,
	combout => \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\);

-- Location: LCCOMB_X109_Y36_N18
\alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\ = \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((sData1(5) & ((\alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\) # (!sData2(5)))) # (!sData1(5) & (!sData2(5) & 
-- \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(5),
	datab => sData2(5),
	datac => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\,
	combout => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X109_Y36_N6
\alu|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux1~1_combout\ = (\alu|Mux3~0_combout\ & ((\alu|Mux1~0_combout\ & ((!\alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\))) # (!\alu|Mux1~0_combout\ & (\alu|ShiftRight0~7_combout\)))) # (!\alu|Mux3~0_combout\ & (((\alu|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~7_combout\,
	datab => \alu|Mux3~0_combout\,
	datac => \alu|Mux1~0_combout\,
	datad => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|SUM~combout\,
	combout => \alu|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y39_N28
\alu|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux1~3_combout\ = (\SW[17]~input_o\ & ((\alu|Mux1~1_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux1~2_combout\,
	datab => \SW[17]~input_o\,
	datad => \alu|Mux1~1_combout\,
	combout => \alu|Mux1~3_combout\);

-- Location: LCCOMB_X113_Y39_N18
\sramDataWrite[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(6) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((\alu|Mux1~3_combout\))) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (sramDataWrite(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sramDataWrite(6),
	datac => \sramDataWrite[7]~0clkctrl_outclk\,
	datad => \alu|Mux1~3_combout\,
	combout => sramDataWrite(6));

-- Location: LCCOMB_X114_Y41_N6
\sram|addresses[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|addresses[6][6]~feeder_combout\ = sramDataWrite(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sramDataWrite(6),
	combout => \sram|addresses[6][6]~feeder_combout\);

-- Location: FF_X114_Y41_N7
\sram|addresses[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|addresses[6][6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \sram|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[6][6]~q\);

-- Location: LCCOMB_X110_Y38_N16
\sram|Mux25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~10_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\sram|addresses[5][6]~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\sram|addresses[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[5][6]~q\,
	datad => \sram|addresses[4][6]~q\,
	combout => \sram|Mux25~10_combout\);

-- Location: LCCOMB_X110_Y38_N14
\sram|Mux25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~11_combout\ = (\SW[1]~input_o\ & ((\sram|Mux25~10_combout\ & (\sram|addresses[7][6]~q\)) # (!\sram|Mux25~10_combout\ & ((\sram|addresses[6][6]~q\))))) # (!\SW[1]~input_o\ & (((\sram|Mux25~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[7][6]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[6][6]~q\,
	datad => \sram|Mux25~10_combout\,
	combout => \sram|Mux25~11_combout\);

-- Location: FF_X113_Y38_N1
\sram|addresses[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[11][6]~q\);

-- Location: LCCOMB_X114_Y35_N18
\sram|Mux25~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~12_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\sram|addresses[10][6]~q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\sram|addresses[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[8][6]~q\,
	datad => \sram|addresses[10][6]~q\,
	combout => \sram|Mux25~12_combout\);

-- Location: LCCOMB_X113_Y38_N0
\sram|Mux25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~13_combout\ = (\SW[0]~input_o\ & ((\sram|Mux25~12_combout\ & ((\sram|addresses[11][6]~q\))) # (!\sram|Mux25~12_combout\ & (\sram|addresses[9][6]~q\)))) # (!\SW[0]~input_o\ & (((\sram|Mux25~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[9][6]~q\,
	datac => \sram|addresses[11][6]~q\,
	datad => \sram|Mux25~12_combout\,
	combout => \sram|Mux25~13_combout\);

-- Location: LCCOMB_X114_Y36_N20
\sram|Mux25~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~16_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\sram|Mux25~13_combout\))) # (!\SW[3]~input_o\ & (\sram|Mux25~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux25~15_combout\,
	datab => \SW[2]~input_o\,
	datac => \sram|Mux25~13_combout\,
	datad => \SW[3]~input_o\,
	combout => \sram|Mux25~16_combout\);

-- Location: LCCOMB_X114_Y36_N4
\sram|Mux25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~19_combout\ = (\SW[2]~input_o\ & ((\sram|Mux25~16_combout\ & (\sram|Mux25~18_combout\)) # (!\sram|Mux25~16_combout\ & ((\sram|Mux25~11_combout\))))) # (!\SW[2]~input_o\ & (((\sram|Mux25~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux25~18_combout\,
	datab => \SW[2]~input_o\,
	datac => \sram|Mux25~11_combout\,
	datad => \sram|Mux25~16_combout\,
	combout => \sram|Mux25~19_combout\);

-- Location: FF_X111_Y39_N11
\sram|addresses[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][6]~q\);

-- Location: LCCOMB_X111_Y39_N10
\sram|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~0_combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\sram|addresses[25][6]~q\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\sram|addresses[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[25][6]~q\,
	datad => \sram|addresses[17][6]~q\,
	combout => \sram|Mux25~0_combout\);

-- Location: LCCOMB_X113_Y39_N20
\sram|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~1_combout\ = (\SW[2]~input_o\ & ((\sram|Mux25~0_combout\ & ((\sram|addresses[29][6]~q\))) # (!\sram|Mux25~0_combout\ & (\sram|addresses[21][6]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \sram|addresses[21][6]~q\,
	datac => \sram|addresses[29][6]~q\,
	datad => \sram|Mux25~0_combout\,
	combout => \sram|Mux25~1_combout\);

-- Location: FF_X112_Y40_N17
\sram|addresses[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][6]~q\);

-- Location: FF_X112_Y40_N1
\sram|addresses[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][6]~q\);

-- Location: LCCOMB_X112_Y40_N0
\sram|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~8_combout\ = (\sram|Mux25~7_combout\ & ((\sram|addresses[31][6]~q\) # ((!\SW[2]~input_o\)))) # (!\sram|Mux25~7_combout\ & (((\sram|addresses[23][6]~q\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux25~7_combout\,
	datab => \sram|addresses[31][6]~q\,
	datac => \sram|addresses[23][6]~q\,
	datad => \SW[2]~input_o\,
	combout => \sram|Mux25~8_combout\);

-- Location: LCCOMB_X111_Y40_N6
\sram|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~2_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\sram|addresses[22][6]~q\))) # (!\SW[2]~input_o\ & (\sram|addresses[18][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[18][6]~q\,
	datad => \sram|addresses[22][6]~q\,
	combout => \sram|Mux25~2_combout\);

-- Location: LCCOMB_X111_Y40_N8
\sram|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux25~2_combout\ & (\sram|addresses[30][6]~q\)) # (!\sram|Mux25~2_combout\ & ((\sram|addresses[26][6]~q\))))) # (!\SW[3]~input_o\ & (((\sram|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[30][6]~q\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[26][6]~q\,
	datad => \sram|Mux25~2_combout\,
	combout => \sram|Mux25~3_combout\);

-- Location: LCCOMB_X111_Y42_N10
\sram|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~4_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\sram|addresses[20][6]~q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\sram|addresses[16][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[16][6]~q\,
	datad => \sram|addresses[20][6]~q\,
	combout => \sram|Mux25~4_combout\);

-- Location: LCCOMB_X112_Y42_N12
\sram|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~5_combout\ = (\SW[3]~input_o\ & ((\sram|Mux25~4_combout\ & (\sram|addresses[28][6]~q\)) # (!\sram|Mux25~4_combout\ & ((\sram|addresses[24][6]~q\))))) # (!\SW[3]~input_o\ & (((\sram|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][6]~q\,
	datab => \sram|addresses[24][6]~q\,
	datac => \SW[3]~input_o\,
	datad => \sram|Mux25~4_combout\,
	combout => \sram|Mux25~5_combout\);

-- Location: LCCOMB_X111_Y40_N28
\sram|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~6_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\sram|Mux25~3_combout\)) # (!\SW[1]~input_o\ & ((\sram|Mux25~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux25~3_combout\,
	datad => \sram|Mux25~5_combout\,
	combout => \sram|Mux25~6_combout\);

-- Location: LCCOMB_X114_Y36_N10
\sram|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~9_combout\ = (\SW[0]~input_o\ & ((\sram|Mux25~6_combout\ & ((\sram|Mux25~8_combout\))) # (!\sram|Mux25~6_combout\ & (\sram|Mux25~1_combout\)))) # (!\SW[0]~input_o\ & (((\sram|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|Mux25~1_combout\,
	datac => \sram|Mux25~8_combout\,
	datad => \sram|Mux25~6_combout\,
	combout => \sram|Mux25~9_combout\);

-- Location: LCCOMB_X114_Y36_N14
\sram|Mux25~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux25~20_combout\ = (\SW[4]~input_o\ & ((\sram|Mux25~9_combout\))) # (!\SW[4]~input_o\ & (\sram|Mux25~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \sram|Mux25~19_combout\,
	datad => \sram|Mux25~9_combout\,
	combout => \sram|Mux25~20_combout\);

-- Location: FF_X114_Y36_N15
\sram|dataReadTwo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux25~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(6));

-- Location: LCCOMB_X111_Y36_N8
\sData2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(6) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(6)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData2(6),
	datac => \sram|dataReadTwo\(6),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData2(6));

-- Location: LCCOMB_X110_Y40_N18
\alu|adder|nAdders:6:sumOthers:faOthers|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\ = (sData1(6) & ((sData2(6)) # (\alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\))) # (!sData1(6) & (sData2(6) & \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(6),
	datac => sData2(6),
	datad => \alu|adder|nAdders:5:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\);

-- Location: LCCOMB_X110_Y40_N24
\alu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux0~0_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[16]~input_o\ & (\alu|aluOut~0_combout\ $ (((\SW[15]~input_o\ & \alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \alu|aluOut~0_combout\,
	datad => \alu|adder|nAdders:6:sumOthers:faOthers|COUT~0_combout\,
	combout => \alu|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y36_N10
\alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\ = (!\alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\ & ((sData2(5) & (sData1(5) & \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\)) # (!sData2(5) & ((sData1(5)) # 
-- (\alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(5),
	datab => sData1(5),
	datac => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha0|SUM~0_combout\,
	datad => \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\,
	combout => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\);

-- Location: LCCOMB_X111_Y36_N22
\alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\ = \alu|aluOut~0_combout\ $ (((\alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\) # ((sData1(6) & !sData2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|aluOut~0_combout\,
	datab => sData1(6),
	datac => sData2(6),
	datad => \alu|subtracter|nAdders:6:sumOthers:faOthers|ha1|COUT~combout\,
	combout => \alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X110_Y40_N28
\alu|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux0~3_combout\ = (\alu|Mux0~0_combout\ & (((!\alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\) # (!\alu|Mux3~0_combout\)))) # (!\alu|Mux0~0_combout\ & (\alu|ShiftRight0~8_combout\ & (\alu|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~8_combout\,
	datab => \alu|Mux0~0_combout\,
	datac => \alu|Mux3~0_combout\,
	datad => \alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\,
	combout => \alu|Mux0~3_combout\);

-- Location: LCCOMB_X110_Y40_N30
\alu|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux0~4_combout\ = (\SW[17]~input_o\ & ((\alu|Mux0~3_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \alu|Mux0~2_combout\,
	datad => \alu|Mux0~3_combout\,
	combout => \alu|Mux0~4_combout\);

-- Location: LCCOMB_X110_Y40_N8
\sramDataWrite[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(7) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((\alu|Mux0~4_combout\))) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (sramDataWrite(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sramDataWrite(7),
	datac => \alu|Mux0~4_combout\,
	datad => \sramDataWrite[7]~0clkctrl_outclk\,
	combout => sramDataWrite(7));

-- Location: FF_X112_Y38_N21
\sram|addresses[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[13][7]~q\);

-- Location: LCCOMB_X112_Y38_N6
\sram|Mux24~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~17_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\sram|addresses[14][7]~q\)) # (!\SW[1]~input_o\ & ((\sram|addresses[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[14][7]~q\,
	datad => \sram|addresses[12][7]~q\,
	combout => \sram|Mux24~17_combout\);

-- Location: LCCOMB_X112_Y38_N30
\sram|Mux24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~18_combout\ = (\SW[0]~input_o\ & ((\sram|Mux24~17_combout\ & (\sram|addresses[15][7]~q\)) # (!\sram|Mux24~17_combout\ & ((\sram|addresses[13][7]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux24~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[15][7]~q\,
	datab => \sram|addresses[13][7]~q\,
	datac => \SW[0]~input_o\,
	datad => \sram|Mux24~17_combout\,
	combout => \sram|Mux24~18_combout\);

-- Location: LCCOMB_X112_Y37_N12
\sram|Mux24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~14_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\sram|addresses[1][7]~q\))) # (!\SW[0]~input_o\ & (\sram|addresses[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \sram|addresses[0][7]~q\,
	datad => \sram|addresses[1][7]~q\,
	combout => \sram|Mux24~14_combout\);

-- Location: LCCOMB_X111_Y37_N30
\sram|Mux24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~15_combout\ = (\SW[1]~input_o\ & ((\sram|Mux24~14_combout\ & ((\sram|addresses[3][7]~q\))) # (!\sram|Mux24~14_combout\ & (\sram|addresses[2][7]~q\)))) # (!\SW[1]~input_o\ & (((\sram|Mux24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[2][7]~q\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux24~14_combout\,
	datad => \sram|addresses[3][7]~q\,
	combout => \sram|Mux24~15_combout\);

-- Location: FF_X113_Y36_N31
\sram|addresses[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[5][7]~q\);

-- Location: LCCOMB_X114_Y41_N8
\sram|Mux24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~12_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\sram|addresses[6][7]~q\)) # (!\SW[1]~input_o\ & ((\sram|addresses[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|addresses[6][7]~q\,
	datad => \sram|addresses[4][7]~q\,
	combout => \sram|Mux24~12_combout\);

-- Location: LCCOMB_X113_Y36_N26
\sram|Mux24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~13_combout\ = (\SW[0]~input_o\ & ((\sram|Mux24~12_combout\ & (\sram|addresses[7][7]~q\)) # (!\sram|Mux24~12_combout\ & ((\sram|addresses[5][7]~q\))))) # (!\SW[0]~input_o\ & (((\sram|Mux24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \sram|addresses[7][7]~q\,
	datac => \sram|addresses[5][7]~q\,
	datad => \sram|Mux24~12_combout\,
	combout => \sram|Mux24~13_combout\);

-- Location: LCCOMB_X111_Y36_N12
\sram|Mux24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~16_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\sram|Mux24~13_combout\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\sram|Mux24~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|Mux24~15_combout\,
	datad => \sram|Mux24~13_combout\,
	combout => \sram|Mux24~16_combout\);

-- Location: LCCOMB_X111_Y36_N14
\sram|Mux24~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~19_combout\ = (\SW[3]~input_o\ & ((\sram|Mux24~16_combout\ & ((\sram|Mux24~18_combout\))) # (!\sram|Mux24~16_combout\ & (\sram|Mux24~11_combout\)))) # (!\SW[3]~input_o\ & (((\sram|Mux24~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux24~11_combout\,
	datab => \SW[3]~input_o\,
	datac => \sram|Mux24~18_combout\,
	datad => \sram|Mux24~16_combout\,
	combout => \sram|Mux24~19_combout\);

-- Location: FF_X112_Y40_N9
\sram|addresses[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[31][7]~q\);

-- Location: LCCOMB_X112_Y40_N2
\sram|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~7_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\sram|addresses[23][7]~q\)) # (!\SW[2]~input_o\ & ((\sram|addresses[19][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[23][7]~q\,
	datad => \sram|addresses[19][7]~q\,
	combout => \sram|Mux24~7_combout\);

-- Location: LCCOMB_X112_Y40_N8
\sram|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~8_combout\ = (\SW[3]~input_o\ & ((\sram|Mux24~7_combout\ & ((\sram|addresses[31][7]~q\))) # (!\sram|Mux24~7_combout\ & (\sram|addresses[27][7]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[27][7]~q\,
	datac => \sram|addresses[31][7]~q\,
	datad => \sram|Mux24~7_combout\,
	combout => \sram|Mux24~8_combout\);

-- Location: LCCOMB_X111_Y39_N8
\sram|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~2_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\sram|addresses[21][7]~q\))) # (!\SW[2]~input_o\ & (\sram|addresses[17][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \sram|addresses[17][7]~q\,
	datac => \SW[2]~input_o\,
	datad => \sram|addresses[21][7]~q\,
	combout => \sram|Mux24~2_combout\);

-- Location: LCCOMB_X111_Y36_N30
\sram|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~3_combout\ = (\SW[3]~input_o\ & ((\sram|Mux24~2_combout\ & ((\sram|addresses[29][7]~q\))) # (!\sram|Mux24~2_combout\ & (\sram|addresses[25][7]~q\)))) # (!\SW[3]~input_o\ & (((\sram|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[25][7]~q\,
	datab => \sram|addresses[29][7]~q\,
	datac => \SW[3]~input_o\,
	datad => \sram|Mux24~2_combout\,
	combout => \sram|Mux24~3_combout\);

-- Location: FF_X111_Y42_N17
\sram|addresses[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(7),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[28][7]~q\);

-- Location: LCCOMB_X112_Y42_N16
\sram|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~4_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\sram|addresses[24][7]~q\)) # (!\SW[3]~input_o\ & ((\sram|addresses[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \sram|addresses[24][7]~q\,
	datad => \sram|addresses[16][7]~q\,
	combout => \sram|Mux24~4_combout\);

-- Location: LCCOMB_X111_Y42_N16
\sram|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~5_combout\ = (\SW[2]~input_o\ & ((\sram|Mux24~4_combout\ & ((\sram|addresses[28][7]~q\))) # (!\sram|Mux24~4_combout\ & (\sram|addresses[20][7]~q\)))) # (!\SW[2]~input_o\ & (((\sram|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[20][7]~q\,
	datab => \SW[2]~input_o\,
	datac => \sram|addresses[28][7]~q\,
	datad => \sram|Mux24~4_combout\,
	combout => \sram|Mux24~5_combout\);

-- Location: LCCOMB_X111_Y36_N0
\sram|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~6_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\sram|Mux24~3_combout\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\sram|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux24~3_combout\,
	datad => \sram|Mux24~5_combout\,
	combout => \sram|Mux24~6_combout\);

-- Location: LCCOMB_X111_Y36_N6
\sram|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~9_combout\ = (\SW[1]~input_o\ & ((\sram|Mux24~6_combout\ & ((\sram|Mux24~8_combout\))) # (!\sram|Mux24~6_combout\ & (\sram|Mux24~1_combout\)))) # (!\SW[1]~input_o\ & (((\sram|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux24~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \sram|Mux24~8_combout\,
	datad => \sram|Mux24~6_combout\,
	combout => \sram|Mux24~9_combout\);

-- Location: LCCOMB_X111_Y36_N28
\sram|Mux24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux24~20_combout\ = (\SW[4]~input_o\ & ((\sram|Mux24~9_combout\))) # (!\SW[4]~input_o\ & (\sram|Mux24~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \sram|Mux24~19_combout\,
	datad => \sram|Mux24~9_combout\,
	combout => \sram|Mux24~20_combout\);

-- Location: FF_X111_Y36_N29
\sram|dataReadTwo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux24~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadTwo\(7));

-- Location: LCCOMB_X111_Y36_N18
\sData2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData2(7) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((\sram|dataReadTwo\(7)))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (sData2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sData2(7),
	datac => \sram|dataReadTwo\(7),
	datad => \nextState.EXECUTE~0clkctrl_outclk\,
	combout => sData2(7));

-- Location: LCCOMB_X111_Y36_N24
\alu|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~3_combout\ = (sData2(5)) # ((sData2(7)) # ((sData2(6)) # (sData2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(5),
	datab => sData2(7),
	datac => sData2(6),
	datad => sData2(4),
	combout => \alu|ShiftRight0~3_combout\);

-- Location: LCCOMB_X111_Y36_N2
\alu|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~4_combout\ = (sData2(3)) # (\alu|ShiftRight0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datad => \alu|ShiftRight0~3_combout\,
	combout => \alu|ShiftRight0~4_combout\);

-- Location: LCCOMB_X109_Y36_N24
\alu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~0_combout\ = (\SW[16]~input_o\ & (((!sData2(2) & !\alu|ShiftRight0~4_combout\)) # (!\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => sData2(2),
	datad => \alu|ShiftRight0~4_combout\,
	combout => \alu|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y36_N14
\alu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~1_combout\ = (\SW[16]~input_o\ & (((!\SW[15]~input_o\)))) # (!\SW[16]~input_o\ & (\alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\ & \SW[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtracter|nAdders:4:sumOthers:faOthers|ha0|SUM~0_combout\,
	datab => \SW[16]~input_o\,
	datac => \alu|adder|nAdders:3:sumOthers:faOthers|COUT~0_combout\,
	datad => \SW[15]~input_o\,
	combout => \alu|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y36_N0
\alu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~2_combout\ = (\alu|Mux3~0_combout\ & ((\alu|Mux3~1_combout\ & (!\alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\)) # (!\alu|Mux3~1_combout\ & ((\alu|ShiftRight0~2_combout\))))) # (!\alu|Mux3~0_combout\ & (((\alu|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|subtracter|nAdders:4:sumOthers:faOthers|ha1|SUM~combout\,
	datab => \alu|Mux3~0_combout\,
	datac => \alu|Mux3~1_combout\,
	datad => \alu|ShiftRight0~2_combout\,
	combout => \alu|Mux3~2_combout\);

-- Location: LCCOMB_X109_Y36_N16
\alu|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux3~4_combout\ = (\SW[17]~input_o\ & ((\alu|Mux3~2_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \alu|Mux3~3_combout\,
	datad => \alu|Mux3~2_combout\,
	combout => \alu|Mux3~4_combout\);

-- Location: LCCOMB_X113_Y39_N8
\sramDataWrite[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- sramDataWrite(4) = (GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & ((\alu|Mux3~4_combout\))) # (!GLOBAL(\sramDataWrite[7]~0clkctrl_outclk\) & (sramDataWrite(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sramDataWrite[7]~0clkctrl_outclk\,
	datab => sramDataWrite(4),
	datad => \alu|Mux3~4_combout\,
	combout => sramDataWrite(4));

-- Location: FF_X112_Y41_N9
\sram|addresses[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[29][4]~q\);

-- Location: FF_X111_Y39_N3
\sram|addresses[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[17][4]~q\);

-- Location: FF_X111_Y39_N1
\sram|addresses[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[25][4]~q\);

-- Location: LCCOMB_X111_Y39_N2
\sram|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~0_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\sram|addresses[25][4]~q\))) # (!\SW[8]~input_o\ & (\sram|addresses[17][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[17][4]~q\,
	datad => \sram|addresses[25][4]~q\,
	combout => \sram|Mux11~0_combout\);

-- Location: LCCOMB_X112_Y41_N2
\sram|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~1_combout\ = (\SW[7]~input_o\ & ((\sram|Mux11~0_combout\ & ((\sram|addresses[29][4]~q\))) # (!\sram|Mux11~0_combout\ & (\sram|addresses[21][4]~q\)))) # (!\SW[7]~input_o\ & (((\sram|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[21][4]~q\,
	datab => \sram|addresses[29][4]~q\,
	datac => \SW[7]~input_o\,
	datad => \sram|Mux11~0_combout\,
	combout => \sram|Mux11~1_combout\);

-- Location: FF_X112_Y40_N25
\sram|addresses[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => sramDataWrite(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \sram|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|addresses[23][4]~q\);

-- Location: LCCOMB_X113_Y40_N24
\sram|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~7_combout\ = (\SW[8]~input_o\ & (((\sram|addresses[27][4]~q\) # (\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (\sram|addresses[19][4]~q\ & ((!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[19][4]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|addresses[27][4]~q\,
	datad => \SW[7]~input_o\,
	combout => \sram|Mux11~7_combout\);

-- Location: LCCOMB_X112_Y40_N24
\sram|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~8_combout\ = (\SW[7]~input_o\ & ((\sram|Mux11~7_combout\ & (\sram|addresses[31][4]~q\)) # (!\sram|Mux11~7_combout\ & ((\sram|addresses[23][4]~q\))))) # (!\SW[7]~input_o\ & (((\sram|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[31][4]~q\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[23][4]~q\,
	datad => \sram|Mux11~7_combout\,
	combout => \sram|Mux11~8_combout\);

-- Location: LCCOMB_X111_Y40_N12
\sram|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~2_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & ((\sram|addresses[22][4]~q\))) # (!\SW[7]~input_o\ & (\sram|addresses[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[18][4]~q\,
	datad => \sram|addresses[22][4]~q\,
	combout => \sram|Mux11~2_combout\);

-- Location: LCCOMB_X111_Y40_N22
\sram|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~3_combout\ = (\SW[8]~input_o\ & ((\sram|Mux11~2_combout\ & ((\sram|addresses[30][4]~q\))) # (!\sram|Mux11~2_combout\ & (\sram|addresses[26][4]~q\)))) # (!\SW[8]~input_o\ & (((\sram|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sram|addresses[26][4]~q\,
	datac => \sram|addresses[30][4]~q\,
	datad => \sram|Mux11~2_combout\,
	combout => \sram|Mux11~3_combout\);

-- Location: LCCOMB_X112_Y42_N26
\sram|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~4_combout\ = (\SW[8]~input_o\ & (\SW[7]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[7]~input_o\ & (\sram|addresses[20][4]~q\)) # (!\SW[7]~input_o\ & ((\sram|addresses[16][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \sram|addresses[20][4]~q\,
	datad => \sram|addresses[16][4]~q\,
	combout => \sram|Mux11~4_combout\);

-- Location: LCCOMB_X113_Y42_N14
\sram|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~5_combout\ = (\SW[8]~input_o\ & ((\sram|Mux11~4_combout\ & (\sram|addresses[28][4]~q\)) # (!\sram|Mux11~4_combout\ & ((\sram|addresses[24][4]~q\))))) # (!\SW[8]~input_o\ & (((\sram|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[28][4]~q\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux11~4_combout\,
	datad => \sram|addresses[24][4]~q\,
	combout => \sram|Mux11~5_combout\);

-- Location: LCCOMB_X114_Y38_N2
\sram|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~6_combout\ = (\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (\sram|Mux11~3_combout\)) # (!\SW[6]~input_o\ & ((\sram|Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|Mux11~3_combout\,
	datad => \sram|Mux11~5_combout\,
	combout => \sram|Mux11~6_combout\);

-- Location: LCCOMB_X114_Y38_N4
\sram|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~9_combout\ = (\SW[5]~input_o\ & ((\sram|Mux11~6_combout\ & ((\sram|Mux11~8_combout\))) # (!\sram|Mux11~6_combout\ & (\sram|Mux11~1_combout\)))) # (!\SW[5]~input_o\ & (((\sram|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|Mux11~1_combout\,
	datac => \sram|Mux11~8_combout\,
	datad => \sram|Mux11~6_combout\,
	combout => \sram|Mux11~9_combout\);

-- Location: LCCOMB_X113_Y34_N16
\sram|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~10_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\) # ((!\sram|addresses[5][4]~q\)))) # (!\SW[5]~input_o\ & (!\SW[6]~input_o\ & ((!\sram|addresses[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[5][4]~q\,
	datad => \sram|addresses[4][4]~q\,
	combout => \sram|Mux11~10_combout\);

-- Location: LCCOMB_X113_Y34_N6
\sram|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~11_combout\ = (\SW[6]~input_o\ & ((\sram|Mux11~10_combout\ & (!\sram|addresses[7][4]~q\)) # (!\sram|Mux11~10_combout\ & ((!\sram|addresses[6][4]~q\))))) # (!\SW[6]~input_o\ & (((\sram|Mux11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[7][4]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[6][4]~q\,
	datad => \sram|Mux11~10_combout\,
	combout => \sram|Mux11~11_combout\);

-- Location: LCCOMB_X114_Y34_N26
\sram|Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~15_combout\ = (\sram|Mux11~14_combout\ & (((!\sram|addresses[3][4]~q\)) # (!\SW[5]~input_o\))) # (!\sram|Mux11~14_combout\ & (\SW[5]~input_o\ & ((!\sram|addresses[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|Mux11~14_combout\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[3][4]~q\,
	datad => \sram|addresses[1][4]~q\,
	combout => \sram|Mux11~15_combout\);

-- Location: LCCOMB_X114_Y34_N20
\sram|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~12_combout\ = (\SW[6]~input_o\ & ((\SW[5]~input_o\) # ((!\sram|addresses[10][4]~q\)))) # (!\SW[6]~input_o\ & (!\SW[5]~input_o\ & (!\sram|addresses[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \sram|addresses[8][4]~q\,
	datad => \sram|addresses[10][4]~q\,
	combout => \sram|Mux11~12_combout\);

-- Location: LCCOMB_X114_Y34_N10
\sram|Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~13_combout\ = (\SW[5]~input_o\ & ((\sram|Mux11~12_combout\ & (!\sram|addresses[11][4]~q\)) # (!\sram|Mux11~12_combout\ & ((!\sram|addresses[9][4]~q\))))) # (!\SW[5]~input_o\ & (((\sram|Mux11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \sram|addresses[11][4]~q\,
	datac => \sram|addresses[9][4]~q\,
	datad => \sram|Mux11~12_combout\,
	combout => \sram|Mux11~13_combout\);

-- Location: LCCOMB_X114_Y34_N8
\sram|Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~16_combout\ = (\SW[7]~input_o\ & (\SW[8]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[8]~input_o\ & ((\sram|Mux11~13_combout\))) # (!\SW[8]~input_o\ & (\sram|Mux11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \sram|Mux11~15_combout\,
	datad => \sram|Mux11~13_combout\,
	combout => \sram|Mux11~16_combout\);

-- Location: LCCOMB_X112_Y38_N14
\sram|Mux11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~17_combout\ = (\SW[6]~input_o\ & (((\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & ((\SW[5]~input_o\ & (!\sram|addresses[13][4]~q\)) # (!\SW[5]~input_o\ & ((!\sram|addresses[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \sram|addresses[13][4]~q\,
	datac => \SW[5]~input_o\,
	datad => \sram|addresses[12][4]~q\,
	combout => \sram|Mux11~17_combout\);

-- Location: LCCOMB_X113_Y34_N14
\sram|Mux11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~18_combout\ = (\SW[6]~input_o\ & ((\sram|Mux11~17_combout\ & ((!\sram|addresses[15][4]~q\))) # (!\sram|Mux11~17_combout\ & (!\sram|addresses[14][4]~q\)))) # (!\SW[6]~input_o\ & (((\sram|Mux11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram|addresses[14][4]~q\,
	datab => \SW[6]~input_o\,
	datac => \sram|addresses[15][4]~q\,
	datad => \sram|Mux11~17_combout\,
	combout => \sram|Mux11~18_combout\);

-- Location: LCCOMB_X114_Y34_N18
\sram|Mux11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~19_combout\ = (\SW[7]~input_o\ & ((\sram|Mux11~16_combout\ & ((\sram|Mux11~18_combout\))) # (!\sram|Mux11~16_combout\ & (\sram|Mux11~11_combout\)))) # (!\SW[7]~input_o\ & (((\sram|Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \sram|Mux11~11_combout\,
	datac => \sram|Mux11~16_combout\,
	datad => \sram|Mux11~18_combout\,
	combout => \sram|Mux11~19_combout\);

-- Location: LCCOMB_X114_Y38_N24
\sram|Mux11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram|Mux11~20_combout\ = (\SW[9]~input_o\ & (\sram|Mux11~9_combout\)) # (!\SW[9]~input_o\ & ((\sram|Mux11~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datac => \sram|Mux11~9_combout\,
	datad => \sram|Mux11~19_combout\,
	combout => \sram|Mux11~20_combout\);

-- Location: FF_X114_Y38_N25
\sram|dataReadOne[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sram|Mux11~20_combout\,
	ena => \sram|dataReadOne[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sram|dataReadOne\(4));

-- Location: LCCOMB_X114_Y38_N8
\sData1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- sData1(4) = (GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & (\sram|dataReadOne\(4))) # (!GLOBAL(\nextState.EXECUTE~0clkctrl_outclk\) & ((sData1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextState.EXECUTE~0clkctrl_outclk\,
	datab => \sram|dataReadOne\(4),
	datac => sData1(4),
	combout => sData1(4));

-- Location: LCCOMB_X114_Y38_N20
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\currState.MEM_WRITE~q\ & ((\currState.EXECUTE~q\ & (sData1(4))) # (!\currState.EXECUTE~q\ & ((\SW[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => sData1(4),
	datac => \SW[9]~input_o\,
	datad => \currState.MEM_WRITE~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X114_Y38_N22
\Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\Selector28~0_combout\) # ((\currState.MEM_WRITE~q\ & \SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datab => \SW[14]~input_o\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X113_Y33_N10
\hexIn7[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn7(0) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector28~1_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn7(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(0),
	datac => \hexIn0[0]~0clkctrl_outclk\,
	datad => \Selector28~1_combout\,
	combout => hexIn7(0));

-- Location: LCCOMB_X114_Y33_N8
\hexComp7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux6~0_combout\ = (hexIn7(2) & (!hexIn7(1) & ((hexIn7(3)) # (!hexIn7(0))))) # (!hexIn7(2) & (hexIn7(0) & (hexIn7(3) $ (!hexIn7(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(3),
	datab => hexIn7(2),
	datac => hexIn7(1),
	datad => hexIn7(0),
	combout => \hexComp7|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y33_N26
\hexComp7|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux6~1_combout\ = (\hexComp7|Mux6~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datad => \hexComp7|Mux6~0_combout\,
	combout => \hexComp7|Mux6~1_combout\);

-- Location: LCCOMB_X114_Y33_N18
\HEX7[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[0]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp7|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX7[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp7|Mux6~1_combout\,
	datad => \HEX7[0]$latch~combout\,
	combout => \HEX7[0]$latch~combout\);

-- Location: LCCOMB_X113_Y36_N30
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\currState.EXECUTE~q\ & sData1(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.EXECUTE~q\,
	datad => sData1(7),
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X114_Y33_N22
\hexIn7[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn7(3) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector32~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn7(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector32~0_combout\,
	datac => hexIn7(3),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn7(3));

-- Location: LCCOMB_X113_Y33_N0
\hexComp7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux5~0_combout\ = (hexIn7(1) & ((hexIn7(0) & ((hexIn7(3)))) # (!hexIn7(0) & (hexIn7(2))))) # (!hexIn7(1) & (hexIn7(2) & (hexIn7(0) $ (hexIn7(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(1),
	datab => hexIn7(0),
	datac => hexIn7(2),
	datad => hexIn7(3),
	combout => \hexComp7|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y33_N2
\hexComp7|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux5~1_combout\ = (\hexComp7|Mux5~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.FETCH~q\,
	datad => \hexComp7|Mux5~0_combout\,
	combout => \hexComp7|Mux5~1_combout\);

-- Location: LCCOMB_X113_Y33_N8
\HEX7[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[1]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp7|Mux5~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX7[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \HEX7[1]$latch~combout\,
	datad => \hexComp7|Mux5~1_combout\,
	combout => \HEX7[1]$latch~combout\);

-- Location: LCCOMB_X114_Y33_N4
\hexComp7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux4~0_combout\ = (hexIn7(2) & (hexIn7(3) & ((hexIn7(1)) # (!hexIn7(0))))) # (!hexIn7(2) & (hexIn7(1) & (!hexIn7(3) & !hexIn7(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(1),
	datab => hexIn7(2),
	datac => hexIn7(3),
	datad => hexIn7(0),
	combout => \hexComp7|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y33_N2
\hexComp7|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux4~1_combout\ = (\hexComp7|Mux4~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datac => \hexComp7|Mux4~0_combout\,
	combout => \hexComp7|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y33_N28
\HEX7[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[2]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp7|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX7[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp7|Mux4~1_combout\,
	datad => \HEX7[2]$latch~combout\,
	combout => \HEX7[2]$latch~combout\);

-- Location: LCCOMB_X113_Y33_N12
\hexComp7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux3~0_combout\ = (hexIn7(0) & (hexIn7(1) $ ((!hexIn7(2))))) # (!hexIn7(0) & ((hexIn7(1) & (!hexIn7(2) & hexIn7(3))) # (!hexIn7(1) & (hexIn7(2) & !hexIn7(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(1),
	datab => hexIn7(0),
	datac => hexIn7(2),
	datad => hexIn7(3),
	combout => \hexComp7|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y33_N26
\hexComp7|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux3~1_combout\ = (\hexComp7|Mux3~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp7|Mux3~0_combout\,
	combout => \hexComp7|Mux3~1_combout\);

-- Location: LCCOMB_X113_Y33_N6
\HEX7[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[3]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp7|Mux3~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX7[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX7[3]$latch~combout\,
	datab => \KEY[1]~input_o\,
	datad => \hexComp7|Mux3~1_combout\,
	combout => \HEX7[3]$latch~combout\);

-- Location: LCCOMB_X114_Y33_N12
\hexComp7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux2~0_combout\ = (hexIn7(1) & (((!hexIn7(3) & hexIn7(0))))) # (!hexIn7(1) & ((hexIn7(2) & (!hexIn7(3))) # (!hexIn7(2) & ((hexIn7(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(1),
	datab => hexIn7(2),
	datac => hexIn7(3),
	datad => hexIn7(0),
	combout => \hexComp7|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y33_N14
\hexComp7|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux2~1_combout\ = (\hexComp7|Mux2~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datad => \hexComp7|Mux2~0_combout\,
	combout => \hexComp7|Mux2~1_combout\);

-- Location: LCCOMB_X114_Y33_N6
\HEX7[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[4]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp7|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX7[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp7|Mux2~1_combout\,
	datad => \HEX7[4]$latch~combout\,
	combout => \HEX7[4]$latch~combout\);

-- Location: LCCOMB_X113_Y33_N16
\hexComp7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux1~0_combout\ = (hexIn7(1) & (!hexIn7(3) & ((hexIn7(0)) # (!hexIn7(2))))) # (!hexIn7(1) & ((hexIn7(2) & ((hexIn7(3)))) # (!hexIn7(2) & (hexIn7(0) & !hexIn7(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(1),
	datab => hexIn7(0),
	datac => hexIn7(2),
	datad => hexIn7(3),
	combout => \hexComp7|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y33_N30
\hexComp7|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux1~1_combout\ = (\hexComp7|Mux1~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp7|Mux1~0_combout\,
	combout => \hexComp7|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y33_N24
\HEX7[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[5]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp7|Mux1~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX7[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX7[5]$latch~combout\,
	datac => \KEY[1]~input_o\,
	datad => \hexComp7|Mux1~1_combout\,
	combout => \HEX7[5]$latch~combout\);

-- Location: LCCOMB_X114_Y33_N24
\hexComp7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux0~0_combout\ = (hexIn7(3)) # ((hexIn7(1) & ((!hexIn7(0)) # (!hexIn7(2)))) # (!hexIn7(1) & (hexIn7(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn7(1),
	datab => hexIn7(2),
	datac => hexIn7(3),
	datad => hexIn7(0),
	combout => \hexComp7|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y33_N10
\hexComp7|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp7|Mux0~1_combout\ = (\currState.FETCH~q\ & !\hexComp7|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datad => \hexComp7|Mux0~0_combout\,
	combout => \hexComp7|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y33_N16
\HEX7[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7[6]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp7|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX7[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp7|Mux0~1_combout\,
	datad => \HEX7[6]$latch~combout\,
	combout => \HEX7[6]$latch~combout\);

-- Location: LCCOMB_X113_Y34_N20
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\currState.MEM_WRITE~q\ & ((\currState.EXECUTE~q\ & ((sData1(2)))) # (!\currState.EXECUTE~q\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => \SW[7]~input_o\,
	datac => sData1(2),
	datad => \currState.MEM_WRITE~q\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X113_Y34_N22
\Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~1_combout\ = (\Selector26~0_combout\) # ((\SW[12]~input_o\ & \currState.MEM_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \Selector26~0_combout\,
	datad => \currState.MEM_WRITE~q\,
	combout => \Selector26~1_combout\);

-- Location: LCCOMB_X112_Y34_N10
\hexIn6[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn6(2) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector26~1_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn6(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(2),
	datab => \Selector26~1_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn6(2));

-- Location: LCCOMB_X110_Y37_N16
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\currState.MEM_WRITE~q\ & ((\currState.EXECUTE~q\ & ((sData1(3)))) # (!\currState.EXECUTE~q\ & (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => \SW[8]~input_o\,
	datac => \currState.MEM_WRITE~q\,
	datad => sData1(3),
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X111_Y37_N14
\Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\Selector27~0_combout\) # ((\currState.MEM_WRITE~q\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datab => \SW[13]~input_o\,
	datad => \Selector27~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: LCCOMB_X111_Y37_N26
\hexIn6[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn6(3) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector27~1_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn6(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(3),
	datac => \hexIn0[0]~0clkctrl_outclk\,
	datad => \Selector27~1_combout\,
	combout => hexIn6(3));

-- Location: LCCOMB_X111_Y37_N28
\hexIn6[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn6(0) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector24~1_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~1_combout\,
	datac => \hexIn0[0]~0clkctrl_outclk\,
	datad => hexIn6(0),
	combout => hexIn6(0));

-- Location: LCCOMB_X112_Y34_N0
\hexComp6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux6~0_combout\ = (hexIn6(1) & (!hexIn6(2) & (hexIn6(3) & hexIn6(0)))) # (!hexIn6(1) & (hexIn6(2) $ (((!hexIn6(3) & hexIn6(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datab => hexIn6(2),
	datac => hexIn6(3),
	datad => hexIn6(0),
	combout => \hexComp6|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y34_N22
\hexComp6|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux6~1_combout\ = (\hexComp6|Mux6~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp6|Mux6~0_combout\,
	combout => \hexComp6|Mux6~1_combout\);

-- Location: LCCOMB_X112_Y34_N8
\HEX6[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[0]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp6|Mux6~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX6[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \HEX6[0]$latch~combout\,
	datad => \hexComp6|Mux6~1_combout\,
	combout => \HEX6[0]$latch~combout\);

-- Location: LCCOMB_X112_Y34_N24
\hexComp6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux5~0_combout\ = (hexIn6(1) & ((hexIn6(0) & ((hexIn6(3)))) # (!hexIn6(0) & (hexIn6(2))))) # (!hexIn6(1) & (hexIn6(2) & (hexIn6(3) $ (hexIn6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datab => hexIn6(2),
	datac => hexIn6(3),
	datad => hexIn6(0),
	combout => \hexComp6|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y34_N14
\hexComp6|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux5~1_combout\ = (\hexComp6|Mux5~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp6|Mux5~0_combout\,
	combout => \hexComp6|Mux5~1_combout\);

-- Location: LCCOMB_X112_Y34_N18
\HEX6[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[1]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp6|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX6[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \hexComp6|Mux5~1_combout\,
	datad => \HEX6[1]$latch~combout\,
	combout => \HEX6[1]$latch~combout\);

-- Location: LCCOMB_X112_Y34_N20
\hexComp6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux4~0_combout\ = (hexIn6(2) & (hexIn6(3) & ((hexIn6(1)) # (!hexIn6(0))))) # (!hexIn6(2) & (hexIn6(1) & (!hexIn6(3) & !hexIn6(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datab => hexIn6(2),
	datac => hexIn6(3),
	datad => hexIn6(0),
	combout => \hexComp6|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y34_N26
\hexComp6|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux4~1_combout\ = (\hexComp6|Mux4~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp6|Mux4~0_combout\,
	combout => \hexComp6|Mux4~1_combout\);

-- Location: LCCOMB_X112_Y34_N4
\HEX6[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[2]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp6|Mux4~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX6[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \HEX6[2]$latch~combout\,
	datad => \hexComp6|Mux4~1_combout\,
	combout => \HEX6[2]$latch~combout\);

-- Location: LCCOMB_X112_Y34_N12
\hexComp6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux3~0_combout\ = (hexIn6(0) & (hexIn6(1) $ ((!hexIn6(2))))) # (!hexIn6(0) & ((hexIn6(1) & (!hexIn6(2) & hexIn6(3))) # (!hexIn6(1) & (hexIn6(2) & !hexIn6(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datab => hexIn6(2),
	datac => hexIn6(3),
	datad => hexIn6(0),
	combout => \hexComp6|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y34_N30
\hexComp6|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux3~1_combout\ = (\hexComp6|Mux3~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp6|Mux3~0_combout\,
	combout => \hexComp6|Mux3~1_combout\);

-- Location: LCCOMB_X112_Y34_N6
\HEX6[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[3]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp6|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX6[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \hexComp6|Mux3~1_combout\,
	datad => \HEX6[3]$latch~combout\,
	combout => \HEX6[3]$latch~combout\);

-- Location: LCCOMB_X112_Y35_N18
\Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\Selector25~0_combout\) # ((\SW[11]~input_o\ & \currState.MEM_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \SW[11]~input_o\,
	datac => \currState.MEM_WRITE~q\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X112_Y35_N30
\hexIn6[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn6(1) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector25~1_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn6(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datac => \Selector25~1_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn6(1));

-- Location: LCCOMB_X111_Y37_N0
\hexComp6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux2~0_combout\ = (hexIn6(1) & (!hexIn6(3) & (hexIn6(0)))) # (!hexIn6(1) & ((hexIn6(2) & (!hexIn6(3))) # (!hexIn6(2) & ((hexIn6(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(3),
	datab => hexIn6(0),
	datac => hexIn6(2),
	datad => hexIn6(1),
	combout => \hexComp6|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y37_N2
\hexComp6|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux2~1_combout\ = (\hexComp6|Mux2~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp6|Mux2~0_combout\,
	combout => \hexComp6|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y37_N18
\HEX6[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[4]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp6|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX6[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexComp6|Mux2~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \HEX6[4]$latch~combout\,
	combout => \HEX6[4]$latch~combout\);

-- Location: LCCOMB_X112_Y34_N28
\hexComp6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux1~0_combout\ = (hexIn6(1) & (!hexIn6(3) & ((hexIn6(0)) # (!hexIn6(2))))) # (!hexIn6(1) & ((hexIn6(2) & (hexIn6(3))) # (!hexIn6(2) & (!hexIn6(3) & hexIn6(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datab => hexIn6(2),
	datac => hexIn6(3),
	datad => hexIn6(0),
	combout => \hexComp6|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y34_N2
\hexComp6|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux1~1_combout\ = (\hexComp6|Mux1~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp6|Mux1~0_combout\,
	combout => \hexComp6|Mux1~1_combout\);

-- Location: LCCOMB_X112_Y34_N16
\HEX6[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[5]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp6|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX6[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \hexComp6|Mux1~1_combout\,
	datad => \HEX6[5]$latch~combout\,
	combout => \HEX6[5]$latch~combout\);

-- Location: LCCOMB_X112_Y35_N8
\hexComp6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux0~0_combout\ = (hexIn6(3)) # ((hexIn6(1) & ((!hexIn6(0)) # (!hexIn6(2)))) # (!hexIn6(1) & (hexIn6(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn6(1),
	datab => hexIn6(2),
	datac => hexIn6(3),
	datad => hexIn6(0),
	combout => \hexComp6|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y35_N2
\hexComp6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp6|Mux0~1_combout\ = (\currState.FETCH~q\ & !\hexComp6|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.FETCH~q\,
	datab => \hexComp6|Mux0~0_combout\,
	combout => \hexComp6|Mux0~1_combout\);

-- Location: LCCOMB_X112_Y35_N10
\HEX6[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6[6]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp6|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX6[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp6|Mux0~1_combout\,
	datad => \HEX6[6]$latch~combout\,
	combout => \HEX6[6]$latch~combout\);

-- Location: LCCOMB_X111_Y34_N4
\hexIn5[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn5(3) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector23~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn5(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => hexIn5(3),
	datac => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn5(3));

-- Location: LCCOMB_X111_Y35_N26
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\currState.EXECUTE~q\ & sData2(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => sData2(6),
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X111_Y33_N26
\hexIn5[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn5(2) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector22~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector22~0_combout\,
	datac => hexIn5(2),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn5(2));

-- Location: LCCOMB_X111_Y33_N0
\hexIn5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn5(1) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector21~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn5(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~0_combout\,
	datab => hexIn5(1),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn5(1));

-- Location: LCCOMB_X111_Y34_N12
\hexComp5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux6~0_combout\ = (hexIn5(2) & (!hexIn5(1) & ((hexIn5(3)) # (!hexIn5(0))))) # (!hexIn5(2) & (hexIn5(0) & (hexIn5(3) $ (!hexIn5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(0),
	datab => hexIn5(3),
	datac => hexIn5(2),
	datad => hexIn5(1),
	combout => \hexComp5|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y34_N14
\hexComp5|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux6~1_combout\ = ((\currState.MEM_WRITE~q\) # (\hexComp5|Mux6~0_combout\)) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.FETCH~q\,
	datab => \currState.MEM_WRITE~q\,
	datad => \hexComp5|Mux6~0_combout\,
	combout => \hexComp5|Mux6~1_combout\);

-- Location: LCCOMB_X111_Y34_N8
\HEX5[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[0]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp5|Mux6~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX5[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \HEX5[0]$latch~combout\,
	datad => \hexComp5|Mux6~1_combout\,
	combout => \HEX5[0]$latch~combout\);

-- Location: LCCOMB_X111_Y34_N24
\hexComp5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux5~0_combout\ = (hexIn5(3) & ((hexIn5(0) & ((hexIn5(1)))) # (!hexIn5(0) & (hexIn5(2))))) # (!hexIn5(3) & (hexIn5(2) & (hexIn5(0) $ (hexIn5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(0),
	datab => hexIn5(3),
	datac => hexIn5(2),
	datad => hexIn5(1),
	combout => \hexComp5|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y34_N6
\hexComp5|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux5~1_combout\ = ((\currState.MEM_WRITE~q\) # (\hexComp5|Mux5~0_combout\)) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.FETCH~q\,
	datab => \currState.MEM_WRITE~q\,
	datad => \hexComp5|Mux5~0_combout\,
	combout => \hexComp5|Mux5~1_combout\);

-- Location: LCCOMB_X111_Y34_N10
\HEX5[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[1]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp5|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX5[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \hexComp5|Mux5~1_combout\,
	datad => \HEX5[1]$latch~combout\,
	combout => \HEX5[1]$latch~combout\);

-- Location: LCCOMB_X112_Y36_N8
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\currState.EXECUTE~q\ & (sData2(4))) # (!\currState.EXECUTE~q\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(4),
	datab => \currState.EXECUTE~q\,
	datad => \SW[4]~input_o\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X111_Y34_N30
\hexIn5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn5(0) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector20~0_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn5(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(0),
	datab => \Selector20~0_combout\,
	datac => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn5(0));

-- Location: LCCOMB_X111_Y33_N16
\hexComp5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux4~0_combout\ = (hexIn5(2) & (hexIn5(3) & ((hexIn5(1)) # (!hexIn5(0))))) # (!hexIn5(2) & (hexIn5(1) & (!hexIn5(0) & !hexIn5(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(2),
	datab => hexIn5(1),
	datac => hexIn5(0),
	datad => hexIn5(3),
	combout => \hexComp5|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y33_N22
\hexComp5|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux4~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp5|Mux4~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp5|Mux4~0_combout\,
	combout => \hexComp5|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y33_N12
\HEX5[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[2]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp5|Mux4~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX5[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX5[2]$latch~combout\,
	datac => \KEY[1]~input_o\,
	datad => \hexComp5|Mux4~1_combout\,
	combout => \HEX5[2]$latch~combout\);

-- Location: LCCOMB_X111_Y33_N20
\hexComp5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux3~0_combout\ = (hexIn5(0) & (hexIn5(2) $ ((!hexIn5(1))))) # (!hexIn5(0) & ((hexIn5(2) & (!hexIn5(1) & !hexIn5(3))) # (!hexIn5(2) & (hexIn5(1) & hexIn5(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(2),
	datab => hexIn5(1),
	datac => hexIn5(0),
	datad => hexIn5(3),
	combout => \hexComp5|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y33_N14
\hexComp5|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux3~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp5|Mux3~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp5|Mux3~0_combout\,
	combout => \hexComp5|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y33_N18
\HEX5[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[3]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp5|Mux3~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX5[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX5[3]$latch~combout\,
	datac => \KEY[1]~input_o\,
	datad => \hexComp5|Mux3~1_combout\,
	combout => \HEX5[3]$latch~combout\);

-- Location: LCCOMB_X111_Y33_N24
\hexComp5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux2~0_combout\ = (hexIn5(1) & (((hexIn5(0) & !hexIn5(3))))) # (!hexIn5(1) & ((hexIn5(2) & ((!hexIn5(3)))) # (!hexIn5(2) & (hexIn5(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(2),
	datab => hexIn5(1),
	datac => hexIn5(0),
	datad => hexIn5(3),
	combout => \hexComp5|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y33_N30
\hexComp5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux2~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp5|Mux2~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp5|Mux2~0_combout\,
	combout => \hexComp5|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y33_N4
\HEX5[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[4]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp5|Mux2~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX5[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \HEX5[4]$latch~combout\,
	datad => \hexComp5|Mux2~1_combout\,
	combout => \HEX5[4]$latch~combout\);

-- Location: LCCOMB_X111_Y34_N0
\hexComp5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux1~0_combout\ = (hexIn5(3) & (((hexIn5(2) & !hexIn5(1))))) # (!hexIn5(3) & ((hexIn5(0) & ((hexIn5(1)) # (!hexIn5(2)))) # (!hexIn5(0) & (!hexIn5(2) & hexIn5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(0),
	datab => hexIn5(3),
	datac => hexIn5(2),
	datad => hexIn5(1),
	combout => \hexComp5|Mux1~0_combout\);

-- Location: LCCOMB_X112_Y35_N24
\hexComp5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux1~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp5|Mux1~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp5|Mux1~0_combout\,
	combout => \hexComp5|Mux1~1_combout\);

-- Location: LCCOMB_X112_Y35_N4
\HEX5[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[5]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp5|Mux1~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX5[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \HEX5[5]$latch~combout\,
	datad => \hexComp5|Mux1~1_combout\,
	combout => \HEX5[5]$latch~combout\);

-- Location: LCCOMB_X111_Y33_N28
\hexComp5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux0~0_combout\ = (hexIn5(3)) # ((hexIn5(2) & ((!hexIn5(0)) # (!hexIn5(1)))) # (!hexIn5(2) & (hexIn5(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn5(2),
	datab => hexIn5(1),
	datac => hexIn5(0),
	datad => hexIn5(3),
	combout => \hexComp5|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y33_N6
\hexComp5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp5|Mux0~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp5|Mux0~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp5|Mux0~0_combout\,
	combout => \hexComp5|Mux0~1_combout\);

-- Location: LCCOMB_X111_Y33_N10
\HEX5[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5[6]$latch~combout\ = (\KEY[1]~input_o\ & (!\hexComp5|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX5[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexComp5|Mux0~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \HEX5[6]$latch~combout\,
	combout => \HEX5[6]$latch~combout\);

-- Location: LCCOMB_X112_Y36_N24
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\currState.EXECUTE~q\ & (sData2(3))) # (!\currState.EXECUTE~q\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(3),
	datab => \currState.EXECUTE~q\,
	datac => \SW[3]~input_o\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X112_Y32_N28
\hexIn4[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn4(3) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector19~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn4(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector19~0_combout\,
	datac => \hexIn0[0]~0clkctrl_outclk\,
	datad => hexIn4(3),
	combout => hexIn4(3));

-- Location: LCCOMB_X112_Y32_N4
\hexIn4[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn4(1) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector17~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datac => hexIn4(1),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn4(1));

-- Location: LCCOMB_X112_Y32_N10
\hexIn4[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn4(0) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector15~0_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datac => \hexIn0[0]~0clkctrl_outclk\,
	datad => hexIn4(0),
	combout => hexIn4(0));

-- Location: LCCOMB_X112_Y32_N24
\hexComp4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux6~0_combout\ = (hexIn4(2) & (!hexIn4(1) & ((hexIn4(3)) # (!hexIn4(0))))) # (!hexIn4(2) & (hexIn4(0) & (hexIn4(3) $ (!hexIn4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y36_N8
\hexComp4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux6~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp4|Mux6~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datac => \hexComp4|Mux6~0_combout\,
	datad => \currState.FETCH~q\,
	combout => \hexComp4|Mux6~1_combout\);

-- Location: LCCOMB_X113_Y36_N24
\HEX4[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[0]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp4|Mux6~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX4[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX4[0]$latch~combout\,
	datac => \KEY[1]~input_o\,
	datad => \hexComp4|Mux6~1_combout\,
	combout => \HEX4[0]$latch~combout\);

-- Location: LCCOMB_X112_Y32_N22
\hexComp4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux5~0_combout\ = (hexIn4(3) & ((hexIn4(0) & ((hexIn4(1)))) # (!hexIn4(0) & (hexIn4(2))))) # (!hexIn4(3) & (hexIn4(2) & (hexIn4(1) $ (hexIn4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux5~0_combout\);

-- Location: LCCOMB_X112_Y35_N26
\hexComp4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux5~1_combout\ = ((\currState.MEM_WRITE~q\) # (\hexComp4|Mux5~0_combout\)) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datac => \currState.MEM_WRITE~q\,
	datad => \hexComp4|Mux5~0_combout\,
	combout => \hexComp4|Mux5~1_combout\);

-- Location: LCCOMB_X112_Y35_N14
\HEX4[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[1]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp4|Mux5~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX4[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \HEX4[1]$latch~combout\,
	datad => \hexComp4|Mux5~1_combout\,
	combout => \HEX4[1]$latch~combout\);

-- Location: LCCOMB_X112_Y32_N16
\hexComp4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux4~0_combout\ = (hexIn4(2) & (hexIn4(3) & ((hexIn4(1)) # (!hexIn4(0))))) # (!hexIn4(2) & (!hexIn4(3) & (hexIn4(1) & !hexIn4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y32_N6
\hexComp4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux4~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp4|Mux4~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp4|Mux4~0_combout\,
	combout => \hexComp4|Mux4~1_combout\);

-- Location: LCCOMB_X112_Y32_N18
\HEX4[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[2]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp4|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX4[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp4|Mux4~1_combout\,
	datad => \HEX4[2]$latch~combout\,
	combout => \HEX4[2]$latch~combout\);

-- Location: LCCOMB_X112_Y32_N20
\hexComp4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux3~0_combout\ = (hexIn4(0) & (hexIn4(2) $ (((!hexIn4(1)))))) # (!hexIn4(0) & ((hexIn4(2) & (!hexIn4(3) & !hexIn4(1))) # (!hexIn4(2) & (hexIn4(3) & hexIn4(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y32_N2
\hexComp4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux3~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp4|Mux3~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp4|Mux3~0_combout\,
	combout => \hexComp4|Mux3~1_combout\);

-- Location: LCCOMB_X112_Y32_N12
\HEX4[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[3]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp4|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX4[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp4|Mux3~1_combout\,
	datad => \HEX4[3]$latch~combout\,
	combout => \HEX4[3]$latch~combout\);

-- Location: LCCOMB_X112_Y32_N8
\hexComp4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux2~0_combout\ = (hexIn4(1) & (((!hexIn4(3) & hexIn4(0))))) # (!hexIn4(1) & ((hexIn4(2) & (!hexIn4(3))) # (!hexIn4(2) & ((hexIn4(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y34_N2
\hexComp4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux2~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp4|Mux2~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp4|Mux2~0_combout\,
	combout => \hexComp4|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y34_N20
\HEX4[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[4]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp4|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX4[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \hexComp4|Mux2~1_combout\,
	datad => \HEX4[4]$latch~combout\,
	combout => \HEX4[4]$latch~combout\);

-- Location: LCCOMB_X112_Y32_N14
\hexComp4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux1~0_combout\ = (hexIn4(2) & ((hexIn4(3) & (!hexIn4(1))) # (!hexIn4(3) & (hexIn4(1) & hexIn4(0))))) # (!hexIn4(2) & (!hexIn4(3) & ((hexIn4(1)) # (hexIn4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y36_N2
\hexComp4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux1~1_combout\ = (\currState.MEM_WRITE~q\) # ((\hexComp4|Mux1~0_combout\) # (!\currState.FETCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datac => \currState.FETCH~q\,
	datad => \hexComp4|Mux1~0_combout\,
	combout => \hexComp4|Mux1~1_combout\);

-- Location: LCCOMB_X113_Y36_N18
\HEX4[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[5]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp4|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX4[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexComp4|Mux1~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \HEX4[5]$latch~combout\,
	combout => \HEX4[5]$latch~combout\);

-- Location: LCCOMB_X112_Y32_N0
\hexComp4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux0~0_combout\ = (hexIn4(3)) # ((hexIn4(2) & ((!hexIn4(0)) # (!hexIn4(1)))) # (!hexIn4(2) & (hexIn4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn4(2),
	datab => hexIn4(3),
	datac => hexIn4(1),
	datad => hexIn4(0),
	combout => \hexComp4|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y33_N2
\hexComp4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp4|Mux0~1_combout\ = ((\currState.MEM_WRITE~q\) # (\hexComp4|Mux0~0_combout\)) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datac => \currState.MEM_WRITE~q\,
	datad => \hexComp4|Mux0~0_combout\,
	combout => \hexComp4|Mux0~1_combout\);

-- Location: LCCOMB_X112_Y33_N20
\HEX4[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4[6]$latch~combout\ = (\KEY[1]~input_o\ & (!\hexComp4|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX4[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexComp4|Mux0~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \HEX4[6]$latch~combout\,
	combout => \HEX4[6]$latch~combout\);

-- Location: LCCOMB_X109_Y36_N4
\hexIn2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexIn2~0_combout\ = (\currState.EXECUTE~q\) # (\currState.MEM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.EXECUTE~q\,
	datad => \currState.MEM_WRITE~q\,
	combout => \hexIn2~0_combout\);

-- Location: LCCOMB_X109_Y36_N2
\alu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux0~1_combout\ = (\alu|Mux3~0_combout\ & ((\alu|Mux0~0_combout\ & ((!\alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\))) # (!\alu|Mux0~0_combout\ & (\alu|ShiftRight0~8_combout\)))) # (!\alu|Mux3~0_combout\ & (((\alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~8_combout\,
	datab => \alu|Mux3~0_combout\,
	datac => \alu|subtracter|nAdders:7:sumOthers:faOthers|ha1|SUM~combout\,
	datad => \alu|Mux0~0_combout\,
	combout => \alu|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y36_N30
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\hexIn2~0_combout\ & ((\SW[17]~input_o\ & ((\alu|Mux0~1_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux0~2_combout\,
	datab => \SW[17]~input_o\,
	datac => \hexIn2~0_combout\,
	datad => \alu|Mux0~1_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X110_Y34_N14
\hexIn3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn3(3) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector14~0_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hexIn3(3),
	datac => \Selector14~0_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn3(3));

-- Location: LCCOMB_X109_Y36_N20
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\hexIn2~0_combout\ & ((\SW[17]~input_o\ & ((\alu|Mux1~1_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux1~2_combout\,
	datab => \SW[17]~input_o\,
	datac => \hexIn2~0_combout\,
	datad => \alu|Mux1~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X110_Y34_N4
\hexIn3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn3(2) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector13~0_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hexIn3(2),
	datac => \Selector13~0_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn3(2));

-- Location: LCCOMB_X112_Y39_N12
\alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\ = sData2(5) $ (sData1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(5),
	datad => sData1(5),
	combout => \alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\);

-- Location: LCCOMB_X112_Y39_N18
\alu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux2~0_combout\ = (\SW[16]~input_o\ & (!\SW[15]~input_o\)) # (!\SW[16]~input_o\ & (\alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\ $ (((\SW[15]~input_o\ & \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \alu|adder|nAdders:4:sumOthers:faOthers|COUT~0_combout\,
	datad => \alu|subtracter|nAdders:5:sumOthers:faOthers|ha0|SUM~0_combout\,
	combout => \alu|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y36_N4
\alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\ = sData2(5) $ (sData1(5) $ (\alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(5),
	datac => sData1(5),
	datad => \alu|subtracter|nAdders:4:sumOthers:faOthers|COUT~combout\,
	combout => \alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X112_Y39_N24
\alu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux2~1_combout\ = (\alu|Mux2~0_combout\ & (((!\alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\) # (!\alu|Mux3~0_combout\)))) # (!\alu|Mux2~0_combout\ & (\alu|ShiftRight0~6_combout\ & (\alu|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~6_combout\,
	datab => \alu|Mux2~0_combout\,
	datac => \alu|Mux3~0_combout\,
	datad => \alu|subtracter|nAdders:5:sumOthers:faOthers|ha1|SUM~combout\,
	combout => \alu|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y34_N18
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\hexIn2~0_combout\ & ((\SW[17]~input_o\ & ((\alu|Mux2~1_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~2_combout\,
	datab => \SW[17]~input_o\,
	datac => \hexIn2~0_combout\,
	datad => \alu|Mux2~1_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X111_Y34_N26
\hexIn3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn3(1) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(1),
	datac => \hexIn0[0]~0clkctrl_outclk\,
	datad => \Selector12~0_combout\,
	combout => hexIn3(1));

-- Location: LCCOMB_X110_Y34_N12
\hexComp3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux6~0_combout\ = (hexIn3(2) & (!hexIn3(1) & ((hexIn3(3)) # (!hexIn3(0))))) # (!hexIn3(2) & (hexIn3(0) & (hexIn3(3) $ (!hexIn3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y34_N18
\hexComp3|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux6~1_combout\ = (\hexComp3|Mux6~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp3|Mux6~0_combout\,
	combout => \hexComp3|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y34_N24
\HEX3[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[0]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp3|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX3[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \hexComp3|Mux6~1_combout\,
	datad => \HEX3[0]$latch~combout\,
	combout => \HEX3[0]$latch~combout\);

-- Location: LCCOMB_X110_Y34_N16
\hexComp3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux5~0_combout\ = (hexIn3(3) & ((hexIn3(0) & ((hexIn3(1)))) # (!hexIn3(0) & (hexIn3(2))))) # (!hexIn3(3) & (hexIn3(2) & (hexIn3(0) $ (hexIn3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y34_N10
\hexComp3|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux5~1_combout\ = (\hexComp3|Mux5~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp3|Mux5~0_combout\,
	combout => \hexComp3|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y34_N6
\HEX3[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[1]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp3|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX3[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \hexComp3|Mux5~1_combout\,
	datad => \HEX3[1]$latch~combout\,
	combout => \HEX3[1]$latch~combout\);

-- Location: LCCOMB_X110_Y34_N8
\hexComp3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux4~0_combout\ = (hexIn3(3) & (hexIn3(2) & ((hexIn3(1)) # (!hexIn3(0))))) # (!hexIn3(3) & (!hexIn3(0) & (!hexIn3(2) & hexIn3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y33_N16
\hexComp3|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux4~1_combout\ = (\hexComp3|Mux4~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp3|Mux4~0_combout\,
	combout => \hexComp3|Mux4~1_combout\);

-- Location: LCCOMB_X109_Y33_N28
\HEX3[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[2]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp3|Mux4~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX3[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \hexComp3|Mux4~1_combout\,
	datad => \HEX3[2]$latch~combout\,
	combout => \HEX3[2]$latch~combout\);

-- Location: LCCOMB_X110_Y34_N22
\hexComp3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux3~0_combout\ = (hexIn3(0) & ((hexIn3(2) $ (!hexIn3(1))))) # (!hexIn3(0) & ((hexIn3(3) & (!hexIn3(2) & hexIn3(1))) # (!hexIn3(3) & (hexIn3(2) & !hexIn3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y33_N14
\hexComp3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux3~1_combout\ = (\hexComp3|Mux3~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp3|Mux3~0_combout\,
	combout => \hexComp3|Mux3~1_combout\);

-- Location: LCCOMB_X109_Y33_N30
\HEX3[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[3]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp3|Mux3~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX3[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \HEX3[3]$latch~combout\,
	datad => \hexComp3|Mux3~1_combout\,
	combout => \HEX3[3]$latch~combout\);

-- Location: LCCOMB_X110_Y34_N0
\hexComp3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux2~0_combout\ = (hexIn3(1) & (hexIn3(0) & (!hexIn3(3)))) # (!hexIn3(1) & ((hexIn3(2) & ((!hexIn3(3)))) # (!hexIn3(2) & (hexIn3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y35_N12
\hexComp3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux2~1_combout\ = (\hexComp3|Mux2~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp3|Mux2~0_combout\,
	combout => \hexComp3|Mux2~1_combout\);

-- Location: LCCOMB_X112_Y35_N0
\HEX3[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[4]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp3|Mux2~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX3[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp3|Mux2~1_combout\,
	datad => \HEX3[4]$latch~combout\,
	combout => \HEX3[4]$latch~combout\);

-- Location: LCCOMB_X110_Y34_N30
\hexComp3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux1~0_combout\ = (hexIn3(3) & (((hexIn3(2) & !hexIn3(1))))) # (!hexIn3(3) & ((hexIn3(0) & ((hexIn3(1)) # (!hexIn3(2)))) # (!hexIn3(0) & (!hexIn3(2) & hexIn3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y33_N16
\hexComp3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux1~1_combout\ = (\hexComp3|Mux1~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datad => \hexComp3|Mux1~0_combout\,
	combout => \hexComp3|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y33_N8
\HEX3[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[5]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp3|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX3[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp3|Mux1~1_combout\,
	datad => \HEX3[5]$latch~combout\,
	combout => \HEX3[5]$latch~combout\);

-- Location: LCCOMB_X110_Y34_N20
\hexComp3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux0~0_combout\ = (hexIn3(3)) # ((hexIn3(2) & ((!hexIn3(1)) # (!hexIn3(0)))) # (!hexIn3(2) & ((hexIn3(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn3(0),
	datab => hexIn3(3),
	datac => hexIn3(2),
	datad => hexIn3(1),
	combout => \hexComp3|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y34_N2
\hexComp3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp3|Mux0~1_combout\ = (\currState.FETCH~q\ & !\hexComp3|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp3|Mux0~0_combout\,
	combout => \hexComp3|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y34_N28
\HEX3[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX3[6]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp3|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX3[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \hexComp3|Mux0~1_combout\,
	datad => \HEX3[6]$latch~combout\,
	combout => \HEX3[6]$latch~combout\);

-- Location: LCCOMB_X109_Y39_N4
\alu|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~3_combout\ = \SW[16]~input_o\ $ (((\SW[15]~input_o\ & ((sData2(1)) # (sData1(1)))) # (!\SW[15]~input_o\ & (sData2(1) & sData1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => sData2(1),
	datad => sData1(1),
	combout => \alu|Mux6~3_combout\);

-- Location: LCCOMB_X109_Y39_N30
\alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\ = sData2(1) $ (sData1(1) $ (((sData1(0)) # (!sData2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datab => sData2(0),
	datac => sData1(0),
	datad => sData1(1),
	combout => \alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\);

-- Location: LCCOMB_X109_Y39_N8
\alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~0_combout\ = sData2(1) $ (((sData1(0) & (\SW[15]~input_o\ & sData2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData1(0),
	datab => \SW[15]~input_o\,
	datac => sData2(1),
	datad => sData2(0),
	combout => \alu|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y39_N6
\alu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~1_combout\ = (\SW[16]~input_o\ & (\SW[15]~input_o\)) # (!\SW[16]~input_o\ & ((\alu|Mux6~0_combout\ $ (sData1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \alu|Mux6~0_combout\,
	datad => sData1(1),
	combout => \alu|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y39_N24
\alu|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~10_combout\ = (!sData2(1) & ((sData2(0) & (sData1(2))) # (!sData2(0) & ((sData1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datab => sData1(2),
	datac => sData2(0),
	datad => sData1(1),
	combout => \alu|ShiftRight0~10_combout\);

-- Location: LCCOMB_X110_Y39_N16
\alu|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~12_combout\ = (!sData2(2) & ((\alu|ShiftRight0~10_combout\) # ((sData2(1) & \alu|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(1),
	datab => sData2(2),
	datac => \alu|ShiftRight0~11_combout\,
	datad => \alu|ShiftRight0~10_combout\,
	combout => \alu|ShiftRight0~12_combout\);

-- Location: LCCOMB_X113_Y41_N6
\alu|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~6_combout\ = (sData2(1) & (!sData2(0) & ((sData1(7))))) # (!sData2(1) & (((\alu|ShiftRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(0),
	datab => sData2(1),
	datac => \alu|ShiftRight0~5_combout\,
	datad => sData1(7),
	combout => \alu|ShiftRight0~6_combout\);

-- Location: LCCOMB_X110_Y39_N2
\alu|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~13_combout\ = (!\alu|ShiftRight0~4_combout\ & ((\alu|ShiftRight0~12_combout\) # ((sData2(2) & \alu|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sData2(2),
	datab => \alu|ShiftRight0~12_combout\,
	datac => \alu|ShiftRight0~6_combout\,
	datad => \alu|ShiftRight0~4_combout\,
	combout => \alu|ShiftRight0~13_combout\);

-- Location: LCCOMB_X110_Y39_N28
\alu|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~2_combout\ = (\SW[16]~input_o\ & ((\alu|Mux6~1_combout\ & ((\alu|ShiftRight0~13_combout\))) # (!\alu|Mux6~1_combout\ & (!\alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\)))) # (!\SW[16]~input_o\ & (((\alu|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \alu|subtracter|nAdders:1:sumOthers:faOthers|ha1|SUM~combout\,
	datac => \alu|Mux6~1_combout\,
	datad => \alu|ShiftRight0~13_combout\,
	combout => \alu|Mux6~2_combout\);

-- Location: LCCOMB_X110_Y39_N18
\alu|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu|Mux6~4_combout\ = (\SW[17]~input_o\ & ((\alu|Mux6~2_combout\))) # (!\SW[17]~input_o\ & (\alu|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \alu|Mux6~3_combout\,
	datad => \alu|Mux6~2_combout\,
	combout => \alu|Mux6~4_combout\);

-- Location: LCCOMB_X112_Y33_N8
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\currState.EXECUTE~q\ & (((\alu|Mux6~4_combout\)))) # (!\currState.EXECUTE~q\ & ((\currState.MEM_WRITE~q\ & ((\alu|Mux6~4_combout\))) # (!\currState.MEM_WRITE~q\ & (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \currState.EXECUTE~q\,
	datac => \currState.MEM_WRITE~q\,
	datad => \alu|Mux6~4_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X112_Y33_N12
\hexIn2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn2(1) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector8~2_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(1),
	datac => \Selector8~2_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn2(1));

-- Location: LCCOMB_X112_Y33_N30
\hexIn2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn2(2) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector9~2_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~2_combout\,
	datac => hexIn2(2),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn2(2));

-- Location: LCCOMB_X111_Y35_N20
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\alu|Mux4~4_combout\ & ((\currState.MEM_WRITE~q\) # (\currState.EXECUTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.MEM_WRITE~q\,
	datac => \currState.EXECUTE~q\,
	datad => \alu|Mux4~4_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X111_Y35_N24
\hexIn2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn2(3) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((\Selector10~2_combout\))) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (hexIn2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hexIn2(3),
	datac => \Selector10~2_combout\,
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn2(3));

-- Location: LCCOMB_X110_Y33_N26
\hexComp2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux6~0_combout\ = (hexIn2(1) & (hexIn2(0) & (!hexIn2(2) & hexIn2(3)))) # (!hexIn2(1) & (hexIn2(2) $ (((hexIn2(0) & !hexIn2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(0),
	datab => hexIn2(1),
	datac => hexIn2(2),
	datad => hexIn2(3),
	combout => \hexComp2|Mux6~0_combout\);

-- Location: LCCOMB_X110_Y33_N12
\hexComp2|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux6~1_combout\ = (\hexComp2|Mux6~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datac => \hexComp2|Mux6~0_combout\,
	combout => \hexComp2|Mux6~1_combout\);

-- Location: LCCOMB_X110_Y33_N6
\HEX2[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[0]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp2|Mux6~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX2[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp2|Mux6~1_combout\,
	datad => \HEX2[0]$latch~combout\,
	combout => \HEX2[0]$latch~combout\);

-- Location: LCCOMB_X110_Y33_N14
\hexComp2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux5~0_combout\ = (hexIn2(1) & ((hexIn2(0) & ((hexIn2(3)))) # (!hexIn2(0) & (hexIn2(2))))) # (!hexIn2(1) & (hexIn2(2) & (hexIn2(0) $ (hexIn2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(0),
	datab => hexIn2(1),
	datac => hexIn2(2),
	datad => hexIn2(3),
	combout => \hexComp2|Mux5~0_combout\);

-- Location: LCCOMB_X110_Y33_N4
\hexComp2|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux5~1_combout\ = (\hexComp2|Mux5~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datac => \hexComp2|Mux5~0_combout\,
	combout => \hexComp2|Mux5~1_combout\);

-- Location: LCCOMB_X110_Y33_N24
\HEX2[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[1]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp2|Mux5~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX2[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp2|Mux5~1_combout\,
	datad => \HEX2[1]$latch~combout\,
	combout => \HEX2[1]$latch~combout\);

-- Location: LCCOMB_X110_Y33_N2
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\currState.EXECUTE~q\ & (((\alu|Mux7~6_combout\)))) # (!\currState.EXECUTE~q\ & ((\currState.MEM_WRITE~q\ & ((\alu|Mux7~6_combout\))) # (!\currState.MEM_WRITE~q\ & (\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currState.EXECUTE~q\,
	datab => \currState.MEM_WRITE~q\,
	datac => \SW[15]~input_o\,
	datad => \alu|Mux7~6_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X110_Y33_N22
\hexIn2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- hexIn2(0) = (GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & (\Selector6~2_combout\)) # (!GLOBAL(\hexIn0[0]~0clkctrl_outclk\) & ((hexIn2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~2_combout\,
	datac => hexIn2(0),
	datad => \hexIn0[0]~0clkctrl_outclk\,
	combout => hexIn2(0));

-- Location: LCCOMB_X111_Y35_N12
\hexComp2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux4~0_combout\ = (hexIn2(2) & (hexIn2(3) & ((hexIn2(1)) # (!hexIn2(0))))) # (!hexIn2(2) & (!hexIn2(3) & (hexIn2(1) & !hexIn2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(2),
	datab => hexIn2(3),
	datac => hexIn2(1),
	datad => hexIn2(0),
	combout => \hexComp2|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y35_N22
\hexComp2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux4~1_combout\ = (\hexComp2|Mux4~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp2|Mux4~0_combout\,
	combout => \hexComp2|Mux4~1_combout\);

-- Location: LCCOMB_X111_Y35_N18
\HEX2[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[2]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp2|Mux4~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX2[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX2[2]$latch~combout\,
	datac => \KEY[1]~input_o\,
	datad => \hexComp2|Mux4~1_combout\,
	combout => \HEX2[2]$latch~combout\);

-- Location: LCCOMB_X110_Y33_N30
\hexComp2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux3~0_combout\ = (hexIn2(0) & (hexIn2(1) $ ((!hexIn2(2))))) # (!hexIn2(0) & ((hexIn2(1) & (!hexIn2(2) & hexIn2(3))) # (!hexIn2(1) & (hexIn2(2) & !hexIn2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(0),
	datab => hexIn2(1),
	datac => hexIn2(2),
	datad => hexIn2(3),
	combout => \hexComp2|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y33_N28
\hexComp2|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux3~1_combout\ = (\hexComp2|Mux3~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datac => \hexComp2|Mux3~0_combout\,
	combout => \hexComp2|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y33_N18
\HEX2[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[3]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp2|Mux3~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX2[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp2|Mux3~1_combout\,
	datad => \HEX2[3]$latch~combout\,
	combout => \HEX2[3]$latch~combout\);

-- Location: LCCOMB_X112_Y33_N24
\hexComp2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux2~0_combout\ = (hexIn2(1) & (((!hexIn2(3) & hexIn2(0))))) # (!hexIn2(1) & ((hexIn2(2) & (!hexIn2(3))) # (!hexIn2(2) & ((hexIn2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(2),
	datab => hexIn2(1),
	datac => hexIn2(3),
	datad => hexIn2(0),
	combout => \hexComp2|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y33_N18
\hexComp2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux2~1_combout\ = (\hexComp2|Mux2~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datad => \hexComp2|Mux2~0_combout\,
	combout => \hexComp2|Mux2~1_combout\);

-- Location: LCCOMB_X112_Y33_N22
\HEX2[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[4]$latch~combout\ = (\KEY[1]~input_o\ & ((\hexComp2|Mux2~1_combout\))) # (!\KEY[1]~input_o\ & (\HEX2[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \HEX2[4]$latch~combout\,
	datad => \hexComp2|Mux2~1_combout\,
	combout => \HEX2[4]$latch~combout\);

-- Location: LCCOMB_X110_Y33_N10
\hexComp2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux1~0_combout\ = (hexIn2(1) & (!hexIn2(3) & ((hexIn2(0)) # (!hexIn2(2))))) # (!hexIn2(1) & ((hexIn2(2) & ((hexIn2(3)))) # (!hexIn2(2) & (hexIn2(0) & !hexIn2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(0),
	datab => hexIn2(1),
	datac => hexIn2(2),
	datad => hexIn2(3),
	combout => \hexComp2|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y33_N0
\hexComp2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux1~1_combout\ = (\hexComp2|Mux1~0_combout\) # (!\currState.FETCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currState.FETCH~q\,
	datad => \hexComp2|Mux1~0_combout\,
	combout => \hexComp2|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y33_N20
\HEX2[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[5]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp2|Mux1~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX2[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp2|Mux1~1_combout\,
	datad => \HEX2[5]$latch~combout\,
	combout => \HEX2[5]$latch~combout\);

-- Location: LCCOMB_X112_Y33_N0
\hexComp2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux0~0_combout\ = (hexIn2(3)) # ((hexIn2(2) & ((!hexIn2(0)) # (!hexIn2(1)))) # (!hexIn2(2) & (hexIn2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hexIn2(2),
	datab => hexIn2(1),
	datac => hexIn2(3),
	datad => hexIn2(0),
	combout => \hexComp2|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y33_N14
\hexComp2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexComp2|Mux0~1_combout\ = (\currState.FETCH~q\ & !\hexComp2|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currState.FETCH~q\,
	datad => \hexComp2|Mux0~0_combout\,
	combout => \hexComp2|Mux0~1_combout\);

-- Location: LCCOMB_X112_Y33_N10
\HEX2[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX2[6]$latch~combout\ = (\KEY[1]~input_o\ & (\hexComp2|Mux0~1_combout\)) # (!\KEY[1]~input_o\ & ((\HEX2[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \hexComp2|Mux0~1_combout\,
	datad => \HEX2[6]$latch~combout\,
	combout => \HEX2[6]$latch~combout\);

-- Location: LCCOMB_X112_Y33_N16
\HEX0[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX0[6]$latch~combout\ = (\KEY[1]~input_o\ & ((\currState.FETCH~q\))) # (!\KEY[1]~input_o\ & (\HEX0[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX0[6]$latch~combout\,
	datac => \KEY[1]~input_o\,
	datad => \currState.FETCH~q\,
	combout => \HEX0[6]$latch~combout\);

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


