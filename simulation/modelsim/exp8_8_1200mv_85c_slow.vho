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

-- DATE "05/31/2023 09:21:10"

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
	codeout : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	cin : IN std_logic;
	wr : IN std_logic;
	rd : IN std_logic;
	pc_clr : IN std_logic;
	manual_plus : IN std_logic;
	enact : IN std_logic;
	key_clr : IN std_logic;
	key_r : IN std_logic_vector(3 DOWNTO 0);
	M : IN std_logic_vector(1 DOWNTO 0);
	RA : IN std_logic_vector(1 DOWNTO 0);
	switch_buttons : IN std_logic_vector(2 DOWNTO 0);
	key_c : OUT std_logic_vector(3 DOWNTO 0);
	sel : OUT std_logic_vector(2 DOWNTO 0)
	);
END exp8;

-- Design Ports Information
-- codeout[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_clr	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_clr	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enact	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[1]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[0]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[2]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- manual_plus	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_codeout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_pc_clr : std_logic;
SIGNAL ww_manual_plus : std_logic;
SIGNAL ww_enact : std_logic;
SIGNAL ww_key_clr : std_logic;
SIGNAL ww_key_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_switch_buttons : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_key_c : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|pf|key_flag~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \codeout[7]~output_o\ : std_logic;
SIGNAL \codeout[6]~output_o\ : std_logic;
SIGNAL \codeout[5]~output_o\ : std_logic;
SIGNAL \codeout[4]~output_o\ : std_logic;
SIGNAL \codeout[3]~output_o\ : std_logic;
SIGNAL \codeout[2]~output_o\ : std_logic;
SIGNAL \codeout[1]~output_o\ : std_logic;
SIGNAL \codeout[0]~output_o\ : std_logic;
SIGNAL \key_c[3]~output_o\ : std_logic;
SIGNAL \key_c[2]~output_o\ : std_logic;
SIGNAL \key_c[1]~output_o\ : std_logic;
SIGNAL \key_c[0]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|sel[0]~2_combout\ : std_logic;
SIGNAL \inst2|sel[1]~1_combout\ : std_logic;
SIGNAL \inst2|sel[2]~0_combout\ : std_logic;
SIGNAL \switch_buttons[0]~input_o\ : std_logic;
SIGNAL \switch_buttons[1]~input_o\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \switch_buttons[2]~input_o\ : std_logic;
SIGNAL \inst10|status[0]~0_combout\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \inst3|rf|R0[2]~0_combout\ : std_logic;
SIGNAL \enact~input_o\ : std_logic;
SIGNAL \inst3|pf|cnt[0]~20_combout\ : std_logic;
SIGNAL \pc_clr~input_o\ : std_logic;
SIGNAL \manual_plus~input_o\ : std_logic;
SIGNAL \inst3|pf|key_tmp0~0_combout\ : std_logic;
SIGNAL \inst3|pf|key_tmp0~q\ : std_logic;
SIGNAL \inst3|pf|key_tmp1~q\ : std_logic;
SIGNAL \inst3|pf|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|pf|Selector3~3_combout\ : std_logic;
SIGNAL \inst3|pf|state.S2~q\ : std_logic;
SIGNAL \inst3|pf|pedge~combout\ : std_logic;
SIGNAL \inst3|pf|nedge~0_combout\ : std_logic;
SIGNAL \inst3|pf|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|pf|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|pf|state.S1~q\ : std_logic;
SIGNAL \inst3|pf|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|pf|Selector4~1_combout\ : std_logic;
SIGNAL \inst3|pf|state.S3~q\ : std_logic;
SIGNAL \inst3|pf|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|pf|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|pf|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|pf|Selector1~2_combout\ : std_logic;
SIGNAL \inst3|pf|en_counter~q\ : std_logic;
SIGNAL \inst3|pf|cnt[0]~21\ : std_logic;
SIGNAL \inst3|pf|cnt[1]~22_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[1]~23\ : std_logic;
SIGNAL \inst3|pf|cnt[2]~24_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[2]~25\ : std_logic;
SIGNAL \inst3|pf|cnt[3]~26_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[3]~27\ : std_logic;
SIGNAL \inst3|pf|cnt[4]~28_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[4]~29\ : std_logic;
SIGNAL \inst3|pf|cnt[5]~30_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[5]~31\ : std_logic;
SIGNAL \inst3|pf|cnt[6]~32_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[6]~33\ : std_logic;
SIGNAL \inst3|pf|cnt[7]~34_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[7]~35\ : std_logic;
SIGNAL \inst3|pf|cnt[8]~36_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[8]~37\ : std_logic;
SIGNAL \inst3|pf|cnt[9]~38_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[9]~39\ : std_logic;
SIGNAL \inst3|pf|cnt[10]~40_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[10]~41\ : std_logic;
SIGNAL \inst3|pf|cnt[11]~42_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[11]~43\ : std_logic;
SIGNAL \inst3|pf|cnt[12]~44_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[12]~45\ : std_logic;
SIGNAL \inst3|pf|cnt[13]~46_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[13]~47\ : std_logic;
SIGNAL \inst3|pf|cnt[14]~48_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[14]~49\ : std_logic;
SIGNAL \inst3|pf|cnt[15]~50_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[15]~51\ : std_logic;
SIGNAL \inst3|pf|cnt[16]~52_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[16]~53\ : std_logic;
SIGNAL \inst3|pf|cnt[17]~54_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[17]~55\ : std_logic;
SIGNAL \inst3|pf|cnt[18]~56_combout\ : std_logic;
SIGNAL \inst3|pf|cnt[18]~57\ : std_logic;
SIGNAL \inst3|pf|cnt[19]~58_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|pf|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|pf|cnt_full~q\ : std_logic;
SIGNAL \inst3|pf|Selector5~1_combout\ : std_logic;
SIGNAL \inst3|pf|state.S4~q\ : std_logic;
SIGNAL \inst3|pf|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|pf|key_flag~feeder_combout\ : std_logic;
SIGNAL \inst3|pf|key_flag~q\ : std_logic;
SIGNAL \inst3|pf|key_flag~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|pf|PC[0]~21_combout\ : std_logic;
SIGNAL \inst3|pf|PC[1]~7_combout\ : std_logic;
SIGNAL \inst3|pf|PC[1]~8\ : std_logic;
SIGNAL \inst3|pf|PC[2]~9_combout\ : std_logic;
SIGNAL \inst3|pf|PC[2]~10\ : std_logic;
SIGNAL \inst3|pf|PC[3]~11_combout\ : std_logic;
SIGNAL \inst3|pf|PC[3]~12\ : std_logic;
SIGNAL \inst3|pf|PC[4]~13_combout\ : std_logic;
SIGNAL \inst3|pf|PC[4]~14\ : std_logic;
SIGNAL \inst3|pf|PC[5]~15_combout\ : std_logic;
SIGNAL \inst3|pf|PC[5]~16\ : std_logic;
SIGNAL \inst3|pf|PC[6]~17_combout\ : std_logic;
SIGNAL \inst3|pf|PC[6]~18\ : std_logic;
SIGNAL \inst3|pf|PC[7]~19_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Selector4~0_combout\ : std_logic;
SIGNAL \inst4|WideNor0~combout\ : std_logic;
SIGNAL \inst4|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|rf|Equal1~0_combout\ : std_logic;
SIGNAL \key_clr~input_o\ : std_logic;
SIGNAL \key_r[0]~input_o\ : std_logic;
SIGNAL \key_r[1]~input_o\ : std_logic;
SIGNAL \key_r[3]~input_o\ : std_logic;
SIGNAL \key_r[2]~input_o\ : std_logic;
SIGNAL \keyboard|Equal0~0_combout\ : std_logic;
SIGNAL \keyboard|num~0_combout\ : std_logic;
SIGNAL \keyboard|cnt[0]~1_combout\ : std_logic;
SIGNAL \keyboard|cnt[1]~0_combout\ : std_logic;
SIGNAL \keyboard|Decoder0~3_combout\ : std_logic;
SIGNAL \keyboard|Decoder0~1_combout\ : std_logic;
SIGNAL \keyboard|Decoder0~2_combout\ : std_logic;
SIGNAL \keyboard|Decoder0~0_combout\ : std_logic;
SIGNAL \keyboard|num~1_combout\ : std_logic;
SIGNAL \keyboard|num~2_combout\ : std_logic;
SIGNAL \keyboard|num~13_combout\ : std_logic;
SIGNAL \keyboard|num~14_combout\ : std_logic;
SIGNAL \keyboard|num~15_combout\ : std_logic;
SIGNAL \keyboard|num~16_combout\ : std_logic;
SIGNAL \keyboard|out~7_combout\ : std_logic;
SIGNAL \keyboard|num~3_combout\ : std_logic;
SIGNAL \keyboard|num~4_combout\ : std_logic;
SIGNAL \keyboard|num~5_combout\ : std_logic;
SIGNAL \keyboard|num~6_combout\ : std_logic;
SIGNAL \keyboard|num~17_combout\ : std_logic;
SIGNAL \keyboard|num~18_combout\ : std_logic;
SIGNAL \keyboard|num~19_combout\ : std_logic;
SIGNAL \keyboard|num~10_combout\ : std_logic;
SIGNAL \keyboard|num~11_combout\ : std_logic;
SIGNAL \keyboard|num~12_combout\ : std_logic;
SIGNAL \keyboard|Equal1~0_combout\ : std_logic;
SIGNAL \keyboard|num~8_combout\ : std_logic;
SIGNAL \keyboard|num~7_combout\ : std_logic;
SIGNAL \keyboard|num~9_combout\ : std_logic;
SIGNAL \keyboard|Add1~24_combout\ : std_logic;
SIGNAL \keyboard|Equal1~1_combout\ : std_logic;
SIGNAL \keyboard|Add1~46_combout\ : std_logic;
SIGNAL \keyboard|Add1~25\ : std_logic;
SIGNAL \keyboard|Add1~26_combout\ : std_logic;
SIGNAL \keyboard|Add1~50_combout\ : std_logic;
SIGNAL \keyboard|count_num[31]~0_combout\ : std_logic;
SIGNAL \keyboard|Add1~27\ : std_logic;
SIGNAL \keyboard|Add1~28_combout\ : std_logic;
SIGNAL \keyboard|Add1~49_combout\ : std_logic;
SIGNAL \keyboard|Add1~29\ : std_logic;
SIGNAL \keyboard|Add1~30_combout\ : std_logic;
SIGNAL \keyboard|Add1~48_combout\ : std_logic;
SIGNAL \keyboard|Add1~31\ : std_logic;
SIGNAL \keyboard|Add1~32_combout\ : std_logic;
SIGNAL \keyboard|Add1~47_combout\ : std_logic;
SIGNAL \keyboard|Add1~33\ : std_logic;
SIGNAL \keyboard|Add1~34_combout\ : std_logic;
SIGNAL \keyboard|Add1~45_combout\ : std_logic;
SIGNAL \keyboard|Add1~35\ : std_logic;
SIGNAL \keyboard|Add1~36_combout\ : std_logic;
SIGNAL \keyboard|Add1~44_combout\ : std_logic;
SIGNAL \keyboard|Add1~37\ : std_logic;
SIGNAL \keyboard|Add1~38_combout\ : std_logic;
SIGNAL \keyboard|Add1~43_combout\ : std_logic;
SIGNAL \keyboard|Add1~39\ : std_logic;
SIGNAL \keyboard|Add1~40_combout\ : std_logic;
SIGNAL \keyboard|Add1~42_combout\ : std_logic;
SIGNAL \keyboard|Add1~41\ : std_logic;
SIGNAL \keyboard|Add1~51_combout\ : std_logic;
SIGNAL \keyboard|Add1~53_combout\ : std_logic;
SIGNAL \keyboard|Add1~52\ : std_logic;
SIGNAL \keyboard|Add1~54_combout\ : std_logic;
SIGNAL \keyboard|Add1~56_combout\ : std_logic;
SIGNAL \keyboard|Add1~55\ : std_logic;
SIGNAL \keyboard|Add1~57_combout\ : std_logic;
SIGNAL \keyboard|Add1~59_combout\ : std_logic;
SIGNAL \keyboard|Add1~58\ : std_logic;
SIGNAL \keyboard|Add1~60_combout\ : std_logic;
SIGNAL \keyboard|Add1~62_combout\ : std_logic;
SIGNAL \keyboard|Add1~61\ : std_logic;
SIGNAL \keyboard|Add1~63_combout\ : std_logic;
SIGNAL \keyboard|Add1~65_combout\ : std_logic;
SIGNAL \keyboard|Add1~64\ : std_logic;
SIGNAL \keyboard|Add1~66_combout\ : std_logic;
SIGNAL \keyboard|Add1~68_combout\ : std_logic;
SIGNAL \keyboard|Add1~67\ : std_logic;
SIGNAL \keyboard|Add1~69_combout\ : std_logic;
SIGNAL \keyboard|Add1~71_combout\ : std_logic;
SIGNAL \keyboard|Equal2~7_combout\ : std_logic;
SIGNAL \keyboard|Add1~70\ : std_logic;
SIGNAL \keyboard|Add1~73\ : std_logic;
SIGNAL \keyboard|Add1~75_combout\ : std_logic;
SIGNAL \keyboard|Add1~77_combout\ : std_logic;
SIGNAL \keyboard|Add1~76\ : std_logic;
SIGNAL \keyboard|Add1~78_combout\ : std_logic;
SIGNAL \keyboard|Add1~80_combout\ : std_logic;
SIGNAL \keyboard|Add1~79\ : std_logic;
SIGNAL \keyboard|Add1~81_combout\ : std_logic;
SIGNAL \keyboard|Add1~83_combout\ : std_logic;
SIGNAL \keyboard|Add1~82\ : std_logic;
SIGNAL \keyboard|Add1~84_combout\ : std_logic;
SIGNAL \keyboard|Add1~108_combout\ : std_logic;
SIGNAL \keyboard|Add1~85\ : std_logic;
SIGNAL \keyboard|Add1~86_combout\ : std_logic;
SIGNAL \keyboard|Add1~109_combout\ : std_logic;
SIGNAL \keyboard|Add1~87\ : std_logic;
SIGNAL \keyboard|Add1~88_combout\ : std_logic;
SIGNAL \keyboard|Add1~110_combout\ : std_logic;
SIGNAL \keyboard|Add1~89\ : std_logic;
SIGNAL \keyboard|Add1~90_combout\ : std_logic;
SIGNAL \keyboard|Add1~111_combout\ : std_logic;
SIGNAL \keyboard|Add1~91\ : std_logic;
SIGNAL \keyboard|Add1~92_combout\ : std_logic;
SIGNAL \keyboard|Add1~112_combout\ : std_logic;
SIGNAL \keyboard|Equal2~3_combout\ : std_logic;
SIGNAL \keyboard|Equal2~2_combout\ : std_logic;
SIGNAL \keyboard|Add1~93\ : std_logic;
SIGNAL \keyboard|Add1~94_combout\ : std_logic;
SIGNAL \keyboard|Add1~113_combout\ : std_logic;
SIGNAL \keyboard|Add1~95\ : std_logic;
SIGNAL \keyboard|Add1~96_combout\ : std_logic;
SIGNAL \keyboard|Add1~114_combout\ : std_logic;
SIGNAL \keyboard|Add1~97\ : std_logic;
SIGNAL \keyboard|Add1~98_combout\ : std_logic;
SIGNAL \keyboard|Add1~115_combout\ : std_logic;
SIGNAL \keyboard|Add1~99\ : std_logic;
SIGNAL \keyboard|Add1~100_combout\ : std_logic;
SIGNAL \keyboard|Add1~116_combout\ : std_logic;
SIGNAL \keyboard|Add1~101\ : std_logic;
SIGNAL \keyboard|Add1~102_combout\ : std_logic;
SIGNAL \keyboard|Add1~117_combout\ : std_logic;
SIGNAL \keyboard|Add1~103\ : std_logic;
SIGNAL \keyboard|Add1~104_combout\ : std_logic;
SIGNAL \keyboard|Add1~118_combout\ : std_logic;
SIGNAL \keyboard|Add1~105\ : std_logic;
SIGNAL \keyboard|Add1~106_combout\ : std_logic;
SIGNAL \keyboard|Add1~119_combout\ : std_logic;
SIGNAL \keyboard|Equal2~5_combout\ : std_logic;
SIGNAL \keyboard|Equal2~4_combout\ : std_logic;
SIGNAL \keyboard|Equal2~6_combout\ : std_logic;
SIGNAL \keyboard|Equal2~0_combout\ : std_logic;
SIGNAL \keyboard|Equal2~8_combout\ : std_logic;
SIGNAL \keyboard|Equal2~1_combout\ : std_logic;
SIGNAL \keyboard|Equal2~9_combout\ : std_logic;
SIGNAL \keyboard|Equal2~10_combout\ : std_logic;
SIGNAL \keyboard|Add1~72_combout\ : std_logic;
SIGNAL \keyboard|Add1~74_combout\ : std_logic;
SIGNAL \keyboard|LessThan0~0_combout\ : std_logic;
SIGNAL \keyboard|LessThan0~1_combout\ : std_logic;
SIGNAL \keyboard|LessThan0~2_combout\ : std_logic;
SIGNAL \keyboard|LessThan0~3_combout\ : std_logic;
SIGNAL \keyboard|out[6]~1_combout\ : std_logic;
SIGNAL \keyboard|out~8_combout\ : std_logic;
SIGNAL \inst3|rf|R2~10_combout\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \inst3|rf|R2[4]~3_combout\ : std_logic;
SIGNAL \inst3|rf|R2[4]~11_combout\ : std_logic;
SIGNAL \inst3|rf|R0~9_combout\ : std_logic;
SIGNAL \inst3|rf|R0[2]~2_combout\ : std_logic;
SIGNAL \inst3|rf|R0[2]~3_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|rf|R1[6]~0_combout\ : std_logic;
SIGNAL \inst3|rf|R1~9_combout\ : std_logic;
SIGNAL \inst3|rf|R1[4]~2_combout\ : std_logic;
SIGNAL \inst3|rf|R1[4]~3_combout\ : std_logic;
SIGNAL \inst7|Mux8~0_combout\ : std_logic;
SIGNAL \inst7|Mux8~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|choose_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|rf|R3[4]~0_combout\ : std_logic;
SIGNAL \inst3|rf|R3~10_combout\ : std_logic;
SIGNAL \inst3|rf|R3[4]~2_combout\ : std_logic;
SIGNAL \inst3|rf|R3[4]~3_combout\ : std_logic;
SIGNAL \inst10|Mux26~0_combout\ : std_logic;
SIGNAL \inst10|status[0]~1_combout\ : std_logic;
SIGNAL \inst10|N[25]~0_combout\ : std_logic;
SIGNAL \inst3|rf|R3~9_combout\ : std_logic;
SIGNAL \inst3|rf|R1~10_combout\ : std_logic;
SIGNAL \inst3|rf|R0~10_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux12~0_combout\ : std_logic;
SIGNAL \inst7|Mux12~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~19_combout\ : std_logic;
SIGNAL \inst6|man|ans~20_combout\ : std_logic;
SIGNAL \inst6|man|ans[3]~6_combout\ : std_logic;
SIGNAL \keyboard|out~0_combout\ : std_logic;
SIGNAL \keyboard|out~2_combout\ : std_logic;
SIGNAL \inst3|rf|R2~4_combout\ : std_logic;
SIGNAL \inst3|rf|R3~4_combout\ : std_logic;
SIGNAL \inst3|rf|R0~1_combout\ : std_logic;
SIGNAL \inst7|Mux11~0_combout\ : std_logic;
SIGNAL \inst7|Mux11~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~10_combout\ : std_logic;
SIGNAL \inst6|man|ans~9_combout\ : std_logic;
SIGNAL \inst6|man|ans[4]~1_combout\ : std_logic;
SIGNAL \keyboard|out~3_combout\ : std_logic;
SIGNAL \keyboard|out~4_combout\ : std_logic;
SIGNAL \inst3|rf|R2~6_combout\ : std_logic;
SIGNAL \inst3|rf|R3~6_combout\ : std_logic;
SIGNAL \inst3|rf|R0~5_combout\ : std_logic;
SIGNAL \inst7|Mux10~0_combout\ : std_logic;
SIGNAL \inst7|Mux10~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~13_combout\ : std_logic;
SIGNAL \inst6|man|ans~14_combout\ : std_logic;
SIGNAL \inst6|man|ans[5]~3_combout\ : std_logic;
SIGNAL \keyboard|out~5_combout\ : std_logic;
SIGNAL \keyboard|out~6_combout\ : std_logic;
SIGNAL \inst3|rf|R0~7_combout\ : std_logic;
SIGNAL \inst7|Mux9~0_combout\ : std_logic;
SIGNAL \inst3|rf|R3~8_combout\ : std_logic;
SIGNAL \inst3|rf|R2~8_combout\ : std_logic;
SIGNAL \inst7|Mux9~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~17_combout\ : std_logic;
SIGNAL \inst6|man|ans~18_combout\ : std_logic;
SIGNAL \inst6|man|ans[6]~5_combout\ : std_logic;
SIGNAL \inst3|rf|R1~7_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|rf|R1~5_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|rf|R1~4_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|rf|R2~9_combout\ : std_logic;
SIGNAL \inst10|Mux22~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux30~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~1_combout\ : std_logic;
SIGNAL \inst10|Mux14~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~2_combout\ : std_logic;
SIGNAL \inst10|Mux18~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|Mux0~4_combout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|rf|R1~6_combout\ : std_logic;
SIGNAL \inst3|rf|R2~5_combout\ : std_logic;
SIGNAL \inst3|rf|R0~6_combout\ : std_logic;
SIGNAL \inst7|Mux14~0_combout\ : std_logic;
SIGNAL \inst7|Mux14~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[1]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~11_combout\ : std_logic;
SIGNAL \inst6|man|ans~12_combout\ : std_logic;
SIGNAL \inst6|man|ans[1]~2_combout\ : std_logic;
SIGNAL \inst3|rf|R1~8_combout\ : std_logic;
SIGNAL \inst3|rf|R0~8_combout\ : std_logic;
SIGNAL \inst7|Mux13~0_combout\ : std_logic;
SIGNAL \inst3|rf|R3~7_combout\ : std_logic;
SIGNAL \inst7|Mux13~1_combout\ : std_logic;
SIGNAL \inst6|mw|Y[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~15_combout\ : std_logic;
SIGNAL \inst6|man|ans~16_combout\ : std_logic;
SIGNAL \inst6|man|ans[2]~4_combout\ : std_logic;
SIGNAL \inst3|rf|R2~7_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|rf|R3~5_combout\ : std_logic;
SIGNAL \inst10|Mux32~0_combout\ : std_logic;
SIGNAL \inst10|Mux24~0_combout\ : std_logic;
SIGNAL \inst10|Mux28~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~1_combout\ : std_logic;
SIGNAL \inst10|Mux12~0_combout\ : std_logic;
SIGNAL \inst10|Mux16~0_combout\ : std_logic;
SIGNAL \inst10|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~2_combout\ : std_logic;
SIGNAL \inst10|Mux20~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|Mux2~4_combout\ : std_logic;
SIGNAL \inst10|Mux27~0_combout\ : std_logic;
SIGNAL \inst10|Mux23~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux31~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~1_combout\ : std_logic;
SIGNAL \inst10|Mux19~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst10|Mux15~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~2_combout\ : std_logic;
SIGNAL \inst10|Mux11~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|Mux1~4_combout\ : std_logic;
SIGNAL \inst3|rf|R3~1_combout\ : std_logic;
SIGNAL \inst3|rf|R2~2_combout\ : std_logic;
SIGNAL \inst3|rf|R0~4_combout\ : std_logic;
SIGNAL \inst7|Mux15~0_combout\ : std_logic;
SIGNAL \inst7|Mux15~1_combout\ : std_logic;
SIGNAL \inst7|Mux7~0_combout\ : std_logic;
SIGNAL \inst7|Mux7~1_combout\ : std_logic;
SIGNAL \inst6|mw|X[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|man|ans~8_combout\ : std_logic;
SIGNAL \inst6|man|ans~7_combout\ : std_logic;
SIGNAL \inst6|man|ans[0]~0_combout\ : std_logic;
SIGNAL \inst3|rf|R1~1_combout\ : std_logic;
SIGNAL \inst10|Mux17~0_combout\ : std_logic;
SIGNAL \inst10|Mux21~0_combout\ : std_logic;
SIGNAL \inst10|Mux13~0_combout\ : std_logic;
SIGNAL \inst10|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|Mux3~3_combout\ : std_logic;
SIGNAL \inst10|Mux33~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux29~0_combout\ : std_logic;
SIGNAL \inst10|Mux25~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~0_combout\ : std_logic;
SIGNAL \inst2|WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keyboard|KEY_C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|pf|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|N\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|mw|Y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|srom|rom_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \keyboard|num\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst4|choose_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|pf|cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst3|rf|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|rf|R0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \keyboard|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|rf|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|man|ans\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst7|opt1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|S\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \keyboard|count_num\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst7|opt2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|status\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|res_dest\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|mw|X\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|rf|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \keyboard|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|pf|ALT_INV_en_counter~q\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

codeout <= ww_codeout;
ww_clk <= clk;
ww_cin <= cin;
ww_wr <= wr;
ww_rd <= rd;
ww_pc_clr <= pc_clr;
ww_manual_plus <= manual_plus;
ww_enact <= enact;
ww_key_clr <= key_clr;
ww_key_r <= key_r;
ww_M <= M;
ww_RA <= RA;
ww_switch_buttons <= switch_buttons;
key_c <= ww_key_c;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst3|pf|PC\(7) & \inst3|pf|PC\(6) & \inst3|pf|PC\(5) & \inst3|pf|PC\(4) & \inst3|pf|PC\(3) & \inst3|pf|PC\(2) & \inst3|pf|PC\(1) & \inst3|pf|PC\(0));

\inst|srom|rom_block|auto_generated|q_a\(0) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|srom|rom_block|auto_generated|q_a\(1) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|srom|rom_block|auto_generated|q_a\(2) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|srom|rom_block|auto_generated|q_a\(3) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|srom|rom_block|auto_generated|q_a\(4) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|srom|rom_block|auto_generated|q_a\(5) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|srom|rom_block|auto_generated|q_a\(6) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|srom|rom_block|auto_generated|q_a\(7) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst|srom|rom_block|auto_generated|q_a\(8) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst|srom|rom_block|auto_generated|q_a\(9) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst|srom|rom_block|auto_generated|q_a\(10) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst|srom|rom_block|auto_generated|q_a\(11) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst|srom|rom_block|auto_generated|q_a\(12) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst|srom|rom_block|auto_generated|q_a\(13) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst|srom|rom_block|auto_generated|q_a\(14) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst|srom|rom_block|auto_generated|q_a\(15) <= \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst3|pf|key_flag~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|pf|key_flag~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst3|pf|ALT_INV_en_counter~q\ <= NOT \inst3|pf|en_counter~q\;
\inst2|ALT_INV_WideOr6~0_combout\ <= NOT \inst2|WideOr6~0_combout\;
\inst2|ALT_INV_WideOr5~0_combout\ <= NOT \inst2|WideOr5~0_combout\;
\inst2|ALT_INV_WideOr4~0_combout\ <= NOT \inst2|WideOr4~0_combout\;
\inst2|ALT_INV_WideOr3~0_combout\ <= NOT \inst2|WideOr3~0_combout\;
\inst2|ALT_INV_WideOr2~0_combout\ <= NOT \inst2|WideOr2~0_combout\;
\inst2|ALT_INV_WideOr1~0_combout\ <= NOT \inst2|WideOr1~0_combout\;

-- Location: IOOBUF_X67_Y35_N2
\codeout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[7]~output_o\);

-- Location: IOOBUF_X11_Y43_N16
\codeout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \codeout[6]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\codeout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \codeout[5]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\codeout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \codeout[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\codeout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \codeout[3]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\codeout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \codeout[2]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\codeout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \codeout[1]~output_o\);

-- Location: IOOBUF_X43_Y43_N30
\codeout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \codeout[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\key_c[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keyboard|KEY_C\(3),
	devoe => ww_devoe,
	o => \key_c[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\key_c[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keyboard|KEY_C\(2),
	devoe => ww_devoe,
	o => \key_c[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\key_c[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keyboard|KEY_C\(1),
	devoe => ww_devoe,
	o => \key_c[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\key_c[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keyboard|KEY_C\(0),
	devoe => ww_devoe,
	o => \key_c[0]~output_o\);

-- Location: IOOBUF_X5_Y43_N16
\sel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sel\(2),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X65_Y43_N16
\sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sel\(1),
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X56_Y43_N30
\sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sel\(0),
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

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

-- Location: LCCOMB_X27_Y27_N30
\inst2|sel[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|sel[0]~2_combout\ = !\inst2|sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|sel\(0),
	combout => \inst2|sel[0]~2_combout\);

-- Location: FF_X27_Y27_N31
\inst2|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sel[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sel\(0));

-- Location: LCCOMB_X27_Y27_N24
\inst2|sel[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|sel[1]~1_combout\ = \inst2|sel\(0) $ (\inst2|sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sel\(0),
	datac => \inst2|sel\(1),
	combout => \inst2|sel[1]~1_combout\);

-- Location: FF_X27_Y27_N25
\inst2|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sel[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sel\(1));

-- Location: LCCOMB_X27_Y27_N2
\inst2|sel[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|sel[2]~0_combout\ = \inst2|sel\(2) $ (((\inst2|sel\(0) & \inst2|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sel\(0),
	datac => \inst2|sel\(2),
	datad => \inst2|sel\(1),
	combout => \inst2|sel[2]~0_combout\);

-- Location: FF_X27_Y27_N3
\inst2|sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|sel[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sel\(2));

-- Location: IOIBUF_X67_Y22_N15
\switch_buttons[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_buttons(0),
	o => \switch_buttons[0]~input_o\);

-- Location: IOIBUF_X67_Y22_N22
\switch_buttons[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_buttons(1),
	o => \switch_buttons[1]~input_o\);

-- Location: LCCOMB_X33_Y26_N0
\inst10|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = (\switch_buttons[0]~input_o\ & !\switch_buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_buttons[0]~input_o\,
	datad => \switch_buttons[1]~input_o\,
	combout => \inst10|Mux1~0_combout\);

-- Location: IOIBUF_X67_Y22_N8
\switch_buttons[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_buttons(2),
	o => \switch_buttons[2]~input_o\);

-- Location: LCCOMB_X33_Y26_N8
\inst10|status[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|status[0]~0_combout\ = ((!\switch_buttons[1]~input_o\) # (!\switch_buttons[2]~input_o\)) # (!\switch_buttons[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch_buttons[0]~input_o\,
	datac => \switch_buttons[2]~input_o\,
	datad => \switch_buttons[1]~input_o\,
	combout => \inst10|status[0]~0_combout\);

-- Location: FF_X33_Y26_N1
\inst10|status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux1~0_combout\,
	ena => \inst10|status[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|status\(0));

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

-- Location: LCCOMB_X28_Y27_N22
\inst3|rf|R0[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0[2]~0_combout\ = (\rd~input_o\ & !\wr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd~input_o\,
	datad => \wr~input_o\,
	combout => \inst3|rf|R0[2]~0_combout\);

-- Location: IOIBUF_X29_Y0_N22
\enact~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enact,
	o => \enact~input_o\);

-- Location: LCCOMB_X33_Y2_N12
\inst3|pf|cnt[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[0]~20_combout\ = \inst3|pf|cnt\(0) $ (VCC)
-- \inst3|pf|cnt[0]~21\ = CARRY(\inst3|pf|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(0),
	datad => VCC,
	combout => \inst3|pf|cnt[0]~20_combout\,
	cout => \inst3|pf|cnt[0]~21\);

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

-- Location: LCCOMB_X34_Y1_N26
\inst3|pf|key_tmp0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|key_tmp0~0_combout\ = !\manual_plus~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \manual_plus~input_o\,
	combout => \inst3|pf|key_tmp0~0_combout\);

-- Location: FF_X34_Y1_N27
\inst3|pf|key_tmp0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|key_tmp0~0_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|key_tmp0~q\);

-- Location: FF_X34_Y1_N5
\inst3|pf|key_tmp1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst3|pf|key_tmp0~q\,
	clrn => \pc_clr~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|key_tmp1~q\);

-- Location: LCCOMB_X34_Y1_N18
\inst3|pf|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector3~2_combout\ = (!\inst3|pf|cnt_full~q\ & (\inst3|pf|state.S2~q\ & ((\inst3|pf|key_tmp0~q\) # (!\inst3|pf|key_tmp1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt_full~q\,
	datab => \inst3|pf|key_tmp1~q\,
	datac => \inst3|pf|key_tmp0~q\,
	datad => \inst3|pf|state.S2~q\,
	combout => \inst3|pf|Selector3~2_combout\);

-- Location: LCCOMB_X34_Y1_N24
\inst3|pf|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector3~3_combout\ = (\inst3|pf|Selector3~2_combout\) # ((\inst3|pf|key_tmp0~q\ & (!\inst3|pf|key_tmp1~q\ & !\inst3|pf|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|key_tmp0~q\,
	datab => \inst3|pf|key_tmp1~q\,
	datac => \inst3|pf|state.S1~q\,
	datad => \inst3|pf|Selector3~2_combout\,
	combout => \inst3|pf|Selector3~3_combout\);

-- Location: FF_X34_Y1_N25
\inst3|pf|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|Selector3~3_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|state.S2~q\);

-- Location: LCCOMB_X34_Y1_N30
\inst3|pf|pedge\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|pedge~combout\ = (\inst3|pf|key_tmp0~q\) # (!\inst3|pf|key_tmp1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|key_tmp0~q\,
	datac => \inst3|pf|key_tmp1~q\,
	combout => \inst3|pf|pedge~combout\);

-- Location: LCCOMB_X34_Y1_N0
\inst3|pf|nedge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|nedge~0_combout\ = (\inst3|pf|key_tmp0~q\ & !\inst3|pf|key_tmp1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|key_tmp0~q\,
	datac => \inst3|pf|key_tmp1~q\,
	combout => \inst3|pf|nedge~0_combout\);

-- Location: LCCOMB_X34_Y1_N28
\inst3|pf|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector2~0_combout\ = (\inst3|pf|state.S4~q\ & ((\inst3|pf|cnt_full~q\) # ((!\inst3|pf|nedge~0_combout\ & !\inst3|pf|state.S1~q\)))) # (!\inst3|pf|state.S4~q\ & (!\inst3|pf|nedge~0_combout\ & (!\inst3|pf|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|state.S4~q\,
	datab => \inst3|pf|nedge~0_combout\,
	datac => \inst3|pf|state.S1~q\,
	datad => \inst3|pf|cnt_full~q\,
	combout => \inst3|pf|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y1_N22
\inst3|pf|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector2~1_combout\ = (!\inst3|pf|Selector2~0_combout\ & ((\inst3|pf|cnt_full~q\) # ((\inst3|pf|pedge~combout\) # (!\inst3|pf|state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt_full~q\,
	datab => \inst3|pf|state.S2~q\,
	datac => \inst3|pf|pedge~combout\,
	datad => \inst3|pf|Selector2~0_combout\,
	combout => \inst3|pf|Selector2~1_combout\);

-- Location: FF_X34_Y1_N23
\inst3|pf|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|Selector2~1_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|state.S1~q\);

-- Location: LCCOMB_X34_Y1_N10
\inst3|pf|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector4~0_combout\ = (\inst3|pf|cnt_full~q\ & ((\inst3|pf|state.S2~q\) # ((\inst3|pf|state.S3~q\ & \inst3|pf|pedge~combout\)))) # (!\inst3|pf|cnt_full~q\ & (\inst3|pf|state.S3~q\ & (\inst3|pf|pedge~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt_full~q\,
	datab => \inst3|pf|state.S3~q\,
	datac => \inst3|pf|pedge~combout\,
	datad => \inst3|pf|state.S2~q\,
	combout => \inst3|pf|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y1_N20
\inst3|pf|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector4~1_combout\ = (\inst3|pf|Selector4~0_combout\) # ((!\inst3|pf|cnt_full~q\ & (\inst3|pf|nedge~0_combout\ & \inst3|pf|state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt_full~q\,
	datab => \inst3|pf|nedge~0_combout\,
	datac => \inst3|pf|state.S4~q\,
	datad => \inst3|pf|Selector4~0_combout\,
	combout => \inst3|pf|Selector4~1_combout\);

-- Location: FF_X34_Y1_N21
\inst3|pf|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|Selector4~1_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|state.S3~q\);

-- Location: LCCOMB_X34_Y1_N14
\inst3|pf|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector5~0_combout\ = (!\inst3|pf|key_tmp0~q\ & (\inst3|pf|key_tmp1~q\ & \inst3|pf|state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|key_tmp0~q\,
	datac => \inst3|pf|key_tmp1~q\,
	datad => \inst3|pf|state.S3~q\,
	combout => \inst3|pf|Selector5~0_combout\);

-- Location: LCCOMB_X34_Y1_N4
\inst3|pf|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector1~0_combout\ = (\inst3|pf|state.S4~q\ & (((\inst3|pf|key_tmp1~q\) # (\inst3|pf|cnt_full~q\)) # (!\inst3|pf|key_tmp0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|key_tmp0~q\,
	datab => \inst3|pf|state.S4~q\,
	datac => \inst3|pf|key_tmp1~q\,
	datad => \inst3|pf|cnt_full~q\,
	combout => \inst3|pf|Selector1~0_combout\);

-- Location: LCCOMB_X34_Y1_N16
\inst3|pf|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector1~1_combout\ = (\inst3|pf|en_counter~q\ & ((\inst3|pf|Selector1~0_combout\) # ((\inst3|pf|state.S3~q\) # (\inst3|pf|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|Selector1~0_combout\,
	datab => \inst3|pf|state.S3~q\,
	datac => \inst3|pf|en_counter~q\,
	datad => \inst3|pf|Selector3~2_combout\,
	combout => \inst3|pf|Selector1~1_combout\);

-- Location: LCCOMB_X34_Y1_N8
\inst3|pf|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector1~2_combout\ = (\inst3|pf|Selector5~0_combout\) # ((\inst3|pf|Selector1~1_combout\) # ((!\inst3|pf|state.S1~q\ & \inst3|pf|nedge~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|state.S1~q\,
	datab => \inst3|pf|nedge~0_combout\,
	datac => \inst3|pf|Selector5~0_combout\,
	datad => \inst3|pf|Selector1~1_combout\,
	combout => \inst3|pf|Selector1~2_combout\);

-- Location: FF_X34_Y1_N9
\inst3|pf|en_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|Selector1~2_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|en_counter~q\);

-- Location: FF_X33_Y2_N13
\inst3|pf|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[0]~20_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(0));

-- Location: LCCOMB_X33_Y2_N14
\inst3|pf|cnt[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[1]~22_combout\ = (\inst3|pf|cnt\(1) & (!\inst3|pf|cnt[0]~21\)) # (!\inst3|pf|cnt\(1) & ((\inst3|pf|cnt[0]~21\) # (GND)))
-- \inst3|pf|cnt[1]~23\ = CARRY((!\inst3|pf|cnt[0]~21\) # (!\inst3|pf|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(1),
	datad => VCC,
	cin => \inst3|pf|cnt[0]~21\,
	combout => \inst3|pf|cnt[1]~22_combout\,
	cout => \inst3|pf|cnt[1]~23\);

-- Location: FF_X33_Y2_N15
\inst3|pf|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[1]~22_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(1));

-- Location: LCCOMB_X33_Y2_N16
\inst3|pf|cnt[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[2]~24_combout\ = (\inst3|pf|cnt\(2) & (\inst3|pf|cnt[1]~23\ $ (GND))) # (!\inst3|pf|cnt\(2) & (!\inst3|pf|cnt[1]~23\ & VCC))
-- \inst3|pf|cnt[2]~25\ = CARRY((\inst3|pf|cnt\(2) & !\inst3|pf|cnt[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(2),
	datad => VCC,
	cin => \inst3|pf|cnt[1]~23\,
	combout => \inst3|pf|cnt[2]~24_combout\,
	cout => \inst3|pf|cnt[2]~25\);

-- Location: FF_X33_Y2_N17
\inst3|pf|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[2]~24_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(2));

-- Location: LCCOMB_X33_Y2_N18
\inst3|pf|cnt[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[3]~26_combout\ = (\inst3|pf|cnt\(3) & (!\inst3|pf|cnt[2]~25\)) # (!\inst3|pf|cnt\(3) & ((\inst3|pf|cnt[2]~25\) # (GND)))
-- \inst3|pf|cnt[3]~27\ = CARRY((!\inst3|pf|cnt[2]~25\) # (!\inst3|pf|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(3),
	datad => VCC,
	cin => \inst3|pf|cnt[2]~25\,
	combout => \inst3|pf|cnt[3]~26_combout\,
	cout => \inst3|pf|cnt[3]~27\);

-- Location: FF_X33_Y2_N19
\inst3|pf|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[3]~26_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(3));

-- Location: LCCOMB_X33_Y2_N4
\inst3|pf|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~1_combout\ = (!\inst3|pf|cnt\(0) & !\inst3|pf|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(0),
	datac => \inst3|pf|cnt\(1),
	combout => \inst3|pf|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y2_N20
\inst3|pf|cnt[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[4]~28_combout\ = (\inst3|pf|cnt\(4) & (\inst3|pf|cnt[3]~27\ $ (GND))) # (!\inst3|pf|cnt\(4) & (!\inst3|pf|cnt[3]~27\ & VCC))
-- \inst3|pf|cnt[4]~29\ = CARRY((\inst3|pf|cnt\(4) & !\inst3|pf|cnt[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(4),
	datad => VCC,
	cin => \inst3|pf|cnt[3]~27\,
	combout => \inst3|pf|cnt[4]~28_combout\,
	cout => \inst3|pf|cnt[4]~29\);

-- Location: FF_X33_Y2_N21
\inst3|pf|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[4]~28_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(4));

-- Location: LCCOMB_X33_Y2_N22
\inst3|pf|cnt[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[5]~30_combout\ = (\inst3|pf|cnt\(5) & (!\inst3|pf|cnt[4]~29\)) # (!\inst3|pf|cnt\(5) & ((\inst3|pf|cnt[4]~29\) # (GND)))
-- \inst3|pf|cnt[5]~31\ = CARRY((!\inst3|pf|cnt[4]~29\) # (!\inst3|pf|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(5),
	datad => VCC,
	cin => \inst3|pf|cnt[4]~29\,
	combout => \inst3|pf|cnt[5]~30_combout\,
	cout => \inst3|pf|cnt[5]~31\);

-- Location: FF_X33_Y2_N23
\inst3|pf|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[5]~30_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(5));

-- Location: LCCOMB_X33_Y2_N24
\inst3|pf|cnt[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[6]~32_combout\ = (\inst3|pf|cnt\(6) & (\inst3|pf|cnt[5]~31\ $ (GND))) # (!\inst3|pf|cnt\(6) & (!\inst3|pf|cnt[5]~31\ & VCC))
-- \inst3|pf|cnt[6]~33\ = CARRY((\inst3|pf|cnt\(6) & !\inst3|pf|cnt[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(6),
	datad => VCC,
	cin => \inst3|pf|cnt[5]~31\,
	combout => \inst3|pf|cnt[6]~32_combout\,
	cout => \inst3|pf|cnt[6]~33\);

-- Location: FF_X33_Y2_N25
\inst3|pf|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[6]~32_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(6));

-- Location: LCCOMB_X33_Y2_N26
\inst3|pf|cnt[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[7]~34_combout\ = (\inst3|pf|cnt\(7) & (!\inst3|pf|cnt[6]~33\)) # (!\inst3|pf|cnt\(7) & ((\inst3|pf|cnt[6]~33\) # (GND)))
-- \inst3|pf|cnt[7]~35\ = CARRY((!\inst3|pf|cnt[6]~33\) # (!\inst3|pf|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(7),
	datad => VCC,
	cin => \inst3|pf|cnt[6]~33\,
	combout => \inst3|pf|cnt[7]~34_combout\,
	cout => \inst3|pf|cnt[7]~35\);

-- Location: FF_X33_Y2_N27
\inst3|pf|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[7]~34_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(7));

-- Location: LCCOMB_X33_Y2_N2
\inst3|pf|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~2_combout\ = (!\inst3|pf|cnt\(5) & (\inst3|pf|cnt\(4) & (!\inst3|pf|cnt\(7) & !\inst3|pf|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(5),
	datab => \inst3|pf|cnt\(4),
	datac => \inst3|pf|cnt\(7),
	datad => \inst3|pf|cnt\(6),
	combout => \inst3|pf|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y2_N8
\inst3|pf|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~3_combout\ = (!\inst3|pf|cnt\(2) & (!\inst3|pf|cnt\(3) & (\inst3|pf|Equal0~1_combout\ & \inst3|pf|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(2),
	datab => \inst3|pf|cnt\(3),
	datac => \inst3|pf|Equal0~1_combout\,
	datad => \inst3|pf|Equal0~2_combout\,
	combout => \inst3|pf|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y2_N28
\inst3|pf|cnt[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[8]~36_combout\ = (\inst3|pf|cnt\(8) & (\inst3|pf|cnt[7]~35\ $ (GND))) # (!\inst3|pf|cnt\(8) & (!\inst3|pf|cnt[7]~35\ & VCC))
-- \inst3|pf|cnt[8]~37\ = CARRY((\inst3|pf|cnt\(8) & !\inst3|pf|cnt[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(8),
	datad => VCC,
	cin => \inst3|pf|cnt[7]~35\,
	combout => \inst3|pf|cnt[8]~36_combout\,
	cout => \inst3|pf|cnt[8]~37\);

-- Location: FF_X33_Y2_N29
\inst3|pf|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[8]~36_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(8));

-- Location: LCCOMB_X33_Y2_N30
\inst3|pf|cnt[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[9]~38_combout\ = (\inst3|pf|cnt\(9) & (!\inst3|pf|cnt[8]~37\)) # (!\inst3|pf|cnt\(9) & ((\inst3|pf|cnt[8]~37\) # (GND)))
-- \inst3|pf|cnt[9]~39\ = CARRY((!\inst3|pf|cnt[8]~37\) # (!\inst3|pf|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(9),
	datad => VCC,
	cin => \inst3|pf|cnt[8]~37\,
	combout => \inst3|pf|cnt[9]~38_combout\,
	cout => \inst3|pf|cnt[9]~39\);

-- Location: FF_X33_Y2_N31
\inst3|pf|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[9]~38_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(9));

-- Location: LCCOMB_X33_Y1_N0
\inst3|pf|cnt[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[10]~40_combout\ = (\inst3|pf|cnt\(10) & (\inst3|pf|cnt[9]~39\ $ (GND))) # (!\inst3|pf|cnt\(10) & (!\inst3|pf|cnt[9]~39\ & VCC))
-- \inst3|pf|cnt[10]~41\ = CARRY((\inst3|pf|cnt\(10) & !\inst3|pf|cnt[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(10),
	datad => VCC,
	cin => \inst3|pf|cnt[9]~39\,
	combout => \inst3|pf|cnt[10]~40_combout\,
	cout => \inst3|pf|cnt[10]~41\);

-- Location: FF_X33_Y1_N1
\inst3|pf|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[10]~40_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(10));

-- Location: LCCOMB_X33_Y1_N2
\inst3|pf|cnt[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[11]~42_combout\ = (\inst3|pf|cnt\(11) & (!\inst3|pf|cnt[10]~41\)) # (!\inst3|pf|cnt\(11) & ((\inst3|pf|cnt[10]~41\) # (GND)))
-- \inst3|pf|cnt[11]~43\ = CARRY((!\inst3|pf|cnt[10]~41\) # (!\inst3|pf|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(11),
	datad => VCC,
	cin => \inst3|pf|cnt[10]~41\,
	combout => \inst3|pf|cnt[11]~42_combout\,
	cout => \inst3|pf|cnt[11]~43\);

-- Location: FF_X33_Y1_N3
\inst3|pf|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[11]~42_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(11));

-- Location: LCCOMB_X33_Y1_N4
\inst3|pf|cnt[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[12]~44_combout\ = (\inst3|pf|cnt\(12) & (\inst3|pf|cnt[11]~43\ $ (GND))) # (!\inst3|pf|cnt\(12) & (!\inst3|pf|cnt[11]~43\ & VCC))
-- \inst3|pf|cnt[12]~45\ = CARRY((\inst3|pf|cnt\(12) & !\inst3|pf|cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(12),
	datad => VCC,
	cin => \inst3|pf|cnt[11]~43\,
	combout => \inst3|pf|cnt[12]~44_combout\,
	cout => \inst3|pf|cnt[12]~45\);

-- Location: FF_X33_Y1_N5
\inst3|pf|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[12]~44_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(12));

-- Location: LCCOMB_X33_Y1_N6
\inst3|pf|cnt[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[13]~46_combout\ = (\inst3|pf|cnt\(13) & (!\inst3|pf|cnt[12]~45\)) # (!\inst3|pf|cnt\(13) & ((\inst3|pf|cnt[12]~45\) # (GND)))
-- \inst3|pf|cnt[13]~47\ = CARRY((!\inst3|pf|cnt[12]~45\) # (!\inst3|pf|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(13),
	datad => VCC,
	cin => \inst3|pf|cnt[12]~45\,
	combout => \inst3|pf|cnt[13]~46_combout\,
	cout => \inst3|pf|cnt[13]~47\);

-- Location: FF_X33_Y1_N7
\inst3|pf|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[13]~46_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(13));

-- Location: LCCOMB_X33_Y1_N8
\inst3|pf|cnt[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[14]~48_combout\ = (\inst3|pf|cnt\(14) & (\inst3|pf|cnt[13]~47\ $ (GND))) # (!\inst3|pf|cnt\(14) & (!\inst3|pf|cnt[13]~47\ & VCC))
-- \inst3|pf|cnt[14]~49\ = CARRY((\inst3|pf|cnt\(14) & !\inst3|pf|cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(14),
	datad => VCC,
	cin => \inst3|pf|cnt[13]~47\,
	combout => \inst3|pf|cnt[14]~48_combout\,
	cout => \inst3|pf|cnt[14]~49\);

-- Location: FF_X33_Y1_N9
\inst3|pf|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[14]~48_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(14));

-- Location: LCCOMB_X33_Y1_N10
\inst3|pf|cnt[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[15]~50_combout\ = (\inst3|pf|cnt\(15) & (!\inst3|pf|cnt[14]~49\)) # (!\inst3|pf|cnt\(15) & ((\inst3|pf|cnt[14]~49\) # (GND)))
-- \inst3|pf|cnt[15]~51\ = CARRY((!\inst3|pf|cnt[14]~49\) # (!\inst3|pf|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(15),
	datad => VCC,
	cin => \inst3|pf|cnt[14]~49\,
	combout => \inst3|pf|cnt[15]~50_combout\,
	cout => \inst3|pf|cnt[15]~51\);

-- Location: FF_X33_Y1_N11
\inst3|pf|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[15]~50_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(15));

-- Location: LCCOMB_X33_Y1_N12
\inst3|pf|cnt[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[16]~52_combout\ = (\inst3|pf|cnt\(16) & (\inst3|pf|cnt[15]~51\ $ (GND))) # (!\inst3|pf|cnt\(16) & (!\inst3|pf|cnt[15]~51\ & VCC))
-- \inst3|pf|cnt[16]~53\ = CARRY((\inst3|pf|cnt\(16) & !\inst3|pf|cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(16),
	datad => VCC,
	cin => \inst3|pf|cnt[15]~51\,
	combout => \inst3|pf|cnt[16]~52_combout\,
	cout => \inst3|pf|cnt[16]~53\);

-- Location: FF_X33_Y1_N13
\inst3|pf|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[16]~52_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(16));

-- Location: LCCOMB_X33_Y1_N14
\inst3|pf|cnt[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[17]~54_combout\ = (\inst3|pf|cnt\(17) & (!\inst3|pf|cnt[16]~53\)) # (!\inst3|pf|cnt\(17) & ((\inst3|pf|cnt[16]~53\) # (GND)))
-- \inst3|pf|cnt[17]~55\ = CARRY((!\inst3|pf|cnt[16]~53\) # (!\inst3|pf|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(17),
	datad => VCC,
	cin => \inst3|pf|cnt[16]~53\,
	combout => \inst3|pf|cnt[17]~54_combout\,
	cout => \inst3|pf|cnt[17]~55\);

-- Location: FF_X33_Y1_N15
\inst3|pf|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[17]~54_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(17));

-- Location: LCCOMB_X33_Y1_N16
\inst3|pf|cnt[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[18]~56_combout\ = (\inst3|pf|cnt\(18) & (\inst3|pf|cnt[17]~55\ $ (GND))) # (!\inst3|pf|cnt\(18) & (!\inst3|pf|cnt[17]~55\ & VCC))
-- \inst3|pf|cnt[18]~57\ = CARRY((\inst3|pf|cnt\(18) & !\inst3|pf|cnt[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|cnt\(18),
	datad => VCC,
	cin => \inst3|pf|cnt[17]~55\,
	combout => \inst3|pf|cnt[18]~56_combout\,
	cout => \inst3|pf|cnt[18]~57\);

-- Location: FF_X33_Y1_N17
\inst3|pf|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[18]~56_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(18));

-- Location: LCCOMB_X33_Y1_N18
\inst3|pf|cnt[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|cnt[19]~58_combout\ = \inst3|pf|cnt[18]~57\ $ (\inst3|pf|cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|pf|cnt\(19),
	cin => \inst3|pf|cnt[18]~57\,
	combout => \inst3|pf|cnt[19]~58_combout\);

-- Location: FF_X33_Y1_N19
\inst3|pf|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|cnt[19]~58_combout\,
	clrn => \pc_clr~input_o\,
	sclr => \inst3|pf|ALT_INV_en_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt\(19));

-- Location: LCCOMB_X33_Y1_N24
\inst3|pf|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~0_combout\ = (!\inst3|pf|cnt\(16) & (!\inst3|pf|cnt\(18) & (!\inst3|pf|cnt\(17) & !\inst3|pf|cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(16),
	datab => \inst3|pf|cnt\(18),
	datac => \inst3|pf|cnt\(17),
	datad => \inst3|pf|cnt\(19),
	combout => \inst3|pf|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y1_N26
\inst3|pf|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~4_combout\ = (\inst3|pf|cnt\(8) & (!\inst3|pf|cnt\(11) & (\inst3|pf|cnt\(9) & \inst3|pf|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(8),
	datab => \inst3|pf|cnt\(11),
	datac => \inst3|pf|cnt\(9),
	datad => \inst3|pf|cnt\(10),
	combout => \inst3|pf|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y1_N28
\inst3|pf|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~5_combout\ = (!\inst3|pf|cnt\(15) & (!\inst3|pf|cnt\(12) & (!\inst3|pf|cnt\(14) & \inst3|pf|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt\(15),
	datab => \inst3|pf|cnt\(12),
	datac => \inst3|pf|cnt\(14),
	datad => \inst3|pf|cnt\(13),
	combout => \inst3|pf|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y1_N6
\inst3|pf|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Equal0~6_combout\ = (\inst3|pf|Equal0~3_combout\ & (\inst3|pf|Equal0~0_combout\ & (\inst3|pf|Equal0~4_combout\ & \inst3|pf|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|Equal0~3_combout\,
	datab => \inst3|pf|Equal0~0_combout\,
	datac => \inst3|pf|Equal0~4_combout\,
	datad => \inst3|pf|Equal0~5_combout\,
	combout => \inst3|pf|Equal0~6_combout\);

-- Location: FF_X34_Y1_N7
\inst3|pf|cnt_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|Equal0~6_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|cnt_full~q\);

-- Location: LCCOMB_X34_Y1_N12
\inst3|pf|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector5~1_combout\ = (\inst3|pf|Selector5~0_combout\) # ((!\inst3|pf|cnt_full~q\ & (\inst3|pf|state.S4~q\ & !\inst3|pf|nedge~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|cnt_full~q\,
	datab => \inst3|pf|Selector5~0_combout\,
	datac => \inst3|pf|state.S4~q\,
	datad => \inst3|pf|nedge~0_combout\,
	combout => \inst3|pf|Selector5~1_combout\);

-- Location: FF_X34_Y1_N13
\inst3|pf|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|Selector5~1_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|state.S4~q\);

-- Location: LCCOMB_X35_Y1_N6
\inst3|pf|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|Selector0~0_combout\ = (\inst3|pf|key_flag~q\ & ((\inst3|pf|state.S4~q\) # ((\inst3|pf|state.S2~q\)))) # (!\inst3|pf|key_flag~q\ & (((\inst3|pf|cnt_full~q\ & \inst3|pf|state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|state.S4~q\,
	datab => \inst3|pf|cnt_full~q\,
	datac => \inst3|pf|key_flag~q\,
	datad => \inst3|pf|state.S2~q\,
	combout => \inst3|pf|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y1_N0
\inst3|pf|key_flag~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|key_flag~feeder_combout\ = \inst3|pf|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|pf|Selector0~0_combout\,
	combout => \inst3|pf|key_flag~feeder_combout\);

-- Location: FF_X35_Y1_N1
\inst3|pf|key_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|pf|key_flag~feeder_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|key_flag~q\);

-- Location: CLKCTRL_G17
\inst3|pf|key_flag~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|pf|key_flag~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|pf|key_flag~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y26_N2
\inst3|pf|PC[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[0]~21_combout\ = !\inst3|pf|PC\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|pf|PC\(0),
	combout => \inst3|pf|PC[0]~21_combout\);

-- Location: FF_X25_Y26_N3
\inst3|pf|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[0]~21_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(0));

-- Location: LCCOMB_X25_Y26_N12
\inst3|pf|PC[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[1]~7_combout\ = (\inst3|pf|PC\(1) & (\inst3|pf|PC\(0) $ (VCC))) # (!\inst3|pf|PC\(1) & (\inst3|pf|PC\(0) & VCC))
-- \inst3|pf|PC[1]~8\ = CARRY((\inst3|pf|PC\(1) & \inst3|pf|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|PC\(1),
	datab => \inst3|pf|PC\(0),
	datad => VCC,
	combout => \inst3|pf|PC[1]~7_combout\,
	cout => \inst3|pf|PC[1]~8\);

-- Location: FF_X25_Y26_N13
\inst3|pf|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[1]~7_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(1));

-- Location: LCCOMB_X25_Y26_N14
\inst3|pf|PC[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[2]~9_combout\ = (\inst3|pf|PC\(2) & (!\inst3|pf|PC[1]~8\)) # (!\inst3|pf|PC\(2) & ((\inst3|pf|PC[1]~8\) # (GND)))
-- \inst3|pf|PC[2]~10\ = CARRY((!\inst3|pf|PC[1]~8\) # (!\inst3|pf|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|PC\(2),
	datad => VCC,
	cin => \inst3|pf|PC[1]~8\,
	combout => \inst3|pf|PC[2]~9_combout\,
	cout => \inst3|pf|PC[2]~10\);

-- Location: FF_X25_Y26_N15
\inst3|pf|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[2]~9_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(2));

-- Location: LCCOMB_X25_Y26_N16
\inst3|pf|PC[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[3]~11_combout\ = (\inst3|pf|PC\(3) & (\inst3|pf|PC[2]~10\ $ (GND))) # (!\inst3|pf|PC\(3) & (!\inst3|pf|PC[2]~10\ & VCC))
-- \inst3|pf|PC[3]~12\ = CARRY((\inst3|pf|PC\(3) & !\inst3|pf|PC[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|PC\(3),
	datad => VCC,
	cin => \inst3|pf|PC[2]~10\,
	combout => \inst3|pf|PC[3]~11_combout\,
	cout => \inst3|pf|PC[3]~12\);

-- Location: FF_X25_Y26_N17
\inst3|pf|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[3]~11_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(3));

-- Location: LCCOMB_X25_Y26_N18
\inst3|pf|PC[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[4]~13_combout\ = (\inst3|pf|PC\(4) & (!\inst3|pf|PC[3]~12\)) # (!\inst3|pf|PC\(4) & ((\inst3|pf|PC[3]~12\) # (GND)))
-- \inst3|pf|PC[4]~14\ = CARRY((!\inst3|pf|PC[3]~12\) # (!\inst3|pf|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|PC\(4),
	datad => VCC,
	cin => \inst3|pf|PC[3]~12\,
	combout => \inst3|pf|PC[4]~13_combout\,
	cout => \inst3|pf|PC[4]~14\);

-- Location: FF_X25_Y26_N19
\inst3|pf|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[4]~13_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(4));

-- Location: LCCOMB_X25_Y26_N20
\inst3|pf|PC[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[5]~15_combout\ = (\inst3|pf|PC\(5) & (\inst3|pf|PC[4]~14\ $ (GND))) # (!\inst3|pf|PC\(5) & (!\inst3|pf|PC[4]~14\ & VCC))
-- \inst3|pf|PC[5]~16\ = CARRY((\inst3|pf|PC\(5) & !\inst3|pf|PC[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|pf|PC\(5),
	datad => VCC,
	cin => \inst3|pf|PC[4]~14\,
	combout => \inst3|pf|PC[5]~15_combout\,
	cout => \inst3|pf|PC[5]~16\);

-- Location: FF_X25_Y26_N21
\inst3|pf|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[5]~15_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(5));

-- Location: LCCOMB_X25_Y26_N22
\inst3|pf|PC[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[6]~17_combout\ = (\inst3|pf|PC\(6) & (!\inst3|pf|PC[5]~16\)) # (!\inst3|pf|PC\(6) & ((\inst3|pf|PC[5]~16\) # (GND)))
-- \inst3|pf|PC[6]~18\ = CARRY((!\inst3|pf|PC[5]~16\) # (!\inst3|pf|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|PC\(6),
	datad => VCC,
	cin => \inst3|pf|PC[5]~16\,
	combout => \inst3|pf|PC[6]~17_combout\,
	cout => \inst3|pf|PC[6]~18\);

-- Location: FF_X25_Y26_N23
\inst3|pf|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[6]~17_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(6));

-- Location: LCCOMB_X25_Y26_N24
\inst3|pf|PC[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|pf|PC[7]~19_combout\ = \inst3|pf|PC\(7) $ (!\inst3|pf|PC[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|pf|PC\(7),
	cin => \inst3|pf|PC[6]~18\,
	combout => \inst3|pf|PC[7]~19_combout\);

-- Location: FF_X25_Y26_N25
\inst3|pf|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pf|key_flag~clkctrl_outclk\,
	d => \inst3|pf|PC[7]~19_combout\,
	clrn => \pc_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pf|PC\(7));

-- Location: M9K_X24_Y26_N0
\inst|srom|rom_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000734020C007600",
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
	port_a_first_bit_number => 0,
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
	portaaddr => \inst|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y26_N18
\inst4|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (!\inst|srom|rom_block|auto_generated|q_a\(13) & (!\inst|srom|rom_block|auto_generated|q_a\(12) & (!\inst|srom|rom_block|auto_generated|q_a\(14) & \inst|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y26_N0
\inst4|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector4~0_combout\ = (\inst4|Equal1~0_combout\ & ((\inst|srom|rom_block|auto_generated|q_a\(9)))) # (!\inst4|Equal1~0_combout\ & (\inst|srom|rom_block|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|srom|rom_block|auto_generated|q_a\(7),
	datac => \inst|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y26_N4
\inst4|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|WideNor0~combout\ = (\inst|srom|rom_block|auto_generated|q_a\(13) & (\inst|srom|rom_block|auto_generated|q_a\(12) & (\inst|srom|rom_block|auto_generated|q_a\(14) & !\inst|srom|rom_block|auto_generated|q_a\(15)))) # 
-- (!\inst|srom|rom_block|auto_generated|q_a\(13) & (!\inst|srom|rom_block|auto_generated|q_a\(12) & (!\inst|srom|rom_block|auto_generated|q_a\(14) & \inst|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst4|WideNor0~combout\);

-- Location: FF_X28_Y26_N1
\inst4|res_dest[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector4~0_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|res_dest\(1));

-- Location: LCCOMB_X28_Y26_N26
\inst4|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector5~0_combout\ = (\inst4|Equal1~0_combout\ & ((\inst|srom|rom_block|auto_generated|q_a\(8)))) # (!\inst4|Equal1~0_combout\ & (\inst|srom|rom_block|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(6),
	datac => \inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|Selector5~0_combout\);

-- Location: FF_X28_Y26_N27
\inst4|res_dest[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector5~0_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|res_dest\(0));

-- Location: LCCOMB_X27_Y27_N10
\inst3|rf|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|Equal1~0_combout\ = (!\enact~input_o\ & (\inst4|res_dest\(1) & !\inst4|res_dest\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enact~input_o\,
	datac => \inst4|res_dest\(1),
	datad => \inst4|res_dest\(0),
	combout => \inst3|rf|Equal1~0_combout\);

-- Location: IOIBUF_X14_Y0_N29
\key_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_clr,
	o => \key_clr~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\key_r[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(0),
	o => \key_r[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\key_r[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(1),
	o => \key_r[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\key_r[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(3),
	o => \key_r[3]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\key_r[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(2),
	o => \key_r[2]~input_o\);

-- Location: LCCOMB_X28_Y10_N12
\keyboard|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal0~0_combout\ = (\key_r[0]~input_o\ & (\key_r[1]~input_o\ & (\key_r[3]~input_o\ & \key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[0]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \key_r[3]~input_o\,
	datad => \key_r[2]~input_o\,
	combout => \keyboard|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y10_N6
\keyboard|num~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~0_combout\ = (\key_r[0]~input_o\ & ((\key_r[1]~input_o\ & (\key_r[3]~input_o\ $ (!\key_r[2]~input_o\))) # (!\key_r[1]~input_o\ & ((!\key_r[2]~input_o\) # (!\key_r[3]~input_o\))))) # (!\key_r[0]~input_o\ & (((!\key_r[2]~input_o\) # 
-- (!\key_r[3]~input_o\)) # (!\key_r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[0]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \key_r[3]~input_o\,
	datad => \key_r[2]~input_o\,
	combout => \keyboard|num~0_combout\);

-- Location: LCCOMB_X28_Y10_N14
\keyboard|cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|cnt[0]~1_combout\ = !\keyboard|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyboard|cnt\(0),
	combout => \keyboard|cnt[0]~1_combout\);

-- Location: FF_X28_Y10_N15
\keyboard|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|cnt[0]~1_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|cnt\(0));

-- Location: LCCOMB_X28_Y10_N24
\keyboard|cnt[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|cnt[1]~0_combout\ = \keyboard|cnt\(1) $ (((\keyboard|cnt\(0) & \key_clr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|cnt\(0),
	datac => \keyboard|cnt\(1),
	datad => \key_clr~input_o\,
	combout => \keyboard|cnt[1]~0_combout\);

-- Location: FF_X28_Y10_N25
\keyboard|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|cnt\(1));

-- Location: LCCOMB_X29_Y10_N30
\keyboard|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Decoder0~3_combout\ = (!\keyboard|cnt\(0)) # (!\keyboard|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|cnt\(1),
	datad => \keyboard|cnt\(0),
	combout => \keyboard|Decoder0~3_combout\);

-- Location: FF_X29_Y10_N31
\keyboard|KEY_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Decoder0~3_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|KEY_C\(0));

-- Location: LCCOMB_X29_Y10_N18
\keyboard|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Decoder0~1_combout\ = (\keyboard|cnt\(1)) # (!\keyboard|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|cnt\(1),
	datad => \keyboard|cnt\(0),
	combout => \keyboard|Decoder0~1_combout\);

-- Location: FF_X29_Y10_N19
\keyboard|KEY_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Decoder0~1_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|KEY_C\(2));

-- Location: LCCOMB_X29_Y10_N8
\keyboard|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Decoder0~2_combout\ = (\keyboard|cnt\(1)) # (\keyboard|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|cnt\(1),
	datad => \keyboard|cnt\(0),
	combout => \keyboard|Decoder0~2_combout\);

-- Location: FF_X29_Y10_N9
\keyboard|KEY_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Decoder0~2_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|KEY_C\(1));

-- Location: LCCOMB_X28_Y10_N16
\keyboard|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Decoder0~0_combout\ = (\keyboard|cnt\(0)) # (!\keyboard|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|cnt\(1),
	datac => \keyboard|cnt\(0),
	combout => \keyboard|Decoder0~0_combout\);

-- Location: FF_X29_Y10_N13
\keyboard|KEY_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \keyboard|Decoder0~0_combout\,
	sload => VCC,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|KEY_C\(3));

-- Location: LCCOMB_X29_Y10_N6
\keyboard|num~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~1_combout\ = (\keyboard|KEY_C\(0) & ((\keyboard|KEY_C\(2) & (\keyboard|KEY_C\(1) $ (!\keyboard|KEY_C\(3)))) # (!\keyboard|KEY_C\(2) & ((!\keyboard|KEY_C\(3)) # (!\keyboard|KEY_C\(1)))))) # (!\keyboard|KEY_C\(0) & (((!\keyboard|KEY_C\(3)) # 
-- (!\keyboard|KEY_C\(1))) # (!\keyboard|KEY_C\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|KEY_C\(0),
	datab => \keyboard|KEY_C\(2),
	datac => \keyboard|KEY_C\(1),
	datad => \keyboard|KEY_C\(3),
	combout => \keyboard|num~1_combout\);

-- Location: LCCOMB_X29_Y10_N4
\keyboard|num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~2_combout\ = (\keyboard|num~0_combout\) # (\keyboard|num~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyboard|num~0_combout\,
	datad => \keyboard|num~1_combout\,
	combout => \keyboard|num~2_combout\);

-- Location: FF_X30_Y10_N15
\keyboard|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|num~16_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|num\(3));

-- Location: LCCOMB_X29_Y10_N26
\keyboard|num~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~13_combout\ = (\keyboard|KEY_C\(2) & (\keyboard|KEY_C\(1) & \keyboard|KEY_C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|KEY_C\(2),
	datac => \keyboard|KEY_C\(1),
	datad => \keyboard|KEY_C\(3),
	combout => \keyboard|num~13_combout\);

-- Location: LCCOMB_X29_Y10_N28
\keyboard|num~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~14_combout\ = (\key_r[1]~input_o\ & ((\keyboard|KEY_C\(2)) # (!\keyboard|KEY_C\(3)))) # (!\key_r[1]~input_o\ & ((\keyboard|KEY_C\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|KEY_C\(2),
	datac => \key_r[1]~input_o\,
	datad => \keyboard|KEY_C\(3),
	combout => \keyboard|num~14_combout\);

-- Location: LCCOMB_X29_Y10_N14
\keyboard|num~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~15_combout\ = (\keyboard|num~13_combout\) # ((\key_r[2]~input_o\ & (\key_r[3]~input_o\ & \keyboard|num~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[3]~input_o\,
	datac => \keyboard|num~13_combout\,
	datad => \keyboard|num~14_combout\,
	combout => \keyboard|num~15_combout\);

-- Location: LCCOMB_X30_Y10_N14
\keyboard|num~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~16_combout\ = (!\keyboard|Equal0~0_combout\ & ((\keyboard|num~2_combout\ & (\keyboard|num\(3))) # (!\keyboard|num~2_combout\ & ((\keyboard|num~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal0~0_combout\,
	datab => \keyboard|num~2_combout\,
	datac => \keyboard|num\(3),
	datad => \keyboard|num~15_combout\,
	combout => \keyboard|num~16_combout\);

-- Location: LCCOMB_X30_Y10_N28
\keyboard|out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~7_combout\ = (\keyboard|num~16_combout\ & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~16_combout\,
	datac => \key_clr~input_o\,
	combout => \keyboard|out~7_combout\);

-- Location: FF_X29_Y10_N17
\keyboard|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|num~6_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|num\(0));

-- Location: LCCOMB_X29_Y10_N12
\keyboard|num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~3_combout\ = (\key_r[3]~input_o\ & ((\key_r[1]~input_o\) # (!\key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[3]~input_o\,
	datad => \key_r[1]~input_o\,
	combout => \keyboard|num~3_combout\);

-- Location: LCCOMB_X29_Y10_N22
\keyboard|num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~4_combout\ = (\keyboard|KEY_C\(2) & (!\keyboard|KEY_C\(1) & ((!\keyboard|num~3_combout\) # (!\key_r[2]~input_o\)))) # (!\keyboard|KEY_C\(2) & (\key_r[2]~input_o\ & (\keyboard|num~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \keyboard|num~3_combout\,
	datac => \keyboard|KEY_C\(1),
	datad => \keyboard|KEY_C\(2),
	combout => \keyboard|num~4_combout\);

-- Location: LCCOMB_X29_Y10_N0
\keyboard|num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~5_combout\ = \keyboard|num~3_combout\ $ (((\keyboard|KEY_C\(3) & !\keyboard|num~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|KEY_C\(3),
	datac => \keyboard|num~3_combout\,
	datad => \keyboard|num~4_combout\,
	combout => \keyboard|num~5_combout\);

-- Location: LCCOMB_X29_Y10_N16
\keyboard|num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~6_combout\ = (!\keyboard|Equal0~0_combout\ & ((\keyboard|num~2_combout\ & (\keyboard|num\(0))) # (!\keyboard|num~2_combout\ & ((!\keyboard|num~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal0~0_combout\,
	datab => \keyboard|num~2_combout\,
	datac => \keyboard|num\(0),
	datad => \keyboard|num~5_combout\,
	combout => \keyboard|num~6_combout\);

-- Location: FF_X30_Y10_N5
\keyboard|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|num~19_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|num\(1));

-- Location: LCCOMB_X29_Y10_N20
\keyboard|num~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~17_combout\ = (\keyboard|KEY_C\(2) & (((\key_r[1]~input_o\ & !\keyboard|KEY_C\(1))) # (!\key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \keyboard|KEY_C\(1),
	datad => \keyboard|KEY_C\(2),
	combout => \keyboard|num~17_combout\);

-- Location: LCCOMB_X29_Y10_N2
\keyboard|num~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~18_combout\ = (\key_r[3]~input_o\ & ((\keyboard|KEY_C\(3) & ((\keyboard|num~17_combout\))) # (!\keyboard|KEY_C\(3) & (\key_r[2]~input_o\)))) # (!\key_r[3]~input_o\ & (((\keyboard|KEY_C\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[3]~input_o\,
	datac => \keyboard|num~17_combout\,
	datad => \keyboard|KEY_C\(3),
	combout => \keyboard|num~18_combout\);

-- Location: LCCOMB_X30_Y10_N4
\keyboard|num~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~19_combout\ = (!\keyboard|Equal0~0_combout\ & ((\keyboard|num~2_combout\ & (\keyboard|num\(1))) # (!\keyboard|num~2_combout\ & ((\keyboard|num~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal0~0_combout\,
	datab => \keyboard|num~2_combout\,
	datac => \keyboard|num\(1),
	datad => \keyboard|num~18_combout\,
	combout => \keyboard|num~19_combout\);

-- Location: FF_X30_Y10_N1
\keyboard|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|num~12_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|num\(2));

-- Location: LCCOMB_X29_Y10_N24
\keyboard|num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~10_combout\ = (\key_r[2]~input_o\ & (\keyboard|KEY_C\(2) & ((\key_r[1]~input_o\) # (\keyboard|KEY_C\(1))))) # (!\key_r[2]~input_o\ & (((!\keyboard|KEY_C\(2)) # (!\keyboard|KEY_C\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \keyboard|KEY_C\(1),
	datad => \keyboard|KEY_C\(2),
	combout => \keyboard|num~10_combout\);

-- Location: LCCOMB_X30_Y10_N10
\keyboard|num~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~11_combout\ = (\key_r[3]~input_o\ & (!\keyboard|num~2_combout\ & ((\keyboard|num~10_combout\) # (!\keyboard|KEY_C\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[3]~input_o\,
	datab => \keyboard|KEY_C\(3),
	datac => \keyboard|num~2_combout\,
	datad => \keyboard|num~10_combout\,
	combout => \keyboard|num~11_combout\);

-- Location: LCCOMB_X30_Y10_N0
\keyboard|num~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~12_combout\ = (!\keyboard|Equal0~0_combout\ & ((\keyboard|num~11_combout\) # ((\keyboard|num~2_combout\ & \keyboard|num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal0~0_combout\,
	datab => \keyboard|num~2_combout\,
	datac => \keyboard|num\(2),
	datad => \keyboard|num~11_combout\,
	combout => \keyboard|num~12_combout\);

-- Location: LCCOMB_X30_Y10_N22
\keyboard|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal1~0_combout\ = (!\keyboard|num~6_combout\ & (!\keyboard|num~19_combout\ & (!\keyboard|num~16_combout\ & !\keyboard|num~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~6_combout\,
	datab => \keyboard|num~19_combout\,
	datac => \keyboard|num~16_combout\,
	datad => \keyboard|num~12_combout\,
	combout => \keyboard|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y10_N26
\keyboard|num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~8_combout\ = (\key_r[0]~input_o\ & ((\key_r[1]~input_o\ & (\key_r[3]~input_o\ $ (\key_r[2]~input_o\))) # (!\key_r[1]~input_o\ & (\key_r[3]~input_o\ & \key_r[2]~input_o\)))) # (!\key_r[0]~input_o\ & (\key_r[1]~input_o\ & (\key_r[3]~input_o\ & 
-- \key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[0]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \key_r[3]~input_o\,
	datad => \key_r[2]~input_o\,
	combout => \keyboard|num~8_combout\);

-- Location: FF_X30_Y10_N13
\keyboard|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|num~9_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|num\(4));

-- Location: LCCOMB_X29_Y10_N10
\keyboard|num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~7_combout\ = (\keyboard|KEY_C\(2) & ((\keyboard|KEY_C\(1) & (\keyboard|KEY_C\(0) $ (\keyboard|KEY_C\(3)))) # (!\keyboard|KEY_C\(1) & (\keyboard|KEY_C\(0) & \keyboard|KEY_C\(3))))) # (!\keyboard|KEY_C\(2) & (\keyboard|KEY_C\(1) & 
-- (\keyboard|KEY_C\(0) & \keyboard|KEY_C\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|KEY_C\(2),
	datab => \keyboard|KEY_C\(1),
	datac => \keyboard|KEY_C\(0),
	datad => \keyboard|KEY_C\(3),
	combout => \keyboard|num~7_combout\);

-- Location: LCCOMB_X30_Y10_N12
\keyboard|num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|num~9_combout\ = (!\keyboard|Equal0~0_combout\ & ((\keyboard|num\(4)) # ((\keyboard|num~8_combout\ & \keyboard|num~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~8_combout\,
	datab => \keyboard|Equal0~0_combout\,
	datac => \keyboard|num\(4),
	datad => \keyboard|num~7_combout\,
	combout => \keyboard|num~9_combout\);

-- Location: LCCOMB_X35_Y29_N0
\keyboard|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~24_combout\ = (((\keyboard|Equal2~10_combout\) # (!\keyboard|count_num\(0))))
-- \keyboard|Add1~25\ = CARRY((\keyboard|Equal2~10_combout\) # (!\keyboard|count_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(0),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	combout => \keyboard|Add1~24_combout\,
	cout => \keyboard|Add1~25\);

-- Location: LCCOMB_X32_Y29_N30
\keyboard|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal1~1_combout\ = (!\keyboard|num~9_combout\ & \keyboard|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	combout => \keyboard|Equal1~1_combout\);

-- Location: LCCOMB_X33_Y29_N8
\keyboard|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~46_combout\ = (\keyboard|Equal1~1_combout\ & (((!\keyboard|Add1~24_combout\)))) # (!\keyboard|Equal1~1_combout\ & (!\keyboard|LessThan0~3_combout\ & ((\keyboard|count_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|LessThan0~3_combout\,
	datab => \keyboard|Add1~24_combout\,
	datac => \keyboard|count_num\(0),
	datad => \keyboard|Equal1~1_combout\,
	combout => \keyboard|Add1~46_combout\);

-- Location: FF_X33_Y29_N9
\keyboard|count_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~46_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(0));

-- Location: LCCOMB_X35_Y29_N2
\keyboard|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~26_combout\ = (\keyboard|count_num\(1) & (!\keyboard|Add1~25\)) # (!\keyboard|count_num\(1) & ((\keyboard|Add1~25\) # (GND)))
-- \keyboard|Add1~27\ = CARRY((!\keyboard|Add1~25\) # (!\keyboard|count_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(1),
	datad => VCC,
	cin => \keyboard|Add1~25\,
	combout => \keyboard|Add1~26_combout\,
	cout => \keyboard|Add1~27\);

-- Location: LCCOMB_X33_Y29_N16
\keyboard|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~50_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datab => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~26_combout\,
	combout => \keyboard|Add1~50_combout\);

-- Location: LCCOMB_X33_Y29_N6
\keyboard|count_num[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|count_num[31]~0_combout\ = (\key_clr~input_o\ & ((\keyboard|LessThan0~3_combout\) # ((!\keyboard|num~9_combout\ & \keyboard|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|LessThan0~3_combout\,
	datab => \key_clr~input_o\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|Equal1~0_combout\,
	combout => \keyboard|count_num[31]~0_combout\);

-- Location: FF_X33_Y29_N17
\keyboard|count_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~50_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(1));

-- Location: LCCOMB_X35_Y29_N4
\keyboard|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~28_combout\ = (\keyboard|count_num\(2) & (\keyboard|Add1~27\ $ (GND))) # (!\keyboard|count_num\(2) & (!\keyboard|Add1~27\ & VCC))
-- \keyboard|Add1~29\ = CARRY((\keyboard|count_num\(2) & !\keyboard|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(2),
	datad => VCC,
	cin => \keyboard|Add1~27\,
	combout => \keyboard|Add1~28_combout\,
	cout => \keyboard|Add1~29\);

-- Location: LCCOMB_X33_Y29_N18
\keyboard|Add1~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~49_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Add1~28_combout\ & \keyboard|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Add1~28_combout\,
	datad => \keyboard|Equal1~0_combout\,
	combout => \keyboard|Add1~49_combout\);

-- Location: FF_X33_Y29_N19
\keyboard|count_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~49_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(2));

-- Location: LCCOMB_X35_Y29_N6
\keyboard|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~30_combout\ = (\keyboard|count_num\(3) & (!\keyboard|Add1~29\)) # (!\keyboard|count_num\(3) & ((\keyboard|Add1~29\) # (GND)))
-- \keyboard|Add1~31\ = CARRY((!\keyboard|Add1~29\) # (!\keyboard|count_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(3),
	datad => VCC,
	cin => \keyboard|Add1~29\,
	combout => \keyboard|Add1~30_combout\,
	cout => \keyboard|Add1~31\);

-- Location: LCCOMB_X33_Y29_N12
\keyboard|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~48_combout\ = (\keyboard|Equal1~0_combout\ & (!\keyboard|num~9_combout\ & \keyboard|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|Add1~30_combout\,
	combout => \keyboard|Add1~48_combout\);

-- Location: FF_X33_Y29_N13
\keyboard|count_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~48_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(3));

-- Location: LCCOMB_X35_Y29_N8
\keyboard|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~32_combout\ = (\keyboard|count_num\(4) & (\keyboard|Add1~31\ $ (GND))) # (!\keyboard|count_num\(4) & (!\keyboard|Add1~31\ & VCC))
-- \keyboard|Add1~33\ = CARRY((\keyboard|count_num\(4) & !\keyboard|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(4),
	datad => VCC,
	cin => \keyboard|Add1~31\,
	combout => \keyboard|Add1~32_combout\,
	cout => \keyboard|Add1~33\);

-- Location: LCCOMB_X33_Y29_N14
\keyboard|Add1~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~47_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Add1~32_combout\ & \keyboard|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Add1~32_combout\,
	datad => \keyboard|Equal1~0_combout\,
	combout => \keyboard|Add1~47_combout\);

-- Location: FF_X33_Y29_N15
\keyboard|count_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~47_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(4));

-- Location: LCCOMB_X35_Y29_N10
\keyboard|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~34_combout\ = (\keyboard|count_num\(5) & (((!\keyboard|Add1~33\)))) # (!\keyboard|count_num\(5) & ((\keyboard|Equal2~10_combout\ & (!\keyboard|Add1~33\)) # (!\keyboard|Equal2~10_combout\ & ((\keyboard|Add1~33\) # (GND)))))
-- \keyboard|Add1~35\ = CARRY(((!\keyboard|count_num\(5) & !\keyboard|Equal2~10_combout\)) # (!\keyboard|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(5),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	cin => \keyboard|Add1~33\,
	combout => \keyboard|Add1~34_combout\,
	cout => \keyboard|Add1~35\);

-- Location: LCCOMB_X33_Y29_N30
\keyboard|Add1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~45_combout\ = (\keyboard|Equal1~0_combout\ & (!\keyboard|num~9_combout\ & \keyboard|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|Add1~34_combout\,
	combout => \keyboard|Add1~45_combout\);

-- Location: FF_X33_Y29_N31
\keyboard|count_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~45_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(5));

-- Location: LCCOMB_X35_Y29_N12
\keyboard|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~36_combout\ = (\keyboard|count_num\(6) & (\keyboard|Add1~35\ $ (GND))) # (!\keyboard|count_num\(6) & (!\keyboard|Add1~35\ & VCC))
-- \keyboard|Add1~37\ = CARRY((\keyboard|count_num\(6) & !\keyboard|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(6),
	datad => VCC,
	cin => \keyboard|Add1~35\,
	combout => \keyboard|Add1~36_combout\,
	cout => \keyboard|Add1~37\);

-- Location: LCCOMB_X33_Y29_N4
\keyboard|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~44_combout\ = (\keyboard|Equal1~0_combout\ & (!\keyboard|num~9_combout\ & \keyboard|Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|Add1~36_combout\,
	combout => \keyboard|Add1~44_combout\);

-- Location: FF_X33_Y29_N5
\keyboard|count_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~44_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(6));

-- Location: LCCOMB_X35_Y29_N14
\keyboard|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~38_combout\ = (\keyboard|count_num\(7) & (((!\keyboard|Add1~37\)))) # (!\keyboard|count_num\(7) & ((\keyboard|Equal2~10_combout\ & (!\keyboard|Add1~37\)) # (!\keyboard|Equal2~10_combout\ & ((\keyboard|Add1~37\) # (GND)))))
-- \keyboard|Add1~39\ = CARRY(((!\keyboard|count_num\(7) & !\keyboard|Equal2~10_combout\)) # (!\keyboard|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(7),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	cin => \keyboard|Add1~37\,
	combout => \keyboard|Add1~38_combout\,
	cout => \keyboard|Add1~39\);

-- Location: LCCOMB_X33_Y29_N10
\keyboard|Add1~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~43_combout\ = (\keyboard|Equal1~0_combout\ & (!\keyboard|num~9_combout\ & \keyboard|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|Add1~38_combout\,
	combout => \keyboard|Add1~43_combout\);

-- Location: FF_X33_Y29_N11
\keyboard|count_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~43_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(7));

-- Location: LCCOMB_X35_Y29_N16
\keyboard|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~40_combout\ = (\keyboard|count_num\(8) & (\keyboard|Add1~39\ $ (GND))) # (!\keyboard|count_num\(8) & (!\keyboard|Add1~39\ & VCC))
-- \keyboard|Add1~41\ = CARRY((\keyboard|count_num\(8) & !\keyboard|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(8),
	datad => VCC,
	cin => \keyboard|Add1~39\,
	combout => \keyboard|Add1~40_combout\,
	cout => \keyboard|Add1~41\);

-- Location: LCCOMB_X33_Y29_N28
\keyboard|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~42_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Add1~40_combout\ & \keyboard|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Add1~40_combout\,
	datad => \keyboard|Equal1~0_combout\,
	combout => \keyboard|Add1~42_combout\);

-- Location: FF_X33_Y29_N29
\keyboard|count_num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~42_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(8));

-- Location: LCCOMB_X35_Y29_N18
\keyboard|Add1~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~51_combout\ = (\keyboard|count_num\(9) & (((!\keyboard|Add1~41\)))) # (!\keyboard|count_num\(9) & ((\keyboard|Equal2~10_combout\ & (!\keyboard|Add1~41\)) # (!\keyboard|Equal2~10_combout\ & ((\keyboard|Add1~41\) # (GND)))))
-- \keyboard|Add1~52\ = CARRY(((!\keyboard|count_num\(9) & !\keyboard|Equal2~10_combout\)) # (!\keyboard|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(9),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	cin => \keyboard|Add1~41\,
	combout => \keyboard|Add1~51_combout\,
	cout => \keyboard|Add1~52\);

-- Location: LCCOMB_X32_Y29_N28
\keyboard|Add1~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~53_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~51_combout\,
	combout => \keyboard|Add1~53_combout\);

-- Location: FF_X32_Y29_N29
\keyboard|count_num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~53_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(9));

-- Location: LCCOMB_X35_Y29_N20
\keyboard|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~54_combout\ = (\keyboard|Add1~52\ & (((\keyboard|count_num\(10)) # (\keyboard|Equal2~10_combout\)))) # (!\keyboard|Add1~52\ & ((((\keyboard|count_num\(10)) # (\keyboard|Equal2~10_combout\)))))
-- \keyboard|Add1~55\ = CARRY((!\keyboard|Add1~52\ & ((\keyboard|count_num\(10)) # (\keyboard|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(10),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	cin => \keyboard|Add1~52\,
	combout => \keyboard|Add1~54_combout\,
	cout => \keyboard|Add1~55\);

-- Location: LCCOMB_X32_Y29_N22
\keyboard|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~56_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~54_combout\,
	combout => \keyboard|Add1~56_combout\);

-- Location: FF_X32_Y29_N23
\keyboard|count_num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~56_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(10));

-- Location: LCCOMB_X35_Y29_N22
\keyboard|Add1~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~57_combout\ = (\keyboard|count_num\(11) & (!\keyboard|Add1~55\)) # (!\keyboard|count_num\(11) & ((\keyboard|Add1~55\) # (GND)))
-- \keyboard|Add1~58\ = CARRY((!\keyboard|Add1~55\) # (!\keyboard|count_num\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(11),
	datad => VCC,
	cin => \keyboard|Add1~55\,
	combout => \keyboard|Add1~57_combout\,
	cout => \keyboard|Add1~58\);

-- Location: LCCOMB_X32_Y29_N4
\keyboard|Add1~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~59_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~57_combout\,
	combout => \keyboard|Add1~59_combout\);

-- Location: FF_X32_Y29_N5
\keyboard|count_num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~59_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(11));

-- Location: LCCOMB_X35_Y29_N24
\keyboard|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~60_combout\ = (\keyboard|count_num\(12) & (\keyboard|Add1~58\ $ (GND))) # (!\keyboard|count_num\(12) & (!\keyboard|Add1~58\ & VCC))
-- \keyboard|Add1~61\ = CARRY((\keyboard|count_num\(12) & !\keyboard|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(12),
	datad => VCC,
	cin => \keyboard|Add1~58\,
	combout => \keyboard|Add1~60_combout\,
	cout => \keyboard|Add1~61\);

-- Location: LCCOMB_X32_Y29_N6
\keyboard|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~62_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~60_combout\,
	combout => \keyboard|Add1~62_combout\);

-- Location: FF_X32_Y29_N7
\keyboard|count_num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~62_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(12));

-- Location: LCCOMB_X35_Y29_N26
\keyboard|Add1~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~63_combout\ = (\keyboard|count_num\(13) & (!\keyboard|Add1~61\)) # (!\keyboard|count_num\(13) & ((\keyboard|Add1~61\) # (GND)))
-- \keyboard|Add1~64\ = CARRY((!\keyboard|Add1~61\) # (!\keyboard|count_num\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(13),
	datad => VCC,
	cin => \keyboard|Add1~61\,
	combout => \keyboard|Add1~63_combout\,
	cout => \keyboard|Add1~64\);

-- Location: LCCOMB_X32_Y29_N8
\keyboard|Add1~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~65_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|Add1~63_combout\,
	combout => \keyboard|Add1~65_combout\);

-- Location: FF_X32_Y29_N9
\keyboard|count_num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~65_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(13));

-- Location: LCCOMB_X35_Y29_N28
\keyboard|Add1~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~66_combout\ = (\keyboard|count_num\(14) & (\keyboard|Add1~64\ $ (GND))) # (!\keyboard|count_num\(14) & (!\keyboard|Add1~64\ & VCC))
-- \keyboard|Add1~67\ = CARRY((\keyboard|count_num\(14) & !\keyboard|Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(14),
	datad => VCC,
	cin => \keyboard|Add1~64\,
	combout => \keyboard|Add1~66_combout\,
	cout => \keyboard|Add1~67\);

-- Location: LCCOMB_X32_Y29_N2
\keyboard|Add1~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~68_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~66_combout\,
	combout => \keyboard|Add1~68_combout\);

-- Location: FF_X32_Y29_N3
\keyboard|count_num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~68_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(14));

-- Location: LCCOMB_X35_Y29_N30
\keyboard|Add1~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~69_combout\ = (\keyboard|count_num\(15) & (((!\keyboard|Add1~67\)))) # (!\keyboard|count_num\(15) & ((\keyboard|Equal2~10_combout\ & (!\keyboard|Add1~67\)) # (!\keyboard|Equal2~10_combout\ & ((\keyboard|Add1~67\) # (GND)))))
-- \keyboard|Add1~70\ = CARRY(((!\keyboard|count_num\(15) & !\keyboard|Equal2~10_combout\)) # (!\keyboard|Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(15),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	cin => \keyboard|Add1~67\,
	combout => \keyboard|Add1~69_combout\,
	cout => \keyboard|Add1~70\);

-- Location: LCCOMB_X32_Y29_N24
\keyboard|Add1~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~71_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~69_combout\,
	combout => \keyboard|Add1~71_combout\);

-- Location: FF_X32_Y29_N25
\keyboard|count_num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~71_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(15));

-- Location: LCCOMB_X32_Y29_N16
\keyboard|Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~7_combout\ = (!\keyboard|count_num\(10) & (!\keyboard|count_num\(9) & (!\keyboard|count_num\(16) & !\keyboard|count_num\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(10),
	datab => \keyboard|count_num\(9),
	datac => \keyboard|count_num\(16),
	datad => \keyboard|count_num\(15),
	combout => \keyboard|Equal2~7_combout\);

-- Location: LCCOMB_X35_Y28_N0
\keyboard|Add1~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~72_combout\ = (\keyboard|Add1~70\ & (((\keyboard|count_num\(16)) # (\keyboard|Equal2~10_combout\)))) # (!\keyboard|Add1~70\ & ((((\keyboard|count_num\(16)) # (\keyboard|Equal2~10_combout\)))))
-- \keyboard|Add1~73\ = CARRY((!\keyboard|Add1~70\ & ((\keyboard|count_num\(16)) # (\keyboard|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(16),
	datab => \keyboard|Equal2~10_combout\,
	datad => VCC,
	cin => \keyboard|Add1~70\,
	combout => \keyboard|Add1~72_combout\,
	cout => \keyboard|Add1~73\);

-- Location: LCCOMB_X35_Y28_N2
\keyboard|Add1~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~75_combout\ = (\keyboard|count_num\(17) & (!\keyboard|Add1~73\)) # (!\keyboard|count_num\(17) & ((\keyboard|Add1~73\) # (GND)))
-- \keyboard|Add1~76\ = CARRY((!\keyboard|Add1~73\) # (!\keyboard|count_num\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(17),
	datad => VCC,
	cin => \keyboard|Add1~73\,
	combout => \keyboard|Add1~75_combout\,
	cout => \keyboard|Add1~76\);

-- Location: LCCOMB_X34_Y29_N16
\keyboard|Add1~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~77_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~75_combout\,
	combout => \keyboard|Add1~77_combout\);

-- Location: FF_X34_Y29_N17
\keyboard|count_num[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~77_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(17));

-- Location: LCCOMB_X35_Y28_N4
\keyboard|Add1~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~78_combout\ = (\keyboard|count_num\(18) & (\keyboard|Add1~76\ $ (GND))) # (!\keyboard|count_num\(18) & (!\keyboard|Add1~76\ & VCC))
-- \keyboard|Add1~79\ = CARRY((\keyboard|count_num\(18) & !\keyboard|Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(18),
	datad => VCC,
	cin => \keyboard|Add1~76\,
	combout => \keyboard|Add1~78_combout\,
	cout => \keyboard|Add1~79\);

-- Location: LCCOMB_X34_Y29_N2
\keyboard|Add1~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~80_combout\ = (\keyboard|Equal1~0_combout\ & (\keyboard|Add1~78_combout\ & !\keyboard|num~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|Add1~78_combout\,
	datad => \keyboard|num~9_combout\,
	combout => \keyboard|Add1~80_combout\);

-- Location: FF_X34_Y29_N3
\keyboard|count_num[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~80_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(18));

-- Location: LCCOMB_X35_Y28_N6
\keyboard|Add1~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~81_combout\ = (\keyboard|count_num\(19) & (!\keyboard|Add1~79\)) # (!\keyboard|count_num\(19) & ((\keyboard|Add1~79\) # (GND)))
-- \keyboard|Add1~82\ = CARRY((!\keyboard|Add1~79\) # (!\keyboard|count_num\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(19),
	datad => VCC,
	cin => \keyboard|Add1~79\,
	combout => \keyboard|Add1~81_combout\,
	cout => \keyboard|Add1~82\);

-- Location: LCCOMB_X34_Y29_N12
\keyboard|Add1~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~83_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~81_combout\,
	combout => \keyboard|Add1~83_combout\);

-- Location: FF_X34_Y29_N13
\keyboard|count_num[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~83_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(19));

-- Location: LCCOMB_X35_Y28_N8
\keyboard|Add1~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~84_combout\ = (\keyboard|count_num\(20) & (\keyboard|Add1~82\ $ (GND))) # (!\keyboard|count_num\(20) & (!\keyboard|Add1~82\ & VCC))
-- \keyboard|Add1~85\ = CARRY((\keyboard|count_num\(20) & !\keyboard|Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(20),
	datad => VCC,
	cin => \keyboard|Add1~82\,
	combout => \keyboard|Add1~84_combout\,
	cout => \keyboard|Add1~85\);

-- Location: LCCOMB_X34_Y29_N14
\keyboard|Add1~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~108_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~84_combout\,
	combout => \keyboard|Add1~108_combout\);

-- Location: FF_X34_Y29_N15
\keyboard|count_num[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~108_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(20));

-- Location: LCCOMB_X35_Y28_N10
\keyboard|Add1~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~86_combout\ = (\keyboard|count_num\(21) & (!\keyboard|Add1~85\)) # (!\keyboard|count_num\(21) & ((\keyboard|Add1~85\) # (GND)))
-- \keyboard|Add1~87\ = CARRY((!\keyboard|Add1~85\) # (!\keyboard|count_num\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(21),
	datad => VCC,
	cin => \keyboard|Add1~85\,
	combout => \keyboard|Add1~86_combout\,
	cout => \keyboard|Add1~87\);

-- Location: LCCOMB_X34_Y29_N18
\keyboard|Add1~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~109_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~86_combout\,
	combout => \keyboard|Add1~109_combout\);

-- Location: FF_X34_Y29_N19
\keyboard|count_num[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~109_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(21));

-- Location: LCCOMB_X35_Y28_N12
\keyboard|Add1~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~88_combout\ = (\keyboard|count_num\(22) & (\keyboard|Add1~87\ $ (GND))) # (!\keyboard|count_num\(22) & (!\keyboard|Add1~87\ & VCC))
-- \keyboard|Add1~89\ = CARRY((\keyboard|count_num\(22) & !\keyboard|Add1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(22),
	datad => VCC,
	cin => \keyboard|Add1~87\,
	combout => \keyboard|Add1~88_combout\,
	cout => \keyboard|Add1~89\);

-- Location: LCCOMB_X34_Y29_N20
\keyboard|Add1~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~110_combout\ = (\keyboard|Equal1~0_combout\ & (\keyboard|Add1~88_combout\ & !\keyboard|num~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|Add1~88_combout\,
	datad => \keyboard|num~9_combout\,
	combout => \keyboard|Add1~110_combout\);

-- Location: FF_X34_Y29_N21
\keyboard|count_num[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~110_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(22));

-- Location: LCCOMB_X35_Y28_N14
\keyboard|Add1~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~90_combout\ = (\keyboard|count_num\(23) & (!\keyboard|Add1~89\)) # (!\keyboard|count_num\(23) & ((\keyboard|Add1~89\) # (GND)))
-- \keyboard|Add1~91\ = CARRY((!\keyboard|Add1~89\) # (!\keyboard|count_num\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(23),
	datad => VCC,
	cin => \keyboard|Add1~89\,
	combout => \keyboard|Add1~90_combout\,
	cout => \keyboard|Add1~91\);

-- Location: LCCOMB_X34_Y29_N10
\keyboard|Add1~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~111_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~90_combout\,
	combout => \keyboard|Add1~111_combout\);

-- Location: FF_X34_Y29_N11
\keyboard|count_num[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~111_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(23));

-- Location: LCCOMB_X35_Y28_N16
\keyboard|Add1~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~92_combout\ = (\keyboard|count_num\(24) & (\keyboard|Add1~91\ $ (GND))) # (!\keyboard|count_num\(24) & (!\keyboard|Add1~91\ & VCC))
-- \keyboard|Add1~93\ = CARRY((\keyboard|count_num\(24) & !\keyboard|Add1~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(24),
	datad => VCC,
	cin => \keyboard|Add1~91\,
	combout => \keyboard|Add1~92_combout\,
	cout => \keyboard|Add1~93\);

-- Location: LCCOMB_X34_Y29_N4
\keyboard|Add1~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~112_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~92_combout\,
	combout => \keyboard|Add1~112_combout\);

-- Location: FF_X34_Y29_N5
\keyboard|count_num[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~112_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(24));

-- Location: LCCOMB_X34_Y29_N26
\keyboard|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~3_combout\ = (!\keyboard|count_num\(23) & (!\keyboard|count_num\(22) & (!\keyboard|count_num\(24) & !\keyboard|count_num\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(23),
	datab => \keyboard|count_num\(22),
	datac => \keyboard|count_num\(24),
	datad => \keyboard|count_num\(21),
	combout => \keyboard|Equal2~3_combout\);

-- Location: LCCOMB_X34_Y29_N28
\keyboard|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~2_combout\ = (!\keyboard|count_num\(19) & (!\keyboard|count_num\(18) & (!\keyboard|count_num\(20) & !\keyboard|count_num\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(19),
	datab => \keyboard|count_num\(18),
	datac => \keyboard|count_num\(20),
	datad => \keyboard|count_num\(17),
	combout => \keyboard|Equal2~2_combout\);

-- Location: LCCOMB_X35_Y28_N18
\keyboard|Add1~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~94_combout\ = (\keyboard|count_num\(25) & (!\keyboard|Add1~93\)) # (!\keyboard|count_num\(25) & ((\keyboard|Add1~93\) # (GND)))
-- \keyboard|Add1~95\ = CARRY((!\keyboard|Add1~93\) # (!\keyboard|count_num\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(25),
	datad => VCC,
	cin => \keyboard|Add1~93\,
	combout => \keyboard|Add1~94_combout\,
	cout => \keyboard|Add1~95\);

-- Location: LCCOMB_X34_Y28_N8
\keyboard|Add1~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~113_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~94_combout\,
	combout => \keyboard|Add1~113_combout\);

-- Location: FF_X34_Y28_N9
\keyboard|count_num[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~113_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(25));

-- Location: LCCOMB_X35_Y28_N20
\keyboard|Add1~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~96_combout\ = (\keyboard|count_num\(26) & (\keyboard|Add1~95\ $ (GND))) # (!\keyboard|count_num\(26) & (!\keyboard|Add1~95\ & VCC))
-- \keyboard|Add1~97\ = CARRY((\keyboard|count_num\(26) & !\keyboard|Add1~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(26),
	datad => VCC,
	cin => \keyboard|Add1~95\,
	combout => \keyboard|Add1~96_combout\,
	cout => \keyboard|Add1~97\);

-- Location: LCCOMB_X34_Y28_N18
\keyboard|Add1~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~114_combout\ = (\keyboard|Equal1~0_combout\ & (\keyboard|Add1~96_combout\ & !\keyboard|num~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal1~0_combout\,
	datac => \keyboard|Add1~96_combout\,
	datad => \keyboard|num~9_combout\,
	combout => \keyboard|Add1~114_combout\);

-- Location: FF_X34_Y28_N19
\keyboard|count_num[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~114_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(26));

-- Location: LCCOMB_X35_Y28_N22
\keyboard|Add1~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~98_combout\ = (\keyboard|count_num\(27) & (!\keyboard|Add1~97\)) # (!\keyboard|count_num\(27) & ((\keyboard|Add1~97\) # (GND)))
-- \keyboard|Add1~99\ = CARRY((!\keyboard|Add1~97\) # (!\keyboard|count_num\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(27),
	datad => VCC,
	cin => \keyboard|Add1~97\,
	combout => \keyboard|Add1~98_combout\,
	cout => \keyboard|Add1~99\);

-- Location: LCCOMB_X34_Y28_N12
\keyboard|Add1~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~115_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~98_combout\,
	combout => \keyboard|Add1~115_combout\);

-- Location: FF_X34_Y28_N13
\keyboard|count_num[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~115_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(27));

-- Location: LCCOMB_X35_Y28_N24
\keyboard|Add1~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~100_combout\ = (\keyboard|count_num\(28) & (\keyboard|Add1~99\ $ (GND))) # (!\keyboard|count_num\(28) & (!\keyboard|Add1~99\ & VCC))
-- \keyboard|Add1~101\ = CARRY((\keyboard|count_num\(28) & !\keyboard|Add1~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(28),
	datad => VCC,
	cin => \keyboard|Add1~99\,
	combout => \keyboard|Add1~100_combout\,
	cout => \keyboard|Add1~101\);

-- Location: LCCOMB_X34_Y28_N6
\keyboard|Add1~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~116_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~100_combout\,
	combout => \keyboard|Add1~116_combout\);

-- Location: FF_X34_Y28_N7
\keyboard|count_num[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~116_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(28));

-- Location: LCCOMB_X35_Y28_N26
\keyboard|Add1~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~102_combout\ = (\keyboard|count_num\(29) & (!\keyboard|Add1~101\)) # (!\keyboard|count_num\(29) & ((\keyboard|Add1~101\) # (GND)))
-- \keyboard|Add1~103\ = CARRY((!\keyboard|Add1~101\) # (!\keyboard|count_num\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(29),
	datad => VCC,
	cin => \keyboard|Add1~101\,
	combout => \keyboard|Add1~102_combout\,
	cout => \keyboard|Add1~103\);

-- Location: LCCOMB_X34_Y29_N0
\keyboard|Add1~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~117_combout\ = (\keyboard|Equal1~0_combout\ & (\keyboard|Add1~102_combout\ & !\keyboard|num~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|Add1~102_combout\,
	datad => \keyboard|num~9_combout\,
	combout => \keyboard|Add1~117_combout\);

-- Location: FF_X34_Y29_N1
\keyboard|count_num[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~117_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(29));

-- Location: LCCOMB_X35_Y28_N28
\keyboard|Add1~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~104_combout\ = (\keyboard|count_num\(30) & (\keyboard|Add1~103\ $ (GND))) # (!\keyboard|count_num\(30) & (!\keyboard|Add1~103\ & VCC))
-- \keyboard|Add1~105\ = CARRY((\keyboard|count_num\(30) & !\keyboard|Add1~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(30),
	datad => VCC,
	cin => \keyboard|Add1~103\,
	combout => \keyboard|Add1~104_combout\,
	cout => \keyboard|Add1~105\);

-- Location: LCCOMB_X34_Y29_N22
\keyboard|Add1~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~118_combout\ = (!\keyboard|num~9_combout\ & (\keyboard|Equal1~0_combout\ & \keyboard|Add1~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~9_combout\,
	datac => \keyboard|Equal1~0_combout\,
	datad => \keyboard|Add1~104_combout\,
	combout => \keyboard|Add1~118_combout\);

-- Location: FF_X34_Y29_N23
\keyboard|count_num[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~118_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(30));

-- Location: LCCOMB_X35_Y28_N30
\keyboard|Add1~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~106_combout\ = \keyboard|Add1~105\ $ (\keyboard|count_num\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keyboard|count_num\(31),
	cin => \keyboard|Add1~105\,
	combout => \keyboard|Add1~106_combout\);

-- Location: LCCOMB_X34_Y29_N24
\keyboard|Add1~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~119_combout\ = (\keyboard|Equal1~0_combout\ & (\keyboard|Add1~106_combout\ & !\keyboard|num~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|Add1~106_combout\,
	datad => \keyboard|num~9_combout\,
	combout => \keyboard|Add1~119_combout\);

-- Location: FF_X34_Y29_N25
\keyboard|count_num[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~119_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(31));

-- Location: LCCOMB_X34_Y29_N30
\keyboard|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~5_combout\ = (!\keyboard|count_num\(29) & (!\keyboard|count_num\(30) & !\keyboard|count_num\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|count_num\(29),
	datac => \keyboard|count_num\(30),
	datad => \keyboard|count_num\(31),
	combout => \keyboard|Equal2~5_combout\);

-- Location: LCCOMB_X34_Y28_N0
\keyboard|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~4_combout\ = (!\keyboard|count_num\(27) & (!\keyboard|count_num\(26) & (!\keyboard|count_num\(25) & !\keyboard|count_num\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(27),
	datab => \keyboard|count_num\(26),
	datac => \keyboard|count_num\(25),
	datad => \keyboard|count_num\(28),
	combout => \keyboard|Equal2~4_combout\);

-- Location: LCCOMB_X34_Y29_N8
\keyboard|Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~6_combout\ = (\keyboard|Equal2~3_combout\ & (\keyboard|Equal2~2_combout\ & (\keyboard|Equal2~5_combout\ & \keyboard|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal2~3_combout\,
	datab => \keyboard|Equal2~2_combout\,
	datac => \keyboard|Equal2~5_combout\,
	datad => \keyboard|Equal2~4_combout\,
	combout => \keyboard|Equal2~6_combout\);

-- Location: LCCOMB_X33_Y29_N22
\keyboard|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~0_combout\ = (!\keyboard|count_num\(3) & (!\keyboard|count_num\(2) & (!\keyboard|count_num\(4) & !\keyboard|count_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(3),
	datab => \keyboard|count_num\(2),
	datac => \keyboard|count_num\(4),
	datad => \keyboard|count_num\(1),
	combout => \keyboard|Equal2~0_combout\);

-- Location: LCCOMB_X33_Y29_N26
\keyboard|Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~8_combout\ = (!\keyboard|count_num\(5) & (!\keyboard|count_num\(8) & (!\keyboard|count_num\(6) & !\keyboard|count_num\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(5),
	datab => \keyboard|count_num\(8),
	datac => \keyboard|count_num\(6),
	datad => \keyboard|count_num\(7),
	combout => \keyboard|Equal2~8_combout\);

-- Location: LCCOMB_X32_Y29_N20
\keyboard|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~1_combout\ = (!\keyboard|count_num\(12) & (!\keyboard|count_num\(13) & (!\keyboard|count_num\(11) & !\keyboard|count_num\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(12),
	datab => \keyboard|count_num\(13),
	datac => \keyboard|count_num\(11),
	datad => \keyboard|count_num\(14),
	combout => \keyboard|Equal2~1_combout\);

-- Location: LCCOMB_X33_Y29_N24
\keyboard|Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~9_combout\ = (\keyboard|Equal2~0_combout\ & (\keyboard|count_num\(0) & (\keyboard|Equal2~8_combout\ & \keyboard|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal2~0_combout\,
	datab => \keyboard|count_num\(0),
	datac => \keyboard|Equal2~8_combout\,
	datad => \keyboard|Equal2~1_combout\,
	combout => \keyboard|Equal2~9_combout\);

-- Location: LCCOMB_X34_Y29_N6
\keyboard|Equal2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Equal2~10_combout\ = (\keyboard|Equal2~7_combout\ & (\keyboard|Equal2~6_combout\ & \keyboard|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal2~7_combout\,
	datac => \keyboard|Equal2~6_combout\,
	datad => \keyboard|Equal2~9_combout\,
	combout => \keyboard|Equal2~10_combout\);

-- Location: LCCOMB_X32_Y29_N26
\keyboard|Add1~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|Add1~74_combout\ = (\keyboard|Equal1~0_combout\ & (!\keyboard|num~9_combout\ & \keyboard|Add1~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|Equal1~0_combout\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|Add1~72_combout\,
	combout => \keyboard|Add1~74_combout\);

-- Location: FF_X32_Y29_N27
\keyboard|count_num[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|Add1~74_combout\,
	ena => \keyboard|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|count_num\(16));

-- Location: LCCOMB_X33_Y29_N20
\keyboard|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|LessThan0~0_combout\ = (\keyboard|count_num\(6)) # ((\keyboard|count_num\(5) & ((!\keyboard|Equal2~0_combout\) # (!\keyboard|count_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(5),
	datab => \keyboard|count_num\(0),
	datac => \keyboard|count_num\(6),
	datad => \keyboard|Equal2~0_combout\,
	combout => \keyboard|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y29_N2
\keyboard|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|LessThan0~1_combout\ = (\keyboard|count_num\(8)) # ((\keyboard|count_num\(7) & \keyboard|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(8),
	datac => \keyboard|count_num\(7),
	datad => \keyboard|LessThan0~0_combout\,
	combout => \keyboard|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y29_N10
\keyboard|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|LessThan0~2_combout\ = ((\keyboard|count_num\(9) & (\keyboard|count_num\(10) & \keyboard|LessThan0~1_combout\))) # (!\keyboard|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(9),
	datab => \keyboard|Equal2~1_combout\,
	datac => \keyboard|count_num\(10),
	datad => \keyboard|LessThan0~1_combout\,
	combout => \keyboard|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y29_N0
\keyboard|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|LessThan0~3_combout\ = ((\keyboard|count_num\(16) & (\keyboard|count_num\(15) & \keyboard|LessThan0~2_combout\))) # (!\keyboard|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|count_num\(16),
	datab => \keyboard|count_num\(15),
	datac => \keyboard|Equal2~6_combout\,
	datad => \keyboard|LessThan0~2_combout\,
	combout => \keyboard|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y10_N20
\keyboard|out[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out[6]~1_combout\ = ((\keyboard|LessThan0~3_combout\ & ((\keyboard|num~9_combout\) # (!\keyboard|Equal1~0_combout\)))) # (!\key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|Equal1~0_combout\,
	datab => \key_clr~input_o\,
	datac => \keyboard|num~9_combout\,
	datad => \keyboard|LessThan0~3_combout\,
	combout => \keyboard|out[6]~1_combout\);

-- Location: FF_X30_Y10_N29
\keyboard|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~7_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(3));

-- Location: LCCOMB_X30_Y10_N30
\keyboard|out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~8_combout\ = (\key_clr~input_o\ & \keyboard|out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_clr~input_o\,
	datad => \keyboard|out\(3),
	combout => \keyboard|out~8_combout\);

-- Location: FF_X30_Y10_N31
\keyboard|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~8_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(7));

-- Location: LCCOMB_X26_Y27_N30
\inst3|rf|R2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~10_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(7))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(7)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(7),
	datab => \inst3|rf|R0[2]~0_combout\,
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(7),
	combout => \inst3|rf|R2~10_combout\);

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

-- Location: LCCOMB_X28_Y27_N2
\inst3|rf|R2[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2[4]~3_combout\ = (\rd~input_o\ & (\RA[1]~input_o\ & (!\RA[0]~input_o\ & \enact~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \enact~input_o\,
	combout => \inst3|rf|R2[4]~3_combout\);

-- Location: LCCOMB_X27_Y27_N12
\inst3|rf|R2[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2[4]~11_combout\ = (\inst3|rf|R2[4]~3_combout\) # ((!\enact~input_o\ & (\inst4|res_dest\(1) & !\inst4|res_dest\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2[4]~3_combout\,
	datab => \enact~input_o\,
	datac => \inst4|res_dest\(1),
	datad => \inst4|res_dest\(0),
	combout => \inst3|rf|R2[4]~11_combout\);

-- Location: FF_X26_Y27_N31
\inst3|rf|R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~10_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(7));

-- Location: LCCOMB_X28_Y26_N6
\inst3|rf|R0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~9_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\enact~input_o\ & ((\keyboard|out\(7)))) # (!\enact~input_o\ & (\inst6|man|ans\(7))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(7),
	datac => \enact~input_o\,
	datad => \keyboard|out\(7),
	combout => \inst3|rf|R0~9_combout\);

-- Location: LCCOMB_X28_Y27_N24
\inst3|rf|R0[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0[2]~2_combout\ = (\enact~input_o\ & (((\RA[1]~input_o\) # (\RA[0]~input_o\)) # (!\rd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \enact~input_o\,
	combout => \inst3|rf|R0[2]~2_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst3|rf|R0[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0[2]~3_combout\ = (!\inst3|rf|R0[2]~2_combout\ & ((\enact~input_o\) # ((!\inst4|res_dest\(0) & !\inst4|res_dest\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|res_dest\(0),
	datab => \inst3|rf|R0[2]~2_combout\,
	datac => \enact~input_o\,
	datad => \inst4|res_dest\(1),
	combout => \inst3|rf|R0[2]~3_combout\);

-- Location: FF_X28_Y26_N7
\inst3|rf|R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~9_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(7));

-- Location: LCCOMB_X28_Y26_N20
\inst4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst|srom|rom_block|auto_generated|q_a\(13) & (\inst|srom|rom_block|auto_generated|q_a\(12) & (\inst|srom|rom_block|auto_generated|q_a\(14) & !\inst|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y26_N30
\inst4|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst|srom|rom_block|auto_generated|q_a\(8) & \inst4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|srom|rom_block|auto_generated|q_a\(8),
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X28_Y26_N31
\inst4|choose_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector3~0_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|choose_reg\(0));

-- Location: LCCOMB_X28_Y26_N16
\inst4|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = (\inst|srom|rom_block|auto_generated|q_a\(9) & \inst4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|Selector2~0_combout\);

-- Location: FF_X28_Y26_N17
\inst4|choose_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector2~0_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|choose_reg\(1));

-- Location: LCCOMB_X29_Y26_N18
\inst3|rf|R1[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1[6]~0_combout\ = ((!\enact~input_o\ & ((\inst4|res_dest\(0)) # (\inst4|res_dest\(1))))) # (!\inst3|rf|R0[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|res_dest\(0),
	datab => \inst3|rf|R0[2]~0_combout\,
	datac => \inst4|res_dest\(1),
	datad => \enact~input_o\,
	combout => \inst3|rf|R1[6]~0_combout\);

-- Location: LCCOMB_X29_Y26_N26
\inst3|rf|R1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~9_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(7))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R1[6]~0_combout\,
	datac => \inst6|man|ans\(7),
	datad => \keyboard|out\(7),
	combout => \inst3|rf|R1~9_combout\);

-- Location: LCCOMB_X28_Y27_N10
\inst3|rf|R1[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1[4]~2_combout\ = (\rd~input_o\ & (!\RA[1]~input_o\ & (\RA[0]~input_o\ & \enact~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \enact~input_o\,
	combout => \inst3|rf|R1[4]~2_combout\);

-- Location: LCCOMB_X28_Y26_N10
\inst3|rf|R1[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1[4]~3_combout\ = (\inst3|rf|R1[4]~2_combout\) # ((!\enact~input_o\ & (\inst4|res_dest\(0) & !\inst4|res_dest\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enact~input_o\,
	datab => \inst3|rf|R1[4]~2_combout\,
	datac => \inst4|res_dest\(0),
	datad => \inst4|res_dest\(1),
	combout => \inst3|rf|R1[4]~3_combout\);

-- Location: FF_X29_Y26_N27
\inst3|rf|R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~9_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(7));

-- Location: LCCOMB_X27_Y26_N8
\inst7|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux8~0_combout\ = (\inst4|choose_reg\(0) & (((\inst4|choose_reg\(1)) # (\inst3|rf|R1\(7))))) # (!\inst4|choose_reg\(0) & (\inst3|rf|R0\(7) & (!\inst4|choose_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(7),
	datab => \inst4|choose_reg\(0),
	datac => \inst4|choose_reg\(1),
	datad => \inst3|rf|R1\(7),
	combout => \inst7|Mux8~0_combout\);

-- Location: LCCOMB_X27_Y26_N24
\inst7|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux8~1_combout\ = (\inst7|Mux8~0_combout\ & (((\inst3|rf|R3\(7)) # (!\inst4|choose_reg\(1))))) # (!\inst7|Mux8~0_combout\ & (\inst3|rf|R2\(7) & (\inst4|choose_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(7),
	datab => \inst7|Mux8~0_combout\,
	datac => \inst4|choose_reg\(1),
	datad => \inst3|rf|R3\(7),
	combout => \inst7|Mux8~1_combout\);

-- Location: FF_X27_Y26_N25
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

-- Location: LCCOMB_X27_Y26_N4
\inst6|mw|Y[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[7]~feeder_combout\ = \inst7|opt2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(7),
	combout => \inst6|mw|Y[7]~feeder_combout\);

-- Location: FF_X27_Y26_N5
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

-- Location: FF_X28_Y26_N19
\inst4|S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Equal1~0_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|S\(2));

-- Location: LCCOMB_X28_Y26_N2
\inst4|choose_reg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|choose_reg[2]~feeder_combout\ = \inst|srom|rom_block|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|srom|rom_block|auto_generated|q_a\(10),
	combout => \inst4|choose_reg[2]~feeder_combout\);

-- Location: FF_X28_Y26_N3
\inst4|choose_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|choose_reg[2]~feeder_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|choose_reg\(2));

-- Location: FF_X28_Y26_N9
\inst4|choose_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|srom|rom_block|auto_generated|q_a\(11),
	sload => VCC,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|choose_reg\(3));

-- Location: LCCOMB_X28_Y26_N8
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst4|choose_reg\(2) & (((\inst4|choose_reg\(3))))) # (!\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3) & ((\inst3|rf|R2\(7)))) # (!\inst4|choose_reg\(3) & (\inst3|rf|R0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(7),
	datab => \inst4|choose_reg\(2),
	datac => \inst4|choose_reg\(3),
	datad => \inst3|rf|R2\(7),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y26_N10
\inst7|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst4|choose_reg\(2) & ((\inst7|Mux0~0_combout\ & ((\inst3|rf|R3\(7)))) # (!\inst7|Mux0~0_combout\ & (\inst3|rf|R1\(7))))) # (!\inst4|choose_reg\(2) & (((\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst3|rf|R1\(7),
	datac => \inst7|Mux0~0_combout\,
	datad => \inst3|rf|R3\(7),
	combout => \inst7|Mux0~1_combout\);

-- Location: FF_X27_Y26_N11
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

-- Location: LCCOMB_X27_Y25_N14
\inst6|mw|X[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[7]~feeder_combout\ = \inst7|opt1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt1\(7),
	combout => \inst6|mw|X[7]~feeder_combout\);

-- Location: FF_X27_Y25_N15
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

-- Location: FF_X28_Y26_N21
\inst4|S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Equal0~0_combout\,
	ena => \inst4|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|S\(0));

-- Location: LCCOMB_X27_Y25_N16
\inst6|man|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|Mux0~0_combout\ = (\inst6|mw|Y\(7) & (\inst4|S\(2) $ (((!\inst4|S\(0)) # (!\inst6|mw|X\(7)))))) # (!\inst6|mw|Y\(7) & (\inst6|mw|X\(7) & ((\inst4|S\(0)) # (!\inst4|S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|Y\(7),
	datab => \inst4|S\(2),
	datac => \inst6|mw|X\(7),
	datad => \inst4|S\(0),
	combout => \inst6|man|Mux0~0_combout\);

-- Location: FF_X27_Y25_N17
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

-- Location: LCCOMB_X27_Y27_N14
\inst3|rf|R3[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3[4]~0_combout\ = ((\inst4|res_dest\(1) & (!\enact~input_o\ & \inst4|res_dest\(0)))) # (!\inst3|rf|R0[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|res_dest\(1),
	datab => \inst3|rf|R0[2]~0_combout\,
	datac => \enact~input_o\,
	datad => \inst4|res_dest\(0),
	combout => \inst3|rf|R3[4]~0_combout\);

-- Location: LCCOMB_X26_Y27_N10
\inst3|rf|R3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~10_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(7))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(7),
	datac => \inst3|rf|R3[4]~0_combout\,
	datad => \keyboard|out\(7),
	combout => \inst3|rf|R3~10_combout\);

-- Location: LCCOMB_X28_Y27_N4
\inst3|rf|R3[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3[4]~2_combout\ = ((!\RA[1]~input_o\) # (!\RA[0]~input_o\)) # (!\rd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datac => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst3|rf|R3[4]~2_combout\);

-- Location: LCCOMB_X27_Y27_N20
\inst3|rf|R3[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3[4]~3_combout\ = (\enact~input_o\ & (!\inst3|rf|R3[4]~2_combout\)) # (!\enact~input_o\ & (((\inst4|res_dest\(1) & \inst4|res_dest\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R3[4]~2_combout\,
	datab => \enact~input_o\,
	datac => \inst4|res_dest\(1),
	datad => \inst4|res_dest\(0),
	combout => \inst3|rf|R3[4]~3_combout\);

-- Location: FF_X26_Y27_N11
\inst3|rf|R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~10_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(7));

-- Location: LCCOMB_X25_Y26_N8
\inst10|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux26~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(7)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(7),
	datad => \inst3|pf|PC\(7),
	combout => \inst10|Mux26~0_combout\);

-- Location: LCCOMB_X33_Y26_N10
\inst10|status[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|status[0]~1_combout\ = (\switch_buttons[0]~input_o\ & \switch_buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_buttons[0]~input_o\,
	datad => \switch_buttons[1]~input_o\,
	combout => \inst10|status[0]~1_combout\);

-- Location: FF_X33_Y26_N11
\inst10|status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|status[0]~1_combout\,
	ena => \inst10|status[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|status\(1));

-- Location: LCCOMB_X25_Y27_N30
\inst10|N[25]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|N[25]~0_combout\ = (!\inst10|status\(1)) # (!\inst10|status\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|status\(0),
	datad => \inst10|status\(1),
	combout => \inst10|N[25]~0_combout\);

-- Location: FF_X25_Y26_N9
\inst10|N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux26~0_combout\,
	asdata => \inst6|man|ans\(7),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(7));

-- Location: LCCOMB_X26_Y27_N16
\inst3|rf|R3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~9_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(3))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R3[4]~0_combout\,
	datac => \inst6|man|ans\(3),
	datad => \keyboard|out\(3),
	combout => \inst3|rf|R3~9_combout\);

-- Location: FF_X26_Y27_N17
\inst3|rf|R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~9_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(3));

-- Location: LCCOMB_X29_Y26_N8
\inst3|rf|R1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~10_combout\ = (\inst3|rf|R1[6]~0_combout\ & ((\inst6|man|ans\(3)))) # (!\inst3|rf|R1[6]~0_combout\ & (\keyboard|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R1[6]~0_combout\,
	datac => \keyboard|out\(3),
	datad => \inst6|man|ans\(3),
	combout => \inst3|rf|R1~10_combout\);

-- Location: FF_X29_Y26_N9
\inst3|rf|R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~10_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(3));

-- Location: LCCOMB_X28_Y27_N12
\inst3|rf|R0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~10_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\enact~input_o\ & ((\keyboard|out\(3)))) # (!\enact~input_o\ & (\inst6|man|ans\(3))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(3),
	datac => \enact~input_o\,
	datad => \keyboard|out\(3),
	combout => \inst3|rf|R0~10_combout\);

-- Location: FF_X28_Y27_N13
\inst3|rf|R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~10_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(3));

-- Location: LCCOMB_X28_Y26_N22
\inst7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst4|choose_reg\(3) & (\inst4|choose_reg\(2))) # (!\inst4|choose_reg\(3) & ((\inst4|choose_reg\(2) & (\inst3|rf|R1\(3))) # (!\inst4|choose_reg\(2) & ((\inst3|rf|R0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(3),
	datab => \inst4|choose_reg\(2),
	datac => \inst3|rf|R1\(3),
	datad => \inst3|rf|R0\(3),
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y26_N2
\inst7|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~1_combout\ = (\inst4|choose_reg\(3) & ((\inst7|Mux4~0_combout\ & ((\inst3|rf|R3\(3)))) # (!\inst7|Mux4~0_combout\ & (\inst3|rf|R2\(3))))) # (!\inst4|choose_reg\(3) & (((\inst7|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(3),
	datab => \inst3|rf|R2\(3),
	datac => \inst3|rf|R3\(3),
	datad => \inst7|Mux4~0_combout\,
	combout => \inst7|Mux4~1_combout\);

-- Location: FF_X27_Y26_N3
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

-- Location: LCCOMB_X27_Y25_N24
\inst6|mw|X[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[3]~feeder_combout\ = \inst7|opt1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(3),
	combout => \inst6|mw|X[3]~feeder_combout\);

-- Location: FF_X27_Y25_N25
\inst6|mw|X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(3));

-- Location: LCCOMB_X27_Y26_N16
\inst7|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux12~0_combout\ = (\inst4|choose_reg\(1) & ((\inst4|choose_reg\(0)) # ((\inst3|rf|R2\(3))))) # (!\inst4|choose_reg\(1) & (!\inst4|choose_reg\(0) & ((\inst3|rf|R0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(1),
	datab => \inst4|choose_reg\(0),
	datac => \inst3|rf|R2\(3),
	datad => \inst3|rf|R0\(3),
	combout => \inst7|Mux12~0_combout\);

-- Location: LCCOMB_X27_Y26_N20
\inst7|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux12~1_combout\ = (\inst4|choose_reg\(0) & ((\inst7|Mux12~0_combout\ & ((\inst3|rf|R3\(3)))) # (!\inst7|Mux12~0_combout\ & (\inst3|rf|R1\(3))))) # (!\inst4|choose_reg\(0) & (((\inst7|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(3),
	datab => \inst4|choose_reg\(0),
	datac => \inst3|rf|R3\(3),
	datad => \inst7|Mux12~0_combout\,
	combout => \inst7|Mux12~1_combout\);

-- Location: FF_X27_Y26_N21
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

-- Location: LCCOMB_X27_Y26_N26
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

-- Location: FF_X27_Y26_N27
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

-- Location: LCCOMB_X28_Y25_N14
\inst6|man|ans~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~19_combout\ = (\inst6|mw|X\(3)) # (\inst6|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|X\(3),
	datac => \inst6|mw|Y\(3),
	combout => \inst6|man|ans~19_combout\);

-- Location: LCCOMB_X28_Y25_N24
\inst6|man|ans~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~20_combout\ = \inst6|mw|X\(3) $ (\inst6|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|X\(3),
	datac => \inst6|mw|Y\(3),
	combout => \inst6|man|ans~20_combout\);

-- Location: LCCOMB_X29_Y25_N24
\inst6|man|ans[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[3]~6_combout\ = (\inst4|S\(0) & ((\inst6|man|ans~20_combout\))) # (!\inst4|S\(0) & (\inst6|man|ans~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans~19_combout\,
	datab => \inst6|man|ans~20_combout\,
	datad => \inst4|S\(0),
	combout => \inst6|man|ans[3]~6_combout\);

-- Location: LCCOMB_X30_Y10_N24
\keyboard|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~0_combout\ = (\keyboard|num~6_combout\ & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard|num~6_combout\,
	datac => \key_clr~input_o\,
	combout => \keyboard|out~0_combout\);

-- Location: FF_X30_Y10_N25
\keyboard|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~0_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(0));

-- Location: LCCOMB_X30_Y10_N26
\keyboard|out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~2_combout\ = (\key_clr~input_o\ & \keyboard|out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_clr~input_o\,
	datad => \keyboard|out\(0),
	combout => \keyboard|out~2_combout\);

-- Location: FF_X30_Y10_N27
\keyboard|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~2_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(4));

-- Location: LCCOMB_X26_Y27_N14
\inst3|rf|R2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~4_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(4))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(4)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(4),
	datab => \inst3|rf|R0[2]~0_combout\,
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(4),
	combout => \inst3|rf|R2~4_combout\);

-- Location: FF_X26_Y27_N15
\inst3|rf|R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~4_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(4));

-- Location: LCCOMB_X26_Y27_N2
\inst3|rf|R3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~4_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(4))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(4),
	datab => \inst3|rf|R3[4]~0_combout\,
	datad => \keyboard|out\(4),
	combout => \inst3|rf|R3~4_combout\);

-- Location: FF_X26_Y27_N3
\inst3|rf|R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~4_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(4));

-- Location: LCCOMB_X28_Y26_N12
\inst3|rf|R0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~1_combout\ = (\enact~input_o\ & ((\inst3|rf|R0[2]~0_combout\ & ((\keyboard|out\(4)))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(4))))) # (!\enact~input_o\ & (\inst6|man|ans\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(4),
	datab => \enact~input_o\,
	datac => \keyboard|out\(4),
	datad => \inst3|rf|R0[2]~0_combout\,
	combout => \inst3|rf|R0~1_combout\);

-- Location: FF_X28_Y26_N13
\inst3|rf|R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~1_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(4));

-- Location: LCCOMB_X30_Y26_N12
\inst7|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux11~0_combout\ = (\inst4|choose_reg\(1) & (\inst4|choose_reg\(0))) # (!\inst4|choose_reg\(1) & ((\inst4|choose_reg\(0) & ((\inst3|rf|R1\(4)))) # (!\inst4|choose_reg\(0) & (\inst3|rf|R0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(1),
	datab => \inst4|choose_reg\(0),
	datac => \inst3|rf|R0\(4),
	datad => \inst3|rf|R1\(4),
	combout => \inst7|Mux11~0_combout\);

-- Location: LCCOMB_X30_Y26_N16
\inst7|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux11~1_combout\ = (\inst4|choose_reg\(1) & ((\inst7|Mux11~0_combout\ & ((\inst3|rf|R3\(4)))) # (!\inst7|Mux11~0_combout\ & (\inst3|rf|R2\(4))))) # (!\inst4|choose_reg\(1) & (((\inst7|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(4),
	datab => \inst3|rf|R3\(4),
	datac => \inst4|choose_reg\(1),
	datad => \inst7|Mux11~0_combout\,
	combout => \inst7|Mux11~1_combout\);

-- Location: FF_X30_Y26_N17
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

-- Location: LCCOMB_X30_Y26_N22
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

-- Location: FF_X30_Y26_N23
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

-- Location: LCCOMB_X29_Y26_N28
\inst6|man|ans~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~10_combout\ = \inst6|mw|Y\(4) $ (\inst6|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|Y\(4),
	datac => \inst6|mw|X\(4),
	combout => \inst6|man|ans~10_combout\);

-- Location: LCCOMB_X29_Y26_N6
\inst6|man|ans~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~9_combout\ = (\inst6|mw|Y\(4)) # (\inst6|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|Y\(4),
	datac => \inst6|mw|X\(4),
	combout => \inst6|man|ans~9_combout\);

-- Location: LCCOMB_X29_Y27_N26
\inst6|man|ans[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[4]~1_combout\ = (\inst4|S\(0) & (\inst6|man|ans~10_combout\)) # (!\inst4|S\(0) & ((\inst6|man|ans~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|S\(0),
	datab => \inst6|man|ans~10_combout\,
	datad => \inst6|man|ans~9_combout\,
	combout => \inst6|man|ans[4]~1_combout\);

-- Location: LCCOMB_X30_Y10_N16
\keyboard|out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~3_combout\ = (\keyboard|num~19_combout\ & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|num~19_combout\,
	datac => \key_clr~input_o\,
	combout => \keyboard|out~3_combout\);

-- Location: FF_X30_Y10_N17
\keyboard|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~3_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(1));

-- Location: LCCOMB_X30_Y10_N6
\keyboard|out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~4_combout\ = (\key_clr~input_o\ & \keyboard|out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_clr~input_o\,
	datad => \keyboard|out\(1),
	combout => \keyboard|out~4_combout\);

-- Location: FF_X30_Y10_N7
\keyboard|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~4_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(5));

-- Location: LCCOMB_X26_Y27_N6
\inst3|rf|R2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~6_combout\ = (\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(5))) # (!\inst3|rf|Equal1~0_combout\ & ((\inst3|rf|R0[2]~0_combout\ & ((\keyboard|out\(5)))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(5),
	datab => \inst3|rf|Equal1~0_combout\,
	datac => \keyboard|out\(5),
	datad => \inst3|rf|R0[2]~0_combout\,
	combout => \inst3|rf|R2~6_combout\);

-- Location: FF_X26_Y27_N7
\inst3|rf|R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~6_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(5));

-- Location: LCCOMB_X26_Y27_N18
\inst3|rf|R3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~6_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(5))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(5),
	datab => \inst3|rf|R3[4]~0_combout\,
	datac => \keyboard|out\(5),
	combout => \inst3|rf|R3~6_combout\);

-- Location: FF_X26_Y27_N19
\inst3|rf|R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~6_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(5));

-- Location: LCCOMB_X28_Y27_N14
\inst3|rf|R0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~5_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\enact~input_o\ & ((\keyboard|out\(5)))) # (!\enact~input_o\ & (\inst6|man|ans\(5))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(5),
	datac => \keyboard|out\(5),
	datad => \enact~input_o\,
	combout => \inst3|rf|R0~5_combout\);

-- Location: FF_X28_Y27_N15
\inst3|rf|R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~5_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(5));

-- Location: LCCOMB_X28_Y27_N18
\inst7|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux10~0_combout\ = (\inst4|choose_reg\(0) & ((\inst3|rf|R1\(5)) # ((\inst4|choose_reg\(1))))) # (!\inst4|choose_reg\(0) & (((\inst3|rf|R0\(5) & !\inst4|choose_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(0),
	datab => \inst3|rf|R1\(5),
	datac => \inst3|rf|R0\(5),
	datad => \inst4|choose_reg\(1),
	combout => \inst7|Mux10~0_combout\);

-- Location: LCCOMB_X28_Y27_N30
\inst7|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux10~1_combout\ = (\inst4|choose_reg\(1) & ((\inst7|Mux10~0_combout\ & ((\inst3|rf|R3\(5)))) # (!\inst7|Mux10~0_combout\ & (\inst3|rf|R2\(5))))) # (!\inst4|choose_reg\(1) & (((\inst7|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(5),
	datab => \inst4|choose_reg\(1),
	datac => \inst3|rf|R3\(5),
	datad => \inst7|Mux10~0_combout\,
	combout => \inst7|Mux10~1_combout\);

-- Location: FF_X28_Y27_N31
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

-- Location: LCCOMB_X29_Y27_N14
\inst6|mw|Y[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[5]~feeder_combout\ = \inst7|opt2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(5),
	combout => \inst6|mw|Y[5]~feeder_combout\);

-- Location: FF_X29_Y27_N15
\inst6|mw|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(5));

-- Location: LCCOMB_X29_Y27_N24
\inst6|man|ans~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~13_combout\ = (\inst6|mw|Y\(5)) # (\inst6|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|Y\(5),
	datad => \inst6|mw|X\(5),
	combout => \inst6|man|ans~13_combout\);

-- Location: LCCOMB_X29_Y27_N10
\inst6|man|ans~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~14_combout\ = \inst6|mw|Y\(5) $ (\inst6|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|mw|Y\(5),
	datad => \inst6|mw|X\(5),
	combout => \inst6|man|ans~14_combout\);

-- Location: LCCOMB_X29_Y27_N22
\inst6|man|ans[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[5]~3_combout\ = (\inst4|S\(0) & ((\inst6|man|ans~14_combout\))) # (!\inst4|S\(0) & (\inst6|man|ans~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|S\(0),
	datab => \inst6|man|ans~13_combout\,
	datad => \inst6|man|ans~14_combout\,
	combout => \inst6|man|ans[5]~3_combout\);

-- Location: LCCOMB_X30_Y10_N8
\keyboard|out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~5_combout\ = (\key_clr~input_o\ & \keyboard|num~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_clr~input_o\,
	datad => \keyboard|num~12_combout\,
	combout => \keyboard|out~5_combout\);

-- Location: FF_X30_Y10_N9
\keyboard|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~5_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(2));

-- Location: LCCOMB_X30_Y10_N2
\keyboard|out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard|out~6_combout\ = (\keyboard|out\(2) & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard|out\(2),
	datac => \key_clr~input_o\,
	combout => \keyboard|out~6_combout\);

-- Location: FF_X30_Y10_N3
\keyboard|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \keyboard|out~6_combout\,
	ena => \keyboard|out[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard|out\(6));

-- Location: LCCOMB_X28_Y26_N14
\inst3|rf|R0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~7_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\enact~input_o\ & ((\keyboard|out\(6)))) # (!\enact~input_o\ & (\inst6|man|ans\(6))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(6),
	datac => \enact~input_o\,
	datad => \keyboard|out\(6),
	combout => \inst3|rf|R0~7_combout\);

-- Location: FF_X28_Y26_N15
\inst3|rf|R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~7_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(6));

-- Location: LCCOMB_X26_Y26_N26
\inst7|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux9~0_combout\ = (\inst4|choose_reg\(0) & ((\inst4|choose_reg\(1)) # ((\inst3|rf|R1\(6))))) # (!\inst4|choose_reg\(0) & (!\inst4|choose_reg\(1) & (\inst3|rf|R0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(0),
	datab => \inst4|choose_reg\(1),
	datac => \inst3|rf|R0\(6),
	datad => \inst3|rf|R1\(6),
	combout => \inst7|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
\inst3|rf|R3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~8_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(6))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(6),
	datac => \inst3|rf|R3[4]~0_combout\,
	datad => \keyboard|out\(6),
	combout => \inst3|rf|R3~8_combout\);

-- Location: FF_X26_Y27_N27
\inst3|rf|R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~8_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(6));

-- Location: LCCOMB_X26_Y27_N22
\inst3|rf|R2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~8_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(6))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(6)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(6),
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(6),
	combout => \inst3|rf|R2~8_combout\);

-- Location: FF_X26_Y27_N23
\inst3|rf|R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~8_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(6));

-- Location: LCCOMB_X26_Y26_N22
\inst7|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux9~1_combout\ = (\inst7|Mux9~0_combout\ & (((\inst3|rf|R3\(6))) # (!\inst4|choose_reg\(1)))) # (!\inst7|Mux9~0_combout\ & (\inst4|choose_reg\(1) & ((\inst3|rf|R2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux9~0_combout\,
	datab => \inst4|choose_reg\(1),
	datac => \inst3|rf|R3\(6),
	datad => \inst3|rf|R2\(6),
	combout => \inst7|Mux9~1_combout\);

-- Location: FF_X26_Y26_N23
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

-- Location: LCCOMB_X27_Y25_N10
\inst6|mw|Y[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[6]~feeder_combout\ = \inst7|opt2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(6),
	combout => \inst6|mw|Y[6]~feeder_combout\);

-- Location: FF_X27_Y25_N11
\inst6|mw|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|Y[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(6));

-- Location: LCCOMB_X28_Y25_N2
\inst6|man|ans~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~17_combout\ = (\inst6|mw|Y\(6)) # (\inst6|mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|Y\(6),
	datad => \inst6|mw|X\(6),
	combout => \inst6|man|ans~17_combout\);

-- Location: LCCOMB_X28_Y25_N12
\inst6|man|ans~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~18_combout\ = \inst6|mw|Y\(6) $ (\inst6|mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|Y\(6),
	datad => \inst6|mw|X\(6),
	combout => \inst6|man|ans~18_combout\);

-- Location: LCCOMB_X28_Y25_N0
\inst6|man|ans[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[6]~5_combout\ = (\inst4|S\(0) & ((\inst6|man|ans~18_combout\))) # (!\inst4|S\(0) & (\inst6|man|ans~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|S\(0),
	datab => \inst6|man|ans~17_combout\,
	datad => \inst6|man|ans~18_combout\,
	combout => \inst6|man|ans[6]~5_combout\);

-- Location: FF_X28_Y25_N1
\inst6|man|ans[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[6]~5_combout\,
	asdata => \inst6|mw|X\(7),
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(6));

-- Location: LCCOMB_X29_Y26_N2
\inst3|rf|R1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~7_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(6))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R1[6]~0_combout\,
	datac => \inst6|man|ans\(6),
	datad => \keyboard|out\(6),
	combout => \inst3|rf|R1~7_combout\);

-- Location: FF_X29_Y26_N3
\inst3|rf|R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~7_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(6));

-- Location: LCCOMB_X26_Y26_N28
\inst7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst4|choose_reg\(2) & (\inst4|choose_reg\(3))) # (!\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3) & ((\inst3|rf|R2\(6)))) # (!\inst4|choose_reg\(3) & (\inst3|rf|R0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst4|choose_reg\(3),
	datac => \inst3|rf|R0\(6),
	datad => \inst3|rf|R2\(6),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y26_N24
\inst7|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~1_combout\ = (\inst7|Mux1~0_combout\ & (((\inst3|rf|R3\(6)) # (!\inst4|choose_reg\(2))))) # (!\inst7|Mux1~0_combout\ & (\inst3|rf|R1\(6) & ((\inst4|choose_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(6),
	datab => \inst7|Mux1~0_combout\,
	datac => \inst3|rf|R3\(6),
	datad => \inst4|choose_reg\(2),
	combout => \inst7|Mux1~1_combout\);

-- Location: FF_X26_Y26_N25
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

-- Location: LCCOMB_X29_Y27_N2
\inst6|mw|X[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[6]~feeder_combout\ = \inst7|opt1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(6),
	combout => \inst6|mw|X[6]~feeder_combout\);

-- Location: FF_X29_Y27_N3
\inst6|mw|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|mw|X[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|X\(6));

-- Location: FF_X29_Y27_N23
\inst6|man|ans[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[5]~3_combout\,
	asdata => \inst6|mw|X\(6),
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(5));

-- Location: LCCOMB_X29_Y27_N28
\inst3|rf|R1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~5_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(5))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(5),
	datac => \inst3|rf|R1[6]~0_combout\,
	datad => \keyboard|out\(5),
	combout => \inst3|rf|R1~5_combout\);

-- Location: FF_X29_Y27_N29
\inst3|rf|R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~5_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(5));

-- Location: LCCOMB_X28_Y27_N16
\inst7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst4|choose_reg\(2) & (((\inst4|choose_reg\(3))))) # (!\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3) & (\inst3|rf|R2\(5))) # (!\inst4|choose_reg\(3) & ((\inst3|rf|R0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(5),
	datab => \inst4|choose_reg\(2),
	datac => \inst3|rf|R0\(5),
	datad => \inst4|choose_reg\(3),
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y27_N0
\inst7|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~1_combout\ = (\inst4|choose_reg\(2) & ((\inst7|Mux2~0_combout\ & ((\inst3|rf|R3\(5)))) # (!\inst7|Mux2~0_combout\ & (\inst3|rf|R1\(5))))) # (!\inst4|choose_reg\(2) & (((\inst7|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst3|rf|R1\(5),
	datac => \inst3|rf|R3\(5),
	datad => \inst7|Mux2~0_combout\,
	combout => \inst7|Mux2~1_combout\);

-- Location: FF_X28_Y27_N1
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

-- Location: LCCOMB_X28_Y27_N20
\inst6|mw|X[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[5]~feeder_combout\ = \inst7|opt1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt1\(5),
	combout => \inst6|mw|X[5]~feeder_combout\);

-- Location: FF_X28_Y27_N21
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

-- Location: FF_X29_Y27_N27
\inst6|man|ans[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[4]~1_combout\,
	asdata => \inst6|mw|X\(5),
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(4));

-- Location: LCCOMB_X29_Y26_N22
\inst3|rf|R1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~4_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(4))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R1[6]~0_combout\,
	datac => \inst6|man|ans\(4),
	datad => \keyboard|out\(4),
	combout => \inst3|rf|R1~4_combout\);

-- Location: FF_X29_Y26_N23
\inst3|rf|R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~4_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(4));

-- Location: LCCOMB_X30_Y26_N4
\inst7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst4|choose_reg\(2) & (\inst4|choose_reg\(3))) # (!\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3) & ((\inst3|rf|R2\(4)))) # (!\inst4|choose_reg\(3) & (\inst3|rf|R0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst4|choose_reg\(3),
	datac => \inst3|rf|R0\(4),
	datad => \inst3|rf|R2\(4),
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y26_N8
\inst7|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~1_combout\ = (\inst4|choose_reg\(2) & ((\inst7|Mux3~0_combout\ & ((\inst3|rf|R3\(4)))) # (!\inst7|Mux3~0_combout\ & (\inst3|rf|R1\(4))))) # (!\inst4|choose_reg\(2) & (((\inst7|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst3|rf|R1\(4),
	datac => \inst7|Mux3~0_combout\,
	datad => \inst3|rf|R3\(4),
	combout => \inst7|Mux3~1_combout\);

-- Location: FF_X30_Y26_N9
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

-- Location: LCCOMB_X29_Y25_N22
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

-- Location: FF_X29_Y25_N23
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

-- Location: FF_X29_Y25_N25
\inst6|man|ans[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[3]~6_combout\,
	asdata => \inst6|mw|X\(4),
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(3));

-- Location: LCCOMB_X26_Y27_N28
\inst3|rf|R2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~9_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(3))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(3)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(3),
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(3),
	combout => \inst3|rf|R2~9_combout\);

-- Location: FF_X26_Y27_N29
\inst3|rf|R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~9_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(3));

-- Location: LCCOMB_X27_Y26_N18
\inst10|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux22~0_combout\ = (!\inst10|status\(0) & (\inst3|rf|R2\(3) & !\inst10|status\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datac => \inst3|rf|R2\(3),
	datad => \inst10|status\(1),
	combout => \inst10|Mux22~0_combout\);

-- Location: FF_X27_Y26_N19
\inst10|N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux22~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(11));

-- Location: LCCOMB_X26_Y26_N6
\inst2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst2|sel\(0) & ((\inst10|N\(7)) # ((\inst2|sel\(1))))) # (!\inst2|sel\(0) & (((\inst10|N\(11) & !\inst2|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(7),
	datab => \inst10|N\(11),
	datac => \inst2|sel\(0),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y26_N30
\inst10|Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux30~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(3)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(3),
	datad => \inst3|pf|PC\(3),
	combout => \inst10|Mux30~0_combout\);

-- Location: FF_X25_Y26_N31
\inst10|N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux30~0_combout\,
	asdata => \inst6|man|ans\(3),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(3));

-- Location: LCCOMB_X27_Y26_N14
\inst10|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (\inst10|status\(0) & (\inst|srom|rom_block|auto_generated|q_a\(15))) # (!\inst10|status\(0) & ((\inst3|rf|R0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst3|rf|R0\(7),
	combout => \inst10|Mux2~0_combout\);

-- Location: FF_X27_Y26_N15
\inst10|N[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux2~0_combout\,
	asdata => \inst6|mw|X\(7),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(31));

-- Location: LCCOMB_X26_Y26_N12
\inst2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~1_combout\ = (\inst2|Mux0~0_combout\ & (((\inst10|N\(31)) # (!\inst2|sel\(1))))) # (!\inst2|Mux0~0_combout\ & (\inst10|N\(3) & ((\inst2|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datab => \inst10|N\(3),
	datac => \inst10|N\(31),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux0~1_combout\);

-- Location: LCCOMB_X27_Y26_N12
\inst10|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux14~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(3)))) # (!\inst10|status\(0) & (\inst3|rf|R1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(3),
	datab => \inst|srom|rom_block|auto_generated|q_a\(3),
	datad => \inst10|status\(0),
	combout => \inst10|Mux14~0_combout\);

-- Location: FF_X27_Y26_N13
\inst10|N[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux14~0_combout\,
	asdata => \inst6|mw|Y\(3),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(19));

-- Location: LCCOMB_X27_Y26_N22
\inst10|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst10|status\(0) & (\inst|srom|rom_block|auto_generated|q_a\(11))) # (!\inst10|status\(0) & ((\inst3|rf|R0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst3|rf|R0\(3),
	combout => \inst10|Mux6~0_combout\);

-- Location: FF_X27_Y26_N23
\inst10|N[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux6~0_combout\,
	asdata => \inst6|mw|X\(3),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(27));

-- Location: LCCOMB_X26_Y26_N14
\inst2|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~2_combout\ = (\inst2|sel\(1) & ((\inst2|sel\(0)) # ((\inst10|N\(19))))) # (!\inst2|sel\(1) & (!\inst2|sel\(0) & ((\inst10|N\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sel\(1),
	datab => \inst2|sel\(0),
	datac => \inst10|N\(19),
	datad => \inst10|N\(27),
	combout => \inst2|Mux0~2_combout\);

-- Location: LCCOMB_X27_Y27_N18
\inst10|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux18~0_combout\ = (!\inst10|status\(1) & (!\inst10|status\(0) & \inst3|rf|R2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|status\(1),
	datac => \inst10|status\(0),
	datad => \inst3|rf|R2\(7),
	combout => \inst10|Mux18~0_combout\);

-- Location: FF_X27_Y27_N19
\inst10|N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux18~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(15));

-- Location: LCCOMB_X27_Y26_N0
\inst10|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = (\inst10|status\(0) & (\inst|srom|rom_block|auto_generated|q_a\(7))) # (!\inst10|status\(0) & ((\inst3|rf|R1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(7),
	datab => \inst3|rf|R1\(7),
	datad => \inst10|status\(0),
	combout => \inst10|Mux10~0_combout\);

-- Location: FF_X27_Y26_N1
\inst10|N[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux10~0_combout\,
	asdata => \inst6|mw|Y\(7),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(23));

-- Location: LCCOMB_X27_Y27_N28
\inst2|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~3_combout\ = (\inst2|Mux0~2_combout\ & ((\inst10|N\(15)) # ((!\inst2|sel\(0))))) # (!\inst2|Mux0~2_combout\ & (((\inst2|sel\(0) & \inst10|N\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~2_combout\,
	datab => \inst10|N\(15),
	datac => \inst2|sel\(0),
	datad => \inst10|N\(23),
	combout => \inst2|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y27_N0
\inst2|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~4_combout\ = (\inst2|sel\(2) & (\inst2|Mux0~1_combout\)) # (!\inst2|sel\(2) & ((\inst2|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sel\(2),
	datac => \inst2|Mux0~1_combout\,
	datad => \inst2|Mux0~3_combout\,
	combout => \inst2|Mux0~4_combout\);

-- Location: FF_X27_Y27_N1
\inst2|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|num\(3));

-- Location: LCCOMB_X25_Y27_N10
\inst10|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(13)))) # (!\inst10|status\(0) & (\inst3|rf|R0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(5),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst10|Mux4~0_combout\);

-- Location: FF_X25_Y27_N11
\inst10|N[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux4~0_combout\,
	asdata => \inst6|mw|X\(5),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(29));

-- Location: LCCOMB_X29_Y26_N12
\inst3|rf|R1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~6_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(1))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R1[6]~0_combout\,
	datac => \inst6|man|ans\(1),
	datad => \keyboard|out\(1),
	combout => \inst3|rf|R1~6_combout\);

-- Location: FF_X29_Y26_N13
\inst3|rf|R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~6_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(1));

-- Location: LCCOMB_X26_Y27_N20
\inst3|rf|R2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~5_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(1))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(1)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(1),
	datab => \inst3|rf|R0[2]~0_combout\,
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(1),
	combout => \inst3|rf|R2~5_combout\);

-- Location: FF_X26_Y27_N21
\inst3|rf|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~5_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(1));

-- Location: LCCOMB_X28_Y27_N26
\inst3|rf|R0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~6_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\enact~input_o\ & ((\keyboard|out\(1)))) # (!\enact~input_o\ & (\inst6|man|ans\(1))))) # (!\inst3|rf|R0[2]~0_combout\ & (((\inst6|man|ans\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \enact~input_o\,
	datac => \inst6|man|ans\(1),
	datad => \keyboard|out\(1),
	combout => \inst3|rf|R0~6_combout\);

-- Location: FF_X28_Y27_N27
\inst3|rf|R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~6_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(1));

-- Location: LCCOMB_X25_Y27_N24
\inst7|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux14~0_combout\ = (\inst4|choose_reg\(0) & (((\inst4|choose_reg\(1))))) # (!\inst4|choose_reg\(0) & ((\inst4|choose_reg\(1) & (\inst3|rf|R2\(1))) # (!\inst4|choose_reg\(1) & ((\inst3|rf|R0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(1),
	datab => \inst4|choose_reg\(0),
	datac => \inst3|rf|R0\(1),
	datad => \inst4|choose_reg\(1),
	combout => \inst7|Mux14~0_combout\);

-- Location: LCCOMB_X25_Y27_N12
\inst7|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux14~1_combout\ = (\inst4|choose_reg\(0) & ((\inst7|Mux14~0_combout\ & ((\inst3|rf|R3\(1)))) # (!\inst7|Mux14~0_combout\ & (\inst3|rf|R1\(1))))) # (!\inst4|choose_reg\(0) & (((\inst7|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(1),
	datab => \inst4|choose_reg\(0),
	datac => \inst3|rf|R3\(1),
	datad => \inst7|Mux14~0_combout\,
	combout => \inst7|Mux14~1_combout\);

-- Location: FF_X25_Y27_N13
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

-- Location: LCCOMB_X25_Y27_N14
\inst6|mw|Y[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|Y[1]~feeder_combout\ = \inst7|opt2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|opt2\(1),
	combout => \inst6|mw|Y[1]~feeder_combout\);

-- Location: FF_X25_Y27_N15
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

-- Location: LCCOMB_X25_Y27_N20
\inst7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3)) # ((\inst3|rf|R1\(1))))) # (!\inst4|choose_reg\(2) & (!\inst4|choose_reg\(3) & (\inst3|rf|R0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst4|choose_reg\(3),
	datac => \inst3|rf|R0\(1),
	datad => \inst3|rf|R1\(1),
	combout => \inst7|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y27_N28
\inst7|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~1_combout\ = (\inst4|choose_reg\(3) & ((\inst7|Mux6~0_combout\ & ((\inst3|rf|R3\(1)))) # (!\inst7|Mux6~0_combout\ & (\inst3|rf|R2\(1))))) # (!\inst4|choose_reg\(3) & (((\inst7|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(1),
	datab => \inst4|choose_reg\(3),
	datac => \inst3|rf|R3\(1),
	datad => \inst7|Mux6~0_combout\,
	combout => \inst7|Mux6~1_combout\);

-- Location: FF_X25_Y27_N29
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

-- Location: LCCOMB_X29_Y27_N12
\inst6|mw|X[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[1]~feeder_combout\ = \inst7|opt1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt1\(1),
	combout => \inst6|mw|X[1]~feeder_combout\);

-- Location: FF_X29_Y27_N13
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

-- Location: LCCOMB_X29_Y27_N20
\inst6|man|ans~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~11_combout\ = (\inst6|mw|Y\(1)) # (\inst6|mw|X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|Y\(1),
	datad => \inst6|mw|X\(1),
	combout => \inst6|man|ans~11_combout\);

-- Location: LCCOMB_X29_Y27_N6
\inst6|man|ans~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~12_combout\ = \inst6|mw|Y\(1) $ (\inst6|mw|X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|mw|Y\(1),
	datad => \inst6|mw|X\(1),
	combout => \inst6|man|ans~12_combout\);

-- Location: LCCOMB_X29_Y27_N4
\inst6|man|ans[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[1]~2_combout\ = (\inst4|S\(0) & ((\inst6|man|ans~12_combout\))) # (!\inst4|S\(0) & (\inst6|man|ans~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|S\(0),
	datab => \inst6|man|ans~11_combout\,
	datad => \inst6|man|ans~12_combout\,
	combout => \inst6|man|ans[1]~2_combout\);

-- Location: LCCOMB_X29_Y26_N20
\inst3|rf|R1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~8_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(2))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(2),
	datab => \inst3|rf|R1[6]~0_combout\,
	datad => \keyboard|out\(2),
	combout => \inst3|rf|R1~8_combout\);

-- Location: FF_X29_Y26_N21
\inst3|rf|R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~8_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(2));

-- Location: LCCOMB_X28_Y26_N24
\inst3|rf|R0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~8_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\enact~input_o\ & ((\keyboard|out\(2)))) # (!\enact~input_o\ & (\inst6|man|ans\(2))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(2),
	datac => \enact~input_o\,
	datad => \keyboard|out\(2),
	combout => \inst3|rf|R0~8_combout\);

-- Location: FF_X28_Y26_N25
\inst3|rf|R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~8_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(2));

-- Location: LCCOMB_X26_Y26_N8
\inst7|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux13~0_combout\ = (\inst4|choose_reg\(1) & ((\inst3|rf|R2\(2)) # ((\inst4|choose_reg\(0))))) # (!\inst4|choose_reg\(1) & (((!\inst4|choose_reg\(0) & \inst3|rf|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(2),
	datab => \inst4|choose_reg\(1),
	datac => \inst4|choose_reg\(0),
	datad => \inst3|rf|R0\(2),
	combout => \inst7|Mux13~0_combout\);

-- Location: LCCOMB_X26_Y27_N8
\inst3|rf|R3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~7_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(2))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(2),
	datac => \inst3|rf|R3[4]~0_combout\,
	datad => \keyboard|out\(2),
	combout => \inst3|rf|R3~7_combout\);

-- Location: FF_X26_Y27_N9
\inst3|rf|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~7_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(2));

-- Location: LCCOMB_X26_Y26_N16
\inst7|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux13~1_combout\ = (\inst4|choose_reg\(0) & ((\inst7|Mux13~0_combout\ & ((\inst3|rf|R3\(2)))) # (!\inst7|Mux13~0_combout\ & (\inst3|rf|R1\(2))))) # (!\inst4|choose_reg\(0) & (((\inst7|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(0),
	datab => \inst3|rf|R1\(2),
	datac => \inst7|Mux13~0_combout\,
	datad => \inst3|rf|R3\(2),
	combout => \inst7|Mux13~1_combout\);

-- Location: FF_X26_Y26_N17
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

-- Location: LCCOMB_X26_Y25_N0
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

-- Location: FF_X26_Y25_N1
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

-- Location: LCCOMB_X26_Y25_N14
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

-- Location: LCCOMB_X26_Y25_N20
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

-- Location: LCCOMB_X27_Y25_N20
\inst6|man|ans[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[2]~4_combout\ = (\inst4|S\(0) & ((\inst6|man|ans~16_combout\))) # (!\inst4|S\(0) & (\inst6|man|ans~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans~15_combout\,
	datab => \inst6|man|ans~16_combout\,
	datad => \inst4|S\(0),
	combout => \inst6|man|ans[2]~4_combout\);

-- Location: FF_X27_Y25_N21
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
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(2));

-- Location: LCCOMB_X26_Y27_N12
\inst3|rf|R2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~7_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(2))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(2)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(2),
	datab => \inst3|rf|R0[2]~0_combout\,
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(2),
	combout => \inst3|rf|R2~7_combout\);

-- Location: FF_X26_Y27_N13
\inst3|rf|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~7_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(2));

-- Location: LCCOMB_X26_Y26_N2
\inst7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3)) # ((\inst3|rf|R1\(2))))) # (!\inst4|choose_reg\(2) & (!\inst4|choose_reg\(3) & (\inst3|rf|R0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst4|choose_reg\(3),
	datac => \inst3|rf|R0\(2),
	datad => \inst3|rf|R1\(2),
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y26_N30
\inst7|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~1_combout\ = (\inst4|choose_reg\(3) & ((\inst7|Mux5~0_combout\ & ((\inst3|rf|R3\(2)))) # (!\inst7|Mux5~0_combout\ & (\inst3|rf|R2\(2))))) # (!\inst4|choose_reg\(3) & (((\inst7|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(2),
	datab => \inst3|rf|R3\(2),
	datac => \inst4|choose_reg\(3),
	datad => \inst7|Mux5~0_combout\,
	combout => \inst7|Mux5~1_combout\);

-- Location: FF_X26_Y26_N31
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

-- Location: LCCOMB_X27_Y26_N30
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

-- Location: FF_X27_Y26_N31
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

-- Location: FF_X29_Y27_N5
\inst6|man|ans[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[1]~2_combout\,
	asdata => \inst6|mw|X\(2),
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(1));

-- Location: LCCOMB_X26_Y27_N0
\inst3|rf|R3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~5_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(1))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|man|ans\(1),
	datac => \inst3|rf|R3[4]~0_combout\,
	datad => \keyboard|out\(1),
	combout => \inst3|rf|R3~5_combout\);

-- Location: FF_X26_Y27_N1
\inst3|rf|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~5_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(1));

-- Location: LCCOMB_X25_Y26_N0
\inst10|Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux32~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(1)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(1),
	datad => \inst3|pf|PC\(1),
	combout => \inst10|Mux32~0_combout\);

-- Location: FF_X25_Y26_N1
\inst10|N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux32~0_combout\,
	asdata => \inst6|man|ans\(1),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(1));

-- Location: LCCOMB_X25_Y27_N6
\inst10|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux24~0_combout\ = (!\inst10|status\(0) & (\inst3|rf|R2\(1) & !\inst10|status\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|status\(0),
	datac => \inst3|rf|R2\(1),
	datad => \inst10|status\(1),
	combout => \inst10|Mux24~0_combout\);

-- Location: FF_X25_Y27_N7
\inst10|N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux24~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(9));

-- Location: LCCOMB_X25_Y26_N6
\inst10|Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux28~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(5)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(5),
	datad => \inst3|pf|PC\(5),
	combout => \inst10|Mux28~0_combout\);

-- Location: FF_X25_Y26_N7
\inst10|N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux28~0_combout\,
	asdata => \inst6|man|ans\(5),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(5));

-- Location: LCCOMB_X25_Y27_N2
\inst2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst2|sel\(0) & (((\inst10|N\(5)) # (\inst2|sel\(1))))) # (!\inst2|sel\(0) & (\inst10|N\(9) & ((!\inst2|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(9),
	datab => \inst2|sel\(0),
	datac => \inst10|N\(5),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y27_N16
\inst2|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~1_combout\ = (\inst2|Mux2~0_combout\ & ((\inst10|N\(29)) # ((!\inst2|sel\(1))))) # (!\inst2|Mux2~0_combout\ & (((\inst10|N\(1) & \inst2|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(29),
	datab => \inst10|N\(1),
	datac => \inst2|Mux2~0_combout\,
	datad => \inst2|sel\(1),
	combout => \inst2|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y27_N8
\inst10|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux12~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(5)))) # (!\inst10|status\(0) & (\inst3|rf|R1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(5),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(5),
	combout => \inst10|Mux12~0_combout\);

-- Location: FF_X25_Y27_N9
\inst10|N[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux12~0_combout\,
	asdata => \inst6|mw|Y\(5),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(21));

-- Location: LCCOMB_X25_Y27_N26
\inst10|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux16~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(1)))) # (!\inst10|status\(0) & (\inst3|rf|R1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(1),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(1),
	combout => \inst10|Mux16~0_combout\);

-- Location: FF_X25_Y27_N27
\inst10|N[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux16~0_combout\,
	asdata => \inst6|mw|Y\(1),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(17));

-- Location: LCCOMB_X25_Y27_N22
\inst10|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux8~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(9)))) # (!\inst10|status\(0) & (\inst3|rf|R0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(1),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(9),
	combout => \inst10|Mux8~0_combout\);

