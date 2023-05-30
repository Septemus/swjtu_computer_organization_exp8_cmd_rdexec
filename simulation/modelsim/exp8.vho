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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/29/2023 11:16:56"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exp8 IS
    PORT (
	PC : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	wr : IN std_logic;
	rd : IN std_logic;
	pc_clr : IN std_logic;
	manual_plus : IN std_logic;
	key_out : IN std_logic_vector(7 DOWNTO 0);
	M : IN std_logic_vector(1 DOWNTO 0);
	RA : IN std_logic_vector(1 DOWNTO 0);
	cin : IN std_logic;
	R0 : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0);
	R3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END exp8;

-- Design Ports Information
-- PC[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[2]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_clr	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- manual_plus	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_out[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exp8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_pc_clr : std_logic;
SIGNAL ww_manual_plus : std_logic;
SIGNAL ww_key_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \R0[7]~output_o\ : std_logic;
SIGNAL \R0[6]~output_o\ : std_logic;
SIGNAL \R0[5]~output_o\ : std_logic;
SIGNAL \R0[4]~output_o\ : std_logic;
SIGNAL \R0[3]~output_o\ : std_logic;
SIGNAL \R0[2]~output_o\ : std_logic;
SIGNAL \R0[1]~output_o\ : std_logic;
SIGNAL \R0[0]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \R3[7]~output_o\ : std_logic;
SIGNAL \R3[6]~output_o\ : std_logic;
SIGNAL \R3[5]~output_o\ : std_logic;
SIGNAL \R3[4]~output_o\ : std_logic;
SIGNAL \R3[3]~output_o\ : std_logic;
SIGNAL \R3[2]~output_o\ : std_logic;
SIGNAL \R3[1]~output_o\ : std_logic;
SIGNAL \R3[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \inst1|pf|Add1~0_combout\ : std_logic;
SIGNAL \inst1|pf|PC[0]~8_combout\ : std_logic;
SIGNAL \key_out[0]~input_o\ : std_logic;
SIGNAL \pc_clr~input_o\ : std_logic;
SIGNAL \manual_plus~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[2]~24_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~0_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~1\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~2_combout\ : std_logic;
SIGNAL \inst1|pf|cs|second_counter~0_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~3\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~4_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~5\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~6_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~7\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~8_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~9\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~10_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~11\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~12_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~13\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~14_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~15\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~16_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~17\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~18_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~19\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~20_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~21\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~22_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~23\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~24_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~25\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~26_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~27\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~28_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~29\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~30_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~31\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~32_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~33\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~34_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~35\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~36_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~37\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~38_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~39\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~40_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~41\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~42_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~43\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~44_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~45\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~46_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~47\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~48_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~6_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~5_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~49\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~50_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~51\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~52_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~53\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~54_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~55\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~56_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~57\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~58_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~59\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~60_combout\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~61\ : std_logic;
SIGNAL \inst1|pf|cs|Add0~62_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~7_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~8_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~0_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~1_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~3_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~2_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~4_combout\ : std_logic;
SIGNAL \inst1|pf|WideNor0~9_combout\ : std_logic;
SIGNAL \inst1|pf|PC[2]~25_combout\ : std_logic;
SIGNAL \inst1|pf|PC[0]~9\ : std_logic;
SIGNAL \inst1|pf|PC[1]~10_combout\ : std_logic;
SIGNAL \key_out[1]~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[1]~11\ : std_logic;
SIGNAL \inst1|pf|PC[2]~12_combout\ : std_logic;
SIGNAL \key_out[2]~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[2]~13\ : std_logic;
SIGNAL \inst1|pf|PC[3]~14_combout\ : std_logic;
SIGNAL \key_out[3]~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[3]~15\ : std_logic;
SIGNAL \inst1|pf|PC[4]~16_combout\ : std_logic;
SIGNAL \key_out[4]~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[4]~17\ : std_logic;
SIGNAL \inst1|pf|PC[5]~18_combout\ : std_logic;
SIGNAL \key_out[5]~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[5]~19\ : std_logic;
SIGNAL \inst1|pf|PC[6]~20_combout\ : std_logic;
SIGNAL \key_out[6]~input_o\ : std_logic;
SIGNAL \inst1|pf|PC[6]~21\ : std_logic;
SIGNAL \inst1|pf|PC[7]~22_combout\ : std_logic;
SIGNAL \key_out[7]~input_o\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \inst8|Equal1~0_combout\ : std_logic;
SIGNAL \inst8|Selector4~0_combout\ : std_logic;
SIGNAL \inst8|WideNor0~combout\ : std_logic;
SIGNAL \inst8|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|rf|R0[0]~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|rf|R2[7]~0_combout\ : std_logic;
SIGNAL \inst1|rf|R2~1_combout\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \inst1|rf|R2[7]~2_combout\ : std_logic;
SIGNAL \inst1|rf|R2[7]~3_combout\ : std_logic;
SIGNAL \inst8|choose_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|rf|R3[6]~0_combout\ : std_logic;
SIGNAL \inst1|rf|R3~1_combout\ : std_logic;
SIGNAL \inst1|rf|R3[7]~2_combout\ : std_logic;
SIGNAL \inst1|rf|R3[7]~3_combout\ : std_logic;
SIGNAL \inst1|rf|R1[0]~0_combout\ : std_logic;
SIGNAL \inst1|rf|R1~1_combout\ : std_logic;
SIGNAL \inst1|rf|R1[7]~2_combout\ : std_logic;
SIGNAL \inst1|rf|R1[7]~3_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[7]~feeder_combout\ : std_logic;
SIGNAL \inst8|Selector2~0_combout\ : std_logic;
SIGNAL \inst8|Selector3~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|rf|R0~1_combout\ : std_logic;
SIGNAL \inst1|rf|R0[7]~2_combout\ : std_logic;
SIGNAL \inst1|rf|R0[7]~3_combout\ : std_logic;
SIGNAL \inst1|rf|R3~4_combout\ : std_logic;
SIGNAL \inst1|rf|R1~4_combout\ : std_logic;
SIGNAL \inst1|rf|R2~4_combout\ : std_logic;
SIGNAL \inst7|Mux9~0_combout\ : std_logic;
SIGNAL \inst7|Mux9~1_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~1_combout\ : std_logic;
SIGNAL \inst6|man|ans~8_combout\ : std_logic;
SIGNAL \inst6|man|ans~7_combout\ : std_logic;
SIGNAL \inst6|man|ans[6]~0_combout\ : std_logic;
SIGNAL \inst1|rf|R0~4_combout\ : std_logic;
SIGNAL \inst1|rf|R2~5_combout\ : std_logic;
SIGNAL \inst1|rf|R3~5_combout\ : std_logic;
SIGNAL \inst1|rf|R1~5_combout\ : std_logic;
SIGNAL \inst7|Mux10~0_combout\ : std_logic;
SIGNAL \inst7|Mux10~1_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~10_combout\ : std_logic;
SIGNAL \inst6|man|ans~9_combout\ : std_logic;
SIGNAL \inst6|man|ans[5]~1_combout\ : std_logic;
SIGNAL \inst1|rf|R0~5_combout\ : std_logic;
SIGNAL \inst1|rf|R3~6_combout\ : std_logic;
SIGNAL \inst1|rf|R1~6_combout\ : std_logic;
SIGNAL \inst1|rf|R2~6_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux11~0_combout\ : std_logic;
SIGNAL \inst7|Mux11~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~12_combout\ : std_logic;
SIGNAL \inst6|man|ans~11_combout\ : std_logic;
SIGNAL \inst6|man|ans[4]~2_combout\ : std_logic;
SIGNAL \inst1|rf|R0~6_combout\ : std_logic;
SIGNAL \inst1|rf|R2~7_combout\ : std_logic;
SIGNAL \inst1|rf|R3~7_combout\ : std_logic;
SIGNAL \inst1|rf|R1~7_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~1_combout\ : std_logic;
SIGNAL \inst7|Mux12~0_combout\ : std_logic;
SIGNAL \inst7|Mux12~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~14_combout\ : std_logic;
SIGNAL \inst6|man|ans~13_combout\ : std_logic;
SIGNAL \inst6|man|ans[3]~3_combout\ : std_logic;
SIGNAL \inst1|rf|R0~7_combout\ : std_logic;
SIGNAL \inst1|rf|R1~8_combout\ : std_logic;
SIGNAL \inst1|rf|R3~8_combout\ : std_logic;
SIGNAL \inst1|rf|R2~8_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux13~0_combout\ : std_logic;
SIGNAL \inst7|Mux13~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~16_combout\ : std_logic;
SIGNAL \inst6|man|ans~15_combout\ : std_logic;
SIGNAL \inst6|man|ans[2]~4_combout\ : std_logic;
SIGNAL \inst1|rf|R0~8_combout\ : std_logic;
SIGNAL \inst1|rf|R2~9_combout\ : std_logic;
SIGNAL \inst1|rf|R3~9_combout\ : std_logic;
SIGNAL \inst1|rf|R1~9_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux14~0_combout\ : std_logic;
SIGNAL \inst7|Mux14~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~17_combout\ : std_logic;
SIGNAL \inst6|man|ans~18_combout\ : std_logic;
SIGNAL \inst6|man|ans[1]~5_combout\ : std_logic;
SIGNAL \inst1|rf|R0~9_combout\ : std_logic;
SIGNAL \inst1|rf|R1~10_combout\ : std_logic;
SIGNAL \inst1|rf|R3~10_combout\ : std_logic;
SIGNAL \inst1|rf|R2~10_combout\ : std_logic;
SIGNAL \inst7|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[0]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux15~0_combout\ : std_logic;
SIGNAL \inst7|Mux15~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~20_combout\ : std_logic;
SIGNAL \inst6|man|ans~19_combout\ : std_logic;
SIGNAL \inst6|man|ans[0]~6_combout\ : std_logic;
SIGNAL \inst1|rf|R0~10_combout\ : std_logic;
SIGNAL \inst8|choose_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|rf|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pf|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|res_dest\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|rf|R0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|S\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|rf|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mw|X\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|rf|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|mw|Y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|opt2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|pf|cs|second_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|man|ans\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|opt1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

PC <= ww_PC;
ww_clk <= clk;
ww_wr <= wr;
ww_rd <= rd;
ww_pc_clr <= pc_clr;
ww_manual_plus <= manual_plus;
ww_key_out <= key_out;
ww_M <= M;
ww_RA <= RA;
ww_cin <= cin;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst1|pf|PC\(7) & \inst1|pf|PC\(6) & \inst1|pf|PC\(5) & \inst1|pf|PC\(4) & \inst1|pf|PC\(3) & \inst1|pf|PC\(2) & \inst1|pf|PC\(1) & \inst1|pf|PC\(0));

\inst|srom|rom_block|auto_generated|q_a\(6) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\inst|srom|rom_block|auto_generated|q_a\(7) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);
\inst|srom|rom_block|auto_generated|q_a\(8) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(2);
\inst|srom|rom_block|auto_generated|q_a\(9) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(3);
\inst|srom|rom_block|auto_generated|q_a\(10) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(4);
\inst|srom|rom_block|auto_generated|q_a\(11) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(5);
\inst|srom|rom_block|auto_generated|q_a\(12) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(6);
\inst|srom|rom_block|auto_generated|q_a\(13) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(7);
\inst|srom|rom_block|auto_generated|q_a\(14) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(8);
\inst|srom|rom_block|auto_generated|q_a\(15) <= \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\(9);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: IOOBUF_X29_Y43_N2
\PC[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X32_Y43_N9
\PC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X27_Y43_N16
\PC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X27_Y43_N9
\PC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\PC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\PC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X29_Y43_N9
\PC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X32_Y43_N2
\PC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|pf|PC\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X43_Y43_N2
\R0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(7),
	devoe => ww_devoe,
	o => \R0[7]~output_o\);

-- Location: IOOBUF_X43_Y43_N23
\R0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(6),
	devoe => ww_devoe,
	o => \R0[6]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\R0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(5),
	devoe => ww_devoe,
	o => \R0[5]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\R0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(4),
	devoe => ww_devoe,
	o => \R0[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\R0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(3),
	devoe => ww_devoe,
	o => \R0[3]~output_o\);

-- Location: IOOBUF_X50_Y43_N30
\R0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(2),
	devoe => ww_devoe,
	o => \R0[2]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\R0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(1),
	devoe => ww_devoe,
	o => \R0[1]~output_o\);

-- Location: IOOBUF_X29_Y43_N16
\R0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R0\(0),
	devoe => ww_devoe,
	o => \R0[0]~output_o\);

-- Location: IOOBUF_X41_Y43_N2
\R1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(7),
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\R1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(6),
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X43_Y43_N9
\R1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(5),
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\R1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(4),
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N2
\R1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(3),
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\R1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(2),
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\R1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(1),
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\R1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R1\(0),
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X43_Y43_N16
\R2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(7),
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\R2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(6),
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\R2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(5),
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X52_Y43_N30
\R2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(4),
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N30
\R2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(3),
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\R2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(2),
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\R2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(1),
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X25_Y43_N30
\R2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R2\(0),
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOOBUF_X50_Y43_N9
\R3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(7),
	devoe => ww_devoe,
	o => \R3[7]~output_o\);