-- Location: FF_X25_Y27_N23
\inst10|N[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux8~0_combout\,
	asdata => \inst6|mw|X\(1),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(25));

-- Location: LCCOMB_X25_Y27_N18
\inst2|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~2_combout\ = (\inst2|sel\(0) & (((\inst2|sel\(1))))) # (!\inst2|sel\(0) & ((\inst2|sel\(1) & (\inst10|N\(17))) # (!\inst2|sel\(1) & ((\inst10|N\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(17),
	datab => \inst2|sel\(0),
	datac => \inst10|N\(25),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y27_N4
\inst10|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux20~0_combout\ = (!\inst10|status\(1) & (!\inst10|status\(0) & \inst3|rf|R2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(1),
	datab => \inst10|status\(0),
	datac => \inst3|rf|R2\(5),
	combout => \inst10|Mux20~0_combout\);

-- Location: FF_X25_Y27_N5
\inst10|N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux20~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(13));

-- Location: LCCOMB_X25_Y27_N0
\inst2|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~3_combout\ = (\inst2|Mux2~2_combout\ & (((\inst10|N\(13)) # (!\inst2|sel\(0))))) # (!\inst2|Mux2~2_combout\ & (\inst10|N\(21) & ((\inst2|sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(21),
	datab => \inst2|Mux2~2_combout\,
	datac => \inst10|N\(13),
	datad => \inst2|sel\(0),
	combout => \inst2|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y27_N16
\inst2|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~4_combout\ = (\inst2|sel\(2) & (\inst2|Mux2~1_combout\)) # (!\inst2|sel\(2) & ((\inst2|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~1_combout\,
	datac => \inst2|Mux2~3_combout\,
	datad => \inst2|sel\(2),
	combout => \inst2|Mux2~4_combout\);

-- Location: FF_X27_Y27_N17
\inst2|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|num\(1));

-- Location: LCCOMB_X25_Y26_N10
\inst10|Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux27~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(6)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(6),
	datad => \inst3|pf|PC\(6),
	combout => \inst10|Mux27~0_combout\);

-- Location: FF_X25_Y26_N11
\inst10|N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux27~0_combout\,
	asdata => \inst6|man|ans\(6),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(6));

-- Location: LCCOMB_X26_Y26_N4
\inst10|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux23~0_combout\ = (\inst3|rf|R2\(2) & (!\inst10|status\(0) & !\inst10|status\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(2),
	datab => \inst10|status\(0),
	datac => \inst10|status\(1),
	combout => \inst10|Mux23~0_combout\);

-- Location: FF_X26_Y26_N5
\inst10|N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux23~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(10));

-- Location: LCCOMB_X26_Y26_N10
\inst2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst2|sel\(0) & ((\inst10|N\(6)) # ((\inst2|sel\(1))))) # (!\inst2|sel\(0) & (((\inst10|N\(10) & !\inst2|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(6),
	datab => \inst10|N\(10),
	datac => \inst2|sel\(0),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y26_N20
\inst10|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(14)))) # (!\inst10|status\(0) & (\inst3|rf|R0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(6),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst10|Mux3~0_combout\);

-- Location: FF_X26_Y26_N21
\inst10|N[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux3~0_combout\,
	asdata => \inst6|mw|X\(6),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(30));

-- Location: LCCOMB_X25_Y26_N4
\inst10|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux31~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(2)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(2),
	datad => \inst3|pf|PC\(2),
	combout => \inst10|Mux31~0_combout\);