-- Location: IOOBUF_X43_Y43_N30
\R3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(6),
	devoe => ww_devoe,
	o => \R3[6]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\R3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(5),
	devoe => ww_devoe,
	o => \R3[5]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\R3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(4),
	devoe => ww_devoe,
	o => \R3[4]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\R3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(3),
	devoe => ww_devoe,
	o => \R3[3]~output_o\);

-- Location: IOOBUF_X48_Y43_N23
\R3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(2),
	devoe => ww_devoe,
	o => \R3[2]~output_o\);

-- Location: IOOBUF_X38_Y43_N9
\R3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(1),
	devoe => ww_devoe,
	o => \R3[1]~output_o\);

-- Location: IOOBUF_X38_Y43_N16
\R3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|rf|R3\(0),
	devoe => ww_devoe,
	o => \R3[0]~output_o\);

-- Location: IOIBUF_X34_Y43_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G14
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y12_N22
\M[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\M[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: LCCOMB_X36_Y42_N28
\inst1|pf|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|Add1~0_combout\ = (\M[1]~input_o\ & \M[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M[1]~input_o\,
	datad => \M[0]~input_o\,
	combout => \inst1|pf|Add1~0_combout\);

-- Location: LCCOMB_X36_Y42_N4
\inst1|pf|PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[0]~8_combout\ = (\inst1|pf|PC\(0) & (\inst1|pf|Add1~0_combout\ $ (GND))) # (!\inst1|pf|PC\(0) & (!\inst1|pf|Add1~0_combout\ & VCC))
-- \inst1|pf|PC[0]~9\ = CARRY((\inst1|pf|PC\(0) & !\inst1|pf|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|PC\(0),
	datab => \inst1|pf|Add1~0_combout\,
	datad => VCC,
	combout => \inst1|pf|PC[0]~8_combout\,
	cout => \inst1|pf|PC[0]~9\);

-- Location: IOIBUF_X27_Y43_N29
\key_out[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(0),
	o => \key_out[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\pc_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_clr,
	o => \pc_clr~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\manual_plus~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_manual_plus,
	o => \manual_plus~input_o\);

-- Location: LCCOMB_X36_Y42_N22
\inst1|pf|PC[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[2]~24_combout\ = (!\M[0]~input_o\ & (\M[1]~input_o\ & \manual_plus~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \M[1]~input_o\,
	datad => \manual_plus~input_o\,
	combout => \inst1|pf|PC[2]~24_combout\);

-- Location: LCCOMB_X37_Y42_N0
\inst1|pf|cs|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~0_combout\ = \inst1|pf|cs|second_counter\(0) $ (VCC)
-- \inst1|pf|cs|Add0~1\ = CARRY(\inst1|pf|cs|second_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(0),
	datad => VCC,
	combout => \inst1|pf|cs|Add0~0_combout\,
	cout => \inst1|pf|cs|Add0~1\);

-- Location: FF_X37_Y42_N1
\inst1|pf|cs|second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(0));

-- Location: LCCOMB_X37_Y42_N2
\inst1|pf|cs|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~2_combout\ = (\inst1|pf|cs|second_counter\(1) & (!\inst1|pf|cs|Add0~1\)) # (!\inst1|pf|cs|second_counter\(1) & ((\inst1|pf|cs|Add0~1\) # (GND)))
-- \inst1|pf|cs|Add0~3\ = CARRY((!\inst1|pf|cs|Add0~1\) # (!\inst1|pf|cs|second_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(1),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~1\,
	combout => \inst1|pf|cs|Add0~2_combout\,
	cout => \inst1|pf|cs|Add0~3\);

-- Location: LCCOMB_X36_Y42_N24
\inst1|pf|cs|second_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|second_counter~0_combout\ = (\inst1|pf|cs|Add0~2_combout\ & ((!\inst1|pf|WideNor0~9_combout\) # (!\inst1|pf|cs|second_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(0),
	datac => \inst1|pf|cs|Add0~2_combout\,
	datad => \inst1|pf|WideNor0~9_combout\,
	combout => \inst1|pf|cs|second_counter~0_combout\);

-- Location: FF_X36_Y42_N25
\inst1|pf|cs|second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|second_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(1));

-- Location: LCCOMB_X37_Y42_N4
\inst1|pf|cs|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~4_combout\ = (\inst1|pf|cs|second_counter\(2) & (\inst1|pf|cs|Add0~3\ $ (GND))) # (!\inst1|pf|cs|second_counter\(2) & (!\inst1|pf|cs|Add0~3\ & VCC))
-- \inst1|pf|cs|Add0~5\ = CARRY((\inst1|pf|cs|second_counter\(2) & !\inst1|pf|cs|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(2),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~3\,
	combout => \inst1|pf|cs|Add0~4_combout\,
	cout => \inst1|pf|cs|Add0~5\);

-- Location: FF_X37_Y42_N5
\inst1|pf|cs|second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(2));

-- Location: LCCOMB_X37_Y42_N6
\inst1|pf|cs|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~6_combout\ = (\inst1|pf|cs|second_counter\(3) & (!\inst1|pf|cs|Add0~5\)) # (!\inst1|pf|cs|second_counter\(3) & ((\inst1|pf|cs|Add0~5\) # (GND)))
-- \inst1|pf|cs|Add0~7\ = CARRY((!\inst1|pf|cs|Add0~5\) # (!\inst1|pf|cs|second_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(3),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~5\,
	combout => \inst1|pf|cs|Add0~6_combout\,
	cout => \inst1|pf|cs|Add0~7\);

-- Location: FF_X37_Y42_N7
\inst1|pf|cs|second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(3));

-- Location: LCCOMB_X37_Y42_N8
\inst1|pf|cs|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~8_combout\ = (\inst1|pf|cs|second_counter\(4) & (\inst1|pf|cs|Add0~7\ $ (GND))) # (!\inst1|pf|cs|second_counter\(4) & (!\inst1|pf|cs|Add0~7\ & VCC))
-- \inst1|pf|cs|Add0~9\ = CARRY((\inst1|pf|cs|second_counter\(4) & !\inst1|pf|cs|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(4),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~7\,
	combout => \inst1|pf|cs|Add0~8_combout\,
	cout => \inst1|pf|cs|Add0~9\);

-- Location: FF_X37_Y42_N9
\inst1|pf|cs|second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(4));

-- Location: LCCOMB_X37_Y42_N10
\inst1|pf|cs|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~10_combout\ = (\inst1|pf|cs|second_counter\(5) & (!\inst1|pf|cs|Add0~9\)) # (!\inst1|pf|cs|second_counter\(5) & ((\inst1|pf|cs|Add0~9\) # (GND)))
-- \inst1|pf|cs|Add0~11\ = CARRY((!\inst1|pf|cs|Add0~9\) # (!\inst1|pf|cs|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(5),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~9\,
	combout => \inst1|pf|cs|Add0~10_combout\,
	cout => \inst1|pf|cs|Add0~11\);

-- Location: FF_X37_Y42_N11
\inst1|pf|cs|second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(5));

-- Location: LCCOMB_X37_Y42_N12
\inst1|pf|cs|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~12_combout\ = (\inst1|pf|cs|second_counter\(6) & (\inst1|pf|cs|Add0~11\ $ (GND))) # (!\inst1|pf|cs|second_counter\(6) & (!\inst1|pf|cs|Add0~11\ & VCC))
-- \inst1|pf|cs|Add0~13\ = CARRY((\inst1|pf|cs|second_counter\(6) & !\inst1|pf|cs|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(6),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~11\,
	combout => \inst1|pf|cs|Add0~12_combout\,
	cout => \inst1|pf|cs|Add0~13\);

-- Location: FF_X37_Y42_N13
\inst1|pf|cs|second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(6));

-- Location: LCCOMB_X37_Y42_N14
\inst1|pf|cs|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~14_combout\ = (\inst1|pf|cs|second_counter\(7) & (!\inst1|pf|cs|Add0~13\)) # (!\inst1|pf|cs|second_counter\(7) & ((\inst1|pf|cs|Add0~13\) # (GND)))
-- \inst1|pf|cs|Add0~15\ = CARRY((!\inst1|pf|cs|Add0~13\) # (!\inst1|pf|cs|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(7),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~13\,
	combout => \inst1|pf|cs|Add0~14_combout\,
	cout => \inst1|pf|cs|Add0~15\);

-- Location: FF_X37_Y42_N15
\inst1|pf|cs|second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(7));

-- Location: LCCOMB_X37_Y42_N16
\inst1|pf|cs|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~16_combout\ = (\inst1|pf|cs|second_counter\(8) & (\inst1|pf|cs|Add0~15\ $ (GND))) # (!\inst1|pf|cs|second_counter\(8) & (!\inst1|pf|cs|Add0~15\ & VCC))
-- \inst1|pf|cs|Add0~17\ = CARRY((\inst1|pf|cs|second_counter\(8) & !\inst1|pf|cs|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(8),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~15\,
	combout => \inst1|pf|cs|Add0~16_combout\,
	cout => \inst1|pf|cs|Add0~17\);

-- Location: FF_X37_Y42_N17
\inst1|pf|cs|second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(8));

-- Location: LCCOMB_X37_Y42_N18
\inst1|pf|cs|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~18_combout\ = (\inst1|pf|cs|second_counter\(9) & (!\inst1|pf|cs|Add0~17\)) # (!\inst1|pf|cs|second_counter\(9) & ((\inst1|pf|cs|Add0~17\) # (GND)))
-- \inst1|pf|cs|Add0~19\ = CARRY((!\inst1|pf|cs|Add0~17\) # (!\inst1|pf|cs|second_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(9),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~17\,
	combout => \inst1|pf|cs|Add0~18_combout\,
	cout => \inst1|pf|cs|Add0~19\);

-- Location: FF_X37_Y42_N19
\inst1|pf|cs|second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(9));

-- Location: LCCOMB_X37_Y42_N20
\inst1|pf|cs|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~20_combout\ = (\inst1|pf|cs|second_counter\(10) & (\inst1|pf|cs|Add0~19\ $ (GND))) # (!\inst1|pf|cs|second_counter\(10) & (!\inst1|pf|cs|Add0~19\ & VCC))
-- \inst1|pf|cs|Add0~21\ = CARRY((\inst1|pf|cs|second_counter\(10) & !\inst1|pf|cs|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(10),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~19\,
	combout => \inst1|pf|cs|Add0~20_combout\,
	cout => \inst1|pf|cs|Add0~21\);

-- Location: FF_X37_Y42_N21
\inst1|pf|cs|second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(10));

-- Location: LCCOMB_X37_Y42_N22
\inst1|pf|cs|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~22_combout\ = (\inst1|pf|cs|second_counter\(11) & (!\inst1|pf|cs|Add0~21\)) # (!\inst1|pf|cs|second_counter\(11) & ((\inst1|pf|cs|Add0~21\) # (GND)))
-- \inst1|pf|cs|Add0~23\ = CARRY((!\inst1|pf|cs|Add0~21\) # (!\inst1|pf|cs|second_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(11),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~21\,
	combout => \inst1|pf|cs|Add0~22_combout\,
	cout => \inst1|pf|cs|Add0~23\);

-- Location: FF_X37_Y42_N23
\inst1|pf|cs|second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(11));

-- Location: LCCOMB_X37_Y42_N24
\inst1|pf|cs|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~24_combout\ = (\inst1|pf|cs|second_counter\(12) & (\inst1|pf|cs|Add0~23\ $ (GND))) # (!\inst1|pf|cs|second_counter\(12) & (!\inst1|pf|cs|Add0~23\ & VCC))
-- \inst1|pf|cs|Add0~25\ = CARRY((\inst1|pf|cs|second_counter\(12) & !\inst1|pf|cs|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(12),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~23\,
	combout => \inst1|pf|cs|Add0~24_combout\,
	cout => \inst1|pf|cs|Add0~25\);

-- Location: FF_X37_Y42_N25
\inst1|pf|cs|second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(12));

-- Location: LCCOMB_X37_Y42_N26
\inst1|pf|cs|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~26_combout\ = (\inst1|pf|cs|second_counter\(13) & (!\inst1|pf|cs|Add0~25\)) # (!\inst1|pf|cs|second_counter\(13) & ((\inst1|pf|cs|Add0~25\) # (GND)))
-- \inst1|pf|cs|Add0~27\ = CARRY((!\inst1|pf|cs|Add0~25\) # (!\inst1|pf|cs|second_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(13),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~25\,
	combout => \inst1|pf|cs|Add0~26_combout\,
	cout => \inst1|pf|cs|Add0~27\);

-- Location: FF_X37_Y42_N27
\inst1|pf|cs|second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(13));

-- Location: LCCOMB_X37_Y42_N28
\inst1|pf|cs|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~28_combout\ = (\inst1|pf|cs|second_counter\(14) & (\inst1|pf|cs|Add0~27\ $ (GND))) # (!\inst1|pf|cs|second_counter\(14) & (!\inst1|pf|cs|Add0~27\ & VCC))
-- \inst1|pf|cs|Add0~29\ = CARRY((\inst1|pf|cs|second_counter\(14) & !\inst1|pf|cs|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(14),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~27\,
	combout => \inst1|pf|cs|Add0~28_combout\,
	cout => \inst1|pf|cs|Add0~29\);

-- Location: FF_X37_Y42_N29
\inst1|pf|cs|second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(14));

-- Location: LCCOMB_X37_Y42_N30
\inst1|pf|cs|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~30_combout\ = (\inst1|pf|cs|second_counter\(15) & (!\inst1|pf|cs|Add0~29\)) # (!\inst1|pf|cs|second_counter\(15) & ((\inst1|pf|cs|Add0~29\) # (GND)))
-- \inst1|pf|cs|Add0~31\ = CARRY((!\inst1|pf|cs|Add0~29\) # (!\inst1|pf|cs|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(15),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~29\,
	combout => \inst1|pf|cs|Add0~30_combout\,
	cout => \inst1|pf|cs|Add0~31\);

-- Location: FF_X37_Y42_N31
\inst1|pf|cs|second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(15));

-- Location: LCCOMB_X37_Y41_N0
\inst1|pf|cs|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~32_combout\ = (\inst1|pf|cs|second_counter\(16) & (\inst1|pf|cs|Add0~31\ $ (GND))) # (!\inst1|pf|cs|second_counter\(16) & (!\inst1|pf|cs|Add0~31\ & VCC))
-- \inst1|pf|cs|Add0~33\ = CARRY((\inst1|pf|cs|second_counter\(16) & !\inst1|pf|cs|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(16),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~31\,
	combout => \inst1|pf|cs|Add0~32_combout\,
	cout => \inst1|pf|cs|Add0~33\);

-- Location: FF_X37_Y41_N1
\inst1|pf|cs|second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(16));

-- Location: LCCOMB_X37_Y41_N2
\inst1|pf|cs|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~34_combout\ = (\inst1|pf|cs|second_counter\(17) & (!\inst1|pf|cs|Add0~33\)) # (!\inst1|pf|cs|second_counter\(17) & ((\inst1|pf|cs|Add0~33\) # (GND)))
-- \inst1|pf|cs|Add0~35\ = CARRY((!\inst1|pf|cs|Add0~33\) # (!\inst1|pf|cs|second_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(17),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~33\,
	combout => \inst1|pf|cs|Add0~34_combout\,
	cout => \inst1|pf|cs|Add0~35\);

-- Location: FF_X37_Y41_N3
\inst1|pf|cs|second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(17));

-- Location: LCCOMB_X37_Y41_N4
\inst1|pf|cs|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~36_combout\ = (\inst1|pf|cs|second_counter\(18) & (\inst1|pf|cs|Add0~35\ $ (GND))) # (!\inst1|pf|cs|second_counter\(18) & (!\inst1|pf|cs|Add0~35\ & VCC))
-- \inst1|pf|cs|Add0~37\ = CARRY((\inst1|pf|cs|second_counter\(18) & !\inst1|pf|cs|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(18),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~35\,
	combout => \inst1|pf|cs|Add0~36_combout\,
	cout => \inst1|pf|cs|Add0~37\);

-- Location: FF_X37_Y41_N5
\inst1|pf|cs|second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(18));

-- Location: LCCOMB_X37_Y41_N6
\inst1|pf|cs|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~38_combout\ = (\inst1|pf|cs|second_counter\(19) & (!\inst1|pf|cs|Add0~37\)) # (!\inst1|pf|cs|second_counter\(19) & ((\inst1|pf|cs|Add0~37\) # (GND)))
-- \inst1|pf|cs|Add0~39\ = CARRY((!\inst1|pf|cs|Add0~37\) # (!\inst1|pf|cs|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(19),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~37\,
	combout => \inst1|pf|cs|Add0~38_combout\,
	cout => \inst1|pf|cs|Add0~39\);

-- Location: FF_X37_Y41_N7
\inst1|pf|cs|second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(19));

-- Location: LCCOMB_X37_Y41_N8
\inst1|pf|cs|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~40_combout\ = (\inst1|pf|cs|second_counter\(20) & (\inst1|pf|cs|Add0~39\ $ (GND))) # (!\inst1|pf|cs|second_counter\(20) & (!\inst1|pf|cs|Add0~39\ & VCC))
-- \inst1|pf|cs|Add0~41\ = CARRY((\inst1|pf|cs|second_counter\(20) & !\inst1|pf|cs|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(20),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~39\,
	combout => \inst1|pf|cs|Add0~40_combout\,
	cout => \inst1|pf|cs|Add0~41\);

-- Location: FF_X37_Y41_N9
\inst1|pf|cs|second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(20));

-- Location: LCCOMB_X37_Y41_N10
\inst1|pf|cs|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~42_combout\ = (\inst1|pf|cs|second_counter\(21) & (!\inst1|pf|cs|Add0~41\)) # (!\inst1|pf|cs|second_counter\(21) & ((\inst1|pf|cs|Add0~41\) # (GND)))
-- \inst1|pf|cs|Add0~43\ = CARRY((!\inst1|pf|cs|Add0~41\) # (!\inst1|pf|cs|second_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(21),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~41\,
	combout => \inst1|pf|cs|Add0~42_combout\,
	cout => \inst1|pf|cs|Add0~43\);

-- Location: FF_X37_Y41_N11
\inst1|pf|cs|second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(21));

-- Location: LCCOMB_X37_Y41_N12
\inst1|pf|cs|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~44_combout\ = (\inst1|pf|cs|second_counter\(22) & (\inst1|pf|cs|Add0~43\ $ (GND))) # (!\inst1|pf|cs|second_counter\(22) & (!\inst1|pf|cs|Add0~43\ & VCC))
-- \inst1|pf|cs|Add0~45\ = CARRY((\inst1|pf|cs|second_counter\(22) & !\inst1|pf|cs|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(22),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~43\,
	combout => \inst1|pf|cs|Add0~44_combout\,
	cout => \inst1|pf|cs|Add0~45\);

-- Location: FF_X37_Y41_N13
\inst1|pf|cs|second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(22));

-- Location: LCCOMB_X37_Y41_N14
\inst1|pf|cs|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~46_combout\ = (\inst1|pf|cs|second_counter\(23) & (!\inst1|pf|cs|Add0~45\)) # (!\inst1|pf|cs|second_counter\(23) & ((\inst1|pf|cs|Add0~45\) # (GND)))
-- \inst1|pf|cs|Add0~47\ = CARRY((!\inst1|pf|cs|Add0~45\) # (!\inst1|pf|cs|second_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(23),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~45\,
	combout => \inst1|pf|cs|Add0~46_combout\,
	cout => \inst1|pf|cs|Add0~47\);

-- Location: FF_X37_Y41_N15
\inst1|pf|cs|second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(23));

-- Location: LCCOMB_X37_Y41_N16
\inst1|pf|cs|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~48_combout\ = (\inst1|pf|cs|second_counter\(24) & (\inst1|pf|cs|Add0~47\ $ (GND))) # (!\inst1|pf|cs|second_counter\(24) & (!\inst1|pf|cs|Add0~47\ & VCC))
-- \inst1|pf|cs|Add0~49\ = CARRY((\inst1|pf|cs|second_counter\(24) & !\inst1|pf|cs|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(24),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~47\,
	combout => \inst1|pf|cs|Add0~48_combout\,
	cout => \inst1|pf|cs|Add0~49\);

-- Location: FF_X37_Y41_N17
\inst1|pf|cs|second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(24));

-- Location: LCCOMB_X36_Y41_N2
\inst1|pf|WideNor0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~6_combout\ = (!\inst1|pf|cs|second_counter\(23) & (!\inst1|pf|cs|second_counter\(22) & (!\inst1|pf|cs|second_counter\(21) & !\inst1|pf|cs|second_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(23),
	datab => \inst1|pf|cs|second_counter\(22),
	datac => \inst1|pf|cs|second_counter\(21),
	datad => \inst1|pf|cs|second_counter\(24),
	combout => \inst1|pf|WideNor0~6_combout\);

-- Location: LCCOMB_X36_Y41_N0
\inst1|pf|WideNor0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~5_combout\ = (!\inst1|pf|cs|second_counter\(17) & (!\inst1|pf|cs|second_counter\(19) & (!\inst1|pf|cs|second_counter\(20) & !\inst1|pf|cs|second_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(17),
	datab => \inst1|pf|cs|second_counter\(19),
	datac => \inst1|pf|cs|second_counter\(20),
	datad => \inst1|pf|cs|second_counter\(18),
	combout => \inst1|pf|WideNor0~5_combout\);

-- Location: LCCOMB_X37_Y41_N18
\inst1|pf|cs|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~50_combout\ = (\inst1|pf|cs|second_counter\(25) & (!\inst1|pf|cs|Add0~49\)) # (!\inst1|pf|cs|second_counter\(25) & ((\inst1|pf|cs|Add0~49\) # (GND)))
-- \inst1|pf|cs|Add0~51\ = CARRY((!\inst1|pf|cs|Add0~49\) # (!\inst1|pf|cs|second_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(25),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~49\,
	combout => \inst1|pf|cs|Add0~50_combout\,
	cout => \inst1|pf|cs|Add0~51\);

-- Location: FF_X37_Y41_N19
\inst1|pf|cs|second_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(25));

-- Location: LCCOMB_X37_Y41_N20
\inst1|pf|cs|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~52_combout\ = (\inst1|pf|cs|second_counter\(26) & (\inst1|pf|cs|Add0~51\ $ (GND))) # (!\inst1|pf|cs|second_counter\(26) & (!\inst1|pf|cs|Add0~51\ & VCC))
-- \inst1|pf|cs|Add0~53\ = CARRY((\inst1|pf|cs|second_counter\(26) & !\inst1|pf|cs|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(26),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~51\,
	combout => \inst1|pf|cs|Add0~52_combout\,
	cout => \inst1|pf|cs|Add0~53\);

-- Location: FF_X37_Y41_N21
\inst1|pf|cs|second_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(26));

-- Location: LCCOMB_X37_Y41_N22
\inst1|pf|cs|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~54_combout\ = (\inst1|pf|cs|second_counter\(27) & (!\inst1|pf|cs|Add0~53\)) # (!\inst1|pf|cs|second_counter\(27) & ((\inst1|pf|cs|Add0~53\) # (GND)))
-- \inst1|pf|cs|Add0~55\ = CARRY((!\inst1|pf|cs|Add0~53\) # (!\inst1|pf|cs|second_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(27),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~53\,
	combout => \inst1|pf|cs|Add0~54_combout\,
	cout => \inst1|pf|cs|Add0~55\);

-- Location: FF_X37_Y41_N23
\inst1|pf|cs|second_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(27));

-- Location: LCCOMB_X37_Y41_N24
\inst1|pf|cs|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~56_combout\ = (\inst1|pf|cs|second_counter\(28) & (\inst1|pf|cs|Add0~55\ $ (GND))) # (!\inst1|pf|cs|second_counter\(28) & (!\inst1|pf|cs|Add0~55\ & VCC))
-- \inst1|pf|cs|Add0~57\ = CARRY((\inst1|pf|cs|second_counter\(28) & !\inst1|pf|cs|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(28),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~55\,
	combout => \inst1|pf|cs|Add0~56_combout\,
	cout => \inst1|pf|cs|Add0~57\);

-- Location: FF_X37_Y41_N25
\inst1|pf|cs|second_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(28));

-- Location: LCCOMB_X37_Y41_N26
\inst1|pf|cs|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~58_combout\ = (\inst1|pf|cs|second_counter\(29) & (!\inst1|pf|cs|Add0~57\)) # (!\inst1|pf|cs|second_counter\(29) & ((\inst1|pf|cs|Add0~57\) # (GND)))
-- \inst1|pf|cs|Add0~59\ = CARRY((!\inst1|pf|cs|Add0~57\) # (!\inst1|pf|cs|second_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(29),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~57\,
	combout => \inst1|pf|cs|Add0~58_combout\,
	cout => \inst1|pf|cs|Add0~59\);

-- Location: FF_X37_Y41_N27
\inst1|pf|cs|second_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(29));

-- Location: LCCOMB_X37_Y41_N28
\inst1|pf|cs|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~60_combout\ = (\inst1|pf|cs|second_counter\(30) & (\inst1|pf|cs|Add0~59\ $ (GND))) # (!\inst1|pf|cs|second_counter\(30) & (!\inst1|pf|cs|Add0~59\ & VCC))
-- \inst1|pf|cs|Add0~61\ = CARRY((\inst1|pf|cs|second_counter\(30) & !\inst1|pf|cs|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pf|cs|second_counter\(30),
	datad => VCC,
	cin => \inst1|pf|cs|Add0~59\,
	combout => \inst1|pf|cs|Add0~60_combout\,
	cout => \inst1|pf|cs|Add0~61\);

-- Location: FF_X37_Y41_N29
\inst1|pf|cs|second_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(30));

-- Location: LCCOMB_X37_Y41_N30
\inst1|pf|cs|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|cs|Add0~62_combout\ = \inst1|pf|cs|second_counter\(31) $ (\inst1|pf|cs|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(31),
	cin => \inst1|pf|cs|Add0~61\,
	combout => \inst1|pf|cs|Add0~62_combout\);

-- Location: FF_X37_Y41_N31
\inst1|pf|cs|second_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|cs|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|cs|second_counter\(31));