-- Location: FF_X25_Y26_N5
\inst10|N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux31~0_combout\,
	asdata => \inst6|man|ans\(2),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(2));

-- Location: LCCOMB_X26_Y26_N0
\inst2|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~1_combout\ = (\inst2|Mux1~0_combout\ & ((\inst10|N\(30)) # ((!\inst2|sel\(1))))) # (!\inst2|Mux1~0_combout\ & (((\inst10|N\(2) & \inst2|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux1~0_combout\,
	datab => \inst10|N\(30),
	datac => \inst10|N\(2),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y27_N6
\inst10|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux19~0_combout\ = (!\inst10|status\(0) & (\inst3|rf|R2\(6) & !\inst10|status\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R2\(6),
	datac => \inst10|status\(1),
	combout => \inst10|Mux19~0_combout\);

-- Location: FF_X27_Y27_N7
\inst10|N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux19~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(14));

-- Location: LCCOMB_X27_Y26_N28
\inst10|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(10)))) # (!\inst10|status\(0) & (\inst3|rf|R0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(2),
	datab => \inst|srom|rom_block|auto_generated|q_a\(10),
	datad => \inst10|status\(0),
	combout => \inst10|Mux7~0_combout\);

-- Location: FF_X27_Y26_N29
\inst10|N[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux7~0_combout\,
	asdata => \inst6|mw|X\(2),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(26));

-- Location: LCCOMB_X26_Y26_N18
\inst10|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux15~0_combout\ = (\inst10|status\(0) & (\inst|srom|rom_block|auto_generated|q_a\(2))) # (!\inst10|status\(0) & ((\inst3|rf|R1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(2),
	datab => \inst10|status\(0),
	datad => \inst3|rf|R1\(2),
	combout => \inst10|Mux15~0_combout\);

-- Location: FF_X26_Y26_N19
\inst10|N[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux15~0_combout\,
	asdata => \inst6|mw|Y\(2),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(18));

-- Location: LCCOMB_X27_Y27_N8
\inst2|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~2_combout\ = (\inst2|sel\(0) & (((\inst2|sel\(1))))) # (!\inst2|sel\(0) & ((\inst2|sel\(1) & ((\inst10|N\(18)))) # (!\inst2|sel\(1) & (\inst10|N\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sel\(0),
	datab => \inst10|N\(26),
	datac => \inst10|N\(18),
	datad => \inst2|sel\(1),
	combout => \inst2|Mux1~2_combout\);

-- Location: LCCOMB_X27_Y26_N6
\inst10|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux11~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(6)))) # (!\inst10|status\(0) & (\inst3|rf|R1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R1\(6),
	datad => \inst|srom|rom_block|auto_generated|q_a\(6),
	combout => \inst10|Mux11~0_combout\);