-- Location: LCCOMB_X38_Y41_N0
\inst1|pf|WideNor0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~7_combout\ = (!\inst1|pf|cs|second_counter\(26) & (!\inst1|pf|cs|second_counter\(27) & (!\inst1|pf|cs|second_counter\(25) & !\inst1|pf|cs|second_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(26),
	datab => \inst1|pf|cs|second_counter\(27),
	datac => \inst1|pf|cs|second_counter\(25),
	datad => \inst1|pf|cs|second_counter\(28),
	combout => \inst1|pf|WideNor0~7_combout\);

-- Location: LCCOMB_X38_Y41_N22
\inst1|pf|WideNor0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~8_combout\ = (!\inst1|pf|cs|second_counter\(29) & (!\inst1|pf|cs|second_counter\(31) & (!\inst1|pf|cs|second_counter\(30) & \inst1|pf|WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(29),
	datab => \inst1|pf|cs|second_counter\(31),
	datac => \inst1|pf|cs|second_counter\(30),
	datad => \inst1|pf|WideNor0~7_combout\,
	combout => \inst1|pf|WideNor0~8_combout\);

-- Location: LCCOMB_X36_Y42_N26
\inst1|pf|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~0_combout\ = (!\inst1|pf|cs|second_counter\(3) & (!\inst1|pf|cs|second_counter\(1) & (!\inst1|pf|cs|second_counter\(4) & !\inst1|pf|cs|second_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(3),
	datab => \inst1|pf|cs|second_counter\(1),
	datac => \inst1|pf|cs|second_counter\(4),
	datad => \inst1|pf|cs|second_counter\(2),
	combout => \inst1|pf|WideNor0~0_combout\);

-- Location: LCCOMB_X36_Y42_N20
\inst1|pf|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~1_combout\ = (!\inst1|pf|cs|second_counter\(7) & (!\inst1|pf|cs|second_counter\(6) & (!\inst1|pf|cs|second_counter\(5) & !\inst1|pf|cs|second_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(7),
	datab => \inst1|pf|cs|second_counter\(6),
	datac => \inst1|pf|cs|second_counter\(5),
	datad => \inst1|pf|cs|second_counter\(8),
	combout => \inst1|pf|WideNor0~1_combout\);

-- Location: LCCOMB_X38_Y42_N2
\inst1|pf|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~3_combout\ = (!\inst1|pf|cs|second_counter\(13) & (!\inst1|pf|cs|second_counter\(15) & (!\inst1|pf|cs|second_counter\(16) & !\inst1|pf|cs|second_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(13),
	datab => \inst1|pf|cs|second_counter\(15),
	datac => \inst1|pf|cs|second_counter\(16),
	datad => \inst1|pf|cs|second_counter\(14),
	combout => \inst1|pf|WideNor0~3_combout\);

-- Location: LCCOMB_X38_Y42_N24
\inst1|pf|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~2_combout\ = (!\inst1|pf|cs|second_counter\(10) & (!\inst1|pf|cs|second_counter\(9) & (!\inst1|pf|cs|second_counter\(11) & !\inst1|pf|cs|second_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|cs|second_counter\(10),
	datab => \inst1|pf|cs|second_counter\(9),
	datac => \inst1|pf|cs|second_counter\(11),
	datad => \inst1|pf|cs|second_counter\(12),
	combout => \inst1|pf|WideNor0~2_combout\);

-- Location: LCCOMB_X36_Y42_N2
\inst1|pf|WideNor0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~4_combout\ = (\inst1|pf|WideNor0~0_combout\ & (\inst1|pf|WideNor0~1_combout\ & (\inst1|pf|WideNor0~3_combout\ & \inst1|pf|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|WideNor0~0_combout\,
	datab => \inst1|pf|WideNor0~1_combout\,
	datac => \inst1|pf|WideNor0~3_combout\,
	datad => \inst1|pf|WideNor0~2_combout\,
	combout => \inst1|pf|WideNor0~4_combout\);

-- Location: LCCOMB_X36_Y42_N0
\inst1|pf|WideNor0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|WideNor0~9_combout\ = (\inst1|pf|WideNor0~6_combout\ & (\inst1|pf|WideNor0~5_combout\ & (\inst1|pf|WideNor0~8_combout\ & \inst1|pf|WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|WideNor0~6_combout\,
	datab => \inst1|pf|WideNor0~5_combout\,
	datac => \inst1|pf|WideNor0~8_combout\,
	datad => \inst1|pf|WideNor0~4_combout\,
	combout => \inst1|pf|WideNor0~9_combout\);

-- Location: LCCOMB_X36_Y42_N30
\inst1|pf|PC[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[2]~25_combout\ = (!\inst1|pf|PC[2]~24_combout\ & ((\M[1]~input_o\) # ((!\inst1|pf|cs|second_counter\(0) & \inst1|pf|WideNor0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|PC[2]~24_combout\,
	datab => \M[1]~input_o\,
	datac => \inst1|pf|cs|second_counter\(0),
	datad => \inst1|pf|WideNor0~9_combout\,
	combout => \inst1|pf|PC[2]~25_combout\);

-- Location: FF_X36_Y42_N5
\inst1|pf|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[0]~8_combout\,
	asdata => \key_out[0]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(0));

-- Location: LCCOMB_X36_Y42_N6
\inst1|pf|PC[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[1]~10_combout\ = (\inst1|pf|PC\(1) & ((\M[0]~input_o\ & (\inst1|pf|PC[0]~9\ & VCC)) # (!\M[0]~input_o\ & (!\inst1|pf|PC[0]~9\)))) # (!\inst1|pf|PC\(1) & ((\M[0]~input_o\ & (!\inst1|pf|PC[0]~9\)) # (!\M[0]~input_o\ & ((\inst1|pf|PC[0]~9\) # 
-- (GND)))))
-- \inst1|pf|PC[1]~11\ = CARRY((\inst1|pf|PC\(1) & (!\M[0]~input_o\ & !\inst1|pf|PC[0]~9\)) # (!\inst1|pf|PC\(1) & ((!\inst1|pf|PC[0]~9\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|PC\(1),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst1|pf|PC[0]~9\,
	combout => \inst1|pf|PC[1]~10_combout\,
	cout => \inst1|pf|PC[1]~11\);

-- Location: IOIBUF_X32_Y43_N29
\key_out[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(1),
	o => \key_out[1]~input_o\);

-- Location: FF_X36_Y42_N7
\inst1|pf|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[1]~10_combout\,
	asdata => \key_out[1]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(1));

-- Location: LCCOMB_X36_Y42_N8
\inst1|pf|PC[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[2]~12_combout\ = ((\M[0]~input_o\ $ (\inst1|pf|PC\(2) $ (!\inst1|pf|PC[1]~11\)))) # (GND)
-- \inst1|pf|PC[2]~13\ = CARRY((\M[0]~input_o\ & ((\inst1|pf|PC\(2)) # (!\inst1|pf|PC[1]~11\))) # (!\M[0]~input_o\ & (\inst1|pf|PC\(2) & !\inst1|pf|PC[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|pf|PC\(2),
	datad => VCC,
	cin => \inst1|pf|PC[1]~11\,
	combout => \inst1|pf|PC[2]~12_combout\,
	cout => \inst1|pf|PC[2]~13\);

-- Location: IOIBUF_X36_Y43_N8
\key_out[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(2),
	o => \key_out[2]~input_o\);

-- Location: FF_X36_Y42_N9
\inst1|pf|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[2]~12_combout\,
	asdata => \key_out[2]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(2));

-- Location: LCCOMB_X36_Y42_N10
\inst1|pf|PC[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[3]~14_combout\ = (\inst1|pf|PC\(3) & ((\M[0]~input_o\ & (\inst1|pf|PC[2]~13\ & VCC)) # (!\M[0]~input_o\ & (!\inst1|pf|PC[2]~13\)))) # (!\inst1|pf|PC\(3) & ((\M[0]~input_o\ & (!\inst1|pf|PC[2]~13\)) # (!\M[0]~input_o\ & ((\inst1|pf|PC[2]~13\) 
-- # (GND)))))
-- \inst1|pf|PC[3]~15\ = CARRY((\inst1|pf|PC\(3) & (!\M[0]~input_o\ & !\inst1|pf|PC[2]~13\)) # (!\inst1|pf|PC\(3) & ((!\inst1|pf|PC[2]~13\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|PC\(3),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst1|pf|PC[2]~13\,
	combout => \inst1|pf|PC[3]~14_combout\,
	cout => \inst1|pf|PC[3]~15\);

-- Location: IOIBUF_X36_Y43_N15
\key_out[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(3),
	o => \key_out[3]~input_o\);

-- Location: FF_X36_Y42_N11
\inst1|pf|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[3]~14_combout\,
	asdata => \key_out[3]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(3));

-- Location: LCCOMB_X36_Y42_N12
\inst1|pf|PC[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[4]~16_combout\ = ((\inst1|pf|PC\(4) $ (\M[0]~input_o\ $ (!\inst1|pf|PC[3]~15\)))) # (GND)
-- \inst1|pf|PC[4]~17\ = CARRY((\inst1|pf|PC\(4) & ((\M[0]~input_o\) # (!\inst1|pf|PC[3]~15\))) # (!\inst1|pf|PC\(4) & (\M[0]~input_o\ & !\inst1|pf|PC[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pf|PC\(4),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst1|pf|PC[3]~15\,
	combout => \inst1|pf|PC[4]~16_combout\,
	cout => \inst1|pf|PC[4]~17\);

-- Location: IOIBUF_X36_Y43_N1
\key_out[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(4),
	o => \key_out[4]~input_o\);

-- Location: FF_X36_Y42_N13
\inst1|pf|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[4]~16_combout\,
	asdata => \key_out[4]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(4));

-- Location: LCCOMB_X36_Y42_N14
\inst1|pf|PC[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[5]~18_combout\ = (\M[0]~input_o\ & ((\inst1|pf|PC\(5) & (\inst1|pf|PC[4]~17\ & VCC)) # (!\inst1|pf|PC\(5) & (!\inst1|pf|PC[4]~17\)))) # (!\M[0]~input_o\ & ((\inst1|pf|PC\(5) & (!\inst1|pf|PC[4]~17\)) # (!\inst1|pf|PC\(5) & 
-- ((\inst1|pf|PC[4]~17\) # (GND)))))
-- \inst1|pf|PC[5]~19\ = CARRY((\M[0]~input_o\ & (!\inst1|pf|PC\(5) & !\inst1|pf|PC[4]~17\)) # (!\M[0]~input_o\ & ((!\inst1|pf|PC[4]~17\) # (!\inst1|pf|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|pf|PC\(5),
	datad => VCC,
	cin => \inst1|pf|PC[4]~17\,
	combout => \inst1|pf|PC[5]~18_combout\,
	cout => \inst1|pf|PC[5]~19\);

-- Location: IOIBUF_X36_Y43_N22
\key_out[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(5),
	o => \key_out[5]~input_o\);

-- Location: FF_X36_Y42_N15
\inst1|pf|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[5]~18_combout\,
	asdata => \key_out[5]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(5));

-- Location: LCCOMB_X36_Y42_N16
\inst1|pf|PC[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[6]~20_combout\ = ((\M[0]~input_o\ $ (\inst1|pf|PC\(6) $ (!\inst1|pf|PC[5]~19\)))) # (GND)
-- \inst1|pf|PC[6]~21\ = CARRY((\M[0]~input_o\ & ((\inst1|pf|PC\(6)) # (!\inst1|pf|PC[5]~19\))) # (!\M[0]~input_o\ & (\inst1|pf|PC\(6) & !\inst1|pf|PC[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst1|pf|PC\(6),
	datad => VCC,
	cin => \inst1|pf|PC[5]~19\,
	combout => \inst1|pf|PC[6]~20_combout\,
	cout => \inst1|pf|PC[6]~21\);

-- Location: IOIBUF_X32_Y43_N22
\key_out[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(6),
	o => \key_out[6]~input_o\);

-- Location: FF_X36_Y42_N17
\inst1|pf|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[6]~20_combout\,
	asdata => \key_out[6]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(6));

-- Location: LCCOMB_X36_Y42_N18
\inst1|pf|PC[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pf|PC[7]~22_combout\ = \M[0]~input_o\ $ (\inst1|pf|PC[6]~21\ $ (\inst1|pf|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datad => \inst1|pf|PC\(7),
	cin => \inst1|pf|PC[6]~21\,
	combout => \inst1|pf|PC[7]~22_combout\);

-- Location: IOIBUF_X27_Y43_N22
\key_out[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_out(7),
	o => \key_out[7]~input_o\);

-- Location: FF_X36_Y42_N19
\inst1|pf|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|pf|PC[7]~22_combout\,
	asdata => \key_out[7]~input_o\,
	clrn => \pc_clr~input_o\,
	sload => \inst1|pf|Add1~0_combout\,
	ena => \inst1|pf|PC[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pf|PC\(7));

-- Location: IOIBUF_X0_Y2_N1
\rd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\wr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: M9K_X40_Y42_N0
\inst|srom|rom_block|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001CD0083001C6",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst|altrom:srom|altsyncram:rom_block|altsyncram_luv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \inst|srom|rom_block|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|srom|rom_block|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y42_N20
\inst8|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal1~0_combout\ = (!\inst|srom|rom_block|auto_generated|q_a\(14) & (\inst|srom|rom_block|auto_generated|q_a\(15) & (!\inst|srom|rom_block|auto_generated|q_a\(13) & !\inst|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst8|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y42_N4
\inst8|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Selector4~0_combout\ = (\inst8|Equal1~0_combout\ & (\inst|srom|rom_block|auto_generated|q_a\(9))) # (!\inst8|Equal1~0_combout\ & ((\inst|srom|rom_block|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(9),
	datac => \inst|srom|rom_block|auto_generated|q_a\(7),
	datad => \inst8|Equal1~0_combout\,
	combout => \inst8|Selector4~0_combout\);

-- Location: LCCOMB_X41_Y42_N30
\inst8|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|WideNor0~combout\ = (\inst|srom|rom_block|auto_generated|q_a\(14) & (!\inst|srom|rom_block|auto_generated|q_a\(15) & (\inst|srom|rom_block|auto_generated|q_a\(13) & \inst|srom|rom_block|auto_generated|q_a\(12)))) # 
-- (!\inst|srom|rom_block|auto_generated|q_a\(14) & (\inst|srom|rom_block|auto_generated|q_a\(15) & (!\inst|srom|rom_block|auto_generated|q_a\(13) & !\inst|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst8|WideNor0~combout\);

-- Location: FF_X41_Y42_N5
\inst8|res_dest[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|Selector4~0_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|res_dest\(1));

-- Location: LCCOMB_X41_Y42_N2
\inst8|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Selector5~0_combout\ = (\inst8|Equal1~0_combout\ & ((\inst|srom|rom_block|auto_generated|q_a\(8)))) # (!\inst8|Equal1~0_combout\ & (\inst|srom|rom_block|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst8|Equal1~0_combout\,
	combout => \inst8|Selector5~0_combout\);

-- Location: FF_X41_Y42_N3
\inst8|res_dest[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|Selector5~0_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|res_dest\(0));

-- Location: LCCOMB_X42_Y42_N4
\inst1|rf|R0[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0[0]~0_combout\ = ((\wr~input_o\) # ((!\inst8|res_dest\(1) & !\inst8|res_dest\(0)))) # (!\rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \wr~input_o\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R0[0]~0_combout\);

-- Location: LCCOMB_X41_Y42_N18
\inst8|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (\inst|srom|rom_block|auto_generated|q_a\(14) & (!\inst|srom|rom_block|auto_generated|q_a\(15) & (\inst|srom|rom_block|auto_generated|q_a\(13) & \inst|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst8|Equal0~0_combout\);

-- Location: FF_X41_Y42_N19
\inst8|S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|Equal0~0_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|S\(0));

-- Location: LCCOMB_X43_Y42_N14
\inst1|rf|R2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2[7]~0_combout\ = (\wr~input_o\) # (((\inst8|res_dest\(1) & !\inst8|res_dest\(0))) # (!\rd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R2[7]~0_combout\);

-- Location: LCCOMB_X44_Y42_N14
\inst1|rf|R2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~1_combout\ = (\inst1|rf|R2[7]~0_combout\ & ((\inst6|man|ans\(7)))) # (!\inst1|rf|R2[7]~0_combout\ & (\key_out[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[7]~input_o\,
	datab => \inst6|man|ans\(7),
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~1_combout\);

-- Location: IOIBUF_X22_Y0_N1
\RA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\RA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: LCCOMB_X41_Y41_N0
\inst1|rf|R2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2[7]~2_combout\ = (!\RA[0]~input_o\ & \RA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst1|rf|R2[7]~2_combout\);

-- Location: LCCOMB_X44_Y42_N16
\inst1|rf|R2[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2[7]~3_combout\ = (\inst1|rf|R2[7]~2_combout\ & ((\rd~input_o\) # ((!\inst8|res_dest\(0) & \inst8|res_dest\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \inst1|rf|R2[7]~2_combout\,
	datac => \inst8|res_dest\(0),
	datad => \inst8|res_dest\(1),
	combout => \inst1|rf|R2[7]~3_combout\);

-- Location: FF_X44_Y42_N15
\inst1|rf|R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~1_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(7));

-- Location: LCCOMB_X41_Y42_N28
\inst8|choose_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|choose_reg[3]~feeder_combout\ = \inst|srom|rom_block|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst8|choose_reg[3]~feeder_combout\);

-- Location: FF_X41_Y42_N29
\inst8|choose_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|choose_reg[3]~feeder_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|choose_reg\(3));

-- Location: LCCOMB_X43_Y42_N20
\inst1|rf|R3[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3[6]~0_combout\ = (\wr~input_o\) # (((\inst8|res_dest\(1) & \inst8|res_dest\(0))) # (!\rd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R3[6]~0_combout\);

-- Location: LCCOMB_X43_Y42_N22
\inst1|rf|R3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~1_combout\ = (\inst1|rf|R3[6]~0_combout\ & (\inst6|man|ans\(7))) # (!\inst1|rf|R3[6]~0_combout\ & ((\key_out[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(7),
	datac => \key_out[7]~input_o\,
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~1_combout\);

-- Location: LCCOMB_X41_Y41_N14
\inst1|rf|R3[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3[7]~2_combout\ = (\RA[0]~input_o\ & \RA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst1|rf|R3[7]~2_combout\);

-- Location: LCCOMB_X43_Y42_N18
\inst1|rf|R3[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3[7]~3_combout\ = (\inst1|rf|R3[7]~2_combout\ & ((\rd~input_o\) # ((\inst8|res_dest\(1) & \inst8|res_dest\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R3[7]~2_combout\,
	datab => \rd~input_o\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R3[7]~3_combout\);

-- Location: FF_X43_Y42_N23
\inst1|rf|R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~1_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(7));

-- Location: FF_X41_Y42_N11
\inst8|choose_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|srom|rom_block|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|choose_reg\(2));

-- Location: LCCOMB_X42_Y42_N14
\inst1|rf|R1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1[0]~0_combout\ = ((\wr~input_o\) # ((!\inst8|res_dest\(1) & \inst8|res_dest\(0)))) # (!\rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \wr~input_o\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R1[0]~0_combout\);

-- Location: LCCOMB_X42_Y42_N30
\inst1|rf|R1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~1_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(7)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[7]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(7),
	combout => \inst1|rf|R1~1_combout\);

-- Location: LCCOMB_X41_Y41_N2
\inst1|rf|R1[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1[7]~2_combout\ = (\RA[0]~input_o\ & !\RA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst1|rf|R1[7]~2_combout\);

-- Location: LCCOMB_X42_Y42_N28
\inst1|rf|R1[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1[7]~3_combout\ = (\inst1|rf|R1[7]~2_combout\ & ((\rd~input_o\) # ((!\inst8|res_dest\(1) & \inst8|res_dest\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \inst1|rf|R1[7]~2_combout\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R1[7]~3_combout\);

-- Location: FF_X42_Y42_N31
\inst1|rf|R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~1_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(7));

-- Location: LCCOMB_X45_Y42_N24
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3)) # ((\inst1|rf|R1\(7))))) # (!\inst8|choose_reg\(2) & (!\inst8|choose_reg\(3) & ((\inst1|rf|R0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R1\(7),
	datad => \inst1|rf|R0\(7),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y42_N22
\inst7|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst8|choose_reg\(3) & ((\inst7|Mux0~0_combout\ & ((\inst1|rf|R3\(7)))) # (!\inst7|Mux0~0_combout\ & (\inst1|rf|R2\(7))))) # (!\inst8|choose_reg\(3) & (((\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R2\(7),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R3\(7),
	datad => \inst7|Mux0~0_combout\,
	combout => \inst7|Mux0~1_combout\);

-- Location: FF_X45_Y42_N23
\inst7|opt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(7));

-- Location: LCCOMB_X44_Y42_N30
\inst6|mw|X[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[7]~feeder_combout\ = \inst7|opt1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(7),
	combout => \inst6|mw|X[7]~feeder_combout\);

-- Location: FF_X44_Y42_N31
\inst6|mw|X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(7));

-- Location: FF_X41_Y42_N21
\inst8|S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|Equal1~0_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|S\(2));

-- Location: LCCOMB_X41_Y42_N24
\inst8|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Selector2~0_combout\ = (\inst|srom|rom_block|auto_generated|q_a\(9) & \inst8|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|Selector2~0_combout\);

-- Location: FF_X41_Y42_N25
\inst8|choose_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|Selector2~0_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|choose_reg\(1));

-- Location: LCCOMB_X41_Y42_N14
\inst8|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Selector3~0_combout\ = (\inst|srom|rom_block|auto_generated|q_a\(8) & \inst8|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst8|Equal0~0_combout\,
	combout => \inst8|Selector3~0_combout\);

-- Location: FF_X41_Y42_N15
\inst8|choose_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|Selector3~0_combout\,
	ena => \inst8|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|choose_reg\(0));

-- Location: LCCOMB_X45_Y42_N20
\inst7|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux8~0_combout\ = (\inst8|choose_reg\(1) & (\inst8|choose_reg\(0))) # (!\inst8|choose_reg\(1) & ((\inst8|choose_reg\(0) & (\inst1|rf|R1\(7))) # (!\inst8|choose_reg\(0) & ((\inst1|rf|R0\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(1),
	datab => \inst8|choose_reg\(0),
	datac => \inst1|rf|R1\(7),
	datad => \inst1|rf|R0\(7),
	combout => \inst7|Mux8~0_combout\);

-- Location: LCCOMB_X45_Y42_N14
\inst7|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux8~1_combout\ = (\inst8|choose_reg\(1) & ((\inst7|Mux8~0_combout\ & ((\inst1|rf|R3\(7)))) # (!\inst7|Mux8~0_combout\ & (\inst1|rf|R2\(7))))) # (!\inst8|choose_reg\(1) & (((\inst7|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(1),
	datab => \inst1|rf|R2\(7),
	datac => \inst1|rf|R3\(7),
	datad => \inst7|Mux8~0_combout\,
	combout => \inst7|Mux8~1_combout\);

-- Location: FF_X45_Y42_N15
\inst7|opt2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(7));

-- Location: LCCOMB_X44_Y42_N10
\inst6|mw|Y[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[7]~feeder_combout\ = \inst7|opt2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt2\(7),
	combout => \inst6|mw|Y[7]~feeder_combout\);

-- Location: FF_X44_Y42_N11
\inst6|mw|Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(7));

-- Location: LCCOMB_X44_Y42_N28
\inst6|man|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|Mux0~0_combout\ = (\inst8|S\(0) & (\inst6|mw|X\(7) $ (((!\inst8|S\(2) & \inst6|mw|Y\(7)))))) # (!\inst8|S\(0) & (!\inst8|S\(2) & ((\inst6|mw|X\(7)) # (\inst6|mw|Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|S\(0),
	datab => \inst6|mw|X\(7),
	datac => \inst8|S\(2),
	datad => \inst6|mw|Y\(7),
	combout => \inst6|man|Mux0~0_combout\);

-- Location: FF_X44_Y42_N29
\inst6|man|ans[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(7));

-- Location: LCCOMB_X42_Y42_N20
\inst1|rf|R0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~1_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(7)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[7]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(7),
	combout => \inst1|rf|R0~1_combout\);

-- Location: LCCOMB_X41_Y41_N12
\inst1|rf|R0[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0[7]~2_combout\ = (!\RA[0]~input_o\ & !\RA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst1|rf|R0[7]~2_combout\);

-- Location: LCCOMB_X41_Y42_N8
\inst1|rf|R0[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0[7]~3_combout\ = (\inst1|rf|R0[7]~2_combout\ & ((\rd~input_o\) # ((!\inst8|res_dest\(1) & !\inst8|res_dest\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R0[7]~2_combout\,
	datab => \rd~input_o\,
	datac => \inst8|res_dest\(1),
	datad => \inst8|res_dest\(0),
	combout => \inst1|rf|R0[7]~3_combout\);

-- Location: FF_X42_Y42_N21
\inst1|rf|R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~1_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(7));

-- Location: LCCOMB_X43_Y42_N24
\inst1|rf|R3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~4_combout\ = (\inst1|rf|R3[6]~0_combout\ & (\inst6|man|ans\(6))) # (!\inst1|rf|R3[6]~0_combout\ & ((\key_out[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(6),
	datab => \key_out[6]~input_o\,
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~4_combout\);

-- Location: FF_X43_Y42_N25
\inst1|rf|R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~4_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(6));

-- Location: LCCOMB_X42_Y42_N16
\inst1|rf|R1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~4_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(6)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[6]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(6),
	combout => \inst1|rf|R1~4_combout\);

-- Location: FF_X42_Y42_N17
\inst1|rf|R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~4_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(6));

-- Location: LCCOMB_X44_Y42_N2
\inst1|rf|R2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~4_combout\ = (\inst1|rf|R2[7]~0_combout\ & (\inst6|man|ans\(6))) # (!\inst1|rf|R2[7]~0_combout\ & ((\key_out[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(6),
	datac => \key_out[6]~input_o\,
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~4_combout\);

-- Location: FF_X44_Y42_N3
\inst1|rf|R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~4_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(6));

-- Location: LCCOMB_X45_Y42_N0
\inst7|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux9~0_combout\ = (\inst8|choose_reg\(1) & ((\inst8|choose_reg\(0)) # ((\inst1|rf|R2\(6))))) # (!\inst8|choose_reg\(1) & (!\inst8|choose_reg\(0) & (\inst1|rf|R0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(1),
	datab => \inst8|choose_reg\(0),
	datac => \inst1|rf|R0\(6),
	datad => \inst1|rf|R2\(6),
	combout => \inst7|Mux9~0_combout\);

-- Location: LCCOMB_X45_Y42_N8
\inst7|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux9~1_combout\ = (\inst8|choose_reg\(0) & ((\inst7|Mux9~0_combout\ & (\inst1|rf|R3\(6))) # (!\inst7|Mux9~0_combout\ & ((\inst1|rf|R1\(6)))))) # (!\inst8|choose_reg\(0) & (((\inst7|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst1|rf|R3\(6),
	datac => \inst1|rf|R1\(6),
	datad => \inst7|Mux9~0_combout\,
	combout => \inst7|Mux9~1_combout\);

-- Location: FF_X45_Y42_N9
\inst7|opt2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(6));

-- Location: FF_X45_Y42_N3
\inst6|mw|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|opt2\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(6));

-- Location: LCCOMB_X45_Y42_N16
\inst7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst8|choose_reg\(2) & (\inst8|choose_reg\(3))) # (!\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3) & ((\inst1|rf|R2\(6)))) # (!\inst8|choose_reg\(3) & (\inst1|rf|R0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R0\(6),
	datad => \inst1|rf|R2\(6),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y42_N30
\inst7|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~1_combout\ = (\inst8|choose_reg\(2) & ((\inst7|Mux1~0_combout\ & (\inst1|rf|R3\(6))) # (!\inst7|Mux1~0_combout\ & ((\inst1|rf|R1\(6)))))) # (!\inst8|choose_reg\(2) & (((\inst7|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst1|rf|R3\(6),
	datac => \inst1|rf|R1\(6),
	datad => \inst7|Mux1~0_combout\,
	combout => \inst7|Mux1~1_combout\);

-- Location: FF_X45_Y42_N31
\inst7|opt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(6));

-- Location: FF_X45_Y42_N13
\inst6|mw|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|opt1\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(6));

-- Location: LCCOMB_X45_Y42_N28
\inst6|man|ans~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~8_combout\ = \inst6|mw|Y\(6) $ (\inst6|mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|Y\(6),
	datad => \inst6|mw|X\(6),
	combout => \inst6|man|ans~8_combout\);

-- Location: LCCOMB_X45_Y42_N2
\inst6|man|ans~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~7_combout\ = (\inst6|mw|Y\(6)) # (\inst6|mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|Y\(6),
	datad => \inst6|mw|X\(6),
	combout => \inst6|man|ans~7_combout\);

-- Location: LCCOMB_X44_Y42_N18
\inst6|man|ans[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[6]~0_combout\ = (\inst8|S\(0) & (\inst6|man|ans~8_combout\)) # (!\inst8|S\(0) & ((\inst6|man|ans~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans~8_combout\,
	datab => \inst8|S\(0),
	datad => \inst6|man|ans~7_combout\,
	combout => \inst6|man|ans[6]~0_combout\);

-- Location: FF_X44_Y42_N19
\inst6|man|ans[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[6]~0_combout\,
	asdata => \inst6|mw|X\(7),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(6));

-- Location: LCCOMB_X42_Y42_N26
\inst1|rf|R0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~4_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(6)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[6]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(6),
	combout => \inst1|rf|R0~4_combout\);

-- Location: FF_X42_Y42_N27
\inst1|rf|R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~4_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(6));

-- Location: LCCOMB_X44_Y42_N6
\inst1|rf|R2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~5_combout\ = (\inst1|rf|R2[7]~0_combout\ & (\inst6|man|ans\(5))) # (!\inst1|rf|R2[7]~0_combout\ & ((\key_out[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(5),
	datac => \key_out[5]~input_o\,
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~5_combout\);

-- Location: FF_X44_Y42_N7
\inst1|rf|R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~5_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(5));

-- Location: LCCOMB_X43_Y42_N26
\inst1|rf|R3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~5_combout\ = (\inst1|rf|R3[6]~0_combout\ & (\inst6|man|ans\(5))) # (!\inst1|rf|R3[6]~0_combout\ & ((\key_out[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(5),
	datac => \key_out[5]~input_o\,
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~5_combout\);

-- Location: FF_X43_Y42_N27
\inst1|rf|R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~5_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(5));

-- Location: LCCOMB_X43_Y42_N8
\inst1|rf|R1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~5_combout\ = (\inst1|rf|R1[0]~0_combout\ & (\inst6|man|ans\(5))) # (!\inst1|rf|R1[0]~0_combout\ & ((\key_out[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(5),
	datac => \key_out[5]~input_o\,
	datad => \inst1|rf|R1[0]~0_combout\,
	combout => \inst1|rf|R1~5_combout\);

-- Location: FF_X43_Y42_N9
\inst1|rf|R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~5_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(5));

-- Location: LCCOMB_X45_Y42_N10
\inst7|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux10~0_combout\ = (\inst8|choose_reg\(1) & (\inst8|choose_reg\(0))) # (!\inst8|choose_reg\(1) & ((\inst8|choose_reg\(0) & (\inst1|rf|R1\(5))) # (!\inst8|choose_reg\(0) & ((\inst1|rf|R0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(1),
	datab => \inst8|choose_reg\(0),
	datac => \inst1|rf|R1\(5),
	datad => \inst1|rf|R0\(5),
	combout => \inst7|Mux10~0_combout\);

-- Location: LCCOMB_X45_Y42_N26
\inst7|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux10~1_combout\ = (\inst8|choose_reg\(1) & ((\inst7|Mux10~0_combout\ & ((\inst1|rf|R3\(5)))) # (!\inst7|Mux10~0_combout\ & (\inst1|rf|R2\(5))))) # (!\inst8|choose_reg\(1) & (((\inst7|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(1),
	datab => \inst1|rf|R2\(5),
	datac => \inst1|rf|R3\(5),
	datad => \inst7|Mux10~0_combout\,
	combout => \inst7|Mux10~1_combout\);

-- Location: FF_X45_Y42_N27
\inst7|opt2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(5));

-- Location: FF_X45_Y42_N5
\inst6|mw|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|opt2\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(5));

-- Location: LCCOMB_X45_Y42_N6
\inst7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3)) # ((\inst1|rf|R1\(5))))) # (!\inst8|choose_reg\(2) & (!\inst8|choose_reg\(3) & ((\inst1|rf|R0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R1\(5),
	datad => \inst1|rf|R0\(5),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y42_N18
\inst7|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~1_combout\ = (\inst8|choose_reg\(3) & ((\inst7|Mux2~0_combout\ & ((\inst1|rf|R3\(5)))) # (!\inst7|Mux2~0_combout\ & (\inst1|rf|R2\(5))))) # (!\inst8|choose_reg\(3) & (((\inst7|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R2\(5),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R3\(5),
	datad => \inst7|Mux2~0_combout\,
	combout => \inst7|Mux2~1_combout\);

-- Location: FF_X45_Y42_N19
\inst7|opt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(5));

-- Location: LCCOMB_X44_Y41_N30
\inst6|mw|X[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[5]~feeder_combout\ = \inst7|opt1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt1\(5),
	combout => \inst6|mw|X[5]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\inst6|mw|X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(5));

-- Location: LCCOMB_X45_Y42_N12
\inst6|man|ans~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~10_combout\ = \inst6|mw|Y\(5) $ (\inst6|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|Y\(5),
	datad => \inst6|mw|X\(5),
	combout => \inst6|man|ans~10_combout\);

-- Location: LCCOMB_X45_Y42_N4
\inst6|man|ans~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~9_combout\ = (\inst6|mw|Y\(5)) # (\inst6|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|Y\(5),
	datad => \inst6|mw|X\(5),
	combout => \inst6|man|ans~9_combout\);

-- Location: LCCOMB_X44_Y42_N8
\inst6|man|ans[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[5]~1_combout\ = (\inst8|S\(0) & (\inst6|man|ans~10_combout\)) # (!\inst8|S\(0) & ((\inst6|man|ans~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|S\(0),
	datab => \inst6|man|ans~10_combout\,
	datad => \inst6|man|ans~9_combout\,
	combout => \inst6|man|ans[5]~1_combout\);

-- Location: FF_X44_Y42_N9
\inst6|man|ans[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[5]~1_combout\,
	asdata => \inst6|mw|X\(6),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(5));

-- Location: LCCOMB_X42_Y42_N12
\inst1|rf|R0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~5_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(5)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[5]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(5),
	combout => \inst1|rf|R0~5_combout\);

-- Location: FF_X42_Y42_N13
\inst1|rf|R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~5_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(5));

-- Location: LCCOMB_X43_Y42_N28
\inst1|rf|R3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~6_combout\ = (\inst1|rf|R3[6]~0_combout\ & (\inst6|man|ans\(4))) # (!\inst1|rf|R3[6]~0_combout\ & ((\key_out[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(4),
	datac => \key_out[4]~input_o\,
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~6_combout\);

-- Location: FF_X43_Y42_N29
\inst1|rf|R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~6_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(4));

-- Location: LCCOMB_X42_Y42_N2
\inst1|rf|R1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~6_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(4)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[4]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(4),
	combout => \inst1|rf|R1~6_combout\);