-- Location: FF_X27_Y26_N7
\inst10|N[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux11~0_combout\,
	asdata => \inst6|mw|Y\(6),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(22));

-- Location: LCCOMB_X27_Y27_N4
\inst2|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~3_combout\ = (\inst2|Mux1~2_combout\ & ((\inst10|N\(14)) # ((!\inst2|sel\(0))))) # (!\inst2|Mux1~2_combout\ & (((\inst2|sel\(0) & \inst10|N\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(14),
	datab => \inst2|Mux1~2_combout\,
	datac => \inst2|sel\(0),
	datad => \inst10|N\(22),
	combout => \inst2|Mux1~3_combout\);

-- Location: LCCOMB_X27_Y27_N22
\inst2|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~4_combout\ = (\inst2|sel\(2) & (\inst2|Mux1~1_combout\)) # (!\inst2|sel\(2) & ((\inst2|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux1~1_combout\,
	datac => \inst2|Mux1~3_combout\,
	datad => \inst2|sel\(2),
	combout => \inst2|Mux1~4_combout\);

-- Location: FF_X27_Y27_N23
\inst2|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|num\(2));

-- Location: LCCOMB_X26_Y27_N4
\inst3|rf|R3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R3~1_combout\ = (\inst3|rf|R3[4]~0_combout\ & (\inst6|man|ans\(0))) # (!\inst3|rf|R3[4]~0_combout\ & ((\keyboard|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|man|ans\(0),
	datac => \inst3|rf|R3[4]~0_combout\,
	datad => \keyboard|out\(0),
	combout => \inst3|rf|R3~1_combout\);

-- Location: FF_X26_Y27_N5
\inst3|rf|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R3~1_combout\,
	ena => \inst3|rf|R3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R3\(0));

-- Location: LCCOMB_X26_Y27_N24
\inst3|rf|R2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R2~2_combout\ = (\inst3|rf|R0[2]~0_combout\ & ((\inst3|rf|Equal1~0_combout\ & (\inst6|man|ans\(0))) # (!\inst3|rf|Equal1~0_combout\ & ((\keyboard|out\(0)))))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0[2]~0_combout\,
	datab => \inst6|man|ans\(0),
	datac => \inst3|rf|Equal1~0_combout\,
	datad => \keyboard|out\(0),
	combout => \inst3|rf|R2~2_combout\);

-- Location: FF_X26_Y27_N25
\inst3|rf|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R2~2_combout\,
	ena => \inst3|rf|R2[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R2\(0));

-- Location: LCCOMB_X28_Y27_N28
\inst3|rf|R0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R0~4_combout\ = (\enact~input_o\ & ((\inst3|rf|R0[2]~0_combout\ & ((\keyboard|out\(0)))) # (!\inst3|rf|R0[2]~0_combout\ & (\inst6|man|ans\(0))))) # (!\enact~input_o\ & (\inst6|man|ans\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enact~input_o\,
	datab => \inst6|man|ans\(0),
	datac => \inst3|rf|R0[2]~0_combout\,
	datad => \keyboard|out\(0),
	combout => \inst3|rf|R0~4_combout\);

-- Location: FF_X28_Y27_N29
\inst3|rf|R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R0~4_combout\,
	ena => \inst3|rf|R0[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R0\(0));

-- Location: LCCOMB_X30_Y26_N6
\inst7|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~0_combout\ = (\inst4|choose_reg\(1) & ((\inst4|choose_reg\(0)) # ((\inst3|rf|R2\(0))))) # (!\inst4|choose_reg\(1) & (!\inst4|choose_reg\(0) & ((\inst3|rf|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(1),
	datab => \inst4|choose_reg\(0),
	datac => \inst3|rf|R2\(0),
	datad => \inst3|rf|R0\(0),
	combout => \inst7|Mux15~0_combout\);

-- Location: LCCOMB_X30_Y26_N26
\inst7|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux15~1_combout\ = (\inst4|choose_reg\(0) & ((\inst7|Mux15~0_combout\ & ((\inst3|rf|R3\(0)))) # (!\inst7|Mux15~0_combout\ & (\inst3|rf|R1\(0))))) # (!\inst4|choose_reg\(0) & (((\inst7|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(0),
	datab => \inst3|rf|R3\(0),
	datac => \inst4|choose_reg\(0),
	datad => \inst7|Mux15~0_combout\,
	combout => \inst7|Mux15~1_combout\);

-- Location: FF_X30_Y26_N27
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

-- Location: FF_X30_Y26_N25
\inst6|mw|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst7|opt2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|mw|Y\(0));

-- Location: LCCOMB_X30_Y26_N10
\inst7|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux7~0_combout\ = (\inst4|choose_reg\(2) & ((\inst4|choose_reg\(3)) # ((\inst3|rf|R1\(0))))) # (!\inst4|choose_reg\(2) & (!\inst4|choose_reg\(3) & ((\inst3|rf|R0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|choose_reg\(2),
	datab => \inst4|choose_reg\(3),
	datac => \inst3|rf|R1\(0),
	datad => \inst3|rf|R0\(0),
	combout => \inst7|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y26_N30
\inst7|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux7~1_combout\ = (\inst4|choose_reg\(3) & ((\inst7|Mux7~0_combout\ & ((\inst3|rf|R3\(0)))) # (!\inst7|Mux7~0_combout\ & (\inst3|rf|R2\(0))))) # (!\inst4|choose_reg\(3) & (((\inst7|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R2\(0),
	datab => \inst3|rf|R3\(0),
	datac => \inst4|choose_reg\(3),
	datad => \inst7|Mux7~0_combout\,
	combout => \inst7|Mux7~1_combout\);

-- Location: FF_X30_Y26_N31
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

-- Location: LCCOMB_X29_Y25_N0
\inst6|mw|X[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|mw|X[0]~feeder_combout\ = \inst7|opt1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|opt1\(0),
	combout => \inst6|mw|X[0]~feeder_combout\);

-- Location: FF_X29_Y25_N1
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

-- Location: LCCOMB_X29_Y26_N0
\inst6|man|ans~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~8_combout\ = \inst6|mw|Y\(0) $ (\inst6|mw|X\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|Y\(0),
	datac => \inst6|mw|X\(0),
	combout => \inst6|man|ans~8_combout\);

-- Location: LCCOMB_X29_Y26_N10
\inst6|man|ans~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans~7_combout\ = (\inst6|mw|Y\(0)) # (\inst6|mw|X\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|mw|Y\(0),
	datac => \inst6|mw|X\(0),
	combout => \inst6|man|ans~7_combout\);

-- Location: LCCOMB_X29_Y27_N8
\inst6|man|ans[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|man|ans[0]~0_combout\ = (\inst4|S\(0) & (\inst6|man|ans~8_combout\)) # (!\inst4|S\(0) & ((\inst6|man|ans~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|S\(0),
	datab => \inst6|man|ans~8_combout\,
	datad => \inst6|man|ans~7_combout\,
	combout => \inst6|man|ans[0]~0_combout\);

-- Location: FF_X29_Y27_N9
\inst6|man|ans[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|man|ans[0]~0_combout\,
	asdata => \inst6|mw|X\(1),
	sload => \inst4|S\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|man|ans\(0));

-- Location: LCCOMB_X29_Y26_N16
\inst3|rf|R1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|rf|R1~1_combout\ = (\inst3|rf|R1[6]~0_combout\ & (\inst6|man|ans\(0))) # (!\inst3|rf|R1[6]~0_combout\ & ((\keyboard|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|rf|R1[6]~0_combout\,
	datac => \inst6|man|ans\(0),
	datad => \keyboard|out\(0),
	combout => \inst3|rf|R1~1_combout\);

-- Location: FF_X29_Y26_N17
\inst3|rf|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst3|rf|R1~1_combout\,
	ena => \inst3|rf|R1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rf|R1\(0));

-- Location: LCCOMB_X29_Y26_N14
\inst10|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux17~0_combout\ = (\inst10|status\(0) & (\inst|srom|rom_block|auto_generated|q_a\(0))) # (!\inst10|status\(0) & ((\inst3|rf|R1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(0),
	datab => \inst10|status\(0),
	datad => \inst3|rf|R1\(0),
	combout => \inst10|Mux17~0_combout\);

-- Location: FF_X29_Y26_N15
\inst10|N[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux17~0_combout\,
	asdata => \inst6|mw|Y\(0),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(16));

-- Location: LCCOMB_X30_Y26_N20
\inst10|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux21~0_combout\ = (!\inst10|status\(1) & (!\inst10|status\(0) & \inst3|rf|R2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(1),
	datac => \inst10|status\(0),
	datad => \inst3|rf|R2\(4),
	combout => \inst10|Mux21~0_combout\);

-- Location: FF_X30_Y26_N21
\inst10|N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux21~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(12));

-- Location: LCCOMB_X29_Y26_N4
\inst10|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux13~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(4)))) # (!\inst10|status\(0) & (\inst3|rf|R1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R1\(4),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(4),
	combout => \inst10|Mux13~0_combout\);