-- Location: FF_X42_Y42_N3
\inst1|rf|R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~6_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(4));

-- Location: LCCOMB_X44_Y42_N26
\inst1|rf|R2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~6_combout\ = (\inst1|rf|R2[7]~0_combout\ & ((\inst6|man|ans\(4)))) # (!\inst1|rf|R2[7]~0_combout\ & (\key_out[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[4]~input_o\,
	datab => \inst6|man|ans\(4),
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~6_combout\);

-- Location: FF_X44_Y42_N27
\inst1|rf|R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~6_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(4));

-- Location: LCCOMB_X46_Y42_N2
\inst7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst8|choose_reg\(2) & (((\inst8|choose_reg\(3))))) # (!\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3) & ((\inst1|rf|R2\(4)))) # (!\inst8|choose_reg\(3) & (\inst1|rf|R0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst1|rf|R0\(4),
	datac => \inst8|choose_reg\(3),
	datad => \inst1|rf|R2\(4),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y42_N30
\inst7|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~1_combout\ = (\inst8|choose_reg\(2) & ((\inst7|Mux3~0_combout\ & (\inst1|rf|R3\(4))) # (!\inst7|Mux3~0_combout\ & ((\inst1|rf|R1\(4)))))) # (!\inst8|choose_reg\(2) & (((\inst7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst1|rf|R3\(4),
	datac => \inst1|rf|R1\(4),
	datad => \inst7|Mux3~0_combout\,
	combout => \inst7|Mux3~1_combout\);

-- Location: FF_X46_Y42_N31
\inst7|opt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(4));

-- Location: LCCOMB_X46_Y41_N30
\inst6|mw|X[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[4]~feeder_combout\ = \inst7|opt1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt1\(4),
	combout => \inst6|mw|X[4]~feeder_combout\);

-- Location: FF_X46_Y41_N31
\inst6|mw|X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(4));

-- Location: LCCOMB_X46_Y42_N12
\inst7|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux11~0_combout\ = (\inst8|choose_reg\(0) & (\inst8|choose_reg\(1))) # (!\inst8|choose_reg\(0) & ((\inst8|choose_reg\(1) & (\inst1|rf|R2\(4))) # (!\inst8|choose_reg\(1) & ((\inst1|rf|R0\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst8|choose_reg\(1),
	datac => \inst1|rf|R2\(4),
	datad => \inst1|rf|R0\(4),
	combout => \inst7|Mux11~0_combout\);

-- Location: LCCOMB_X46_Y42_N4
\inst7|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux11~1_combout\ = (\inst8|choose_reg\(0) & ((\inst7|Mux11~0_combout\ & (\inst1|rf|R3\(4))) # (!\inst7|Mux11~0_combout\ & ((\inst1|rf|R1\(4)))))) # (!\inst8|choose_reg\(0) & (((\inst7|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst1|rf|R3\(4),
	datac => \inst1|rf|R1\(4),
	datad => \inst7|Mux11~0_combout\,
	combout => \inst7|Mux11~1_combout\);

-- Location: FF_X46_Y42_N5
\inst7|opt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(4));