-- Location: FF_X29_Y26_N5
\inst10|N[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux13~0_combout\,
	asdata => \inst6|mw|Y\(4),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(20));

-- Location: LCCOMB_X29_Y26_N30
\inst10|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux9~0_combout\ = (\inst10|status\(0) & (\inst|srom|rom_block|auto_generated|q_a\(8))) # (!\inst10|status\(0) & ((\inst3|rf|R0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|srom|rom_block|auto_generated|q_a\(8),
	datab => \inst10|status\(0),
	datad => \inst3|rf|R0\(0),
	combout => \inst10|Mux9~0_combout\);

-- Location: FF_X29_Y26_N31
\inst10|N[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux9~0_combout\,
	asdata => \inst6|mw|X\(0),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(24));

-- Location: LCCOMB_X30_Y26_N2
\inst2|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~2_combout\ = (\inst2|sel\(0) & ((\inst2|sel\(1)) # ((\inst10|N\(20))))) # (!\inst2|sel\(0) & (!\inst2|sel\(1) & ((\inst10|N\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sel\(0),
	datab => \inst2|sel\(1),
	datac => \inst10|N\(20),
	datad => \inst10|N\(24),
	combout => \inst2|Mux3~2_combout\);

-- Location: LCCOMB_X30_Y26_N14
\inst2|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~3_combout\ = (\inst2|sel\(1) & ((\inst2|Mux3~2_combout\ & ((\inst10|N\(12)))) # (!\inst2|Mux3~2_combout\ & (\inst10|N\(16))))) # (!\inst2|sel\(1) & (((\inst2|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(16),
	datab => \inst10|N\(12),
	datac => \inst2|sel\(1),
	datad => \inst2|Mux3~2_combout\,
	combout => \inst2|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y26_N28
\inst10|Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux33~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(0)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(0),
	datad => \inst3|pf|PC\(0),
	combout => \inst10|Mux33~0_combout\);

-- Location: FF_X25_Y26_N29
\inst10|N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux33~0_combout\,
	asdata => \inst6|man|ans\(0),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(0));

-- Location: LCCOMB_X29_Y26_N24
\inst10|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst10|status\(0) & ((\inst|srom|rom_block|auto_generated|q_a\(12)))) # (!\inst10|status\(0) & (\inst3|rf|R0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|rf|R0\(4),
	datab => \inst10|status\(0),
	datad => \inst|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst10|Mux5~0_combout\);

-- Location: FF_X29_Y26_N25
\inst10|N[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux5~0_combout\,
	asdata => \inst6|mw|X\(4),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(28));

-- Location: LCCOMB_X25_Y26_N26
\inst10|Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux29~0_combout\ = (\inst10|status\(0) & ((\inst3|pf|PC\(4)))) # (!\inst10|status\(0) & (\inst3|rf|R3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datab => \inst3|rf|R3\(4),
	datad => \inst3|pf|PC\(4),
	combout => \inst10|Mux29~0_combout\);

-- Location: FF_X25_Y26_N27
\inst10|N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux29~0_combout\,
	asdata => \inst6|man|ans\(4),
	sload => \inst10|status\(1),
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(4));

-- Location: LCCOMB_X30_Y26_N28
\inst10|Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Mux25~0_combout\ = (!\inst10|status\(0) & (\inst3|rf|R2\(0) & !\inst10|status\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|status\(0),
	datac => \inst3|rf|R2\(0),
	datad => \inst10|status\(1),
	combout => \inst10|Mux25~0_combout\);

-- Location: FF_X30_Y26_N29
\inst10|N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Mux25~0_combout\,
	ena => \inst10|N[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|N\(8));

-- Location: LCCOMB_X30_Y26_N18
\inst2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst2|sel\(1) & (((\inst2|sel\(0))))) # (!\inst2|sel\(1) & ((\inst2|sel\(0) & (\inst10|N\(4))) # (!\inst2|sel\(0) & ((\inst10|N\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(4),
	datab => \inst10|N\(8),
	datac => \inst2|sel\(1),
	datad => \inst2|sel\(0),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y26_N0
\inst2|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~1_combout\ = (\inst2|sel\(1) & ((\inst2|Mux3~0_combout\ & ((\inst10|N\(28)))) # (!\inst2|Mux3~0_combout\ & (\inst10|N\(0))))) # (!\inst2|sel\(1) & (((\inst2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|N\(0),
	datab => \inst10|N\(28),
	datac => \inst2|sel\(1),
	datad => \inst2|Mux3~0_combout\,
	combout => \inst2|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y27_N0
\inst2|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~4_combout\ = (\inst2|sel\(2) & ((\inst2|Mux3~1_combout\))) # (!\inst2|sel\(2) & (\inst2|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux3~3_combout\,
	datac => \inst2|sel\(2),
	datad => \inst2|Mux3~1_combout\,
	combout => \inst2|Mux3~4_combout\);

-- Location: FF_X30_Y27_N1
\inst2|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|num\(0));

-- Location: LCCOMB_X42_Y39_N16
\inst2|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~0_combout\ = (\inst2|num\(0) & ((\inst2|num\(3)) # (\inst2|num\(1) $ (\inst2|num\(2))))) # (!\inst2|num\(0) & ((\inst2|num\(1)) # (\inst2|num\(3) $ (\inst2|num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr0~0_combout\);

-- Location: LCCOMB_X42_Y39_N10
\inst2|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (\inst2|num\(1) & (!\inst2|num\(3) & ((\inst2|num\(0)) # (!\inst2|num\(2))))) # (!\inst2|num\(1) & (\inst2|num\(0) & (\inst2|num\(3) $ (!\inst2|num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCCOMB_X42_Y39_N0
\inst2|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = (\inst2|num\(1) & (!\inst2|num\(3) & ((\inst2|num\(0))))) # (!\inst2|num\(1) & ((\inst2|num\(2) & (!\inst2|num\(3))) # (!\inst2|num\(2) & ((\inst2|num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X42_Y39_N6
\inst2|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst2|num\(1) & ((\inst2|num\(2) & ((\inst2|num\(0)))) # (!\inst2|num\(2) & (\inst2|num\(3) & !\inst2|num\(0))))) # (!\inst2|num\(1) & (!\inst2|num\(3) & (\inst2|num\(2) $ (\inst2|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X42_Y39_N12
\inst2|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst2|num\(3) & (\inst2|num\(2) & ((\inst2|num\(1)) # (!\inst2|num\(0))))) # (!\inst2|num\(3) & (\inst2|num\(1) & (!\inst2|num\(2) & !\inst2|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X42_Y39_N26
\inst2|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~0_combout\ = (\inst2|num\(3) & ((\inst2|num\(0) & (\inst2|num\(1))) # (!\inst2|num\(0) & ((\inst2|num\(2)))))) # (!\inst2|num\(3) & (\inst2|num\(2) & (\inst2|num\(1) $ (\inst2|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr5~0_combout\);

-- Location: LCCOMB_X42_Y39_N4
\inst2|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr6~0_combout\ = (\inst2|num\(3) & (\inst2|num\(0) & (\inst2|num\(1) $ (\inst2|num\(2))))) # (!\inst2|num\(3) & (!\inst2|num\(1) & (\inst2|num\(2) $ (\inst2|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|num\(3),
	datab => \inst2|num\(1),
	datac => \inst2|num\(2),
	datad => \inst2|num\(0),
	combout => \inst2|WideOr6~0_combout\);

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

ww_codeout(7) <= \codeout[7]~output_o\;

ww_codeout(6) <= \codeout[6]~output_o\;

ww_codeout(5) <= \codeout[5]~output_o\;

ww_codeout(4) <= \codeout[4]~output_o\;

ww_codeout(3) <= \codeout[3]~output_o\;

ww_codeout(2) <= \codeout[2]~output_o\;

ww_codeout(1) <= \codeout[1]~output_o\;

ww_codeout(0) <= \codeout[0]~output_o\;

ww_key_c(3) <= \key_c[3]~output_o\;

ww_key_c(2) <= \key_c[2]~output_o\;

ww_key_c(1) <= \key_c[1]~output_o\;

ww_key_c(0) <= \key_c[0]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;
END structure;