-- Location: LCCOMB_X46_Y41_N4
\inst6|mw|Y[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[4]~feeder_combout\ = \inst7|opt2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(4),
	combout => \inst6|mw|Y[4]~feeder_combout\);

-- Location: FF_X46_Y41_N5
\inst6|mw|Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(4));

-- Location: LCCOMB_X45_Y41_N4
\inst6|man|ans~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~12_combout\ = \inst6|mw|X\(4) $ (\inst6|mw|Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(4),
	datad => \inst6|mw|Y\(4),
	combout => \inst6|man|ans~12_combout\);

-- Location: LCCOMB_X45_Y41_N6
\inst6|man|ans~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~11_combout\ = (\inst6|mw|X\(4)) # (\inst6|mw|Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(4),
	datad => \inst6|mw|Y\(4),
	combout => \inst6|man|ans~11_combout\);

-- Location: LCCOMB_X44_Y41_N0
\inst6|man|ans[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[4]~2_combout\ = (\inst8|S\(0) & (\inst6|man|ans~12_combout\)) # (!\inst8|S\(0) & ((\inst6|man|ans~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans~12_combout\,
	datab => \inst8|S\(0),
	datad => \inst6|man|ans~11_combout\,
	combout => \inst6|man|ans[4]~2_combout\);

-- Location: FF_X44_Y41_N1
\inst6|man|ans[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[4]~2_combout\,
	asdata => \inst6|mw|X\(5),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(4));

-- Location: LCCOMB_X46_Y42_N0
\inst1|rf|R0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~6_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(4)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[4]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(4),
	combout => \inst1|rf|R0~6_combout\);

-- Location: FF_X46_Y42_N1
\inst1|rf|R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~6_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(4));

-- Location: LCCOMB_X44_Y42_N0
\inst1|rf|R2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~7_combout\ = (\inst1|rf|R2[7]~0_combout\ & (\inst6|man|ans\(3))) # (!\inst1|rf|R2[7]~0_combout\ & ((\key_out[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(3),
	datac => \key_out[3]~input_o\,
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~7_combout\);

-- Location: FF_X44_Y42_N1
\inst1|rf|R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~7_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(3));

-- Location: LCCOMB_X43_Y42_N2
\inst1|rf|R3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~7_combout\ = (\inst1|rf|R3[6]~0_combout\ & (\inst6|man|ans\(3))) # (!\inst1|rf|R3[6]~0_combout\ & ((\key_out[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(3),
	datac => \key_out[3]~input_o\,
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~7_combout\);

-- Location: FF_X43_Y42_N3
\inst1|rf|R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~7_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(3));

-- Location: LCCOMB_X42_Y42_N0
\inst1|rf|R1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~7_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(3)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[3]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(3),
	combout => \inst1|rf|R1~7_combout\);

-- Location: FF_X42_Y42_N1
\inst1|rf|R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~7_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(3));

-- Location: LCCOMB_X46_Y42_N6
\inst7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3)) # ((\inst1|rf|R1\(3))))) # (!\inst8|choose_reg\(2) & (!\inst8|choose_reg\(3) & (\inst1|rf|R0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R0\(3),
	datad => \inst1|rf|R1\(3),
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y42_N14
\inst7|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~1_combout\ = (\inst8|choose_reg\(3) & ((\inst7|Mux4~0_combout\ & ((\inst1|rf|R3\(3)))) # (!\inst7|Mux4~0_combout\ & (\inst1|rf|R2\(3))))) # (!\inst8|choose_reg\(3) & (((\inst7|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R2\(3),
	datab => \inst1|rf|R3\(3),
	datac => \inst8|choose_reg\(3),
	datad => \inst7|Mux4~0_combout\,
	combout => \inst7|Mux4~1_combout\);

-- Location: FF_X46_Y42_N15
\inst7|opt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(3));

-- Location: FF_X45_Y42_N29
\inst6|mw|X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|opt1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(3));

-- Location: LCCOMB_X46_Y42_N20
\inst7|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux12~0_combout\ = (\inst8|choose_reg\(0) & ((\inst8|choose_reg\(1)) # ((\inst1|rf|R1\(3))))) # (!\inst8|choose_reg\(0) & (!\inst8|choose_reg\(1) & (\inst1|rf|R0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst8|choose_reg\(1),
	datac => \inst1|rf|R0\(3),
	datad => \inst1|rf|R1\(3),
	combout => \inst7|Mux12~0_combout\);

-- Location: LCCOMB_X46_Y42_N8
\inst7|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux12~1_combout\ = (\inst8|choose_reg\(1) & ((\inst7|Mux12~0_combout\ & ((\inst1|rf|R3\(3)))) # (!\inst7|Mux12~0_combout\ & (\inst1|rf|R2\(3))))) # (!\inst8|choose_reg\(1) & (((\inst7|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R2\(3),
	datab => \inst8|choose_reg\(1),
	datac => \inst1|rf|R3\(3),
	datad => \inst7|Mux12~0_combout\,
	combout => \inst7|Mux12~1_combout\);

-- Location: FF_X46_Y42_N9
\inst7|opt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(3));

-- Location: LCCOMB_X46_Y41_N28
\inst6|mw|Y[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[3]~feeder_combout\ = \inst7|opt2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(3),
	combout => \inst6|mw|Y[3]~feeder_combout\);

-- Location: FF_X46_Y41_N29
\inst6|mw|Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(3));

-- Location: LCCOMB_X45_Y41_N12
\inst6|man|ans~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~14_combout\ = \inst6|mw|X\(3) $ (\inst6|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(3),
	datad => \inst6|mw|Y\(3),
	combout => \inst6|man|ans~14_combout\);

-- Location: LCCOMB_X45_Y41_N2
\inst6|man|ans~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~13_combout\ = (\inst6|mw|X\(3)) # (\inst6|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(3),
	datad => \inst6|mw|Y\(3),
	combout => \inst6|man|ans~13_combout\);

-- Location: LCCOMB_X45_Y41_N0
\inst6|man|ans[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[3]~3_combout\ = (\inst8|S\(0) & (\inst6|man|ans~14_combout\)) # (!\inst8|S\(0) & ((\inst6|man|ans~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans~14_combout\,
	datab => \inst8|S\(0),
	datad => \inst6|man|ans~13_combout\,
	combout => \inst6|man|ans[3]~3_combout\);

-- Location: FF_X45_Y41_N1
\inst6|man|ans[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[3]~3_combout\,
	asdata => \inst6|mw|X\(4),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(3));

-- Location: LCCOMB_X46_Y42_N22
\inst1|rf|R0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~7_combout\ = (\inst1|rf|R0[0]~0_combout\ & (\inst6|man|ans\(3))) # (!\inst1|rf|R0[0]~0_combout\ & ((\key_out[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(3),
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \key_out[3]~input_o\,
	combout => \inst1|rf|R0~7_combout\);

-- Location: FF_X46_Y42_N23
\inst1|rf|R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~7_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(3));

-- Location: LCCOMB_X42_Y42_N18
\inst1|rf|R1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~8_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(2)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[2]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(2),
	combout => \inst1|rf|R1~8_combout\);

-- Location: FF_X42_Y42_N19
\inst1|rf|R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~8_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(2));

-- Location: LCCOMB_X43_Y42_N12
\inst1|rf|R3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~8_combout\ = (\inst1|rf|R3[6]~0_combout\ & ((\inst6|man|ans\(2)))) # (!\inst1|rf|R3[6]~0_combout\ & (\key_out[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[2]~input_o\,
	datac => \inst6|man|ans\(2),
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~8_combout\);

-- Location: FF_X43_Y42_N13
\inst1|rf|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~8_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(2));

-- Location: LCCOMB_X44_Y42_N24
\inst1|rf|R2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~8_combout\ = (\inst1|rf|R2[7]~0_combout\ & (\inst6|man|ans\(2))) # (!\inst1|rf|R2[7]~0_combout\ & ((\key_out[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(2),
	datac => \key_out[2]~input_o\,
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~8_combout\);

-- Location: FF_X44_Y42_N25
\inst1|rf|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~8_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(2));

-- Location: LCCOMB_X46_Y42_N18
\inst7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst8|choose_reg\(2) & (((\inst8|choose_reg\(3))))) # (!\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3) & ((\inst1|rf|R2\(2)))) # (!\inst8|choose_reg\(3) & (\inst1|rf|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst1|rf|R0\(2),
	datac => \inst8|choose_reg\(3),
	datad => \inst1|rf|R2\(2),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y42_N10
\inst7|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~1_combout\ = (\inst8|choose_reg\(2) & ((\inst7|Mux5~0_combout\ & ((\inst1|rf|R3\(2)))) # (!\inst7|Mux5~0_combout\ & (\inst1|rf|R1\(2))))) # (!\inst8|choose_reg\(2) & (((\inst7|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst1|rf|R1\(2),
	datac => \inst1|rf|R3\(2),
	datad => \inst7|Mux5~0_combout\,
	combout => \inst7|Mux5~1_combout\);

-- Location: FF_X46_Y42_N11
\inst7|opt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(2));

-- Location: LCCOMB_X46_Y42_N26
\inst6|mw|X[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[2]~feeder_combout\ = \inst7|opt1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(2),
	combout => \inst6|mw|X[2]~feeder_combout\);

-- Location: FF_X46_Y42_N27
\inst6|mw|X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(2));

-- Location: LCCOMB_X46_Y42_N16
\inst7|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux13~0_combout\ = (\inst8|choose_reg\(0) & (\inst8|choose_reg\(1))) # (!\inst8|choose_reg\(0) & ((\inst8|choose_reg\(1) & ((\inst1|rf|R2\(2)))) # (!\inst8|choose_reg\(1) & (\inst1|rf|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst8|choose_reg\(1),
	datac => \inst1|rf|R0\(2),
	datad => \inst1|rf|R2\(2),
	combout => \inst7|Mux13~0_combout\);

-- Location: LCCOMB_X46_Y42_N24
\inst7|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux13~1_combout\ = (\inst8|choose_reg\(0) & ((\inst7|Mux13~0_combout\ & ((\inst1|rf|R3\(2)))) # (!\inst7|Mux13~0_combout\ & (\inst1|rf|R1\(2))))) # (!\inst8|choose_reg\(0) & (((\inst7|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst1|rf|R1\(2),
	datac => \inst1|rf|R3\(2),
	datad => \inst7|Mux13~0_combout\,
	combout => \inst7|Mux13~1_combout\);

-- Location: FF_X46_Y42_N25
\inst7|opt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(2));

-- Location: LCCOMB_X48_Y42_N0
\inst6|mw|Y[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[2]~feeder_combout\ = \inst7|opt2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(2),
	combout => \inst6|mw|Y[2]~feeder_combout\);

-- Location: FF_X48_Y42_N1
\inst6|mw|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(2));

-- Location: LCCOMB_X48_Y42_N16
\inst6|man|ans~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~16_combout\ = \inst6|mw|X\(2) $ (\inst6|mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(2),
	datad => \inst6|mw|Y\(2),
	combout => \inst6|man|ans~16_combout\);

-- Location: LCCOMB_X48_Y42_N22
\inst6|man|ans~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~15_combout\ = (\inst6|mw|X\(2)) # (\inst6|mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(2),
	datad => \inst6|mw|Y\(2),
	combout => \inst6|man|ans~15_combout\);

-- Location: LCCOMB_X44_Y42_N22
\inst6|man|ans[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[2]~4_combout\ = (\inst8|S\(0) & (\inst6|man|ans~16_combout\)) # (!\inst8|S\(0) & ((\inst6|man|ans~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|S\(0),
	datab => \inst6|man|ans~16_combout\,
	datad => \inst6|man|ans~15_combout\,
	combout => \inst6|man|ans[2]~4_combout\);

-- Location: FF_X44_Y42_N23
\inst6|man|ans[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[2]~4_combout\,
	asdata => \inst6|mw|X\(3),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(2));

-- Location: LCCOMB_X46_Y42_N28
\inst1|rf|R0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~8_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(2)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[2]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(2),
	combout => \inst1|rf|R0~8_combout\);

-- Location: FF_X46_Y42_N29
\inst1|rf|R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~8_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(2));

-- Location: LCCOMB_X44_Y42_N4
\inst1|rf|R2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~9_combout\ = (\inst1|rf|R2[7]~0_combout\ & (\inst6|man|ans\(1))) # (!\inst1|rf|R2[7]~0_combout\ & ((\key_out[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(1),
	datac => \key_out[1]~input_o\,
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~9_combout\);

-- Location: FF_X44_Y42_N5
\inst1|rf|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~9_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(1));

-- Location: LCCOMB_X43_Y42_N10
\inst1|rf|R3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~9_combout\ = (\inst1|rf|R3[6]~0_combout\ & ((\inst6|man|ans\(1)))) # (!\inst1|rf|R3[6]~0_combout\ & (\key_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[1]~input_o\,
	datac => \inst6|man|ans\(1),
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~9_combout\);

-- Location: FF_X43_Y42_N11
\inst1|rf|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~9_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(1));

-- Location: LCCOMB_X42_Y42_N24
\inst1|rf|R1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~9_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(1)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[1]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(1),
	combout => \inst1|rf|R1~9_combout\);

-- Location: FF_X42_Y42_N25
\inst1|rf|R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~9_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(1));

-- Location: LCCOMB_X41_Y42_N10
\inst7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst8|choose_reg\(3) & (((\inst8|choose_reg\(2))))) # (!\inst8|choose_reg\(3) & ((\inst8|choose_reg\(2) & (\inst1|rf|R1\(1))) # (!\inst8|choose_reg\(2) & ((\inst1|rf|R0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(3),
	datab => \inst1|rf|R1\(1),
	datac => \inst8|choose_reg\(2),
	datad => \inst1|rf|R0\(1),
	combout => \inst7|Mux6~0_combout\);

-- Location: LCCOMB_X41_Y42_N22
\inst7|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~1_combout\ = (\inst8|choose_reg\(3) & ((\inst7|Mux6~0_combout\ & ((\inst1|rf|R3\(1)))) # (!\inst7|Mux6~0_combout\ & (\inst1|rf|R2\(1))))) # (!\inst8|choose_reg\(3) & (((\inst7|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R2\(1),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R3\(1),
	datad => \inst7|Mux6~0_combout\,
	combout => \inst7|Mux6~1_combout\);

-- Location: FF_X41_Y42_N23
\inst7|opt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(1));

-- Location: LCCOMB_X42_Y41_N4
\inst6|mw|X[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[1]~feeder_combout\ = \inst7|opt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(1),
	combout => \inst6|mw|X[1]~feeder_combout\);

-- Location: FF_X42_Y41_N5
\inst6|mw|X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(1));

-- Location: LCCOMB_X42_Y42_N6
\inst7|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux14~0_combout\ = (\inst8|choose_reg\(1) & (\inst8|choose_reg\(0))) # (!\inst8|choose_reg\(1) & ((\inst8|choose_reg\(0) & ((\inst1|rf|R1\(1)))) # (!\inst8|choose_reg\(0) & (\inst1|rf|R0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(1),
	datab => \inst8|choose_reg\(0),
	datac => \inst1|rf|R0\(1),
	datad => \inst1|rf|R1\(1),
	combout => \inst7|Mux14~0_combout\);

-- Location: LCCOMB_X41_Y42_N16
\inst7|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux14~1_combout\ = (\inst8|choose_reg\(1) & ((\inst7|Mux14~0_combout\ & ((\inst1|rf|R3\(1)))) # (!\inst7|Mux14~0_combout\ & (\inst1|rf|R2\(1))))) # (!\inst8|choose_reg\(1) & (((\inst7|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rf|R2\(1),
	datab => \inst8|choose_reg\(1),
	datac => \inst1|rf|R3\(1),
	datad => \inst7|Mux14~0_combout\,
	combout => \inst7|Mux14~1_combout\);

-- Location: FF_X41_Y42_N17
\inst7|opt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(1));

-- Location: LCCOMB_X42_Y41_N14
\inst6|mw|Y[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[1]~feeder_combout\ = \inst7|opt2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt2\(1),
	combout => \inst6|mw|Y[1]~feeder_combout\);

-- Location: FF_X42_Y41_N15
\inst6|mw|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(1));

-- Location: LCCOMB_X43_Y41_N0
\inst6|man|ans~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~17_combout\ = (\inst6|mw|X\(1)) # (\inst6|mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(1),
	datad => \inst6|mw|Y\(1),
	combout => \inst6|man|ans~17_combout\);

-- Location: LCCOMB_X43_Y41_N2
\inst6|man|ans~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~18_combout\ = \inst6|mw|X\(1) $ (\inst6|mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|X\(1),
	datad => \inst6|mw|Y\(1),
	combout => \inst6|man|ans~18_combout\);

-- Location: LCCOMB_X44_Y42_N20
\inst6|man|ans[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[1]~5_combout\ = (\inst8|S\(0) & ((\inst6|man|ans~18_combout\))) # (!\inst8|S\(0) & (\inst6|man|ans~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|S\(0),
	datab => \inst6|man|ans~17_combout\,
	datad => \inst6|man|ans~18_combout\,
	combout => \inst6|man|ans[1]~5_combout\);

-- Location: FF_X44_Y42_N21
\inst6|man|ans[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[1]~5_combout\,
	asdata => \inst6|mw|X\(2),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(1));

-- Location: LCCOMB_X42_Y42_N22
\inst1|rf|R0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~9_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(1)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[1]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(1),
	combout => \inst1|rf|R0~9_combout\);

-- Location: FF_X42_Y42_N23
\inst1|rf|R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~9_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(1));

-- Location: LCCOMB_X42_Y42_N10
\inst1|rf|R1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R1~10_combout\ = (\inst1|rf|R1[0]~0_combout\ & ((\inst6|man|ans\(0)))) # (!\inst1|rf|R1[0]~0_combout\ & (\key_out[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[0]~input_o\,
	datac => \inst1|rf|R1[0]~0_combout\,
	datad => \inst6|man|ans\(0),
	combout => \inst1|rf|R1~10_combout\);

-- Location: FF_X42_Y42_N11
\inst1|rf|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R1~10_combout\,
	ena => \inst1|rf|R1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R1\(0));

-- Location: LCCOMB_X43_Y42_N0
\inst1|rf|R3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R3~10_combout\ = (\inst1|rf|R3[6]~0_combout\ & (\inst6|man|ans\(0))) # (!\inst1|rf|R3[6]~0_combout\ & ((\key_out[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(0),
	datac => \key_out[0]~input_o\,
	datad => \inst1|rf|R3[6]~0_combout\,
	combout => \inst1|rf|R3~10_combout\);

-- Location: FF_X43_Y42_N1
\inst1|rf|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R3~10_combout\,
	ena => \inst1|rf|R3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R3\(0));

-- Location: LCCOMB_X44_Y42_N12
\inst1|rf|R2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R2~10_combout\ = (\inst1|rf|R2[7]~0_combout\ & ((\inst6|man|ans\(0)))) # (!\inst1|rf|R2[7]~0_combout\ & (\key_out[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_out[0]~input_o\,
	datab => \inst6|man|ans\(0),
	datad => \inst1|rf|R2[7]~0_combout\,
	combout => \inst1|rf|R2~10_combout\);

-- Location: FF_X44_Y42_N13
\inst1|rf|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R2~10_combout\,
	ena => \inst1|rf|R2[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R2\(0));

-- Location: LCCOMB_X41_Y42_N6
\inst7|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux7~0_combout\ = (\inst8|choose_reg\(2) & (\inst8|choose_reg\(3))) # (!\inst8|choose_reg\(2) & ((\inst8|choose_reg\(3) & ((\inst1|rf|R2\(0)))) # (!\inst8|choose_reg\(3) & (\inst1|rf|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst8|choose_reg\(3),
	datac => \inst1|rf|R0\(0),
	datad => \inst1|rf|R2\(0),
	combout => \inst7|Mux7~0_combout\);

-- Location: LCCOMB_X41_Y42_N26
\inst7|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux7~1_combout\ = (\inst8|choose_reg\(2) & ((\inst7|Mux7~0_combout\ & ((\inst1|rf|R3\(0)))) # (!\inst7|Mux7~0_combout\ & (\inst1|rf|R1\(0))))) # (!\inst8|choose_reg\(2) & (((\inst7|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(2),
	datab => \inst1|rf|R1\(0),
	datac => \inst1|rf|R3\(0),
	datad => \inst7|Mux7~0_combout\,
	combout => \inst7|Mux7~1_combout\);

-- Location: FF_X41_Y42_N27
\inst7|opt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt1\(0));

-- Location: LCCOMB_X42_Y41_N12
\inst6|mw|X[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[0]~feeder_combout\ = \inst7|opt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(0),
	combout => \inst6|mw|X[0]~feeder_combout\);

-- Location: FF_X42_Y41_N13
\inst6|mw|X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(0));

-- Location: LCCOMB_X41_Y42_N12
\inst7|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~0_combout\ = (\inst8|choose_reg\(0) & (\inst8|choose_reg\(1))) # (!\inst8|choose_reg\(0) & ((\inst8|choose_reg\(1) & ((\inst1|rf|R2\(0)))) # (!\inst8|choose_reg\(1) & (\inst1|rf|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst8|choose_reg\(1),
	datac => \inst1|rf|R0\(0),
	datad => \inst1|rf|R2\(0),
	combout => \inst7|Mux15~0_combout\);

-- Location: LCCOMB_X41_Y42_N0
\inst7|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~1_combout\ = (\inst8|choose_reg\(0) & ((\inst7|Mux15~0_combout\ & ((\inst1|rf|R3\(0)))) # (!\inst7|Mux15~0_combout\ & (\inst1|rf|R1\(0))))) # (!\inst8|choose_reg\(0) & (((\inst7|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|choose_reg\(0),
	datab => \inst1|rf|R1\(0),
	datac => \inst1|rf|R3\(0),
	datad => \inst7|Mux15~0_combout\,
	combout => \inst7|Mux15~1_combout\);

-- Location: FF_X41_Y42_N1
\inst7|opt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|opt2\(0));

-- Location: LCCOMB_X42_Y41_N22
\inst6|mw|Y[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[0]~feeder_combout\ = \inst7|opt2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt2\(0),
	combout => \inst6|mw|Y[0]~feeder_combout\);

-- Location: FF_X42_Y41_N23
\inst6|mw|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(0));

-- Location: LCCOMB_X42_Y41_N24
\inst6|man|ans~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~20_combout\ = \inst6|mw|X\(0) $ (\inst6|mw|Y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|X\(0),
	datac => \inst6|mw|Y\(0),
	combout => \inst6|man|ans~20_combout\);

-- Location: LCCOMB_X42_Y41_N2
\inst6|man|ans~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~19_combout\ = (\inst6|mw|X\(0)) # (\inst6|mw|Y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|X\(0),
	datac => \inst6|mw|Y\(0),
	combout => \inst6|man|ans~19_combout\);

-- Location: LCCOMB_X42_Y41_N0
\inst6|man|ans[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[0]~6_combout\ = (\inst8|S\(0) & (\inst6|man|ans~20_combout\)) # (!\inst8|S\(0) & ((\inst6|man|ans~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|S\(0),
	datab => \inst6|man|ans~20_combout\,
	datad => \inst6|man|ans~19_combout\,
	combout => \inst6|man|ans[0]~6_combout\);

-- Location: FF_X42_Y41_N1
\inst6|man|ans[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[0]~6_combout\,
	asdata => \inst6|mw|X\(1),
	sload => \inst8|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(0));

-- Location: LCCOMB_X42_Y42_N8
\inst1|rf|R0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|rf|R0~10_combout\ = (\inst1|rf|R0[0]~0_combout\ & ((\inst6|man|ans\(0)))) # (!\inst1|rf|R0[0]~0_combout\ & (\key_out[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_out[0]~input_o\,
	datac => \inst1|rf|R0[0]~0_combout\,
	datad => \inst6|man|ans\(0),
	combout => \inst1|rf|R0~10_combout\);

-- Location: FF_X42_Y42_N9
\inst1|rf|R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst1|rf|R0~10_combout\,
	ena => \inst1|rf|R0[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rf|R0\(0));

-- Location: IOIBUF_X16_Y0_N8
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_R0(7) <= \R0[7]~output_o\;

ww_R0(6) <= \R0[6]~output_o\;

ww_R0(5) <= \R0[5]~output_o\;

ww_R0(4) <= \R0[4]~output_o\;

ww_R0(3) <= \R0[3]~output_o\;

ww_R0(2) <= \R0[2]~output_o\;

ww_R0(1) <= \R0[1]~output_o\;

ww_R0(0) <= \R0[0]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;

ww_R3(7) <= \R3[7]~output_o\;

ww_R3(6) <= \R3[6]~output_o\;

ww_R3(5) <= \R3[5]~output_o\;

ww_R3(4) <= \R3[4]~output_o\;

ww_R3(3) <= \R3[3]~output_o\;

ww_R3(2) <= \R3[2]~output_o\;

ww_R3(1) <= \R3[1]~output_o\;

ww_R3(0) <= \R3[0]~output_o\;
END structure;


