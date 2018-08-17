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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/11/2018 10:32:08"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	start_stop : IN std_logic;
	mode : IN std_logic;
	set : IN std_logic;
	config : IN std_logic;
	seg_saida_uni : OUT std_logic_vector(6 DOWNTO 0);
	seg_saida_dez : OUT std_logic_vector(6 DOWNTO 0);
	min_saida_uni : OUT std_logic_vector(6 DOWNTO 0);
	min_saida_dez : OUT std_logic_vector(6 DOWNTO 0);
	hora_saida_uni : OUT std_logic_vector(6 DOWNTO 0);
	hora_saida_dez : OUT std_logic_vector(6 DOWNTO 0);
	centseg_saida_uni : OUT std_logic_vector(6 DOWNTO 0);
	centseg_saida_dez : OUT std_logic_vector(6 DOWNTO 0);
	saida_led_modo0 : OUT std_logic;
	saida_led_modo1 : OUT std_logic;
	saida_led_modo2 : OUT std_logic;
	led_alarme : OUT std_logic
	);
END relogio;

-- Design Ports Information
-- seg_saida_uni[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_uni[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_uni[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_uni[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_uni[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_uni[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_uni[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seg_saida_dez[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_uni[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min_saida_dez[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_uni[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[4]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hora_saida_dez[6]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_uni[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- centseg_saida_dez[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_led_modo0	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_led_modo1	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_led_modo2	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_alarme	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- config	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start_stop	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_config : std_logic;
SIGNAL ww_seg_saida_uni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_saida_dez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_min_saida_uni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_min_saida_dez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hora_saida_uni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hora_saida_dez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_centseg_saida_uni : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_centseg_saida_dez : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida_led_modo0 : std_logic;
SIGNAL ww_saida_led_modo1 : std_logic;
SIGNAL ww_saida_led_modo2 : std_logic;
SIGNAL ww_led_alarme : std_logic;
SIGNAL \Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida_led_modo0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Conversor5|q[6]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador2|modo[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mode~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \set~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador3|Add2~10_combout\ : std_logic;
SIGNAL \contador3|Add2~12_combout\ : std_logic;
SIGNAL \contador1|Add0~0_combout\ : std_logic;
SIGNAL \contador1|Add0~2_combout\ : std_logic;
SIGNAL \contador1|Add0~6_combout\ : std_logic;
SIGNAL \contador1|Add0~18_combout\ : std_logic;
SIGNAL \contador1|Add0~43\ : std_logic;
SIGNAL \contador1|Add0~44_combout\ : std_logic;
SIGNAL \contador1|Add0~45\ : std_logic;
SIGNAL \contador1|Add0~46_combout\ : std_logic;
SIGNAL \contador1|Add0~47\ : std_logic;
SIGNAL \contador1|Add0~48_combout\ : std_logic;
SIGNAL \contador1|Add0~49\ : std_logic;
SIGNAL \contador1|Add0~50_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~16_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~24_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~30_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~52_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~55\ : std_logic;
SIGNAL \Conversor5|R0|Add0~56_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~57\ : std_logic;
SIGNAL \Conversor5|R0|Add0~58_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~59\ : std_logic;
SIGNAL \Conversor5|R0|Add0~60_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~61\ : std_logic;
SIGNAL \Conversor5|R0|Add0~62_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \contador3|LessThan3~0_combout\ : std_logic;
SIGNAL \contador3|x~regout\ : std_logic;
SIGNAL \contador3|Equal1~3_combout\ : std_logic;
SIGNAL \contador1|Equal0~0_combout\ : std_logic;
SIGNAL \contador1|Equal0~7_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~0_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~5_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~6_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~7_combout\ : std_logic;
SIGNAL \contador1|LessThan5~0_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~2_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez[2]~5_combout\ : std_logic;
SIGNAL \contador2|cont_min_dez~4_combout\ : std_logic;
SIGNAL \contador3|x~0_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~8_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~0_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~1_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~2_combout\ : std_logic;
SIGNAL \contador3|LessThan5~0_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~3_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~4_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \mode~combout\ : std_logic;
SIGNAL \set~combout\ : std_logic;
SIGNAL \mode~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \set~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \mode~clkctrl_outclk\ : std_logic;
SIGNAL \set~clkctrl_outclk\ : std_logic;
SIGNAL \contador2|modo~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \contador2|modo[0]~2_combout\ : std_logic;
SIGNAL \saida_led_modo0~0_combout\ : std_logic;
SIGNAL \saida_led_modo0~0clkctrl_outclk\ : std_logic;
SIGNAL \contador1|cont_seg_uni~1_combout\ : std_logic;
SIGNAL \contador1|Add0~1\ : std_logic;
SIGNAL \contador1|Add0~3\ : std_logic;
SIGNAL \contador1|Add0~5\ : std_logic;
SIGNAL \contador1|Add0~7\ : std_logic;
SIGNAL \contador1|Add0~8_combout\ : std_logic;
SIGNAL \contador1|Add0~9\ : std_logic;
SIGNAL \contador1|Add0~10_combout\ : std_logic;
SIGNAL \contador1|Add0~4_combout\ : std_logic;
SIGNAL \contador1|Equal0~6_combout\ : std_logic;
SIGNAL \contador1|Add0~11\ : std_logic;
SIGNAL \contador1|Add0~12_combout\ : std_logic;
SIGNAL \contador1|Add0~13\ : std_logic;
SIGNAL \contador1|Add0~14_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~11_combout\ : std_logic;
SIGNAL \contador1|Add0~15\ : std_logic;
SIGNAL \contador1|Add0~16_combout\ : std_logic;
SIGNAL \contador1|Equal0~5_combout\ : std_logic;
SIGNAL \contador1|Add0~17\ : std_logic;
SIGNAL \contador1|Add0~19\ : std_logic;
SIGNAL \contador1|Add0~20_combout\ : std_logic;
SIGNAL \contador1|Add0~21\ : std_logic;
SIGNAL \contador1|Add0~22_combout\ : std_logic;
SIGNAL \contador1|Add0~23\ : std_logic;
SIGNAL \contador1|Add0~24_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~10_combout\ : std_logic;
SIGNAL \contador1|Add0~25\ : std_logic;
SIGNAL \contador1|Add0~26_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~9_combout\ : std_logic;
SIGNAL \contador1|Add0~27\ : std_logic;
SIGNAL \contador1|Add0~29\ : std_logic;
SIGNAL \contador1|Add0~30_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~7_combout\ : std_logic;
SIGNAL \contador1|Add0~31\ : std_logic;
SIGNAL \contador1|Add0~33\ : std_logic;
SIGNAL \contador1|Add0~34_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~6_combout\ : std_logic;
SIGNAL \contador1|Add0~35\ : std_logic;
SIGNAL \contador1|Add0~36_combout\ : std_logic;
SIGNAL \contador1|Add0~37\ : std_logic;
SIGNAL \contador1|Add0~38_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~5_combout\ : std_logic;
SIGNAL \contador1|Add0~39\ : std_logic;
SIGNAL \contador1|Add0~40_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~4_combout\ : std_logic;
SIGNAL \contador1|Add0~41\ : std_logic;
SIGNAL \contador1|Add0~42_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~3_combout\ : std_logic;
SIGNAL \contador1|Equal0~1_combout\ : std_logic;
SIGNAL \contador1|Add0~28_combout\ : std_logic;
SIGNAL \contador1|conta_retraso~8_combout\ : std_logic;
SIGNAL \contador1|Add0~32_combout\ : std_logic;
SIGNAL \contador1|Equal0~2_combout\ : std_logic;
SIGNAL \contador1|Equal0~3_combout\ : std_logic;
SIGNAL \contador1|Equal0~4_combout\ : std_logic;
SIGNAL \contador1|Equal0~8_combout\ : std_logic;
SIGNAL \contador1|cont_seg_uni~0_combout\ : std_logic;
SIGNAL \contador1|cont_seg_uni~3_combout\ : std_logic;
SIGNAL \contador1|cont_seg_uni~2_combout\ : std_logic;
SIGNAL \contador3|cont_seg_uni~2_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \contador3|process_0~0_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_uni~2_combout\ : std_logic;
SIGNAL \contador3|Add2~0_combout\ : std_logic;
SIGNAL \start_stop~combout\ : std_logic;
SIGNAL \contador3|str_stp~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contador3|str_stp~0_combout\ : std_logic;
SIGNAL \contador3|conta_retraso[0]~9_combout\ : std_logic;
SIGNAL \contador3|Add2~1\ : std_logic;
SIGNAL \contador3|Add2~3\ : std_logic;
SIGNAL \contador3|Add2~4_combout\ : std_logic;
SIGNAL \contador3|Add2~2_combout\ : std_logic;
SIGNAL \contador3|Add2~5\ : std_logic;
SIGNAL \contador3|Add2~6_combout\ : std_logic;
SIGNAL \contador3|Add2~7\ : std_logic;
SIGNAL \contador3|Add2~8_combout\ : std_logic;
SIGNAL \contador3|Add2~9\ : std_logic;
SIGNAL \contador3|Add2~11\ : std_logic;
SIGNAL \contador3|Add2~13\ : std_logic;
SIGNAL \contador3|Add2~14_combout\ : std_logic;
SIGNAL \contador3|Add2~15\ : std_logic;
SIGNAL \contador3|Add2~16_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~7_combout\ : std_logic;
SIGNAL \contador3|Add2~17\ : std_logic;
SIGNAL \contador3|Add2~18_combout\ : std_logic;
SIGNAL \contador3|Add2~19\ : std_logic;
SIGNAL \contador3|Add2~20_combout\ : std_logic;
SIGNAL \contador3|Add2~21\ : std_logic;
SIGNAL \contador3|Add2~22_combout\ : std_logic;
SIGNAL \contador3|Add2~23\ : std_logic;
SIGNAL \contador3|Add2~25\ : std_logic;
SIGNAL \contador3|Add2~26_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~6_combout\ : std_logic;
SIGNAL \contador3|Add2~27\ : std_logic;
SIGNAL \contador3|Add2~28_combout\ : std_logic;
SIGNAL \contador3|Add2~29\ : std_logic;
SIGNAL \contador3|Add2~30_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~5_combout\ : std_logic;
SIGNAL \contador3|Add2~24_combout\ : std_logic;
SIGNAL \contador3|Equal1~1_combout\ : std_logic;
SIGNAL \contador3|Add2~31\ : std_logic;
SIGNAL \contador3|Add2~32_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~4_combout\ : std_logic;
SIGNAL \contador3|Add2~33\ : std_logic;
SIGNAL \contador3|Add2~34_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~3_combout\ : std_logic;
SIGNAL \contador3|Add2~35\ : std_logic;
SIGNAL \contador3|Add2~36_combout\ : std_logic;
SIGNAL \contador3|conta_retraso~2_combout\ : std_logic;
SIGNAL \contador3|Equal1~0_combout\ : std_logic;
SIGNAL \contador3|Equal1~2_combout\ : std_logic;
SIGNAL \contador3|Equal1~4_combout\ : std_logic;
SIGNAL \contador3|Equal1~5_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_uni[3]~1_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_uni~0_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_uni~4_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_uni~3_combout\ : std_logic;
SIGNAL \contador3|LessThan2~0_combout\ : std_logic;
SIGNAL \contador3|cont_seg_uni[3]~1_combout\ : std_logic;
SIGNAL \contador3|cont_seg_uni~4_combout\ : std_logic;
SIGNAL \contador3|cont_seg_uni~0_combout\ : std_logic;
SIGNAL \contador3|cont_seg_uni~3_combout\ : std_logic;
SIGNAL \contagem_seg_uni[2]~2_combout\ : std_logic;
SIGNAL \contagem_seg_uni[3]~3_combout\ : std_logic;
SIGNAL \contagem_seg_uni[0]~0_combout\ : std_logic;
SIGNAL \contagem_seg_uni[1]~1_combout\ : std_logic;
SIGNAL \Conversor3|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor3|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor3|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor3|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor3|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor3|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor3|Mux0~0_combout\ : std_logic;
SIGNAL \contador3|cont_seg_dez~2_combout\ : std_logic;
SIGNAL \contador3|LessThan4~0_combout\ : std_logic;
SIGNAL \contador3|cont_seg_dez[0]~1_combout\ : std_logic;
SIGNAL \contador3|cont_seg_dez~3_combout\ : std_logic;
SIGNAL \contagem_seg_dez[2]~2_combout\ : std_logic;
SIGNAL \contagem_seg_dez[1]~1_combout\ : std_logic;
SIGNAL \contador3|cont_seg_dez~0_combout\ : std_logic;
SIGNAL \contagem_seg_dez[0]~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor4|Mux0~0_combout\ : std_logic;
SIGNAL \config~combout\ : std_logic;
SIGNAL \Conversor5|q[6]~1_combout\ : std_logic;
SIGNAL \Conversor5|q[6]~1clkctrl_outclk\ : std_logic;
SIGNAL \Conversor5|R0|Add0~0_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem[0]~8_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~1\ : std_logic;
SIGNAL \Conversor5|R0|Add0~2_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~3\ : std_logic;
SIGNAL \Conversor5|R0|Add0~4_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~5\ : std_logic;
SIGNAL \Conversor5|R0|Add0~6_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~9_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~7\ : std_logic;
SIGNAL \Conversor5|R0|Add0~8_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~9\ : std_logic;
SIGNAL \Conversor5|R0|Add0~11\ : std_logic;
SIGNAL \Conversor5|R0|Add0~13\ : std_logic;
SIGNAL \Conversor5|R0|Add0~14_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~7_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~12_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~10_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~8_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~15\ : std_logic;
SIGNAL \Conversor5|R0|Add0~17\ : std_logic;
SIGNAL \Conversor5|R0|Add0~18_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~6_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~19\ : std_logic;
SIGNAL \Conversor5|R0|Add0~20_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~5_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~21\ : std_logic;
SIGNAL \Conversor5|R0|Add0~22_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~23\ : std_logic;
SIGNAL \Conversor5|R0|Add0~25\ : std_logic;
SIGNAL \Conversor5|R0|Add0~26_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~27\ : std_logic;
SIGNAL \Conversor5|R0|Add0~28_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~29\ : std_logic;
SIGNAL \Conversor5|R0|Add0~31\ : std_logic;
SIGNAL \Conversor5|R0|Add0~32_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~33\ : std_logic;
SIGNAL \Conversor5|R0|Add0~34_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~35\ : std_logic;
SIGNAL \Conversor5|R0|Add0~36_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~37\ : std_logic;
SIGNAL \Conversor5|R0|Add0~39\ : std_logic;
SIGNAL \Conversor5|R0|Add0~40_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~1_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~41\ : std_logic;
SIGNAL \Conversor5|R0|Add0~43\ : std_logic;
SIGNAL \Conversor5|R0|Add0~45\ : std_logic;
SIGNAL \Conversor5|R0|Add0~46_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~0_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~47\ : std_logic;
SIGNAL \Conversor5|R0|Add0~49\ : std_logic;
SIGNAL \Conversor5|R0|Add0~50_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~51\ : std_logic;
SIGNAL \Conversor5|R0|Add0~53\ : std_logic;
SIGNAL \Conversor5|R0|Add0~54_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~48_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~1_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~38_combout\ : std_logic;
SIGNAL \Conversor5|R0|contagem~2_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~3_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~42_combout\ : std_logic;
SIGNAL \Conversor5|R0|Add0~44_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~2_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~4_combout\ : std_logic;
SIGNAL \Conversor5|R0|Equal0~10_combout\ : std_logic;
SIGNAL \Conversor5|R0|estado~0_combout\ : std_logic;
SIGNAL \Conversor5|R0|estado~regout\ : std_logic;
SIGNAL \Conversor7|q[6]~0_combout\ : std_logic;
SIGNAL \contador1|cont_min_uni~3_combout\ : std_logic;
SIGNAL \contador1|cont_seg_dez~0_combout\ : std_logic;
SIGNAL \contador1|LessThan0~0_combout\ : std_logic;
SIGNAL \contador1|cont_seg_dez[0]~1_combout\ : std_logic;
SIGNAL \contador1|cont_seg_dez~2_combout\ : std_logic;
SIGNAL \contador1|cont_seg_dez~3_combout\ : std_logic;
SIGNAL \contador1|LessThan1~0_combout\ : std_logic;
SIGNAL \contador1|estado_hora_ou_min~0_combout\ : std_logic;
SIGNAL \contador1|estado_hora_ou_min~regout\ : std_logic;
SIGNAL \contador1|process_0~0_combout\ : std_logic;
SIGNAL \contador1|cont_min_uni[3]~0_combout\ : std_logic;
SIGNAL \contador1|cont_min_uni[3]~2_combout\ : std_logic;
SIGNAL \contador1|cont_min_uni~5_combout\ : std_logic;
SIGNAL \contador1|cont_min_uni~1_combout\ : std_logic;
SIGNAL \contador1|cont_min_uni~4_combout\ : std_logic;
SIGNAL \contador2|cont_min_uni~3_combout\ : std_logic;
SIGNAL \contador2|cont_min_uni[3]~0_combout\ : std_logic;
SIGNAL \contador2|process_0~0_combout\ : std_logic;
SIGNAL \contador2|x~0_combout\ : std_logic;
SIGNAL \contador2|x~regout\ : std_logic;
SIGNAL \contador2|cont_min_dez[0]~1_combout\ : std_logic;
SIGNAL \contador2|cont_min_uni~2_combout\ : std_logic;
SIGNAL \contador2|cont_min_uni~4_combout\ : std_logic;
SIGNAL \contagem_min_uni[2]~4_combout\ : std_logic;
SIGNAL \contador3|cont_min_uni~4_combout\ : std_logic;
SIGNAL \contador3|cont_min_uni[3]~1_combout\ : std_logic;
SIGNAL \contador3|cont_min_uni~2_combout\ : std_logic;
SIGNAL \contador3|cont_min_uni~0_combout\ : std_logic;
SIGNAL \contador3|cont_min_uni~3_combout\ : std_logic;
SIGNAL \contagem_min_uni[2]~5_combout\ : std_logic;
SIGNAL \contagem_min_uni[1]~2_combout\ : std_logic;
SIGNAL \contagem_min_uni[1]~3_combout\ : std_logic;
SIGNAL \contagem_min_uni[0]~0_combout\ : std_logic;
SIGNAL \contagem_min_uni[0]~1_combout\ : std_logic;
SIGNAL \Conversor5|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor5|q[0]~0_combout\ : std_logic;
SIGNAL \Conversor5|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor5|q[1]~2_combout\ : std_logic;
SIGNAL \contagem_min_uni[3]~6_combout\ : std_logic;
SIGNAL \contagem_min_uni[3]~7_combout\ : std_logic;
SIGNAL \Conversor5|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor5|q[2]~3_combout\ : std_logic;
SIGNAL \Conversor5|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor5|q[3]~4_combout\ : std_logic;
SIGNAL \Conversor5|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor5|q[4]~5_combout\ : std_logic;
SIGNAL \Conversor5|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor5|q[5]~6_combout\ : std_logic;
SIGNAL \Conversor5|Mux0~0_combout\ : std_logic;
SIGNAL \Conversor5|q[6]~7_combout\ : std_logic;
SIGNAL \contador1|cont_min_dez~3_combout\ : std_logic;
SIGNAL \contador1|LessThan2~0_combout\ : std_logic;
SIGNAL \contador1|cont_min_dez[2]~1_combout\ : std_logic;
SIGNAL \contador1|cont_min_dez~0_combout\ : std_logic;
SIGNAL \contador1|cont_min_dez~2_combout\ : std_logic;
SIGNAL \contagem_min_dez[0]~0_combout\ : std_logic;
SIGNAL \contador3|cont_min_dez~2_combout\ : std_logic;
SIGNAL \contador3|LessThan6~0_combout\ : std_logic;
SIGNAL \contador3|cont_min_dez[0]~1_combout\ : std_logic;
SIGNAL \contador3|cont_min_dez~3_combout\ : std_logic;
SIGNAL \contador3|cont_min_dez~0_combout\ : std_logic;
SIGNAL \contagem_min_dez[0]~1_combout\ : std_logic;
SIGNAL \contagem_min_dez[2]~4_combout\ : std_logic;
SIGNAL \contagem_min_dez[2]~5_combout\ : std_logic;
SIGNAL \Conversor6|Mux6~0_combout\ : std_logic;
SIGNAL \contador2|cont_min_dez~0_combout\ : std_logic;
SIGNAL \contador2|LessThan4~0_combout\ : std_logic;
SIGNAL \contador2|cont_min_dez[0]~2_combout\ : std_logic;
SIGNAL \contador2|cont_min_dez~3_combout\ : std_logic;
SIGNAL \contagem_min_dez[1]~2_combout\ : std_logic;
SIGNAL \contagem_min_dez[1]~3_combout\ : std_logic;
SIGNAL \Conversor6|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor6|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor6|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor6|q[4]~0_combout\ : std_logic;
SIGNAL \Conversor6|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor6|Mux0~0_combout\ : std_logic;
SIGNAL \contador2|modo[1]~clkctrl_outclk\ : std_logic;
SIGNAL \contador2|cont_hora_uni~3_combout\ : std_logic;
SIGNAL \contador2|estado_hora_ou_min~0_combout\ : std_logic;
SIGNAL \contador2|estado_hora_ou_min~regout\ : std_logic;
SIGNAL \contador2|cont_hora_uni[3]~1_combout\ : std_logic;
SIGNAL \contador2|cont_hora_uni~2_combout\ : std_logic;
SIGNAL \contador2|cont_hora_uni[3]~0_combout\ : std_logic;
SIGNAL \contador2|cont_hora_dez[0]~0_combout\ : std_logic;
SIGNAL \contador2|cont_hora_dez[2]~1_combout\ : std_logic;
SIGNAL \contador2|cont_hora_dez[2]~3_combout\ : std_logic;
SIGNAL \contador2|process_0~1_combout\ : std_logic;
SIGNAL \contador2|process_0~2_combout\ : std_logic;
SIGNAL \contador2|Add2~1_combout\ : std_logic;
SIGNAL \contador2|cont_hora_uni~5_combout\ : std_logic;
SIGNAL \contador2|Add2~0_combout\ : std_logic;
SIGNAL \contador2|cont_hora_uni~4_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~8_combout\ : std_logic;
SIGNAL \contador1|x~regout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~3_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~4_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~11_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni[2]~5_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~6_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~7_combout\ : std_logic;
SIGNAL \contador1|Add5~2_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez[2]~1_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez[2]~2_combout\ : std_logic;
SIGNAL \contador1|Add5~1_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez~0_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez~3_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez[2]~4_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez~7_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez~8_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez~9_combout\ : std_logic;
SIGNAL \contador1|cont_hora_dez[2]~6_combout\ : std_logic;
SIGNAL \contador1|Equal1~0_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~9_combout\ : std_logic;
SIGNAL \contador1|Add5~0_combout\ : std_logic;
SIGNAL \contador1|cont_hora_uni~10_combout\ : std_logic;
SIGNAL \contagem_hora_uni[3]~3_combout\ : std_logic;
SIGNAL \contagem_hora_uni[1]~1_combout\ : std_logic;
SIGNAL \contagem_hora_uni[2]~2_combout\ : std_logic;
SIGNAL \Conversor7|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor7|q[0]~1_combout\ : std_logic;
SIGNAL \Conversor7|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor7|q[1]~2_combout\ : std_logic;
SIGNAL \Conversor7|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor7|q[2]~3_combout\ : std_logic;
SIGNAL \Conversor7|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor7|q[3]~4_combout\ : std_logic;
SIGNAL \contagem_hora_uni[0]~0_combout\ : std_logic;
SIGNAL \Conversor7|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor7|q[4]~5_combout\ : std_logic;
SIGNAL \Conversor7|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor7|q[5]~6_combout\ : std_logic;
SIGNAL \Conversor7|Mux0~0_combout\ : std_logic;
SIGNAL \Conversor7|q[6]~7_combout\ : std_logic;
SIGNAL \contador2|cont_hora_dez[1]~2_combout\ : std_logic;
SIGNAL \contagem_hora_dez[1]~1_combout\ : std_logic;
SIGNAL \contagem_hora_dez[0]~0_combout\ : std_logic;
SIGNAL \Conversor8|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor8|Mux5~0_combout\ : std_logic;
SIGNAL \contagem_hora_dez[2]~2_combout\ : std_logic;
SIGNAL \Conversor8|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor8|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor8|q[4]~0_combout\ : std_logic;
SIGNAL \Conversor8|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor8|Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \Conversor1|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor1|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor1|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor1|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor1|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor1|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor1|Mux0~0_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_dez~3_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_dez[3]~1_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_dez~0_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_dez~2_combout\ : std_logic;
SIGNAL \contador3|cont_centseg_dez~4_combout\ : std_logic;
SIGNAL \Conversor2|Mux6~0_combout\ : std_logic;
SIGNAL \Conversor2|Mux5~0_combout\ : std_logic;
SIGNAL \Conversor2|Mux4~0_combout\ : std_logic;
SIGNAL \Conversor2|Mux3~0_combout\ : std_logic;
SIGNAL \Conversor2|Mux2~0_combout\ : std_logic;
SIGNAL \Conversor2|Mux1~0_combout\ : std_logic;
SIGNAL \Conversor2|Mux0~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \saida_led_modo0$latch~combout\ : std_logic;
SIGNAL \saida_led_modo1$latch~combout\ : std_logic;
SIGNAL \saida_led_modo2$latch~combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \contador2|cont_min_uni~1_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \led_alarme$latch~combout\ : std_logic;
SIGNAL \contador3|cont_min_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador3|cont_min_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \contador3|cont_centseg_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador3|cont_centseg_dez\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador1|cont_min_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem_hora_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador2|cont_hora_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador1|cont_min_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL contagem_hora_dez : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem_centseg_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL \Conversor7|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Conversor5|R0|contagem\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \contador1|cont_seg_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Conversor6|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador3|cont_seg_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem_seg_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador2|cont_hora_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Conversor8|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador2|modo\ : std_logic_vector(1 DOWNTO 0);
SIGNAL contagem_min_dez : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem_min_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem_seg_dez : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador1|cont_hora_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Conversor5|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \contador2|cont_min_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \contador2|cont_min_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL contagem_centseg_dez : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador1|cont_seg_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \contador1|cont_hora_uni\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador1|conta_retraso\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \contador3|conta_retraso\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \contador3|cont_seg_dez\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Conversor2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Conversor1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Conversor4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Conversor4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Conversor3|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_start_stop <= start_stop;
ww_mode <= mode;
ww_set <= set;
ww_config <= config;
seg_saida_uni <= ww_seg_saida_uni;
seg_saida_dez <= ww_seg_saida_dez;
min_saida_uni <= ww_min_saida_uni;
min_saida_dez <= ww_min_saida_dez;
hora_saida_uni <= ww_hora_saida_uni;
hora_saida_dez <= ww_hora_saida_dez;
centseg_saida_uni <= ww_centseg_saida_uni;
centseg_saida_dez <= ww_centseg_saida_dez;
saida_led_modo0 <= ww_saida_led_modo0;
saida_led_modo1 <= ww_saida_led_modo1;
saida_led_modo2 <= ww_saida_led_modo2;
led_alarme <= ww_led_alarme;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Equal0~0_combout\);

\saida_led_modo0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \saida_led_modo0~0_combout\);

\Conversor5|q[6]~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Conversor5|q[6]~1_combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\contador2|modo[1]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \contador2|modo\(1));

\mode~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mode~clk_delay_ctrl_clkout\);

\set~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \set~clk_delay_ctrl_clkout\);
\Conversor2|ALT_INV_Mux0~0_combout\ <= NOT \Conversor2|Mux0~0_combout\;
\Conversor1|ALT_INV_Mux0~0_combout\ <= NOT \Conversor1|Mux0~0_combout\;
\Conversor4|ALT_INV_Mux1~0_combout\ <= NOT \Conversor4|Mux1~0_combout\;
\Conversor4|ALT_INV_Mux5~0_combout\ <= NOT \Conversor4|Mux5~0_combout\;
\Conversor3|ALT_INV_Mux6~0_combout\ <= NOT \Conversor3|Mux6~0_combout\;

-- Location: LCCOMB_X7_Y15_N24
\contador3|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~10_combout\ = (\contador3|conta_retraso\(5) & (!\contador3|Add2~9\)) # (!\contador3|conta_retraso\(5) & ((\contador3|Add2~9\) # (GND)))
-- \contador3|Add2~11\ = CARRY((!\contador3|Add2~9\) # (!\contador3|conta_retraso\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(5),
	datad => VCC,
	cin => \contador3|Add2~9\,
	combout => \contador3|Add2~10_combout\,
	cout => \contador3|Add2~11\);

-- Location: LCCOMB_X7_Y15_N26
\contador3|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~12_combout\ = (\contador3|conta_retraso\(6) & (\contador3|Add2~11\ $ (GND))) # (!\contador3|conta_retraso\(6) & (!\contador3|Add2~11\ & VCC))
-- \contador3|Add2~13\ = CARRY((\contador3|conta_retraso\(6) & !\contador3|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(6),
	datad => VCC,
	cin => \contador3|Add2~11\,
	combout => \contador3|Add2~12_combout\,
	cout => \contador3|Add2~13\);

-- Location: LCCOMB_X1_Y17_N6
\contador1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~0_combout\ = \contador1|conta_retraso\(0) $ (VCC)
-- \contador1|Add0~1\ = CARRY(\contador1|conta_retraso\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(0),
	datad => VCC,
	combout => \contador1|Add0~0_combout\,
	cout => \contador1|Add0~1\);

-- Location: LCCOMB_X1_Y17_N8
\contador1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~2_combout\ = (\contador1|conta_retraso\(1) & (!\contador1|Add0~1\)) # (!\contador1|conta_retraso\(1) & ((\contador1|Add0~1\) # (GND)))
-- \contador1|Add0~3\ = CARRY((!\contador1|Add0~1\) # (!\contador1|conta_retraso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(1),
	datad => VCC,
	cin => \contador1|Add0~1\,
	combout => \contador1|Add0~2_combout\,
	cout => \contador1|Add0~3\);

-- Location: LCCOMB_X1_Y17_N12
\contador1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~6_combout\ = (\contador1|conta_retraso\(3) & (!\contador1|Add0~5\)) # (!\contador1|conta_retraso\(3) & ((\contador1|Add0~5\) # (GND)))
-- \contador1|Add0~7\ = CARRY((!\contador1|Add0~5\) # (!\contador1|conta_retraso\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(3),
	datad => VCC,
	cin => \contador1|Add0~5\,
	combout => \contador1|Add0~6_combout\,
	cout => \contador1|Add0~7\);

-- Location: LCCOMB_X1_Y17_N24
\contador1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~18_combout\ = (\contador1|conta_retraso\(9) & (!\contador1|Add0~17\)) # (!\contador1|conta_retraso\(9) & ((\contador1|Add0~17\) # (GND)))
-- \contador1|Add0~19\ = CARRY((!\contador1|Add0~17\) # (!\contador1|conta_retraso\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(9),
	datad => VCC,
	cin => \contador1|Add0~17\,
	combout => \contador1|Add0~18_combout\,
	cout => \contador1|Add0~19\);

-- Location: LCCOMB_X1_Y16_N16
\contador1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~42_combout\ = (\contador1|conta_retraso\(21) & (!\contador1|Add0~41\)) # (!\contador1|conta_retraso\(21) & ((\contador1|Add0~41\) # (GND)))
-- \contador1|Add0~43\ = CARRY((!\contador1|Add0~41\) # (!\contador1|conta_retraso\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(21),
	datad => VCC,
	cin => \contador1|Add0~41\,
	combout => \contador1|Add0~42_combout\,
	cout => \contador1|Add0~43\);

-- Location: LCCOMB_X1_Y16_N18
\contador1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~44_combout\ = (\contador1|conta_retraso\(22) & (\contador1|Add0~43\ $ (GND))) # (!\contador1|conta_retraso\(22) & (!\contador1|Add0~43\ & VCC))
-- \contador1|Add0~45\ = CARRY((\contador1|conta_retraso\(22) & !\contador1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(22),
	datad => VCC,
	cin => \contador1|Add0~43\,
	combout => \contador1|Add0~44_combout\,
	cout => \contador1|Add0~45\);

-- Location: LCCOMB_X1_Y16_N20
\contador1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~46_combout\ = (\contador1|conta_retraso\(23) & (!\contador1|Add0~45\)) # (!\contador1|conta_retraso\(23) & ((\contador1|Add0~45\) # (GND)))
-- \contador1|Add0~47\ = CARRY((!\contador1|Add0~45\) # (!\contador1|conta_retraso\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(23),
	datad => VCC,
	cin => \contador1|Add0~45\,
	combout => \contador1|Add0~46_combout\,
	cout => \contador1|Add0~47\);

-- Location: LCCOMB_X1_Y16_N22
\contador1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~48_combout\ = (\contador1|conta_retraso\(24) & (\contador1|Add0~47\ $ (GND))) # (!\contador1|conta_retraso\(24) & (!\contador1|Add0~47\ & VCC))
-- \contador1|Add0~49\ = CARRY((\contador1|conta_retraso\(24) & !\contador1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(24),
	datad => VCC,
	cin => \contador1|Add0~47\,
	combout => \contador1|Add0~48_combout\,
	cout => \contador1|Add0~49\);

-- Location: LCCOMB_X1_Y16_N24
\contador1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~50_combout\ = \contador1|Add0~49\ $ (\contador1|conta_retraso\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \contador1|conta_retraso\(25),
	cin => \contador1|Add0~49\,
	combout => \contador1|Add0~50_combout\);

-- Location: LCCOMB_X10_Y16_N16
\Conversor5|R0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~16_combout\ = (\Conversor5|R0|contagem\(8) & (\Conversor5|R0|Add0~15\ $ (GND))) # (!\Conversor5|R0|contagem\(8) & (!\Conversor5|R0|Add0~15\ & VCC))
-- \Conversor5|R0|Add0~17\ = CARRY((\Conversor5|R0|contagem\(8) & !\Conversor5|R0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(8),
	datad => VCC,
	cin => \Conversor5|R0|Add0~15\,
	combout => \Conversor5|R0|Add0~16_combout\,
	cout => \Conversor5|R0|Add0~17\);

-- Location: LCCOMB_X10_Y16_N24
\Conversor5|R0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~24_combout\ = (\Conversor5|R0|contagem\(12) & (\Conversor5|R0|Add0~23\ $ (GND))) # (!\Conversor5|R0|contagem\(12) & (!\Conversor5|R0|Add0~23\ & VCC))
-- \Conversor5|R0|Add0~25\ = CARRY((\Conversor5|R0|contagem\(12) & !\Conversor5|R0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(12),
	datad => VCC,
	cin => \Conversor5|R0|Add0~23\,
	combout => \Conversor5|R0|Add0~24_combout\,
	cout => \Conversor5|R0|Add0~25\);

-- Location: LCCOMB_X10_Y16_N30
\Conversor5|R0|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~30_combout\ = (\Conversor5|R0|contagem\(15) & (!\Conversor5|R0|Add0~29\)) # (!\Conversor5|R0|contagem\(15) & ((\Conversor5|R0|Add0~29\) # (GND)))
-- \Conversor5|R0|Add0~31\ = CARRY((!\Conversor5|R0|Add0~29\) # (!\Conversor5|R0|contagem\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(15),
	datad => VCC,
	cin => \Conversor5|R0|Add0~29\,
	combout => \Conversor5|R0|Add0~30_combout\,
	cout => \Conversor5|R0|Add0~31\);

-- Location: LCCOMB_X10_Y15_N20
\Conversor5|R0|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~52_combout\ = (\Conversor5|R0|contagem\(26) & (\Conversor5|R0|Add0~51\ $ (GND))) # (!\Conversor5|R0|contagem\(26) & (!\Conversor5|R0|Add0~51\ & VCC))
-- \Conversor5|R0|Add0~53\ = CARRY((\Conversor5|R0|contagem\(26) & !\Conversor5|R0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(26),
	datad => VCC,
	cin => \Conversor5|R0|Add0~51\,
	combout => \Conversor5|R0|Add0~52_combout\,
	cout => \Conversor5|R0|Add0~53\);

-- Location: LCCOMB_X10_Y15_N22
\Conversor5|R0|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~54_combout\ = (\Conversor5|R0|contagem\(27) & (!\Conversor5|R0|Add0~53\)) # (!\Conversor5|R0|contagem\(27) & ((\Conversor5|R0|Add0~53\) # (GND)))
-- \Conversor5|R0|Add0~55\ = CARRY((!\Conversor5|R0|Add0~53\) # (!\Conversor5|R0|contagem\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(27),
	datad => VCC,
	cin => \Conversor5|R0|Add0~53\,
	combout => \Conversor5|R0|Add0~54_combout\,
	cout => \Conversor5|R0|Add0~55\);

-- Location: LCCOMB_X10_Y15_N24
\Conversor5|R0|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~56_combout\ = (\Conversor5|R0|contagem\(28) & (\Conversor5|R0|Add0~55\ $ (GND))) # (!\Conversor5|R0|contagem\(28) & (!\Conversor5|R0|Add0~55\ & VCC))
-- \Conversor5|R0|Add0~57\ = CARRY((\Conversor5|R0|contagem\(28) & !\Conversor5|R0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(28),
	datad => VCC,
	cin => \Conversor5|R0|Add0~55\,
	combout => \Conversor5|R0|Add0~56_combout\,
	cout => \Conversor5|R0|Add0~57\);

-- Location: LCCOMB_X10_Y15_N26
\Conversor5|R0|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~58_combout\ = (\Conversor5|R0|contagem\(29) & (!\Conversor5|R0|Add0~57\)) # (!\Conversor5|R0|contagem\(29) & ((\Conversor5|R0|Add0~57\) # (GND)))
-- \Conversor5|R0|Add0~59\ = CARRY((!\Conversor5|R0|Add0~57\) # (!\Conversor5|R0|contagem\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(29),
	datad => VCC,
	cin => \Conversor5|R0|Add0~57\,
	combout => \Conversor5|R0|Add0~58_combout\,
	cout => \Conversor5|R0|Add0~59\);

-- Location: LCCOMB_X10_Y15_N28
\Conversor5|R0|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~60_combout\ = (\Conversor5|R0|contagem\(30) & (\Conversor5|R0|Add0~59\ $ (GND))) # (!\Conversor5|R0|contagem\(30) & (!\Conversor5|R0|Add0~59\ & VCC))
-- \Conversor5|R0|Add0~61\ = CARRY((\Conversor5|R0|contagem\(30) & !\Conversor5|R0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(30),
	datad => VCC,
	cin => \Conversor5|R0|Add0~59\,
	combout => \Conversor5|R0|Add0~60_combout\,
	cout => \Conversor5|R0|Add0~61\);

-- Location: LCCOMB_X10_Y15_N30
\Conversor5|R0|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~62_combout\ = \Conversor5|R0|Add0~61\ $ (\Conversor5|R0|contagem\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Conversor5|R0|contagem\(31),
	cin => \Conversor5|R0|Add0~61\,
	combout => \Conversor5|R0|Add0~62_combout\);

-- Location: LCCOMB_X5_Y16_N4
\process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!\contador1|cont_hora_uni\(3) & !\contador1|cont_hora_uni\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|cont_hora_uni\(3),
	datad => \contador1|cont_hora_uni\(2),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X4_Y17_N20
\process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\contador1|cont_min_dez\(1) & (\contador2|cont_min_dez\(1) & (\contador2|cont_min_dez\(0) $ (!\contador1|cont_min_dez\(0))))) # (!\contador1|cont_min_dez\(1) & (!\contador2|cont_min_dez\(1) & (\contador2|cont_min_dez\(0) $ 
-- (!\contador1|cont_min_dez\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_dez\(1),
	datab => \contador2|cont_min_dez\(1),
	datac => \contador2|cont_min_dez\(0),
	datad => \contador1|cont_min_dez\(0),
	combout => \process_0~5_combout\);

-- Location: LCFF_X4_Y17_N9
\contador2|cont_min_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_dez~4_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_dez\(2));

-- Location: LCCOMB_X4_Y16_N20
\process_0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\contador2|cont_hora_uni\(3) & (\contador1|cont_hora_uni\(3) & (\contador2|cont_hora_uni\(2) $ (!\contador1|cont_hora_uni\(2))))) # (!\contador2|cont_hora_uni\(3) & (!\contador1|cont_hora_uni\(3) & (\contador2|cont_hora_uni\(2) $ 
-- (!\contador1|cont_hora_uni\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_uni\(3),
	datab => \contador1|cont_hora_uni\(3),
	datac => \contador2|cont_hora_uni\(2),
	datad => \contador1|cont_hora_uni\(2),
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X5_Y15_N20
\contador3|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|LessThan3~0_combout\ = (\contador3|cont_centseg_dez\(3) & ((\contador3|cont_centseg_dez\(1) & ((!\contador3|cont_centseg_dez\(2)) # (!\contador3|cont_centseg_dez\(0)))) # (!\contador3|cont_centseg_dez\(1) & ((\contador3|cont_centseg_dez\(0)) # 
-- (\contador3|cont_centseg_dez\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_dez\(1),
	datab => \contador3|cont_centseg_dez\(0),
	datac => \contador3|cont_centseg_dez\(2),
	datad => \contador3|cont_centseg_dez\(3),
	combout => \contador3|LessThan3~0_combout\);

-- Location: LCFF_X5_Y18_N17
\contador3|x\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|x~regout\);

-- Location: LCFF_X7_Y15_N27
\contador3|conta_retraso[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~12_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(6));

-- Location: LCFF_X7_Y15_N11
\contador3|conta_retraso[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~8_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(5));

-- Location: LCCOMB_X7_Y15_N4
\contador3|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Equal1~3_combout\ = (!\contador3|conta_retraso\(5) & (!\contador3|conta_retraso\(7) & (!\contador3|conta_retraso\(6) & \contador3|conta_retraso\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(5),
	datab => \contador3|conta_retraso\(7),
	datac => \contador3|conta_retraso\(6),
	datad => \contador3|conta_retraso\(4),
	combout => \contador3|Equal1~3_combout\);

-- Location: LCFF_X1_Y16_N31
\contador1|conta_retraso[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(25));

-- Location: LCFF_X1_Y16_N29
\contador1|conta_retraso[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(23));

-- Location: LCFF_X2_Y16_N5
\contador1|conta_retraso[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(22));

-- Location: LCFF_X1_Y16_N23
\contador1|conta_retraso[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(24));

-- Location: LCCOMB_X2_Y16_N10
\contador1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~0_combout\ = (\contador1|conta_retraso\(25) & (!\contador1|conta_retraso\(24) & (\contador1|conta_retraso\(22) & \contador1|conta_retraso\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(25),
	datab => \contador1|conta_retraso\(24),
	datac => \contador1|conta_retraso\(22),
	datad => \contador1|conta_retraso\(23),
	combout => \contador1|Equal0~0_combout\);

-- Location: LCFF_X1_Y17_N25
\contador1|conta_retraso[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(9));

-- Location: LCFF_X1_Y17_N13
\contador1|conta_retraso[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(3));

-- Location: LCFF_X1_Y17_N9
\contador1|conta_retraso[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(1));

-- Location: LCFF_X1_Y17_N7
\contador1|conta_retraso[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(0));

-- Location: LCCOMB_X2_Y16_N6
\contador1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~7_combout\ = (\contador1|conta_retraso\(0) & \contador1|conta_retraso\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|conta_retraso\(0),
	datad => \contador1|conta_retraso\(1),
	combout => \contador1|Equal0~7_combout\);

-- Location: LCFF_X10_Y15_N31
\Conversor5|R0|contagem[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(31));

-- Location: LCFF_X10_Y15_N29
\Conversor5|R0|contagem[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(30));

-- Location: LCFF_X10_Y15_N27
\Conversor5|R0|contagem[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(29));

-- Location: LCFF_X10_Y15_N25
\Conversor5|R0|contagem[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(28));

-- Location: LCCOMB_X9_Y15_N12
\Conversor5|R0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~0_combout\ = (!\Conversor5|R0|contagem\(29) & (!\Conversor5|R0|contagem\(30) & (!\Conversor5|R0|contagem\(28) & !\Conversor5|R0|contagem\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(29),
	datab => \Conversor5|R0|contagem\(30),
	datac => \Conversor5|R0|contagem\(28),
	datad => \Conversor5|R0|contagem\(31),
	combout => \Conversor5|R0|Equal0~0_combout\);

-- Location: LCFF_X10_Y15_N21
\Conversor5|R0|contagem[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(26));

-- Location: LCFF_X9_Y16_N15
\Conversor5|R0|contagem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(15));

-- Location: LCFF_X9_Y16_N13
\Conversor5|R0|contagem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(12));

-- Location: LCCOMB_X9_Y16_N18
\Conversor5|R0|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~5_combout\ = (\Conversor5|R0|contagem\(12) & (\Conversor5|R0|contagem\(15) & (!\Conversor5|R0|contagem\(13) & !\Conversor5|R0|contagem\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(12),
	datab => \Conversor5|R0|contagem\(15),
	datac => \Conversor5|R0|contagem\(13),
	datad => \Conversor5|R0|contagem\(14),
	combout => \Conversor5|R0|Equal0~5_combout\);

-- Location: LCCOMB_X9_Y16_N6
\Conversor5|R0|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~6_combout\ = (\Conversor5|R0|contagem\(10) & !\Conversor5|R0|contagem\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|contagem\(10),
	datad => \Conversor5|R0|contagem\(11),
	combout => \Conversor5|R0|Equal0~6_combout\);

-- Location: LCFF_X10_Y16_N17
\Conversor5|R0|contagem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(8));

-- Location: LCCOMB_X9_Y16_N2
\Conversor5|R0|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~7_combout\ = (\Conversor5|R0|Equal0~6_combout\ & (\Conversor5|R0|contagem\(9) & (!\Conversor5|R0|contagem\(8) & \Conversor5|R0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|Equal0~6_combout\,
	datab => \Conversor5|R0|contagem\(9),
	datac => \Conversor5|R0|contagem\(8),
	datad => \Conversor5|R0|Equal0~5_combout\,
	combout => \Conversor5|R0|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y16_N18
\contador1|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|LessThan5~0_combout\ = (\contador1|Add5~0_combout\ & (!\contador1|Equal1~0_combout\ & ((\contador1|Add5~1_combout\) # (\contador1|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Add5~1_combout\,
	datab => \contador1|Add5~0_combout\,
	datac => \contador1|Add5~2_combout\,
	datad => \contador1|Equal1~0_combout\,
	combout => \contador1|LessThan5~0_combout\);

-- Location: LCCOMB_X3_Y16_N6
\contador1|cont_hora_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~2_combout\ = (\contador1|cont_min_dez\(2) & (!\contador1|LessThan2~0_combout\ & (\contador1|cont_min_dez\(1) $ (\contador1|cont_min_dez\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_dez\(1),
	datab => \contador1|cont_min_dez\(0),
	datac => \contador1|cont_min_dez\(2),
	datad => \contador1|LessThan2~0_combout\,
	combout => \contador1|cont_hora_uni~2_combout\);

-- Location: LCCOMB_X4_Y18_N6
\contador1|cont_hora_dez[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez[2]~5_combout\ = (\contador1|cont_hora_dez\(0) & ((\contador1|LessThan5~0_combout\) # ((!\contador1|cont_hora_dez[2]~1_combout\ & !\contador1|cont_hora_uni[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_dez\(0),
	datab => \contador1|LessThan5~0_combout\,
	datac => \contador1|cont_hora_dez[2]~1_combout\,
	datad => \contador1|cont_hora_uni[2]~5_combout\,
	combout => \contador1|cont_hora_dez[2]~5_combout\);

-- Location: LCCOMB_X4_Y17_N8
\contador2|cont_min_dez~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_dez~4_combout\ = (\contador2|cont_min_dez\(0) & (!\contador2|cont_min_dez\(2) & \contador2|cont_min_dez\(1))) # (!\contador2|cont_min_dez\(0) & (\contador2|cont_min_dez\(2) & !\contador2|cont_min_dez\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|cont_min_dez\(0),
	datac => \contador2|cont_min_dez\(2),
	datad => \contador2|cont_min_dez\(1),
	combout => \contador2|cont_min_dez~4_combout\);

-- Location: LCCOMB_X5_Y18_N16
\contador3|x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|x~0_combout\ = (\contador3|process_0~0_combout\ & (((\contador3|x~regout\)))) # (!\contador3|process_0~0_combout\ & (\Equal0~0_combout\ & (!\start_stop~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \start_stop~combout\,
	datac => \contador3|x~regout\,
	datad => \contador3|process_0~0_combout\,
	combout => \contador3|x~0_combout\);

-- Location: LCCOMB_X7_Y15_N10
\contador3|conta_retraso~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~8_combout\ = (!\contador3|Equal1~5_combout\ & \contador3|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|Equal1~5_combout\,
	datad => \contador3|Add2~10_combout\,
	combout => \contador3|conta_retraso~8_combout\);

-- Location: LCCOMB_X1_Y16_N30
\contador1|conta_retraso~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~0_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datac => \contador1|Add0~50_combout\,
	combout => \contador1|conta_retraso~0_combout\);

-- Location: LCCOMB_X1_Y16_N28
\contador1|conta_retraso~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~1_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datac => \contador1|Add0~46_combout\,
	combout => \contador1|conta_retraso~1_combout\);

-- Location: LCCOMB_X2_Y16_N4
\contador1|conta_retraso~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~2_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~44_combout\,
	combout => \contador1|conta_retraso~2_combout\);

-- Location: LCCOMB_X7_Y16_N14
\contador3|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|LessThan5~0_combout\ = (\contador3|cont_seg_dez\(2) & (\contador3|cont_seg_dez\(1) $ (\contador3|cont_seg_dez\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|cont_seg_dez\(1),
	datac => \contador3|cont_seg_dez\(0),
	datad => \contador3|cont_seg_dez\(2),
	combout => \contador3|LessThan5~0_combout\);

-- Location: LCCOMB_X9_Y16_N14
\Conversor5|R0|contagem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~3_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|Equal0~10_combout\,
	datad => \Conversor5|R0|Add0~30_combout\,
	combout => \Conversor5|R0|contagem~3_combout\);

-- Location: LCCOMB_X9_Y16_N12
\Conversor5|R0|contagem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~4_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|Equal0~10_combout\,
	datad => \Conversor5|R0|Add0~24_combout\,
	combout => \Conversor5|R0|contagem~4_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mode,
	combout => \mode~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\set~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_set,
	combout => \set~combout\);

-- Location: CLKDELAYCTRL_G7
\mode~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \mode~clk_delay_ctrl_clkout\);

-- Location: CLKDELAYCTRL_G4
\set~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \set~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \set~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\mode~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mode~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mode~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\set~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y18_N14
\contador2|modo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|modo~0_combout\ = (!\contador2|modo\(1) & \contador2|modo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador2|modo\(1),
	datad => \contador2|modo\(0),
	combout => \contador2|modo~0_combout\);

-- Location: LCFF_X4_Y18_N15
\contador2|modo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mode~clkctrl_outclk\,
	datain => \contador2|modo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|modo\(1));

-- Location: LCCOMB_X5_Y18_N28
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\contador2|modo\(0)) # (\contador2|modo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y18_N14
\contador2|modo[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|modo[0]~2_combout\ = !\Equal0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~1_combout\,
	combout => \contador2|modo[0]~2_combout\);

-- Location: LCFF_X5_Y18_N15
\contador2|modo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \mode~clkctrl_outclk\,
	datain => \contador2|modo[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|modo\(0));

-- Location: LCCOMB_X5_Y18_N30
\saida_led_modo0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida_led_modo0~0_combout\ = (!\contador2|modo\(1)) # (!\contador2|modo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \saida_led_modo0~0_combout\);

-- Location: CLKCTRL_G1
\saida_led_modo0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \saida_led_modo0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \saida_led_modo0~0clkctrl_outclk\);

-- Location: LCCOMB_X5_Y16_N12
\contador1|cont_seg_uni~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_uni~1_combout\ = (!\contador1|cont_seg_uni\(3) & (\contador1|cont_seg_uni\(0) $ (\contador1|cont_seg_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_seg_uni\(0),
	datac => \contador1|cont_seg_uni\(1),
	datad => \contador1|cont_seg_uni\(3),
	combout => \contador1|cont_seg_uni~1_combout\);

-- Location: LCCOMB_X1_Y17_N10
\contador1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~4_combout\ = (\contador1|conta_retraso\(2) & (\contador1|Add0~3\ $ (GND))) # (!\contador1|conta_retraso\(2) & (!\contador1|Add0~3\ & VCC))
-- \contador1|Add0~5\ = CARRY((\contador1|conta_retraso\(2) & !\contador1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(2),
	datad => VCC,
	cin => \contador1|Add0~3\,
	combout => \contador1|Add0~4_combout\,
	cout => \contador1|Add0~5\);

-- Location: LCCOMB_X1_Y17_N14
\contador1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~8_combout\ = (\contador1|conta_retraso\(4) & (\contador1|Add0~7\ $ (GND))) # (!\contador1|conta_retraso\(4) & (!\contador1|Add0~7\ & VCC))
-- \contador1|Add0~9\ = CARRY((\contador1|conta_retraso\(4) & !\contador1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(4),
	datad => VCC,
	cin => \contador1|Add0~7\,
	combout => \contador1|Add0~8_combout\,
	cout => \contador1|Add0~9\);

-- Location: LCFF_X1_Y17_N15
\contador1|conta_retraso[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(4));

-- Location: LCCOMB_X1_Y17_N16
\contador1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~10_combout\ = (\contador1|conta_retraso\(5) & (!\contador1|Add0~9\)) # (!\contador1|conta_retraso\(5) & ((\contador1|Add0~9\) # (GND)))
-- \contador1|Add0~11\ = CARRY((!\contador1|Add0~9\) # (!\contador1|conta_retraso\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(5),
	datad => VCC,
	cin => \contador1|Add0~9\,
	combout => \contador1|Add0~10_combout\,
	cout => \contador1|Add0~11\);

-- Location: LCFF_X1_Y17_N17
\contador1|conta_retraso[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(5));

-- Location: LCFF_X1_Y17_N11
\contador1|conta_retraso[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(2));

-- Location: LCCOMB_X1_Y17_N4
\contador1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~6_combout\ = (\contador1|conta_retraso\(3) & (\contador1|conta_retraso\(4) & (\contador1|conta_retraso\(5) & \contador1|conta_retraso\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(3),
	datab => \contador1|conta_retraso\(4),
	datac => \contador1|conta_retraso\(5),
	datad => \contador1|conta_retraso\(2),
	combout => \contador1|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y17_N18
\contador1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~12_combout\ = (\contador1|conta_retraso\(6) & (\contador1|Add0~11\ $ (GND))) # (!\contador1|conta_retraso\(6) & (!\contador1|Add0~11\ & VCC))
-- \contador1|Add0~13\ = CARRY((\contador1|conta_retraso\(6) & !\contador1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(6),
	datad => VCC,
	cin => \contador1|Add0~11\,
	combout => \contador1|Add0~12_combout\,
	cout => \contador1|Add0~13\);

-- Location: LCFF_X1_Y17_N19
\contador1|conta_retraso[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(6));

-- Location: LCCOMB_X1_Y17_N20
\contador1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~14_combout\ = (\contador1|conta_retraso\(7) & (!\contador1|Add0~13\)) # (!\contador1|conta_retraso\(7) & ((\contador1|Add0~13\) # (GND)))
-- \contador1|Add0~15\ = CARRY((!\contador1|Add0~13\) # (!\contador1|conta_retraso\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(7),
	datad => VCC,
	cin => \contador1|Add0~13\,
	combout => \contador1|Add0~14_combout\,
	cout => \contador1|Add0~15\);

-- Location: LCCOMB_X1_Y17_N0
\contador1|conta_retraso~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~11_combout\ = (\contador1|Add0~14_combout\ & !\contador1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|Add0~14_combout\,
	datad => \contador1|Equal0~8_combout\,
	combout => \contador1|conta_retraso~11_combout\);

-- Location: LCFF_X1_Y17_N1
\contador1|conta_retraso[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(7));

-- Location: LCCOMB_X1_Y17_N22
\contador1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~16_combout\ = (\contador1|conta_retraso\(8) & (\contador1|Add0~15\ $ (GND))) # (!\contador1|conta_retraso\(8) & (!\contador1|Add0~15\ & VCC))
-- \contador1|Add0~17\ = CARRY((\contador1|conta_retraso\(8) & !\contador1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(8),
	datad => VCC,
	cin => \contador1|Add0~15\,
	combout => \contador1|Add0~16_combout\,
	cout => \contador1|Add0~17\);

-- Location: LCFF_X1_Y17_N23
\contador1|conta_retraso[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(8));

-- Location: LCCOMB_X1_Y17_N2
\contador1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~5_combout\ = (!\contador1|conta_retraso\(9) & (!\contador1|conta_retraso\(7) & (!\contador1|conta_retraso\(8) & \contador1|conta_retraso\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(9),
	datab => \contador1|conta_retraso\(7),
	datac => \contador1|conta_retraso\(8),
	datad => \contador1|conta_retraso\(6),
	combout => \contador1|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y17_N26
\contador1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~20_combout\ = (\contador1|conta_retraso\(10) & (\contador1|Add0~19\ $ (GND))) # (!\contador1|conta_retraso\(10) & (!\contador1|Add0~19\ & VCC))
-- \contador1|Add0~21\ = CARRY((\contador1|conta_retraso\(10) & !\contador1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(10),
	datad => VCC,
	cin => \contador1|Add0~19\,
	combout => \contador1|Add0~20_combout\,
	cout => \contador1|Add0~21\);

-- Location: LCFF_X1_Y17_N27
\contador1|conta_retraso[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(10));

-- Location: LCCOMB_X1_Y17_N28
\contador1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~22_combout\ = (\contador1|conta_retraso\(11) & (!\contador1|Add0~21\)) # (!\contador1|conta_retraso\(11) & ((\contador1|Add0~21\) # (GND)))
-- \contador1|Add0~23\ = CARRY((!\contador1|Add0~21\) # (!\contador1|conta_retraso\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(11),
	datad => VCC,
	cin => \contador1|Add0~21\,
	combout => \contador1|Add0~22_combout\,
	cout => \contador1|Add0~23\);

-- Location: LCFF_X1_Y17_N29
\contador1|conta_retraso[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(11));

-- Location: LCCOMB_X1_Y17_N30
\contador1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~24_combout\ = (\contador1|conta_retraso\(12) & (\contador1|Add0~23\ $ (GND))) # (!\contador1|conta_retraso\(12) & (!\contador1|Add0~23\ & VCC))
-- \contador1|Add0~25\ = CARRY((\contador1|conta_retraso\(12) & !\contador1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(12),
	datad => VCC,
	cin => \contador1|Add0~23\,
	combout => \contador1|Add0~24_combout\,
	cout => \contador1|Add0~25\);

-- Location: LCCOMB_X2_Y16_N12
\contador1|conta_retraso~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~10_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~24_combout\,
	combout => \contador1|conta_retraso~10_combout\);

-- Location: LCFF_X2_Y16_N13
\contador1|conta_retraso[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(12));

-- Location: LCCOMB_X1_Y16_N0
\contador1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~26_combout\ = (\contador1|conta_retraso\(13) & (!\contador1|Add0~25\)) # (!\contador1|conta_retraso\(13) & ((\contador1|Add0~25\) # (GND)))
-- \contador1|Add0~27\ = CARRY((!\contador1|Add0~25\) # (!\contador1|conta_retraso\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(13),
	datad => VCC,
	cin => \contador1|Add0~25\,
	combout => \contador1|Add0~26_combout\,
	cout => \contador1|Add0~27\);

-- Location: LCCOMB_X2_Y16_N22
\contador1|conta_retraso~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~9_combout\ = (\contador1|Add0~26_combout\ & !\contador1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|Add0~26_combout\,
	datad => \contador1|Equal0~8_combout\,
	combout => \contador1|conta_retraso~9_combout\);

-- Location: LCFF_X2_Y16_N23
\contador1|conta_retraso[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(13));

-- Location: LCCOMB_X1_Y16_N2
\contador1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~28_combout\ = (\contador1|conta_retraso\(14) & (\contador1|Add0~27\ $ (GND))) # (!\contador1|conta_retraso\(14) & (!\contador1|Add0~27\ & VCC))
-- \contador1|Add0~29\ = CARRY((\contador1|conta_retraso\(14) & !\contador1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(14),
	datad => VCC,
	cin => \contador1|Add0~27\,
	combout => \contador1|Add0~28_combout\,
	cout => \contador1|Add0~29\);

-- Location: LCCOMB_X1_Y16_N4
\contador1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~30_combout\ = (\contador1|conta_retraso\(15) & (!\contador1|Add0~29\)) # (!\contador1|conta_retraso\(15) & ((\contador1|Add0~29\) # (GND)))
-- \contador1|Add0~31\ = CARRY((!\contador1|Add0~29\) # (!\contador1|conta_retraso\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(15),
	datad => VCC,
	cin => \contador1|Add0~29\,
	combout => \contador1|Add0~30_combout\,
	cout => \contador1|Add0~31\);

-- Location: LCCOMB_X2_Y16_N24
\contador1|conta_retraso~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~7_combout\ = (\contador1|Add0~30_combout\ & !\contador1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|Add0~30_combout\,
	datad => \contador1|Equal0~8_combout\,
	combout => \contador1|conta_retraso~7_combout\);

-- Location: LCFF_X2_Y16_N25
\contador1|conta_retraso[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(15));

-- Location: LCCOMB_X1_Y16_N6
\contador1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~32_combout\ = (\contador1|conta_retraso\(16) & (\contador1|Add0~31\ $ (GND))) # (!\contador1|conta_retraso\(16) & (!\contador1|Add0~31\ & VCC))
-- \contador1|Add0~33\ = CARRY((\contador1|conta_retraso\(16) & !\contador1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(16),
	datad => VCC,
	cin => \contador1|Add0~31\,
	combout => \contador1|Add0~32_combout\,
	cout => \contador1|Add0~33\);

-- Location: LCCOMB_X1_Y16_N8
\contador1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~34_combout\ = (\contador1|conta_retraso\(17) & (!\contador1|Add0~33\)) # (!\contador1|conta_retraso\(17) & ((\contador1|Add0~33\) # (GND)))
-- \contador1|Add0~35\ = CARRY((!\contador1|Add0~33\) # (!\contador1|conta_retraso\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(17),
	datad => VCC,
	cin => \contador1|Add0~33\,
	combout => \contador1|Add0~34_combout\,
	cout => \contador1|Add0~35\);

-- Location: LCCOMB_X2_Y16_N18
\contador1|conta_retraso~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~6_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~34_combout\,
	combout => \contador1|conta_retraso~6_combout\);

-- Location: LCFF_X2_Y16_N19
\contador1|conta_retraso[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(17));

-- Location: LCCOMB_X1_Y16_N10
\contador1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~36_combout\ = (\contador1|conta_retraso\(18) & (\contador1|Add0~35\ $ (GND))) # (!\contador1|conta_retraso\(18) & (!\contador1|Add0~35\ & VCC))
-- \contador1|Add0~37\ = CARRY((\contador1|conta_retraso\(18) & !\contador1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(18),
	datad => VCC,
	cin => \contador1|Add0~35\,
	combout => \contador1|Add0~36_combout\,
	cout => \contador1|Add0~37\);

-- Location: LCFF_X1_Y16_N11
\contador1|conta_retraso[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(18));

-- Location: LCCOMB_X1_Y16_N12
\contador1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~38_combout\ = (\contador1|conta_retraso\(19) & (!\contador1|Add0~37\)) # (!\contador1|conta_retraso\(19) & ((\contador1|Add0~37\) # (GND)))
-- \contador1|Add0~39\ = CARRY((!\contador1|Add0~37\) # (!\contador1|conta_retraso\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(19),
	datad => VCC,
	cin => \contador1|Add0~37\,
	combout => \contador1|Add0~38_combout\,
	cout => \contador1|Add0~39\);

-- Location: LCCOMB_X1_Y16_N26
\contador1|conta_retraso~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~5_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~38_combout\,
	combout => \contador1|conta_retraso~5_combout\);

-- Location: LCFF_X1_Y16_N27
\contador1|conta_retraso[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(19));

-- Location: LCCOMB_X1_Y16_N14
\contador1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add0~40_combout\ = (\contador1|conta_retraso\(20) & (\contador1|Add0~39\ $ (GND))) # (!\contador1|conta_retraso\(20) & (!\contador1|Add0~39\ & VCC))
-- \contador1|Add0~41\ = CARRY((\contador1|conta_retraso\(20) & !\contador1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador1|conta_retraso\(20),
	datad => VCC,
	cin => \contador1|Add0~39\,
	combout => \contador1|Add0~40_combout\,
	cout => \contador1|Add0~41\);

-- Location: LCCOMB_X2_Y16_N14
\contador1|conta_retraso~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~4_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~40_combout\,
	combout => \contador1|conta_retraso~4_combout\);

-- Location: LCFF_X2_Y16_N15
\contador1|conta_retraso[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(20));

-- Location: LCCOMB_X2_Y16_N20
\contador1|conta_retraso~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~3_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~42_combout\,
	combout => \contador1|conta_retraso~3_combout\);

-- Location: LCFF_X2_Y16_N21
\contador1|conta_retraso[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(21));

-- Location: LCCOMB_X2_Y16_N8
\contador1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~1_combout\ = (!\contador1|conta_retraso\(18) & (\contador1|conta_retraso\(20) & (\contador1|conta_retraso\(21) & \contador1|conta_retraso\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(18),
	datab => \contador1|conta_retraso\(20),
	datac => \contador1|conta_retraso\(21),
	datad => \contador1|conta_retraso\(19),
	combout => \contador1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y16_N26
\contador1|conta_retraso~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|conta_retraso~8_combout\ = (!\contador1|Equal0~8_combout\ & \contador1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Equal0~8_combout\,
	datad => \contador1|Add0~28_combout\,
	combout => \contador1|conta_retraso~8_combout\);

-- Location: LCFF_X2_Y16_N27
\contador1|conta_retraso[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|conta_retraso~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(14));

-- Location: LCFF_X1_Y16_N7
\contador1|conta_retraso[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|conta_retraso\(16));

-- Location: LCCOMB_X2_Y16_N16
\contador1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~2_combout\ = (\contador1|conta_retraso\(15) & (\contador1|conta_retraso\(14) & (!\contador1|conta_retraso\(16) & \contador1|conta_retraso\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(15),
	datab => \contador1|conta_retraso\(14),
	datac => \contador1|conta_retraso\(16),
	datad => \contador1|conta_retraso\(17),
	combout => \contador1|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y16_N2
\contador1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~3_combout\ = (\contador1|conta_retraso\(12) & (\contador1|conta_retraso\(13) & (!\contador1|conta_retraso\(10) & !\contador1|conta_retraso\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|conta_retraso\(12),
	datab => \contador1|conta_retraso\(13),
	datac => \contador1|conta_retraso\(10),
	datad => \contador1|conta_retraso\(11),
	combout => \contador1|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y16_N28
\contador1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~4_combout\ = (\contador1|Equal0~0_combout\ & (\contador1|Equal0~1_combout\ & (\contador1|Equal0~2_combout\ & \contador1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Equal0~0_combout\,
	datab => \contador1|Equal0~1_combout\,
	datac => \contador1|Equal0~2_combout\,
	datad => \contador1|Equal0~3_combout\,
	combout => \contador1|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y16_N0
\contador1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal0~8_combout\ = (\contador1|Equal0~7_combout\ & (\contador1|Equal0~6_combout\ & (\contador1|Equal0~5_combout\ & \contador1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Equal0~7_combout\,
	datab => \contador1|Equal0~6_combout\,
	datac => \contador1|Equal0~5_combout\,
	datad => \contador1|Equal0~4_combout\,
	combout => \contador1|Equal0~8_combout\);

-- Location: LCFF_X6_Y16_N25
\contador1|cont_seg_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \contador1|cont_seg_uni~1_combout\,
	sload => VCC,
	ena => \contador1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_uni\(1));

-- Location: LCCOMB_X6_Y16_N26
\contador1|cont_seg_uni~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_uni~0_combout\ = (!\contador1|cont_seg_uni\(0) & (((!\contador1|cont_seg_uni\(1) & !\contador1|cont_seg_uni\(2))) # (!\contador1|cont_seg_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(3),
	datab => \contador1|cont_seg_uni\(1),
	datac => \contador1|cont_seg_uni\(0),
	datad => \contador1|cont_seg_uni\(2),
	combout => \contador1|cont_seg_uni~0_combout\);

-- Location: LCFF_X6_Y16_N27
\contador1|cont_seg_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_seg_uni~0_combout\,
	ena => \contador1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_uni\(0));

-- Location: LCCOMB_X5_Y16_N24
\contador1|cont_seg_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_uni~3_combout\ = (\contador1|cont_seg_uni\(1) & (\contador1|cont_seg_uni\(2) & (!\contador1|cont_seg_uni\(3) & \contador1|cont_seg_uni\(0)))) # (!\contador1|cont_seg_uni\(1) & (!\contador1|cont_seg_uni\(2) & 
-- (\contador1|cont_seg_uni\(3) & !\contador1|cont_seg_uni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(1),
	datab => \contador1|cont_seg_uni\(2),
	datac => \contador1|cont_seg_uni\(3),
	datad => \contador1|cont_seg_uni\(0),
	combout => \contador1|cont_seg_uni~3_combout\);

-- Location: LCFF_X5_Y16_N25
\contador1|cont_seg_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_seg_uni~3_combout\,
	ena => \contador1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_uni\(3));

-- Location: LCCOMB_X5_Y16_N14
\contador1|cont_seg_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_uni~2_combout\ = (!\contador1|cont_seg_uni\(3) & (\contador1|cont_seg_uni\(2) $ (((\contador1|cont_seg_uni\(1) & \contador1|cont_seg_uni\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(1),
	datab => \contador1|cont_seg_uni\(3),
	datac => \contador1|cont_seg_uni\(2),
	datad => \contador1|cont_seg_uni\(0),
	combout => \contador1|cont_seg_uni~2_combout\);

-- Location: LCFF_X5_Y16_N15
\contador1|cont_seg_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_seg_uni~2_combout\,
	ena => \contador1|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_uni\(2));

-- Location: LCCOMB_X5_Y16_N20
\contador3|cont_seg_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_uni~2_combout\ = (!\contador3|cont_seg_uni\(3) & (\contador3|cont_seg_uni\(0) $ (\contador3|cont_seg_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_uni\(3),
	datab => \contador3|cont_seg_uni\(0),
	datad => \contador3|cont_seg_uni\(1),
	combout => \contador3|cont_seg_uni~2_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X5_Y18_N24
\contador3|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|process_0~0_combout\ = (!\reset~combout\ & (!\contador2|modo\(0) & \contador2|modo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \contador3|process_0~0_combout\);

-- Location: LCCOMB_X4_Y15_N18
\contador3|cont_centseg_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_uni~2_combout\ = (!\contador3|cont_centseg_uni\(3) & (\contador3|cont_centseg_uni\(0) $ (\contador3|cont_centseg_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|cont_centseg_uni\(0),
	datac => \contador3|cont_centseg_uni\(1),
	datad => \contador3|cont_centseg_uni\(3),
	combout => \contador3|cont_centseg_uni~2_combout\);

-- Location: LCCOMB_X7_Y15_N14
\contador3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~0_combout\ = \contador3|conta_retraso\(0) $ (VCC)
-- \contador3|Add2~1\ = CARRY(\contador3|conta_retraso\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(0),
	datad => VCC,
	combout => \contador3|Add2~0_combout\,
	cout => \contador3|Add2~1\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start_stop~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start_stop,
	combout => \start_stop~combout\);

-- Location: LCFF_X5_Y18_N11
\contador3|str_stp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|str_stp~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|str_stp~regout\);

-- Location: LCCOMB_X5_Y18_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\contador2|modo\(0) & \contador2|modo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y18_N10
\contador3|str_stp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|str_stp~0_combout\ = \contador3|str_stp~regout\ $ (((!\contador3|x~regout\ & (!\start_stop~combout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|x~regout\,
	datab => \start_stop~combout\,
	datac => \contador3|str_stp~regout\,
	datad => \Equal0~0_combout\,
	combout => \contador3|str_stp~0_combout\);

-- Location: LCCOMB_X6_Y18_N16
\contador3|conta_retraso[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso[0]~9_combout\ = (\contador3|str_stp~0_combout\ & ((\reset~combout\) # ((\contador2|modo\(0)) # (!\contador2|modo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \contador3|str_stp~0_combout\,
	combout => \contador3|conta_retraso[0]~9_combout\);

-- Location: LCFF_X7_Y15_N15
\contador3|conta_retraso[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~0_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(0));

-- Location: LCCOMB_X7_Y15_N16
\contador3|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~2_combout\ = (\contador3|conta_retraso\(1) & (!\contador3|Add2~1\)) # (!\contador3|conta_retraso\(1) & ((\contador3|Add2~1\) # (GND)))
-- \contador3|Add2~3\ = CARRY((!\contador3|Add2~1\) # (!\contador3|conta_retraso\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(1),
	datad => VCC,
	cin => \contador3|Add2~1\,
	combout => \contador3|Add2~2_combout\,
	cout => \contador3|Add2~3\);

-- Location: LCCOMB_X7_Y15_N18
\contador3|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~4_combout\ = (\contador3|conta_retraso\(2) & (\contador3|Add2~3\ $ (GND))) # (!\contador3|conta_retraso\(2) & (!\contador3|Add2~3\ & VCC))
-- \contador3|Add2~5\ = CARRY((\contador3|conta_retraso\(2) & !\contador3|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(2),
	datad => VCC,
	cin => \contador3|Add2~3\,
	combout => \contador3|Add2~4_combout\,
	cout => \contador3|Add2~5\);

-- Location: LCFF_X7_Y15_N19
\contador3|conta_retraso[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~4_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(2));

-- Location: LCFF_X7_Y15_N17
\contador3|conta_retraso[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~2_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(1));

-- Location: LCCOMB_X7_Y15_N20
\contador3|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~6_combout\ = (\contador3|conta_retraso\(3) & (!\contador3|Add2~5\)) # (!\contador3|conta_retraso\(3) & ((\contador3|Add2~5\) # (GND)))
-- \contador3|Add2~7\ = CARRY((!\contador3|Add2~5\) # (!\contador3|conta_retraso\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(3),
	datad => VCC,
	cin => \contador3|Add2~5\,
	combout => \contador3|Add2~6_combout\,
	cout => \contador3|Add2~7\);

-- Location: LCFF_X7_Y15_N21
\contador3|conta_retraso[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~6_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(3));

-- Location: LCCOMB_X7_Y15_N22
\contador3|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~8_combout\ = (\contador3|conta_retraso\(4) & (\contador3|Add2~7\ $ (GND))) # (!\contador3|conta_retraso\(4) & (!\contador3|Add2~7\ & VCC))
-- \contador3|Add2~9\ = CARRY((\contador3|conta_retraso\(4) & !\contador3|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(4),
	datad => VCC,
	cin => \contador3|Add2~7\,
	combout => \contador3|Add2~8_combout\,
	cout => \contador3|Add2~9\);

-- Location: LCFF_X7_Y15_N23
\contador3|conta_retraso[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~8_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(4));

-- Location: LCCOMB_X7_Y15_N28
\contador3|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~14_combout\ = (\contador3|conta_retraso\(7) & (!\contador3|Add2~13\)) # (!\contador3|conta_retraso\(7) & ((\contador3|Add2~13\) # (GND)))
-- \contador3|Add2~15\ = CARRY((!\contador3|Add2~13\) # (!\contador3|conta_retraso\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(7),
	datad => VCC,
	cin => \contador3|Add2~13\,
	combout => \contador3|Add2~14_combout\,
	cout => \contador3|Add2~15\);

-- Location: LCFF_X7_Y15_N29
\contador3|conta_retraso[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~14_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(7));

-- Location: LCCOMB_X7_Y15_N30
\contador3|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~16_combout\ = (\contador3|conta_retraso\(8) & (\contador3|Add2~15\ $ (GND))) # (!\contador3|conta_retraso\(8) & (!\contador3|Add2~15\ & VCC))
-- \contador3|Add2~17\ = CARRY((\contador3|conta_retraso\(8) & !\contador3|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(8),
	datad => VCC,
	cin => \contador3|Add2~15\,
	combout => \contador3|Add2~16_combout\,
	cout => \contador3|Add2~17\);

-- Location: LCCOMB_X7_Y15_N2
\contador3|conta_retraso~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~7_combout\ = (!\contador3|Equal1~5_combout\ & \contador3|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|Equal1~5_combout\,
	datad => \contador3|Add2~16_combout\,
	combout => \contador3|conta_retraso~7_combout\);

-- Location: LCFF_X7_Y15_N3
\contador3|conta_retraso[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~7_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(8));

-- Location: LCCOMB_X7_Y14_N0
\contador3|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~18_combout\ = (\contador3|conta_retraso\(9) & (!\contador3|Add2~17\)) # (!\contador3|conta_retraso\(9) & ((\contador3|Add2~17\) # (GND)))
-- \contador3|Add2~19\ = CARRY((!\contador3|Add2~17\) # (!\contador3|conta_retraso\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(9),
	datad => VCC,
	cin => \contador3|Add2~17\,
	combout => \contador3|Add2~18_combout\,
	cout => \contador3|Add2~19\);

-- Location: LCFF_X7_Y15_N13
\contador3|conta_retraso[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \contador3|Add2~18_combout\,
	sload => VCC,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(9));

-- Location: LCCOMB_X7_Y14_N2
\contador3|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~20_combout\ = (\contador3|conta_retraso\(10) & (\contador3|Add2~19\ $ (GND))) # (!\contador3|conta_retraso\(10) & (!\contador3|Add2~19\ & VCC))
-- \contador3|Add2~21\ = CARRY((\contador3|conta_retraso\(10) & !\contador3|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(10),
	datad => VCC,
	cin => \contador3|Add2~19\,
	combout => \contador3|Add2~20_combout\,
	cout => \contador3|Add2~21\);

-- Location: LCFF_X7_Y14_N3
\contador3|conta_retraso[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~20_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(10));

-- Location: LCCOMB_X7_Y14_N4
\contador3|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~22_combout\ = (\contador3|conta_retraso\(11) & (!\contador3|Add2~21\)) # (!\contador3|conta_retraso\(11) & ((\contador3|Add2~21\) # (GND)))
-- \contador3|Add2~23\ = CARRY((!\contador3|Add2~21\) # (!\contador3|conta_retraso\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(11),
	datad => VCC,
	cin => \contador3|Add2~21\,
	combout => \contador3|Add2~22_combout\,
	cout => \contador3|Add2~23\);

-- Location: LCFF_X7_Y14_N5
\contador3|conta_retraso[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~22_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(11));

-- Location: LCCOMB_X7_Y14_N6
\contador3|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~24_combout\ = (\contador3|conta_retraso\(12) & (\contador3|Add2~23\ $ (GND))) # (!\contador3|conta_retraso\(12) & (!\contador3|Add2~23\ & VCC))
-- \contador3|Add2~25\ = CARRY((\contador3|conta_retraso\(12) & !\contador3|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(12),
	datad => VCC,
	cin => \contador3|Add2~23\,
	combout => \contador3|Add2~24_combout\,
	cout => \contador3|Add2~25\);

-- Location: LCCOMB_X7_Y14_N8
\contador3|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~26_combout\ = (\contador3|conta_retraso\(13) & (!\contador3|Add2~25\)) # (!\contador3|conta_retraso\(13) & ((\contador3|Add2~25\) # (GND)))
-- \contador3|Add2~27\ = CARRY((!\contador3|Add2~25\) # (!\contador3|conta_retraso\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(13),
	datad => VCC,
	cin => \contador3|Add2~25\,
	combout => \contador3|Add2~26_combout\,
	cout => \contador3|Add2~27\);

-- Location: LCCOMB_X7_Y14_N20
\contador3|conta_retraso~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~6_combout\ = (\contador3|Add2~26_combout\ & !\contador3|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador3|Add2~26_combout\,
	datad => \contador3|Equal1~5_combout\,
	combout => \contador3|conta_retraso~6_combout\);

-- Location: LCFF_X7_Y14_N21
\contador3|conta_retraso[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~6_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(13));

-- Location: LCCOMB_X7_Y14_N10
\contador3|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~28_combout\ = (\contador3|conta_retraso\(14) & (\contador3|Add2~27\ $ (GND))) # (!\contador3|conta_retraso\(14) & (!\contador3|Add2~27\ & VCC))
-- \contador3|Add2~29\ = CARRY((\contador3|conta_retraso\(14) & !\contador3|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(14),
	datad => VCC,
	cin => \contador3|Add2~27\,
	combout => \contador3|Add2~28_combout\,
	cout => \contador3|Add2~29\);

-- Location: LCFF_X7_Y14_N11
\contador3|conta_retraso[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~28_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(14));

-- Location: LCCOMB_X7_Y14_N12
\contador3|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~30_combout\ = (\contador3|conta_retraso\(15) & (!\contador3|Add2~29\)) # (!\contador3|conta_retraso\(15) & ((\contador3|Add2~29\) # (GND)))
-- \contador3|Add2~31\ = CARRY((!\contador3|Add2~29\) # (!\contador3|conta_retraso\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(15),
	datad => VCC,
	cin => \contador3|Add2~29\,
	combout => \contador3|Add2~30_combout\,
	cout => \contador3|Add2~31\);

-- Location: LCCOMB_X7_Y14_N30
\contador3|conta_retraso~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~5_combout\ = (!\contador3|Equal1~5_combout\ & \contador3|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|Equal1~5_combout\,
	datad => \contador3|Add2~30_combout\,
	combout => \contador3|conta_retraso~5_combout\);

-- Location: LCFF_X7_Y14_N31
\contador3|conta_retraso[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~5_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(15));

-- Location: LCFF_X7_Y14_N7
\contador3|conta_retraso[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|Add2~24_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(12));

-- Location: LCCOMB_X7_Y14_N22
\contador3|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Equal1~1_combout\ = (!\contador3|conta_retraso\(14) & (\contador3|conta_retraso\(15) & (\contador3|conta_retraso\(13) & !\contador3|conta_retraso\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(14),
	datab => \contador3|conta_retraso\(15),
	datac => \contador3|conta_retraso\(13),
	datad => \contador3|conta_retraso\(12),
	combout => \contador3|Equal1~1_combout\);

-- Location: LCCOMB_X7_Y14_N14
\contador3|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~32_combout\ = (\contador3|conta_retraso\(16) & (\contador3|Add2~31\ $ (GND))) # (!\contador3|conta_retraso\(16) & (!\contador3|Add2~31\ & VCC))
-- \contador3|Add2~33\ = CARRY((\contador3|conta_retraso\(16) & !\contador3|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(16),
	datad => VCC,
	cin => \contador3|Add2~31\,
	combout => \contador3|Add2~32_combout\,
	cout => \contador3|Add2~33\);

-- Location: LCCOMB_X7_Y14_N24
\contador3|conta_retraso~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~4_combout\ = (!\contador3|Equal1~5_combout\ & \contador3|Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|Equal1~5_combout\,
	datad => \contador3|Add2~32_combout\,
	combout => \contador3|conta_retraso~4_combout\);

-- Location: LCFF_X7_Y14_N25
\contador3|conta_retraso[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~4_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(16));

-- Location: LCCOMB_X7_Y14_N16
\contador3|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~34_combout\ = (\contador3|conta_retraso\(17) & (!\contador3|Add2~33\)) # (!\contador3|conta_retraso\(17) & ((\contador3|Add2~33\) # (GND)))
-- \contador3|Add2~35\ = CARRY((!\contador3|Add2~33\) # (!\contador3|conta_retraso\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador3|conta_retraso\(17),
	datad => VCC,
	cin => \contador3|Add2~33\,
	combout => \contador3|Add2~34_combout\,
	cout => \contador3|Add2~35\);

-- Location: LCCOMB_X7_Y14_N26
\contador3|conta_retraso~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~3_combout\ = (\contador3|Add2~34_combout\ & !\contador3|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador3|Add2~34_combout\,
	datad => \contador3|Equal1~5_combout\,
	combout => \contador3|conta_retraso~3_combout\);

-- Location: LCFF_X7_Y14_N27
\contador3|conta_retraso[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~3_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(17));

-- Location: LCCOMB_X7_Y14_N18
\contador3|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Add2~36_combout\ = \contador3|conta_retraso\(18) $ (!\contador3|Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(18),
	cin => \contador3|Add2~35\,
	combout => \contador3|Add2~36_combout\);

-- Location: LCCOMB_X7_Y14_N28
\contador3|conta_retraso~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|conta_retraso~2_combout\ = (!\contador3|Equal1~5_combout\ & \contador3|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|Equal1~5_combout\,
	datad => \contador3|Add2~36_combout\,
	combout => \contador3|conta_retraso~2_combout\);

-- Location: LCFF_X7_Y14_N29
\contador3|conta_retraso[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|conta_retraso~2_combout\,
	ena => \contador3|conta_retraso[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|conta_retraso\(18));

-- Location: LCCOMB_X7_Y15_N8
\contador3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Equal1~0_combout\ = (\contador3|conta_retraso\(0) & (\contador3|conta_retraso\(16) & (\contador3|conta_retraso\(18) & \contador3|conta_retraso\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(0),
	datab => \contador3|conta_retraso\(16),
	datac => \contador3|conta_retraso\(18),
	datad => \contador3|conta_retraso\(17),
	combout => \contador3|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y15_N12
\contador3|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Equal1~2_combout\ = (\contador3|conta_retraso\(8) & (!\contador3|conta_retraso\(11) & (!\contador3|conta_retraso\(9) & !\contador3|conta_retraso\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(8),
	datab => \contador3|conta_retraso\(11),
	datac => \contador3|conta_retraso\(9),
	datad => \contador3|conta_retraso\(10),
	combout => \contador3|Equal1~2_combout\);

-- Location: LCCOMB_X7_Y15_N6
\contador3|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Equal1~4_combout\ = (\contador3|Equal1~3_combout\ & (\contador3|Equal1~1_combout\ & (\contador3|Equal1~0_combout\ & \contador3|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|Equal1~3_combout\,
	datab => \contador3|Equal1~1_combout\,
	datac => \contador3|Equal1~0_combout\,
	datad => \contador3|Equal1~2_combout\,
	combout => \contador3|Equal1~4_combout\);

-- Location: LCCOMB_X7_Y15_N0
\contador3|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|Equal1~5_combout\ = (\contador3|conta_retraso\(3) & (\contador3|conta_retraso\(2) & (\contador3|conta_retraso\(1) & \contador3|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|conta_retraso\(3),
	datab => \contador3|conta_retraso\(2),
	datac => \contador3|conta_retraso\(1),
	datad => \contador3|Equal1~4_combout\,
	combout => \contador3|Equal1~5_combout\);

-- Location: LCCOMB_X4_Y15_N24
\contador3|cont_centseg_uni[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_uni[3]~1_combout\ = (\contador3|Equal1~5_combout\ & \contador3|str_stp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|Equal1~5_combout\,
	datac => \contador3|str_stp~0_combout\,
	combout => \contador3|cont_centseg_uni[3]~1_combout\);

-- Location: LCFF_X4_Y15_N19
\contador3|cont_centseg_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_uni~2_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_uni\(1));

-- Location: LCCOMB_X4_Y15_N12
\contador3|cont_centseg_uni~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_uni~0_combout\ = (!\contador3|cont_centseg_uni\(0) & (((!\contador3|cont_centseg_uni\(2) & !\contador3|cont_centseg_uni\(1))) # (!\contador3|cont_centseg_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_uni\(2),
	datab => \contador3|cont_centseg_uni\(3),
	datac => \contador3|cont_centseg_uni\(0),
	datad => \contador3|cont_centseg_uni\(1),
	combout => \contador3|cont_centseg_uni~0_combout\);

-- Location: LCFF_X4_Y15_N13
\contador3|cont_centseg_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_uni~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_uni\(0));

-- Location: LCCOMB_X4_Y15_N6
\contador3|cont_centseg_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_uni~4_combout\ = (\contador3|cont_centseg_uni\(2) & (\contador3|cont_centseg_uni\(0) & (!\contador3|cont_centseg_uni\(3) & \contador3|cont_centseg_uni\(1)))) # (!\contador3|cont_centseg_uni\(2) & (!\contador3|cont_centseg_uni\(0) & 
-- (\contador3|cont_centseg_uni\(3) & !\contador3|cont_centseg_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_uni\(2),
	datab => \contador3|cont_centseg_uni\(0),
	datac => \contador3|cont_centseg_uni\(3),
	datad => \contador3|cont_centseg_uni\(1),
	combout => \contador3|cont_centseg_uni~4_combout\);

-- Location: LCFF_X4_Y15_N7
\contador3|cont_centseg_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_uni~4_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_uni\(3));

-- Location: LCCOMB_X4_Y15_N28
\contador3|cont_centseg_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_uni~3_combout\ = (!\contador3|cont_centseg_uni\(3) & (\contador3|cont_centseg_uni\(2) $ (((\contador3|cont_centseg_uni\(0) & \contador3|cont_centseg_uni\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_uni\(0),
	datab => \contador3|cont_centseg_uni\(1),
	datac => \contador3|cont_centseg_uni\(2),
	datad => \contador3|cont_centseg_uni\(3),
	combout => \contador3|cont_centseg_uni~3_combout\);

-- Location: LCFF_X4_Y15_N29
\contador3|cont_centseg_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_uni~3_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_uni\(2));

-- Location: LCCOMB_X5_Y15_N30
\contador3|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|LessThan2~0_combout\ = (\contador3|cont_centseg_uni\(3) & ((\contador3|cont_centseg_uni\(0) & ((!\contador3|cont_centseg_uni\(2)) # (!\contador3|cont_centseg_uni\(1)))) # (!\contador3|cont_centseg_uni\(0) & ((\contador3|cont_centseg_uni\(1)) # 
-- (\contador3|cont_centseg_uni\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_uni\(0),
	datab => \contador3|cont_centseg_uni\(3),
	datac => \contador3|cont_centseg_uni\(1),
	datad => \contador3|cont_centseg_uni\(2),
	combout => \contador3|LessThan2~0_combout\);

-- Location: LCCOMB_X6_Y15_N28
\contador3|cont_seg_uni[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_uni[3]~1_combout\ = (\contador3|LessThan3~0_combout\ & (\contador3|LessThan2~0_combout\ & (\contador3|Equal1~5_combout\ & \contador3|str_stp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|LessThan3~0_combout\,
	datab => \contador3|LessThan2~0_combout\,
	datac => \contador3|Equal1~5_combout\,
	datad => \contador3|str_stp~0_combout\,
	combout => \contador3|cont_seg_uni[3]~1_combout\);

-- Location: LCFF_X6_Y16_N31
\contador3|cont_seg_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \contador3|cont_seg_uni~2_combout\,
	aclr => \contador3|process_0~0_combout\,
	sload => VCC,
	ena => \contador3|cont_seg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_uni\(1));

-- Location: LCCOMB_X5_Y16_N18
\contador3|cont_seg_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_uni~4_combout\ = (\contador3|cont_seg_uni\(2) & (\contador3|cont_seg_uni\(0) & (!\contador3|cont_seg_uni\(3) & \contador3|cont_seg_uni\(1)))) # (!\contador3|cont_seg_uni\(2) & (!\contador3|cont_seg_uni\(0) & 
-- (\contador3|cont_seg_uni\(3) & !\contador3|cont_seg_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_uni\(2),
	datab => \contador3|cont_seg_uni\(0),
	datac => \contador3|cont_seg_uni\(3),
	datad => \contador3|cont_seg_uni\(1),
	combout => \contador3|cont_seg_uni~4_combout\);

-- Location: LCFF_X5_Y16_N19
\contador3|cont_seg_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_seg_uni~4_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_seg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_uni\(3));

-- Location: LCCOMB_X6_Y16_N12
\contador3|cont_seg_uni~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_uni~0_combout\ = (!\contador3|cont_seg_uni\(0) & (((!\contador3|cont_seg_uni\(2) & !\contador3|cont_seg_uni\(1))) # (!\contador3|cont_seg_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_uni\(2),
	datab => \contador3|cont_seg_uni\(1),
	datac => \contador3|cont_seg_uni\(0),
	datad => \contador3|cont_seg_uni\(3),
	combout => \contador3|cont_seg_uni~0_combout\);

-- Location: LCFF_X6_Y16_N13
\contador3|cont_seg_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_seg_uni~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_seg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_uni\(0));

-- Location: LCCOMB_X5_Y16_N0
\contador3|cont_seg_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_uni~3_combout\ = (!\contador3|cont_seg_uni\(3) & (\contador3|cont_seg_uni\(2) $ (((\contador3|cont_seg_uni\(0) & \contador3|cont_seg_uni\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_uni\(3),
	datab => \contador3|cont_seg_uni\(0),
	datac => \contador3|cont_seg_uni\(2),
	datad => \contador3|cont_seg_uni\(1),
	combout => \contador3|cont_seg_uni~3_combout\);

-- Location: LCFF_X5_Y16_N1
\contador3|cont_seg_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_seg_uni~3_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_seg_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_uni\(2));

-- Location: LCCOMB_X5_Y16_N6
\contagem_seg_uni[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_uni[2]~2_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_uni\(2))))) # (!\contador2|modo\(1) & (!\contador2|modo\(0) & (\contador1|cont_seg_uni\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(0),
	datab => \contador2|modo\(1),
	datac => \contador1|cont_seg_uni\(2),
	datad => \contador3|cont_seg_uni\(2),
	combout => \contagem_seg_uni[2]~2_combout\);

-- Location: LCCOMB_X5_Y16_N8
\contagem_seg_uni[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_uni(2) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_uni[2]~2_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_uni(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_seg_uni(2),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_uni[2]~2_combout\,
	combout => contagem_seg_uni(2));

-- Location: LCCOMB_X5_Y16_N26
\contagem_seg_uni[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_uni[3]~3_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_uni\(3))))) # (!\contador2|modo\(1) & (!\contador2|modo\(0) & (\contador1|cont_seg_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(0),
	datab => \contador2|modo\(1),
	datac => \contador1|cont_seg_uni\(3),
	datad => \contador3|cont_seg_uni\(3),
	combout => \contagem_seg_uni[3]~3_combout\);

-- Location: LCCOMB_X5_Y16_N2
\contagem_seg_uni[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_uni(3) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_uni[3]~3_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_uni(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_seg_uni(3),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_uni[3]~3_combout\,
	combout => contagem_seg_uni(3));

-- Location: LCCOMB_X6_Y16_N10
\contagem_seg_uni[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_uni[0]~0_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_uni\(0))))) # (!\contador2|modo\(1) & (!\contador2|modo\(0) & (\contador1|cont_seg_uni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(0),
	datab => \contador1|cont_seg_uni\(0),
	datac => \contador2|modo\(1),
	datad => \contador3|cont_seg_uni\(0),
	combout => \contagem_seg_uni[0]~0_combout\);

-- Location: LCCOMB_X6_Y16_N8
\contagem_seg_uni[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_uni(0) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_uni[0]~0_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_uni(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_seg_uni(0),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_uni[0]~0_combout\,
	combout => contagem_seg_uni(0));

-- Location: LCCOMB_X6_Y16_N22
\contagem_seg_uni[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_uni[1]~1_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_uni\(1))))) # (!\contador2|modo\(1) & (\contador1|cont_seg_uni\(1) & (!\contador2|modo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(1),
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \contador3|cont_seg_uni\(1),
	combout => \contagem_seg_uni[1]~1_combout\);

-- Location: LCCOMB_X6_Y16_N4
\contagem_seg_uni[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_uni(1) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_uni[1]~1_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_uni(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_seg_uni(1),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_uni[1]~1_combout\,
	combout => contagem_seg_uni(1));

-- Location: LCCOMB_X64_Y7_N0
\Conversor3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux6~0_combout\ = (contagem_seg_uni(2) & (!contagem_seg_uni(3) & ((!contagem_seg_uni(1)) # (!contagem_seg_uni(0))))) # (!contagem_seg_uni(2) & (contagem_seg_uni(3) $ (((contagem_seg_uni(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y7_N30
\Conversor3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux5~0_combout\ = (contagem_seg_uni(2) & (contagem_seg_uni(3))) # (!contagem_seg_uni(2) & ((contagem_seg_uni(1)) # ((!contagem_seg_uni(3) & contagem_seg_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\Conversor3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux4~0_combout\ = (contagem_seg_uni(0)) # ((contagem_seg_uni(1) & ((contagem_seg_uni(3)))) # (!contagem_seg_uni(1) & (contagem_seg_uni(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\Conversor3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux3~0_combout\ = (contagem_seg_uni(1) & ((contagem_seg_uni(3)) # ((contagem_seg_uni(2) & contagem_seg_uni(0))))) # (!contagem_seg_uni(1) & (contagem_seg_uni(2) $ (((!contagem_seg_uni(3) & contagem_seg_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\Conversor3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux2~0_combout\ = (contagem_seg_uni(2) & (contagem_seg_uni(3))) # (!contagem_seg_uni(2) & (contagem_seg_uni(1) & ((contagem_seg_uni(3)) # (!contagem_seg_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\Conversor3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux1~0_combout\ = (contagem_seg_uni(2) & ((contagem_seg_uni(3)) # (contagem_seg_uni(0) $ (contagem_seg_uni(1))))) # (!contagem_seg_uni(2) & (contagem_seg_uni(3) & ((contagem_seg_uni(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y7_N8
\Conversor3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor3|Mux0~0_combout\ = (contagem_seg_uni(1) & (((contagem_seg_uni(3))))) # (!contagem_seg_uni(1) & (contagem_seg_uni(2) $ (((!contagem_seg_uni(3) & contagem_seg_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_uni(2),
	datab => contagem_seg_uni(3),
	datac => contagem_seg_uni(0),
	datad => contagem_seg_uni(1),
	combout => \Conversor3|Mux0~0_combout\);

-- Location: LCCOMB_X7_Y16_N2
\contador3|cont_seg_dez~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_dez~2_combout\ = (!\contador3|cont_seg_dez\(2) & (\contador3|cont_seg_dez\(0) $ (\contador3|cont_seg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_dez\(0),
	datac => \contador3|cont_seg_dez\(1),
	datad => \contador3|cont_seg_dez\(2),
	combout => \contador3|cont_seg_dez~2_combout\);

-- Location: LCCOMB_X6_Y16_N30
\contador3|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|LessThan4~0_combout\ = (\contador3|cont_seg_uni\(3) & ((\contador3|cont_seg_uni\(2) & ((!\contador3|cont_seg_uni\(1)) # (!\contador3|cont_seg_uni\(0)))) # (!\contador3|cont_seg_uni\(2) & ((\contador3|cont_seg_uni\(0)) # 
-- (\contador3|cont_seg_uni\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_uni\(2),
	datab => \contador3|cont_seg_uni\(0),
	datac => \contador3|cont_seg_uni\(1),
	datad => \contador3|cont_seg_uni\(3),
	combout => \contador3|LessThan4~0_combout\);

-- Location: LCCOMB_X6_Y15_N2
\contador3|cont_seg_dez[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_dez[0]~1_combout\ = (\contador3|LessThan4~0_combout\ & \contador3|cont_seg_uni[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador3|LessThan4~0_combout\,
	datad => \contador3|cont_seg_uni[3]~1_combout\,
	combout => \contador3|cont_seg_dez[0]~1_combout\);

-- Location: LCFF_X7_Y16_N3
\contador3|cont_seg_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_seg_dez~2_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_seg_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_dez\(1));

-- Location: LCCOMB_X7_Y16_N22
\contador3|cont_seg_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_dez~3_combout\ = (\contador3|cont_seg_dez\(0) & (\contador3|cont_seg_dez\(1) & !\contador3|cont_seg_dez\(2))) # (!\contador3|cont_seg_dez\(0) & (!\contador3|cont_seg_dez\(1) & \contador3|cont_seg_dez\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_seg_dez\(0),
	datab => \contador3|cont_seg_dez\(1),
	datac => \contador3|cont_seg_dez\(2),
	combout => \contador3|cont_seg_dez~3_combout\);

-- Location: LCFF_X7_Y16_N23
\contador3|cont_seg_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_seg_dez~3_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_seg_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_dez\(2));

-- Location: LCCOMB_X7_Y16_N18
\contagem_seg_dez[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_dez[2]~2_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_dez\(2))))) # (!\contador2|modo\(1) & (\contador1|cont_seg_dez\(2) & (!\contador2|modo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_dez\(2),
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \contador3|cont_seg_dez\(2),
	combout => \contagem_seg_dez[2]~2_combout\);

-- Location: LCCOMB_X7_Y16_N4
\contagem_seg_dez[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_dez(2) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_dez[2]~2_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_dez(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_seg_dez(2),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_dez[2]~2_combout\,
	combout => contagem_seg_dez(2));

-- Location: LCCOMB_X7_Y16_N0
\contagem_seg_dez[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_dez[1]~1_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_dez\(1))))) # (!\contador2|modo\(1) & (\contador1|cont_seg_dez\(1) & (!\contador2|modo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_dez\(1),
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \contador3|cont_seg_dez\(1),
	combout => \contagem_seg_dez[1]~1_combout\);

-- Location: LCCOMB_X7_Y16_N30
\contagem_seg_dez[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_dez(1) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_dez[1]~1_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_dez(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_seg_dez(1),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_dez[1]~1_combout\,
	combout => contagem_seg_dez(1));

-- Location: LCCOMB_X7_Y16_N26
\contador3|cont_seg_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_seg_dez~0_combout\ = (!\contador3|cont_seg_dez\(0) & ((!\contador3|cont_seg_dez\(2)) # (!\contador3|cont_seg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|cont_seg_dez\(1),
	datac => \contador3|cont_seg_dez\(0),
	datad => \contador3|cont_seg_dez\(2),
	combout => \contador3|cont_seg_dez~0_combout\);

-- Location: LCFF_X7_Y16_N27
\contador3|cont_seg_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_seg_dez~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_seg_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_seg_dez\(0));

-- Location: LCCOMB_X7_Y16_N10
\contagem_seg_dez[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_seg_dez[0]~0_combout\ = (\contador2|modo\(1) & (((\contador3|cont_seg_dez\(0))))) # (!\contador2|modo\(1) & (\contador1|cont_seg_dez\(0) & (!\contador2|modo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_dez\(0),
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \contador3|cont_seg_dez\(0),
	combout => \contagem_seg_dez[0]~0_combout\);

-- Location: LCCOMB_X7_Y16_N28
\contagem_seg_dez[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_seg_dez(0) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_seg_dez[0]~0_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_seg_dez(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(0),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_seg_dez[0]~0_combout\,
	combout => contagem_seg_dez(0));

-- Location: LCCOMB_X64_Y8_N0
\Conversor4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux6~0_combout\ = (contagem_seg_dez(2) & (contagem_seg_dez(1) & contagem_seg_dez(0))) # (!contagem_seg_dez(2) & (!contagem_seg_dez(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y8_N22
\Conversor4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux5~0_combout\ = (contagem_seg_dez(2)) # ((!contagem_seg_dez(1) & !contagem_seg_dez(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\Conversor4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux4~0_combout\ = (contagem_seg_dez(0)) # ((contagem_seg_dez(2) & !contagem_seg_dez(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\Conversor4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux3~0_combout\ = (contagem_seg_dez(2) & (contagem_seg_dez(1) $ (!contagem_seg_dez(0)))) # (!contagem_seg_dez(2) & (!contagem_seg_dez(1) & contagem_seg_dez(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\Conversor4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux2~0_combout\ = (!contagem_seg_dez(2) & (contagem_seg_dez(1) & !contagem_seg_dez(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\Conversor4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux1~0_combout\ = (contagem_seg_dez(1) $ (!contagem_seg_dez(0))) # (!contagem_seg_dez(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\Conversor4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor4|Mux0~0_combout\ = (!contagem_seg_dez(1) & (contagem_seg_dez(2) $ (contagem_seg_dez(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_seg_dez(2),
	datab => contagem_seg_dez(1),
	datad => contagem_seg_dez(0),
	combout => \Conversor4|Mux0~0_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\config~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_config,
	combout => \config~combout\);

-- Location: LCCOMB_X4_Y18_N26
\Conversor5|q[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[6]~1_combout\ = ((!\contador2|modo\(1)) # (!\contador2|modo\(0))) # (!\config~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \config~combout\,
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \Conversor5|q[6]~1_combout\);

-- Location: CLKCTRL_G3
\Conversor5|q[6]~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Conversor5|q[6]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Conversor5|q[6]~1clkctrl_outclk\);

-- Location: LCCOMB_X10_Y16_N0
\Conversor5|R0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~0_combout\ = \Conversor5|R0|contagem\(0) $ (GND)
-- \Conversor5|R0|Add0~1\ = CARRY(!\Conversor5|R0|contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(0),
	datad => VCC,
	combout => \Conversor5|R0|Add0~0_combout\,
	cout => \Conversor5|R0|Add0~1\);

-- Location: LCCOMB_X9_Y16_N30
\Conversor5|R0|contagem[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem[0]~8_combout\ = !\Conversor5|R0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|Add0~0_combout\,
	combout => \Conversor5|R0|contagem[0]~8_combout\);

-- Location: LCFF_X10_Y16_N31
\Conversor5|R0|contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Conversor5|R0|contagem[0]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(0));

-- Location: LCCOMB_X10_Y16_N2
\Conversor5|R0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~2_combout\ = (\Conversor5|R0|contagem\(1) & (!\Conversor5|R0|Add0~1\)) # (!\Conversor5|R0|contagem\(1) & ((\Conversor5|R0|Add0~1\) # (GND)))
-- \Conversor5|R0|Add0~3\ = CARRY((!\Conversor5|R0|Add0~1\) # (!\Conversor5|R0|contagem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(1),
	datad => VCC,
	cin => \Conversor5|R0|Add0~1\,
	combout => \Conversor5|R0|Add0~2_combout\,
	cout => \Conversor5|R0|Add0~3\);

-- Location: LCFF_X10_Y16_N3
\Conversor5|R0|contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(1));

-- Location: LCCOMB_X10_Y16_N4
\Conversor5|R0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~4_combout\ = (\Conversor5|R0|contagem\(2) & (\Conversor5|R0|Add0~3\ $ (GND))) # (!\Conversor5|R0|contagem\(2) & (!\Conversor5|R0|Add0~3\ & VCC))
-- \Conversor5|R0|Add0~5\ = CARRY((\Conversor5|R0|contagem\(2) & !\Conversor5|R0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(2),
	datad => VCC,
	cin => \Conversor5|R0|Add0~3\,
	combout => \Conversor5|R0|Add0~4_combout\,
	cout => \Conversor5|R0|Add0~5\);

-- Location: LCFF_X10_Y16_N5
\Conversor5|R0|contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(2));

-- Location: LCCOMB_X10_Y16_N6
\Conversor5|R0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~6_combout\ = (\Conversor5|R0|contagem\(3) & (!\Conversor5|R0|Add0~5\)) # (!\Conversor5|R0|contagem\(3) & ((\Conversor5|R0|Add0~5\) # (GND)))
-- \Conversor5|R0|Add0~7\ = CARRY((!\Conversor5|R0|Add0~5\) # (!\Conversor5|R0|contagem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(3),
	datad => VCC,
	cin => \Conversor5|R0|Add0~5\,
	combout => \Conversor5|R0|Add0~6_combout\,
	cout => \Conversor5|R0|Add0~7\);

-- Location: LCFF_X10_Y16_N7
\Conversor5|R0|contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(3));

-- Location: LCCOMB_X9_Y16_N8
\Conversor5|R0|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~9_combout\ = (!\Conversor5|R0|contagem\(2) & (!\Conversor5|R0|contagem\(1) & (\Conversor5|R0|contagem\(0) & !\Conversor5|R0|contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(2),
	datab => \Conversor5|R0|contagem\(1),
	datac => \Conversor5|R0|contagem\(0),
	datad => \Conversor5|R0|contagem\(3),
	combout => \Conversor5|R0|Equal0~9_combout\);

-- Location: LCCOMB_X10_Y16_N8
\Conversor5|R0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~8_combout\ = (\Conversor5|R0|contagem\(4) & (\Conversor5|R0|Add0~7\ $ (GND))) # (!\Conversor5|R0|contagem\(4) & (!\Conversor5|R0|Add0~7\ & VCC))
-- \Conversor5|R0|Add0~9\ = CARRY((\Conversor5|R0|contagem\(4) & !\Conversor5|R0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(4),
	datad => VCC,
	cin => \Conversor5|R0|Add0~7\,
	combout => \Conversor5|R0|Add0~8_combout\,
	cout => \Conversor5|R0|Add0~9\);

-- Location: LCFF_X10_Y16_N9
\Conversor5|R0|contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(4));

-- Location: LCCOMB_X10_Y16_N10
\Conversor5|R0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~10_combout\ = (\Conversor5|R0|contagem\(5) & (!\Conversor5|R0|Add0~9\)) # (!\Conversor5|R0|contagem\(5) & ((\Conversor5|R0|Add0~9\) # (GND)))
-- \Conversor5|R0|Add0~11\ = CARRY((!\Conversor5|R0|Add0~9\) # (!\Conversor5|R0|contagem\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(5),
	datad => VCC,
	cin => \Conversor5|R0|Add0~9\,
	combout => \Conversor5|R0|Add0~10_combout\,
	cout => \Conversor5|R0|Add0~11\);

-- Location: LCCOMB_X10_Y16_N12
\Conversor5|R0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~12_combout\ = (\Conversor5|R0|contagem\(6) & (\Conversor5|R0|Add0~11\ $ (GND))) # (!\Conversor5|R0|contagem\(6) & (!\Conversor5|R0|Add0~11\ & VCC))
-- \Conversor5|R0|Add0~13\ = CARRY((\Conversor5|R0|contagem\(6) & !\Conversor5|R0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(6),
	datad => VCC,
	cin => \Conversor5|R0|Add0~11\,
	combout => \Conversor5|R0|Add0~12_combout\,
	cout => \Conversor5|R0|Add0~13\);

-- Location: LCCOMB_X10_Y16_N14
\Conversor5|R0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~14_combout\ = (\Conversor5|R0|contagem\(7) & (!\Conversor5|R0|Add0~13\)) # (!\Conversor5|R0|contagem\(7) & ((\Conversor5|R0|Add0~13\) # (GND)))
-- \Conversor5|R0|Add0~15\ = CARRY((!\Conversor5|R0|Add0~13\) # (!\Conversor5|R0|contagem\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(7),
	datad => VCC,
	cin => \Conversor5|R0|Add0~13\,
	combout => \Conversor5|R0|Add0~14_combout\,
	cout => \Conversor5|R0|Add0~15\);

-- Location: LCCOMB_X9_Y16_N4
\Conversor5|R0|contagem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~7_combout\ = (\Conversor5|R0|Add0~14_combout\ & !\Conversor5|R0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|Add0~14_combout\,
	datac => \Conversor5|R0|Equal0~10_combout\,
	combout => \Conversor5|R0|contagem~7_combout\);

-- Location: LCFF_X9_Y16_N5
\Conversor5|R0|contagem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(7));

-- Location: LCFF_X10_Y16_N13
\Conversor5|R0|contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(6));

-- Location: LCFF_X10_Y16_N11
\Conversor5|R0|contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(5));

-- Location: LCCOMB_X9_Y16_N26
\Conversor5|R0|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~8_combout\ = (!\Conversor5|R0|contagem\(4) & (\Conversor5|R0|contagem\(7) & (!\Conversor5|R0|contagem\(6) & !\Conversor5|R0|contagem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(4),
	datab => \Conversor5|R0|contagem\(7),
	datac => \Conversor5|R0|contagem\(6),
	datad => \Conversor5|R0|contagem\(5),
	combout => \Conversor5|R0|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y16_N18
\Conversor5|R0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~18_combout\ = (\Conversor5|R0|contagem\(9) & (!\Conversor5|R0|Add0~17\)) # (!\Conversor5|R0|contagem\(9) & ((\Conversor5|R0|Add0~17\) # (GND)))
-- \Conversor5|R0|Add0~19\ = CARRY((!\Conversor5|R0|Add0~17\) # (!\Conversor5|R0|contagem\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(9),
	datad => VCC,
	cin => \Conversor5|R0|Add0~17\,
	combout => \Conversor5|R0|Add0~18_combout\,
	cout => \Conversor5|R0|Add0~19\);

-- Location: LCCOMB_X9_Y16_N28
\Conversor5|R0|contagem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~6_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|Equal0~10_combout\,
	datad => \Conversor5|R0|Add0~18_combout\,
	combout => \Conversor5|R0|contagem~6_combout\);

-- Location: LCFF_X9_Y16_N29
\Conversor5|R0|contagem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(9));

-- Location: LCCOMB_X10_Y16_N20
\Conversor5|R0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~20_combout\ = (\Conversor5|R0|contagem\(10) & (\Conversor5|R0|Add0~19\ $ (GND))) # (!\Conversor5|R0|contagem\(10) & (!\Conversor5|R0|Add0~19\ & VCC))
-- \Conversor5|R0|Add0~21\ = CARRY((\Conversor5|R0|contagem\(10) & !\Conversor5|R0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(10),
	datad => VCC,
	cin => \Conversor5|R0|Add0~19\,
	combout => \Conversor5|R0|Add0~20_combout\,
	cout => \Conversor5|R0|Add0~21\);

-- Location: LCCOMB_X9_Y16_N24
\Conversor5|R0|contagem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~5_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|Equal0~10_combout\,
	datad => \Conversor5|R0|Add0~20_combout\,
	combout => \Conversor5|R0|contagem~5_combout\);

-- Location: LCFF_X9_Y16_N25
\Conversor5|R0|contagem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(10));

-- Location: LCCOMB_X10_Y16_N22
\Conversor5|R0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~22_combout\ = (\Conversor5|R0|contagem\(11) & (!\Conversor5|R0|Add0~21\)) # (!\Conversor5|R0|contagem\(11) & ((\Conversor5|R0|Add0~21\) # (GND)))
-- \Conversor5|R0|Add0~23\ = CARRY((!\Conversor5|R0|Add0~21\) # (!\Conversor5|R0|contagem\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(11),
	datad => VCC,
	cin => \Conversor5|R0|Add0~21\,
	combout => \Conversor5|R0|Add0~22_combout\,
	cout => \Conversor5|R0|Add0~23\);

-- Location: LCFF_X10_Y16_N23
\Conversor5|R0|contagem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(11));

-- Location: LCCOMB_X10_Y16_N26
\Conversor5|R0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~26_combout\ = (\Conversor5|R0|contagem\(13) & (!\Conversor5|R0|Add0~25\)) # (!\Conversor5|R0|contagem\(13) & ((\Conversor5|R0|Add0~25\) # (GND)))
-- \Conversor5|R0|Add0~27\ = CARRY((!\Conversor5|R0|Add0~25\) # (!\Conversor5|R0|contagem\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(13),
	datad => VCC,
	cin => \Conversor5|R0|Add0~25\,
	combout => \Conversor5|R0|Add0~26_combout\,
	cout => \Conversor5|R0|Add0~27\);

-- Location: LCFF_X10_Y16_N27
\Conversor5|R0|contagem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(13));

-- Location: LCCOMB_X10_Y16_N28
\Conversor5|R0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~28_combout\ = (\Conversor5|R0|contagem\(14) & (\Conversor5|R0|Add0~27\ $ (GND))) # (!\Conversor5|R0|contagem\(14) & (!\Conversor5|R0|Add0~27\ & VCC))
-- \Conversor5|R0|Add0~29\ = CARRY((\Conversor5|R0|contagem\(14) & !\Conversor5|R0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(14),
	datad => VCC,
	cin => \Conversor5|R0|Add0~27\,
	combout => \Conversor5|R0|Add0~28_combout\,
	cout => \Conversor5|R0|Add0~29\);

-- Location: LCFF_X10_Y16_N29
\Conversor5|R0|contagem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(14));

-- Location: LCCOMB_X10_Y15_N0
\Conversor5|R0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~32_combout\ = (\Conversor5|R0|contagem\(16) & (\Conversor5|R0|Add0~31\ $ (GND))) # (!\Conversor5|R0|contagem\(16) & (!\Conversor5|R0|Add0~31\ & VCC))
-- \Conversor5|R0|Add0~33\ = CARRY((\Conversor5|R0|contagem\(16) & !\Conversor5|R0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(16),
	datad => VCC,
	cin => \Conversor5|R0|Add0~31\,
	combout => \Conversor5|R0|Add0~32_combout\,
	cout => \Conversor5|R0|Add0~33\);

-- Location: LCFF_X10_Y15_N1
\Conversor5|R0|contagem[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(16));

-- Location: LCCOMB_X10_Y15_N2
\Conversor5|R0|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~34_combout\ = (\Conversor5|R0|contagem\(17) & (!\Conversor5|R0|Add0~33\)) # (!\Conversor5|R0|contagem\(17) & ((\Conversor5|R0|Add0~33\) # (GND)))
-- \Conversor5|R0|Add0~35\ = CARRY((!\Conversor5|R0|Add0~33\) # (!\Conversor5|R0|contagem\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(17),
	datad => VCC,
	cin => \Conversor5|R0|Add0~33\,
	combout => \Conversor5|R0|Add0~34_combout\,
	cout => \Conversor5|R0|Add0~35\);

-- Location: LCFF_X10_Y15_N3
\Conversor5|R0|contagem[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(17));

-- Location: LCCOMB_X10_Y15_N4
\Conversor5|R0|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~36_combout\ = (\Conversor5|R0|contagem\(18) & (\Conversor5|R0|Add0~35\ $ (GND))) # (!\Conversor5|R0|contagem\(18) & (!\Conversor5|R0|Add0~35\ & VCC))
-- \Conversor5|R0|Add0~37\ = CARRY((\Conversor5|R0|contagem\(18) & !\Conversor5|R0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(18),
	datad => VCC,
	cin => \Conversor5|R0|Add0~35\,
	combout => \Conversor5|R0|Add0~36_combout\,
	cout => \Conversor5|R0|Add0~37\);

-- Location: LCFF_X10_Y15_N5
\Conversor5|R0|contagem[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(18));

-- Location: LCCOMB_X10_Y15_N6
\Conversor5|R0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~38_combout\ = (\Conversor5|R0|contagem\(19) & (!\Conversor5|R0|Add0~37\)) # (!\Conversor5|R0|contagem\(19) & ((\Conversor5|R0|Add0~37\) # (GND)))
-- \Conversor5|R0|Add0~39\ = CARRY((!\Conversor5|R0|Add0~37\) # (!\Conversor5|R0|contagem\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(19),
	datad => VCC,
	cin => \Conversor5|R0|Add0~37\,
	combout => \Conversor5|R0|Add0~38_combout\,
	cout => \Conversor5|R0|Add0~39\);

-- Location: LCCOMB_X10_Y15_N8
\Conversor5|R0|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~40_combout\ = (\Conversor5|R0|contagem\(20) & (\Conversor5|R0|Add0~39\ $ (GND))) # (!\Conversor5|R0|contagem\(20) & (!\Conversor5|R0|Add0~39\ & VCC))
-- \Conversor5|R0|Add0~41\ = CARRY((\Conversor5|R0|contagem\(20) & !\Conversor5|R0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(20),
	datad => VCC,
	cin => \Conversor5|R0|Add0~39\,
	combout => \Conversor5|R0|Add0~40_combout\,
	cout => \Conversor5|R0|Add0~41\);

-- Location: LCCOMB_X9_Y16_N10
\Conversor5|R0|contagem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~1_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|Equal0~10_combout\,
	datac => \Conversor5|R0|Add0~40_combout\,
	combout => \Conversor5|R0|contagem~1_combout\);

-- Location: LCFF_X9_Y16_N11
\Conversor5|R0|contagem[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(20));

-- Location: LCCOMB_X10_Y15_N10
\Conversor5|R0|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~42_combout\ = (\Conversor5|R0|contagem\(21) & (!\Conversor5|R0|Add0~41\)) # (!\Conversor5|R0|contagem\(21) & ((\Conversor5|R0|Add0~41\) # (GND)))
-- \Conversor5|R0|Add0~43\ = CARRY((!\Conversor5|R0|Add0~41\) # (!\Conversor5|R0|contagem\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(21),
	datad => VCC,
	cin => \Conversor5|R0|Add0~41\,
	combout => \Conversor5|R0|Add0~42_combout\,
	cout => \Conversor5|R0|Add0~43\);

-- Location: LCCOMB_X10_Y15_N12
\Conversor5|R0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~44_combout\ = (\Conversor5|R0|contagem\(22) & (\Conversor5|R0|Add0~43\ $ (GND))) # (!\Conversor5|R0|contagem\(22) & (!\Conversor5|R0|Add0~43\ & VCC))
-- \Conversor5|R0|Add0~45\ = CARRY((\Conversor5|R0|contagem\(22) & !\Conversor5|R0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(22),
	datad => VCC,
	cin => \Conversor5|R0|Add0~43\,
	combout => \Conversor5|R0|Add0~44_combout\,
	cout => \Conversor5|R0|Add0~45\);

-- Location: LCCOMB_X10_Y15_N14
\Conversor5|R0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~46_combout\ = (\Conversor5|R0|contagem\(23) & (!\Conversor5|R0|Add0~45\)) # (!\Conversor5|R0|contagem\(23) & ((\Conversor5|R0|Add0~45\) # (GND)))
-- \Conversor5|R0|Add0~47\ = CARRY((!\Conversor5|R0|Add0~45\) # (!\Conversor5|R0|contagem\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(23),
	datad => VCC,
	cin => \Conversor5|R0|Add0~45\,
	combout => \Conversor5|R0|Add0~46_combout\,
	cout => \Conversor5|R0|Add0~47\);

-- Location: LCCOMB_X9_Y16_N16
\Conversor5|R0|contagem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~0_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|Equal0~10_combout\,
	datac => \Conversor5|R0|Add0~46_combout\,
	combout => \Conversor5|R0|contagem~0_combout\);

-- Location: LCFF_X9_Y16_N17
\Conversor5|R0|contagem[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(23));

-- Location: LCCOMB_X10_Y15_N16
\Conversor5|R0|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~48_combout\ = (\Conversor5|R0|contagem\(24) & (\Conversor5|R0|Add0~47\ $ (GND))) # (!\Conversor5|R0|contagem\(24) & (!\Conversor5|R0|Add0~47\ & VCC))
-- \Conversor5|R0|Add0~49\ = CARRY((\Conversor5|R0|contagem\(24) & !\Conversor5|R0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(24),
	datad => VCC,
	cin => \Conversor5|R0|Add0~47\,
	combout => \Conversor5|R0|Add0~48_combout\,
	cout => \Conversor5|R0|Add0~49\);

-- Location: LCCOMB_X10_Y15_N18
\Conversor5|R0|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Add0~50_combout\ = (\Conversor5|R0|contagem\(25) & (!\Conversor5|R0|Add0~49\)) # (!\Conversor5|R0|contagem\(25) & ((\Conversor5|R0|Add0~49\) # (GND)))
-- \Conversor5|R0|Add0~51\ = CARRY((!\Conversor5|R0|Add0~49\) # (!\Conversor5|R0|contagem\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|R0|contagem\(25),
	datad => VCC,
	cin => \Conversor5|R0|Add0~49\,
	combout => \Conversor5|R0|Add0~50_combout\,
	cout => \Conversor5|R0|Add0~51\);

-- Location: LCFF_X10_Y15_N19
\Conversor5|R0|contagem[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(25));

-- Location: LCFF_X10_Y15_N23
\Conversor5|R0|contagem[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(27));

-- Location: LCFF_X10_Y15_N17
\Conversor5|R0|contagem[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(24));

-- Location: LCCOMB_X9_Y15_N26
\Conversor5|R0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~1_combout\ = (!\Conversor5|R0|contagem\(26) & (!\Conversor5|R0|contagem\(27) & (!\Conversor5|R0|contagem\(24) & !\Conversor5|R0|contagem\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(26),
	datab => \Conversor5|R0|contagem\(27),
	datac => \Conversor5|R0|contagem\(24),
	datad => \Conversor5|R0|contagem\(25),
	combout => \Conversor5|R0|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y16_N20
\Conversor5|R0|contagem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|contagem~2_combout\ = (!\Conversor5|R0|Equal0~10_combout\ & \Conversor5|R0|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|Equal0~10_combout\,
	datad => \Conversor5|R0|Add0~38_combout\,
	combout => \Conversor5|R0|contagem~2_combout\);

-- Location: LCFF_X9_Y16_N21
\Conversor5|R0|contagem[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(19));

-- Location: LCCOMB_X9_Y15_N14
\Conversor5|R0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~3_combout\ = (!\Conversor5|R0|contagem\(18) & (!\Conversor5|R0|contagem\(16) & (\Conversor5|R0|contagem\(19) & !\Conversor5|R0|contagem\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(18),
	datab => \Conversor5|R0|contagem\(16),
	datac => \Conversor5|R0|contagem\(19),
	datad => \Conversor5|R0|contagem\(17),
	combout => \Conversor5|R0|Equal0~3_combout\);

-- Location: LCFF_X10_Y15_N11
\Conversor5|R0|contagem[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(21));

-- Location: LCFF_X10_Y15_N13
\Conversor5|R0|contagem[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|contagem\(22));

-- Location: LCCOMB_X9_Y15_N28
\Conversor5|R0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~2_combout\ = (\Conversor5|R0|contagem\(23) & (!\Conversor5|R0|contagem\(21) & (!\Conversor5|R0|contagem\(22) & \Conversor5|R0|contagem\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|contagem\(23),
	datab => \Conversor5|R0|contagem\(21),
	datac => \Conversor5|R0|contagem\(22),
	datad => \Conversor5|R0|contagem\(20),
	combout => \Conversor5|R0|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y15_N0
\Conversor5|R0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~4_combout\ = (\Conversor5|R0|Equal0~0_combout\ & (\Conversor5|R0|Equal0~1_combout\ & (\Conversor5|R0|Equal0~3_combout\ & \Conversor5|R0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|Equal0~0_combout\,
	datab => \Conversor5|R0|Equal0~1_combout\,
	datac => \Conversor5|R0|Equal0~3_combout\,
	datad => \Conversor5|R0|Equal0~2_combout\,
	combout => \Conversor5|R0|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y16_N0
\Conversor5|R0|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|Equal0~10_combout\ = (\Conversor5|R0|Equal0~7_combout\ & (\Conversor5|R0|Equal0~9_combout\ & (\Conversor5|R0|Equal0~8_combout\ & \Conversor5|R0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|R0|Equal0~7_combout\,
	datab => \Conversor5|R0|Equal0~9_combout\,
	datac => \Conversor5|R0|Equal0~8_combout\,
	datad => \Conversor5|R0|Equal0~4_combout\,
	combout => \Conversor5|R0|Equal0~10_combout\);

-- Location: LCCOMB_X4_Y18_N28
\Conversor5|R0|estado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|R0|estado~0_combout\ = \Conversor5|R0|estado~regout\ $ (\Conversor5|R0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|R0|estado~regout\,
	datad => \Conversor5|R0|Equal0~10_combout\,
	combout => \Conversor5|R0|estado~0_combout\);

-- Location: LCFF_X4_Y18_N29
\Conversor5|R0|estado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Conversor5|R0|estado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Conversor5|R0|estado~regout\);

-- Location: LCCOMB_X4_Y18_N8
\Conversor7|q[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[6]~0_combout\ = (((\contador2|modo\(1) & !\contador2|modo\(0))) # (!\Conversor5|R0|estado~regout\)) # (!\config~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \config~combout\,
	datab => \contador2|modo\(1),
	datac => \contador2|modo\(0),
	datad => \Conversor5|R0|estado~regout\,
	combout => \Conversor7|q[6]~0_combout\);

-- Location: LCCOMB_X7_Y17_N8
\contador1|cont_min_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_uni~3_combout\ = (!\contador1|cont_min_uni\(3) & (\contador1|cont_min_uni\(0) $ (\contador1|cont_min_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(0),
	datab => \contador1|cont_min_uni\(3),
	datad => \contador1|cont_min_uni\(1),
	combout => \contador1|cont_min_uni~3_combout\);

-- Location: LCCOMB_X7_Y16_N16
\contador1|cont_seg_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_dez~0_combout\ = (!\contador1|cont_seg_dez\(0) & ((!\contador1|cont_seg_dez\(2)) # (!\contador1|cont_seg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_dez\(1),
	datac => \contador1|cont_seg_dez\(0),
	datad => \contador1|cont_seg_dez\(2),
	combout => \contador1|cont_seg_dez~0_combout\);

-- Location: LCCOMB_X5_Y16_N28
\contador1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|LessThan0~0_combout\ = (\contador1|cont_seg_uni\(3) & ((\contador1|cont_seg_uni\(1) & ((!\contador1|cont_seg_uni\(2)) # (!\contador1|cont_seg_uni\(0)))) # (!\contador1|cont_seg_uni\(1) & ((\contador1|cont_seg_uni\(0)) # 
-- (\contador1|cont_seg_uni\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(1),
	datab => \contador1|cont_seg_uni\(3),
	datac => \contador1|cont_seg_uni\(0),
	datad => \contador1|cont_seg_uni\(2),
	combout => \contador1|LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y17_N16
\contador1|cont_seg_dez[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_dez[0]~1_combout\ = (\contador1|LessThan0~0_combout\ & \contador1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|LessThan0~0_combout\,
	datad => \contador1|Equal0~8_combout\,
	combout => \contador1|cont_seg_dez[0]~1_combout\);

-- Location: LCFF_X7_Y16_N17
\contador1|cont_seg_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_seg_dez~0_combout\,
	ena => \contador1|cont_seg_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_dez\(0));

-- Location: LCCOMB_X7_Y16_N12
\contador1|cont_seg_dez~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_dez~2_combout\ = (!\contador1|cont_seg_dez\(2) & (\contador1|cont_seg_dez\(0) $ (\contador1|cont_seg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_seg_dez\(0),
	datac => \contador1|cont_seg_dez\(1),
	datad => \contador1|cont_seg_dez\(2),
	combout => \contador1|cont_seg_dez~2_combout\);

-- Location: LCFF_X7_Y16_N13
\contador1|cont_seg_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_seg_dez~2_combout\,
	ena => \contador1|cont_seg_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_dez\(1));

-- Location: LCCOMB_X7_Y16_N24
\contador1|cont_seg_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_seg_dez~3_combout\ = (\contador1|cont_seg_dez\(0) & (!\contador1|cont_seg_dez\(2) & \contador1|cont_seg_dez\(1))) # (!\contador1|cont_seg_dez\(0) & (\contador1|cont_seg_dez\(2) & !\contador1|cont_seg_dez\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_seg_dez\(0),
	datac => \contador1|cont_seg_dez\(2),
	datad => \contador1|cont_seg_dez\(1),
	combout => \contador1|cont_seg_dez~3_combout\);

-- Location: LCFF_X7_Y16_N25
\contador1|cont_seg_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_seg_dez~3_combout\,
	ena => \contador1|cont_seg_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_seg_dez\(2));

-- Location: LCCOMB_X7_Y16_N8
\contador1|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|LessThan1~0_combout\ = (\contador1|cont_seg_dez\(2) & (\contador1|cont_seg_dez\(0) $ (\contador1|cont_seg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_dez\(0),
	datac => \contador1|cont_seg_dez\(2),
	datad => \contador1|cont_seg_dez\(1),
	combout => \contador1|LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y17_N0
\contador1|estado_hora_ou_min~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|estado_hora_ou_min~0_combout\ = \contador1|estado_hora_ou_min~regout\ $ (((\config~combout\ & (!\contador2|modo\(0) & !\contador2|modo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \config~combout\,
	datab => \contador2|modo\(0),
	datac => \contador1|estado_hora_ou_min~regout\,
	datad => \contador2|modo\(1),
	combout => \contador1|estado_hora_ou_min~0_combout\);

-- Location: LCFF_X4_Y17_N1
\contador1|estado_hora_ou_min\ : cycloneii_lcell_ff
PORT MAP (
	clk => \set~clkctrl_outclk\,
	datain => \contador1|estado_hora_ou_min~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|estado_hora_ou_min~regout\);

-- Location: LCCOMB_X4_Y18_N4
\contador1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|process_0~0_combout\ = (\config~combout\ & (!\contador2|modo\(1) & (!\contador2|modo\(0) & !\start_stop~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \config~combout\,
	datab => \contador2|modo\(1),
	datac => \contador2|modo\(0),
	datad => \start_stop~combout\,
	combout => \contador1|process_0~0_combout\);

-- Location: LCCOMB_X4_Y17_N2
\contador1|cont_min_uni[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_uni[3]~0_combout\ = (\contador1|x~regout\) # ((!\contador1|process_0~0_combout\) # (!\contador1|estado_hora_ou_min~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|x~regout\,
	datab => \contador1|estado_hora_ou_min~regout\,
	datad => \contador1|process_0~0_combout\,
	combout => \contador1|cont_min_uni[3]~0_combout\);

-- Location: LCCOMB_X5_Y17_N24
\contador1|cont_min_uni[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_uni[3]~2_combout\ = ((\contador1|LessThan0~0_combout\ & (\contador1|LessThan1~0_combout\ & \contador1|Equal0~8_combout\))) # (!\contador1|cont_min_uni[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|LessThan0~0_combout\,
	datab => \contador1|LessThan1~0_combout\,
	datac => \contador1|Equal0~8_combout\,
	datad => \contador1|cont_min_uni[3]~0_combout\,
	combout => \contador1|cont_min_uni[3]~2_combout\);

-- Location: LCFF_X6_Y17_N19
\contador1|cont_min_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \contador1|cont_min_uni~3_combout\,
	sload => VCC,
	ena => \contador1|cont_min_uni[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_uni\(1));

-- Location: LCCOMB_X6_Y17_N18
\contador1|cont_min_uni~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_uni~5_combout\ = (\contador1|cont_min_uni\(0) & (!\contador1|cont_min_uni\(3) & (\contador1|cont_min_uni\(1) & \contador1|cont_min_uni\(2)))) # (!\contador1|cont_min_uni\(0) & (\contador1|cont_min_uni\(3) & 
-- (!\contador1|cont_min_uni\(1) & !\contador1|cont_min_uni\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(0),
	datab => \contador1|cont_min_uni\(3),
	datac => \contador1|cont_min_uni\(1),
	datad => \contador1|cont_min_uni\(2),
	combout => \contador1|cont_min_uni~5_combout\);

-- Location: LCFF_X6_Y17_N13
\contador1|cont_min_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \contador1|cont_min_uni~5_combout\,
	sload => VCC,
	ena => \contador1|cont_min_uni[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_uni\(3));

-- Location: LCCOMB_X6_Y17_N2
\contador1|cont_min_uni~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_uni~1_combout\ = (!\contador1|cont_min_uni\(0) & (((!\contador1|cont_min_uni\(2) & !\contador1|cont_min_uni\(1))) # (!\contador1|cont_min_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(2),
	datab => \contador1|cont_min_uni\(3),
	datac => \contador1|cont_min_uni\(0),
	datad => \contador1|cont_min_uni\(1),
	combout => \contador1|cont_min_uni~1_combout\);

-- Location: LCFF_X6_Y17_N3
\contador1|cont_min_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_min_uni~1_combout\,
	ena => \contador1|cont_min_uni[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_uni\(0));

-- Location: LCCOMB_X7_Y17_N12
\contador1|cont_min_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_uni~4_combout\ = (!\contador1|cont_min_uni\(3) & (\contador1|cont_min_uni\(2) $ (((\contador1|cont_min_uni\(1) & \contador1|cont_min_uni\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(1),
	datab => \contador1|cont_min_uni\(0),
	datac => \contador1|cont_min_uni\(3),
	datad => \contador1|cont_min_uni\(2),
	combout => \contador1|cont_min_uni~4_combout\);

-- Location: LCFF_X6_Y17_N17
\contador1|cont_min_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \contador1|cont_min_uni~4_combout\,
	sload => VCC,
	ena => \contador1|cont_min_uni[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_uni\(2));

-- Location: LCCOMB_X7_Y17_N10
\contador2|cont_min_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_uni~3_combout\ = (\contador2|cont_min_uni\(1) & (\contador2|cont_min_uni\(0) & (!\contador2|cont_min_uni\(3) & \contador2|cont_min_uni\(2)))) # (!\contador2|cont_min_uni\(1) & (!\contador2|cont_min_uni\(0) & 
-- (\contador2|cont_min_uni\(3) & !\contador2|cont_min_uni\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_uni\(1),
	datab => \contador2|cont_min_uni\(0),
	datac => \contador2|cont_min_uni\(3),
	datad => \contador2|cont_min_uni\(2),
	combout => \contador2|cont_min_uni~3_combout\);

-- Location: LCCOMB_X4_Y18_N18
\contador2|cont_min_uni[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_uni[3]~0_combout\ = (!\reset~combout\ & (!\contador2|modo\(1) & (\contador2|modo\(0) & \config~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \contador2|modo\(1),
	datac => \contador2|modo\(0),
	datad => \config~combout\,
	combout => \contador2|cont_min_uni[3]~0_combout\);

-- Location: LCCOMB_X4_Y18_N12
\contador2|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|process_0~0_combout\ = (\config~combout\ & (!\contador2|modo\(1) & \contador2|modo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \config~combout\,
	datab => \contador2|modo\(1),
	datad => \contador2|modo\(0),
	combout => \contador2|process_0~0_combout\);

-- Location: LCCOMB_X4_Y18_N16
\contador2|x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|x~0_combout\ = (\reset~combout\ & ((\contador2|process_0~0_combout\ & (!\start_stop~combout\)) # (!\contador2|process_0~0_combout\ & ((\contador2|x~regout\))))) # (!\reset~combout\ & (((\contador2|x~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \start_stop~combout\,
	datac => \contador2|x~regout\,
	datad => \contador2|process_0~0_combout\,
	combout => \contador2|x~0_combout\);

-- Location: LCFF_X4_Y18_N17
\contador2|x\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador2|x~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|x~regout\);

-- Location: LCCOMB_X4_Y17_N30
\contador2|cont_min_dez[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_dez[0]~1_combout\ = (\contador2|estado_hora_ou_min~regout\ & (!\start_stop~combout\ & (!\contador2|x~regout\ & \contador2|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|estado_hora_ou_min~regout\,
	datab => \start_stop~combout\,
	datac => \contador2|x~regout\,
	datad => \contador2|process_0~0_combout\,
	combout => \contador2|cont_min_dez[0]~1_combout\);

-- Location: LCFF_X7_Y17_N11
\contador2|cont_min_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_uni~3_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_uni\(3));

-- Location: LCCOMB_X7_Y17_N14
\contador2|cont_min_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_uni~2_combout\ = (!\contador2|cont_min_uni\(0) & (((!\contador2|cont_min_uni\(1) & !\contador2|cont_min_uni\(2))) # (!\contador2|cont_min_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_uni\(1),
	datab => \contador2|cont_min_uni\(2),
	datac => \contador2|cont_min_uni\(0),
	datad => \contador2|cont_min_uni\(3),
	combout => \contador2|cont_min_uni~2_combout\);

-- Location: LCFF_X7_Y17_N15
\contador2|cont_min_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_uni~2_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_uni\(0));

-- Location: LCCOMB_X7_Y17_N26
\contador2|cont_min_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_uni~4_combout\ = (!\contador2|cont_min_uni\(3) & (\contador2|cont_min_uni\(2) $ (((\contador2|cont_min_uni\(1) & \contador2|cont_min_uni\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_uni\(1),
	datab => \contador2|cont_min_uni\(0),
	datac => \contador2|cont_min_uni\(2),
	datad => \contador2|cont_min_uni\(3),
	combout => \contador2|cont_min_uni~4_combout\);

-- Location: LCFF_X7_Y17_N27
\contador2|cont_min_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_uni~4_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_uni\(2));

-- Location: LCCOMB_X6_Y17_N4
\contagem_min_uni[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[2]~4_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & ((\contador2|cont_min_uni\(2)))) # (!\contador2|modo\(0) & (\contador1|cont_min_uni\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(0),
	datab => \contador1|cont_min_uni\(2),
	datac => \contador2|cont_min_uni\(2),
	datad => \contador2|modo\(1),
	combout => \contagem_min_uni[2]~4_combout\);

-- Location: LCCOMB_X6_Y15_N10
\contador3|cont_min_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_uni~4_combout\ = (\contador3|cont_min_uni\(1) & (\contador3|cont_min_uni\(2) & (!\contador3|cont_min_uni\(3) & \contador3|cont_min_uni\(0)))) # (!\contador3|cont_min_uni\(1) & (!\contador3|cont_min_uni\(2) & 
-- (\contador3|cont_min_uni\(3) & !\contador3|cont_min_uni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_uni\(1),
	datab => \contador3|cont_min_uni\(2),
	datac => \contador3|cont_min_uni\(3),
	datad => \contador3|cont_min_uni\(0),
	combout => \contador3|cont_min_uni~4_combout\);

-- Location: LCCOMB_X6_Y15_N24
\contador3|cont_min_uni[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_uni[3]~1_combout\ = (\contador3|LessThan5~0_combout\ & (\contador3|LessThan4~0_combout\ & \contador3|cont_seg_uni[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|LessThan5~0_combout\,
	datac => \contador3|LessThan4~0_combout\,
	datad => \contador3|cont_seg_uni[3]~1_combout\,
	combout => \contador3|cont_min_uni[3]~1_combout\);

-- Location: LCFF_X6_Y15_N11
\contador3|cont_min_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_uni~4_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_uni\(3));

-- Location: LCCOMB_X6_Y15_N6
\contador3|cont_min_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_uni~2_combout\ = (!\contador3|cont_min_uni\(3) & (\contador3|cont_min_uni\(0) $ (\contador3|cont_min_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador3|cont_min_uni\(0),
	datac => \contador3|cont_min_uni\(1),
	datad => \contador3|cont_min_uni\(3),
	combout => \contador3|cont_min_uni~2_combout\);

-- Location: LCFF_X6_Y15_N7
\contador3|cont_min_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_uni~2_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_uni\(1));

-- Location: LCCOMB_X6_Y15_N12
\contador3|cont_min_uni~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_uni~0_combout\ = (!\contador3|cont_min_uni\(0) & (((!\contador3|cont_min_uni\(2) & !\contador3|cont_min_uni\(1))) # (!\contador3|cont_min_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_uni\(3),
	datab => \contador3|cont_min_uni\(2),
	datac => \contador3|cont_min_uni\(0),
	datad => \contador3|cont_min_uni\(1),
	combout => \contador3|cont_min_uni~0_combout\);

-- Location: LCFF_X6_Y15_N13
\contador3|cont_min_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_uni~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_uni\(0));

-- Location: LCCOMB_X6_Y15_N4
\contador3|cont_min_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_uni~3_combout\ = (!\contador3|cont_min_uni\(3) & (\contador3|cont_min_uni\(2) $ (((\contador3|cont_min_uni\(0) & \contador3|cont_min_uni\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_uni\(3),
	datab => \contador3|cont_min_uni\(0),
	datac => \contador3|cont_min_uni\(2),
	datad => \contador3|cont_min_uni\(1),
	combout => \contador3|cont_min_uni~3_combout\);

-- Location: LCFF_X6_Y15_N5
\contador3|cont_min_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_uni~3_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_uni\(2));

-- Location: LCCOMB_X6_Y17_N10
\contagem_min_uni[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[2]~5_combout\ = (\contagem_min_uni[2]~4_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_uni\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(1),
	datac => \contagem_min_uni[2]~4_combout\,
	datad => \contador3|cont_min_uni\(2),
	combout => \contagem_min_uni[2]~5_combout\);

-- Location: LCCOMB_X6_Y17_N30
\contagem_min_uni[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_uni(2) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_uni[2]~5_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_uni(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_min_uni(2),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_uni[2]~5_combout\,
	combout => contagem_min_uni(2));

-- Location: LCCOMB_X6_Y17_N8
\contagem_min_uni[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[1]~2_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & (\contador2|cont_min_uni\(1))) # (!\contador2|modo\(0) & ((\contador1|cont_min_uni\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_uni\(1),
	datab => \contador1|cont_min_uni\(1),
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \contagem_min_uni[1]~2_combout\);

-- Location: LCCOMB_X6_Y17_N6
\contagem_min_uni[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[1]~3_combout\ = (\contagem_min_uni[1]~2_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_uni\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(1),
	datac => \contagem_min_uni[1]~2_combout\,
	datad => \contador3|cont_min_uni\(1),
	combout => \contagem_min_uni[1]~3_combout\);

-- Location: LCCOMB_X6_Y17_N0
\contagem_min_uni[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_uni(1) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_uni[1]~3_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_uni(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_min_uni(1),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_uni[1]~3_combout\,
	combout => contagem_min_uni(1));

-- Location: LCCOMB_X6_Y17_N26
\contagem_min_uni[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[0]~0_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & ((\contador2|cont_min_uni\(0)))) # (!\contador2|modo\(0) & (\contador1|cont_min_uni\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(0),
	datab => \contador2|modo\(0),
	datac => \contador2|cont_min_uni\(0),
	datad => \contador2|modo\(1),
	combout => \contagem_min_uni[0]~0_combout\);

-- Location: LCCOMB_X6_Y17_N12
\contagem_min_uni[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[0]~1_combout\ = (\contagem_min_uni[0]~0_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_uni\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(1),
	datab => \contagem_min_uni[0]~0_combout\,
	datad => \contador3|cont_min_uni\(0),
	combout => \contagem_min_uni[0]~1_combout\);

-- Location: LCCOMB_X6_Y17_N28
\contagem_min_uni[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_uni(0) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_uni[0]~1_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_uni(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_min_uni(0),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_uni[0]~1_combout\,
	combout => contagem_min_uni(0));

-- Location: LCCOMB_X7_Y17_N0
\Conversor5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux6~0_combout\ = (contagem_min_uni(2) & (!contagem_min_uni(3) & ((!contagem_min_uni(0)) # (!contagem_min_uni(1))))) # (!contagem_min_uni(2) & (contagem_min_uni(3) $ ((contagem_min_uni(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(3),
	datab => contagem_min_uni(2),
	datac => contagem_min_uni(1),
	datad => contagem_min_uni(0),
	combout => \Conversor5|Mux6~0_combout\);

-- Location: LCCOMB_X7_Y17_N22
\Conversor5|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[0]~0_combout\ = (!\Conversor5|Mux6~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor5|Mux6~0_combout\,
	combout => \Conversor5|q[0]~0_combout\);

-- Location: LCCOMB_X7_Y17_N24
\Conversor5|q[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(0) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[0]~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|q\(0),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[0]~0_combout\,
	combout => \Conversor5|q\(0));

-- Location: LCCOMB_X7_Y17_N30
\Conversor5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux5~0_combout\ = (contagem_min_uni(2) & (contagem_min_uni(3))) # (!contagem_min_uni(2) & ((contagem_min_uni(1)) # ((!contagem_min_uni(3) & contagem_min_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(3),
	datab => contagem_min_uni(2),
	datac => contagem_min_uni(1),
	datad => contagem_min_uni(0),
	combout => \Conversor5|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y17_N18
\Conversor5|q[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[1]~2_combout\ = (\Conversor5|Mux5~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor5|Mux5~0_combout\,
	combout => \Conversor5|q[1]~2_combout\);

-- Location: LCCOMB_X7_Y17_N28
\Conversor5|q[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(1) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[1]~2_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|q\(1),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[1]~2_combout\,
	combout => \Conversor5|q\(1));

-- Location: LCCOMB_X6_Y17_N20
\contagem_min_uni[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[3]~6_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & ((\contador2|cont_min_uni\(3)))) # (!\contador2|modo\(0) & (\contador1|cont_min_uni\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(0),
	datab => \contador1|cont_min_uni\(3),
	datac => \contador2|cont_min_uni\(3),
	datad => \contador2|modo\(1),
	combout => \contagem_min_uni[3]~6_combout\);

-- Location: LCCOMB_X6_Y17_N22
\contagem_min_uni[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_uni[3]~7_combout\ = (\contagem_min_uni[3]~6_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_uni\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|modo\(1),
	datac => \contagem_min_uni[3]~6_combout\,
	datad => \contador3|cont_min_uni\(3),
	combout => \contagem_min_uni[3]~7_combout\);

-- Location: LCCOMB_X6_Y17_N14
\contagem_min_uni[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_uni(3) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_uni[3]~7_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_uni(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_min_uni(3),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_uni[3]~7_combout\,
	combout => contagem_min_uni(3));

-- Location: LCCOMB_X5_Y17_N16
\Conversor5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux4~0_combout\ = (contagem_min_uni(0)) # ((contagem_min_uni(1) & ((contagem_min_uni(3)))) # (!contagem_min_uni(1) & (contagem_min_uni(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(2),
	datab => contagem_min_uni(3),
	datac => contagem_min_uni(1),
	datad => contagem_min_uni(0),
	combout => \Conversor5|Mux4~0_combout\);

-- Location: LCCOMB_X5_Y17_N10
\Conversor5|q[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[2]~3_combout\ = (\Conversor5|Mux4~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|Mux4~0_combout\,
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor5|q[2]~3_combout\);

-- Location: LCCOMB_X5_Y17_N26
\Conversor5|q[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(2) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[2]~3_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|q\(2),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[2]~3_combout\,
	combout => \Conversor5|q\(2));

-- Location: LCCOMB_X5_Y17_N12
\Conversor5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux3~0_combout\ = (contagem_min_uni(1) & ((contagem_min_uni(3)) # ((contagem_min_uni(2) & contagem_min_uni(0))))) # (!contagem_min_uni(1) & (contagem_min_uni(2) $ (((!contagem_min_uni(3) & contagem_min_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(2),
	datab => contagem_min_uni(3),
	datac => contagem_min_uni(1),
	datad => contagem_min_uni(0),
	combout => \Conversor5|Mux3~0_combout\);

-- Location: LCCOMB_X5_Y17_N6
\Conversor5|q[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[3]~4_combout\ = (\Conversor5|Mux3~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor5|Mux3~0_combout\,
	combout => \Conversor5|q[3]~4_combout\);

-- Location: LCCOMB_X5_Y17_N4
\Conversor5|q[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(3) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[3]~4_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|q\(3),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[3]~4_combout\,
	combout => \Conversor5|q\(3));

-- Location: LCCOMB_X5_Y17_N8
\Conversor5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux2~0_combout\ = (contagem_min_uni(2) & (((contagem_min_uni(3))))) # (!contagem_min_uni(2) & (contagem_min_uni(1) & ((contagem_min_uni(3)) # (!contagem_min_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(0),
	datab => contagem_min_uni(3),
	datac => contagem_min_uni(1),
	datad => contagem_min_uni(2),
	combout => \Conversor5|Mux2~0_combout\);

-- Location: LCCOMB_X5_Y17_N2
\Conversor5|q[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[4]~5_combout\ = (\Conversor5|Mux2~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor5|Mux2~0_combout\,
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor5|q[4]~5_combout\);

-- Location: LCCOMB_X5_Y17_N30
\Conversor5|q[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(4) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[4]~5_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|q\(4),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[4]~5_combout\,
	combout => \Conversor5|q\(4));

-- Location: LCCOMB_X5_Y17_N28
\Conversor5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux1~0_combout\ = (contagem_min_uni(2) & ((contagem_min_uni(3)) # (contagem_min_uni(1) $ (contagem_min_uni(0))))) # (!contagem_min_uni(2) & (contagem_min_uni(3) & (contagem_min_uni(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(2),
	datab => contagem_min_uni(3),
	datac => contagem_min_uni(1),
	datad => contagem_min_uni(0),
	combout => \Conversor5|Mux1~0_combout\);

-- Location: LCCOMB_X5_Y17_N18
\Conversor5|q[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[5]~6_combout\ = (\Conversor5|Mux1~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor5|Mux1~0_combout\,
	combout => \Conversor5|q[5]~6_combout\);

-- Location: LCCOMB_X5_Y17_N20
\Conversor5|q[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(5) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[5]~6_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor5|q\(5),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[5]~6_combout\,
	combout => \Conversor5|q\(5));

-- Location: LCCOMB_X5_Y17_N0
\Conversor5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|Mux0~0_combout\ = (contagem_min_uni(1) & (((contagem_min_uni(3))))) # (!contagem_min_uni(1) & (contagem_min_uni(2) $ (((!contagem_min_uni(3) & contagem_min_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_uni(1),
	datab => contagem_min_uni(2),
	datac => contagem_min_uni(3),
	datad => contagem_min_uni(0),
	combout => \Conversor5|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y17_N22
\Conversor5|q[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q[6]~7_combout\ = (\Conversor5|Mux0~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor5|Mux0~0_combout\,
	combout => \Conversor5|q[6]~7_combout\);

-- Location: LCCOMB_X5_Y17_N14
\Conversor5|q[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor5|q\(6) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor5|q[6]~7_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor5|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor5|q\(6),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor5|q[6]~7_combout\,
	combout => \Conversor5|q\(6));

-- Location: LCCOMB_X3_Y17_N10
\contador1|cont_min_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_dez~3_combout\ = (\contador1|cont_min_dez\(0) & (\contador1|cont_min_dez\(1) & !\contador1|cont_min_dez\(2))) # (!\contador1|cont_min_dez\(0) & (!\contador1|cont_min_dez\(1) & \contador1|cont_min_dez\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_dez\(0),
	datab => \contador1|cont_min_dez\(1),
	datac => \contador1|cont_min_dez\(2),
	combout => \contador1|cont_min_dez~3_combout\);

-- Location: LCCOMB_X6_Y17_N24
\contador1|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|LessThan2~0_combout\ = ((\contador1|cont_min_uni\(0) & (\contador1|cont_min_uni\(1) & \contador1|cont_min_uni\(2))) # (!\contador1|cont_min_uni\(0) & (!\contador1|cont_min_uni\(1) & !\contador1|cont_min_uni\(2)))) # 
-- (!\contador1|cont_min_uni\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(0),
	datab => \contador1|cont_min_uni\(1),
	datac => \contador1|cont_min_uni\(3),
	datad => \contador1|cont_min_uni\(2),
	combout => \contador1|LessThan2~0_combout\);

-- Location: LCCOMB_X3_Y17_N20
\contador1|cont_min_dez[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_dez[2]~1_combout\ = (!\contador1|LessThan2~0_combout\ & (((\contador1|cont_seg_dez[0]~1_combout\ & \contador1|LessThan1~0_combout\)) # (!\contador1|cont_min_uni[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni[3]~0_combout\,
	datab => \contador1|LessThan2~0_combout\,
	datac => \contador1|cont_seg_dez[0]~1_combout\,
	datad => \contador1|LessThan1~0_combout\,
	combout => \contador1|cont_min_dez[2]~1_combout\);

-- Location: LCFF_X3_Y17_N11
\contador1|cont_min_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_min_dez~3_combout\,
	ena => \contador1|cont_min_dez[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_dez\(2));

-- Location: LCCOMB_X3_Y17_N30
\contador1|cont_min_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_dez~0_combout\ = (!\contador1|cont_min_dez\(2) & (\contador1|cont_min_dez\(0) $ (\contador1|cont_min_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_dez\(0),
	datab => \contador1|cont_min_dez\(2),
	datac => \contador1|cont_min_dez\(1),
	combout => \contador1|cont_min_dez~0_combout\);

-- Location: LCFF_X3_Y17_N31
\contador1|cont_min_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_min_dez~0_combout\,
	ena => \contador1|cont_min_dez[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_dez\(1));

-- Location: LCCOMB_X3_Y17_N4
\contador1|cont_min_dez~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_min_dez~2_combout\ = (!\contador1|cont_min_dez\(0) & ((!\contador1|cont_min_dez\(2)) # (!\contador1|cont_min_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_min_dez\(1),
	datac => \contador1|cont_min_dez\(0),
	datad => \contador1|cont_min_dez\(2),
	combout => \contador1|cont_min_dez~2_combout\);

-- Location: LCFF_X3_Y17_N5
\contador1|cont_min_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_min_dez~2_combout\,
	ena => \contador1|cont_min_dez[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_min_dez\(0));

-- Location: LCCOMB_X4_Y17_N26
\contagem_min_dez[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_dez[0]~0_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & (\contador2|cont_min_dez\(0))) # (!\contador2|modo\(0) & ((\contador1|cont_min_dez\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_dez\(0),
	datab => \contador1|cont_min_dez\(0),
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \contagem_min_dez[0]~0_combout\);

-- Location: LCCOMB_X5_Y15_N0
\contador3|cont_min_dez~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_dez~2_combout\ = (!\contador3|cont_min_dez\(2) & (\contador3|cont_min_dez\(1) $ (\contador3|cont_min_dez\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_dez\(2),
	datac => \contador3|cont_min_dez\(1),
	datad => \contador3|cont_min_dez\(0),
	combout => \contador3|cont_min_dez~2_combout\);

-- Location: LCCOMB_X6_Y15_N30
\contador3|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|LessThan6~0_combout\ = (\contador3|cont_min_uni\(3) & ((\contador3|cont_min_uni\(0) & ((!\contador3|cont_min_uni\(1)) # (!\contador3|cont_min_uni\(2)))) # (!\contador3|cont_min_uni\(0) & ((\contador3|cont_min_uni\(2)) # 
-- (\contador3|cont_min_uni\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_uni\(3),
	datab => \contador3|cont_min_uni\(0),
	datac => \contador3|cont_min_uni\(2),
	datad => \contador3|cont_min_uni\(1),
	combout => \contador3|LessThan6~0_combout\);

-- Location: LCCOMB_X6_Y15_N16
\contador3|cont_min_dez[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_dez[0]~1_combout\ = (\contador3|LessThan5~0_combout\ & (\contador3|LessThan6~0_combout\ & (\contador3|LessThan4~0_combout\ & \contador3|cont_seg_uni[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|LessThan5~0_combout\,
	datab => \contador3|LessThan6~0_combout\,
	datac => \contador3|LessThan4~0_combout\,
	datad => \contador3|cont_seg_uni[3]~1_combout\,
	combout => \contador3|cont_min_dez[0]~1_combout\);

-- Location: LCFF_X5_Y15_N1
\contador3|cont_min_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_dez~2_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_dez\(1));

-- Location: LCCOMB_X6_Y15_N26
\contador3|cont_min_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_dez~3_combout\ = (\contador3|cont_min_dez\(0) & (!\contador3|cont_min_dez\(2) & \contador3|cont_min_dez\(1))) # (!\contador3|cont_min_dez\(0) & (\contador3|cont_min_dez\(2) & !\contador3|cont_min_dez\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_dez\(0),
	datac => \contador3|cont_min_dez\(2),
	datad => \contador3|cont_min_dez\(1),
	combout => \contador3|cont_min_dez~3_combout\);

-- Location: LCFF_X6_Y15_N27
\contador3|cont_min_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_dez~3_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_dez\(2));

-- Location: LCCOMB_X6_Y15_N20
\contador3|cont_min_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_min_dez~0_combout\ = (!\contador3|cont_min_dez\(0) & ((!\contador3|cont_min_dez\(2)) # (!\contador3|cont_min_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_min_dez\(1),
	datac => \contador3|cont_min_dez\(0),
	datad => \contador3|cont_min_dez\(2),
	combout => \contador3|cont_min_dez~0_combout\);

-- Location: LCFF_X6_Y15_N21
\contador3|cont_min_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_min_dez~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_min_dez\(0));

-- Location: LCCOMB_X3_Y17_N28
\contagem_min_dez[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_dez[0]~1_combout\ = (\contagem_min_dez[0]~0_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_dez\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(1),
	datac => \contagem_min_dez[0]~0_combout\,
	datad => \contador3|cont_min_dez\(0),
	combout => \contagem_min_dez[0]~1_combout\);

-- Location: LCCOMB_X3_Y17_N0
\contagem_min_dez[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_dez(0) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_dez[0]~1_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_dez(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_min_dez(0),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_dez[0]~1_combout\,
	combout => contagem_min_dez(0));

-- Location: LCCOMB_X3_Y17_N8
\contagem_min_dez[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_dez[2]~4_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & (\contador2|cont_min_dez\(2))) # (!\contador2|modo\(0) & ((\contador1|cont_min_dez\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_dez\(2),
	datab => \contador1|cont_min_dez\(2),
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \contagem_min_dez[2]~4_combout\);

-- Location: LCCOMB_X3_Y17_N6
\contagem_min_dez[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_dez[2]~5_combout\ = (\contagem_min_dez[2]~4_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_dez\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(1),
	datac => \contagem_min_dez[2]~4_combout\,
	datad => \contador3|cont_min_dez\(2),
	combout => \contagem_min_dez[2]~5_combout\);

-- Location: LCCOMB_X3_Y17_N18
\contagem_min_dez[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_dez(2) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_dez[2]~5_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_dez(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_min_dez(2),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_dez[2]~5_combout\,
	combout => contagem_min_dez(2));

-- Location: LCCOMB_X4_Y16_N10
\Conversor6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|Mux6~0_combout\ = (\Conversor7|q[6]~0_combout\ & ((contagem_min_dez(1) & ((!contagem_min_dez(2)) # (!contagem_min_dez(0)))) # (!contagem_min_dez(1) & ((contagem_min_dez(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(1),
	datab => contagem_min_dez(0),
	datac => \Conversor7|q[6]~0_combout\,
	datad => contagem_min_dez(2),
	combout => \Conversor6|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y16_N14
\Conversor6|q[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(0) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((!\Conversor6|Mux6~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor6|q\(0),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor6|Mux6~0_combout\,
	combout => \Conversor6|q\(0));

-- Location: LCCOMB_X4_Y17_N22
\contador2|cont_min_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_dez~0_combout\ = (!\contador2|cont_min_dez\(0) & ((!\contador2|cont_min_dez\(1)) # (!\contador2|cont_min_dez\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_dez\(2),
	datac => \contador2|cont_min_dez\(0),
	datad => \contador2|cont_min_dez\(1),
	combout => \contador2|cont_min_dez~0_combout\);

-- Location: LCCOMB_X7_Y17_N6
\contador2|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|LessThan4~0_combout\ = (\contador2|cont_min_uni\(3) & ((\contador2|cont_min_uni\(1) & ((!\contador2|cont_min_uni\(0)) # (!\contador2|cont_min_uni\(2)))) # (!\contador2|cont_min_uni\(1) & ((\contador2|cont_min_uni\(2)) # 
-- (\contador2|cont_min_uni\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_uni\(1),
	datab => \contador2|cont_min_uni\(2),
	datac => \contador2|cont_min_uni\(0),
	datad => \contador2|cont_min_uni\(3),
	combout => \contador2|LessThan4~0_combout\);

-- Location: LCCOMB_X4_Y17_N14
\contador2|cont_min_dez[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_dez[0]~2_combout\ = (\contador2|LessThan4~0_combout\ & \contador2|cont_min_dez[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador2|LessThan4~0_combout\,
	datad => \contador2|cont_min_dez[0]~1_combout\,
	combout => \contador2|cont_min_dez[0]~2_combout\);

-- Location: LCFF_X4_Y17_N23
\contador2|cont_min_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_dez~0_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_dez\(0));

-- Location: LCCOMB_X4_Y17_N12
\contador2|cont_min_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_dez~3_combout\ = (!\contador2|cont_min_dez\(2) & (\contador2|cont_min_dez\(1) $ (\contador2|cont_min_dez\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_dez\(2),
	datac => \contador2|cont_min_dez\(1),
	datad => \contador2|cont_min_dez\(0),
	combout => \contador2|cont_min_dez~3_combout\);

-- Location: LCFF_X4_Y17_N13
\contador2|cont_min_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_dez~3_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_dez\(1));

-- Location: LCCOMB_X4_Y17_N24
\contagem_min_dez[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_dez[1]~2_combout\ = (!\contador2|modo\(1) & ((\contador2|modo\(0) & ((\contador2|cont_min_dez\(1)))) # (!\contador2|modo\(0) & (\contador1|cont_min_dez\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_dez\(1),
	datab => \contador2|cont_min_dez\(1),
	datac => \contador2|modo\(0),
	datad => \contador2|modo\(1),
	combout => \contagem_min_dez[1]~2_combout\);

-- Location: LCCOMB_X4_Y17_N28
\contagem_min_dez[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_min_dez[1]~3_combout\ = (\contagem_min_dez[1]~2_combout\) # ((\contador2|modo\(1) & \contador3|cont_min_dez\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(1),
	datac => \contagem_min_dez[1]~2_combout\,
	datad => \contador3|cont_min_dez\(1),
	combout => \contagem_min_dez[1]~3_combout\);

-- Location: LCCOMB_X4_Y17_N16
\contagem_min_dez[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_min_dez(1) = (GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & ((\contagem_min_dez[1]~3_combout\))) # (!GLOBAL(\saida_led_modo0~0clkctrl_outclk\) & (contagem_min_dez(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(1),
	datac => \saida_led_modo0~0clkctrl_outclk\,
	datad => \contagem_min_dez[1]~3_combout\,
	combout => contagem_min_dez(1));

-- Location: LCCOMB_X3_Y16_N18
\Conversor6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|Mux5~0_combout\ = ((!contagem_min_dez(2) & ((contagem_min_dez(0)) # (contagem_min_dez(1))))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(2),
	datab => \Conversor7|q[6]~0_combout\,
	datac => contagem_min_dez(0),
	datad => contagem_min_dez(1),
	combout => \Conversor6|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y16_N14
\Conversor6|q[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(1) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor6|Mux5~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor6|q\(1),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor6|Mux5~0_combout\,
	combout => \Conversor6|q\(1));

-- Location: LCCOMB_X3_Y17_N12
\Conversor6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|Mux4~0_combout\ = (contagem_min_dez(0)) # (((contagem_min_dez(2) & !contagem_min_dez(1))) # (!\Conversor7|q[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(2),
	datab => contagem_min_dez(0),
	datac => contagem_min_dez(1),
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor6|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y17_N14
\Conversor6|q[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(2) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor6|Mux4~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor6|q\(2),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor6|Mux4~0_combout\,
	combout => \Conversor6|q\(2));

-- Location: LCCOMB_X3_Y17_N2
\Conversor6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|Mux3~0_combout\ = ((contagem_min_dez(2) & (contagem_min_dez(0) $ (!contagem_min_dez(1)))) # (!contagem_min_dez(2) & (contagem_min_dez(0) & !contagem_min_dez(1)))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(2),
	datab => contagem_min_dez(0),
	datac => contagem_min_dez(1),
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor6|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y17_N24
\Conversor6|q[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(3) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor6|Mux3~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor6|q\(3),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor6|Mux3~0_combout\,
	combout => \Conversor6|q\(3));

-- Location: LCCOMB_X4_Y18_N22
\Conversor6|q[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q[4]~0_combout\ = ((contagem_min_dez(1) & (!contagem_min_dez(0) & !contagem_min_dez(2)))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(1),
	datab => \Conversor7|q[6]~0_combout\,
	datac => contagem_min_dez(0),
	datad => contagem_min_dez(2),
	combout => \Conversor6|q[4]~0_combout\);

-- Location: LCCOMB_X4_Y18_N2
\Conversor6|q[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(4) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor6|q[4]~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor6|q\(4),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor6|q[4]~0_combout\,
	combout => \Conversor6|q\(4));

-- Location: LCCOMB_X3_Y17_N22
\Conversor6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|Mux1~0_combout\ = ((contagem_min_dez(2) & (contagem_min_dez(0) $ (contagem_min_dez(1))))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(2),
	datab => contagem_min_dez(0),
	datac => contagem_min_dez(1),
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor6|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y17_N20
\Conversor6|q[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(5) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor6|Mux1~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor6|q\(5),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor6|Mux1~0_combout\,
	combout => \Conversor6|q\(5));

-- Location: LCCOMB_X4_Y17_N4
\Conversor6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|Mux0~0_combout\ = ((!contagem_min_dez(1) & (contagem_min_dez(2) $ (contagem_min_dez(0))))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_min_dez(1),
	datab => contagem_min_dez(2),
	datac => \Conversor7|q[6]~0_combout\,
	datad => contagem_min_dez(0),
	combout => \Conversor6|Mux0~0_combout\);

-- Location: LCCOMB_X4_Y17_N10
\Conversor6|q[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor6|q\(6) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor6|Mux0~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor6|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor6|q\(6),
	datac => \Conversor6|Mux0~0_combout\,
	datad => \Conversor5|q[6]~1clkctrl_outclk\,
	combout => \Conversor6|q\(6));

-- Location: CLKCTRL_G12
\contador2|modo[1]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \contador2|modo[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \contador2|modo[1]~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y18_N30
\contador2|cont_hora_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_uni~3_combout\ = (!\contador2|process_0~2_combout\ & (!\contador2|cont_hora_uni\(0) & \contador2|cont_hora_uni[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|process_0~2_combout\,
	datac => \contador2|cont_hora_uni\(0),
	datad => \contador2|cont_hora_uni[3]~0_combout\,
	combout => \contador2|cont_hora_uni~3_combout\);

-- Location: LCCOMB_X4_Y17_N6
\contador2|estado_hora_ou_min~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|estado_hora_ou_min~0_combout\ = \contador2|estado_hora_ou_min~regout\ $ (((\config~combout\ & (\contador2|modo\(0) & !\contador2|modo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \config~combout\,
	datab => \contador2|modo\(0),
	datac => \contador2|estado_hora_ou_min~regout\,
	datad => \contador2|modo\(1),
	combout => \contador2|estado_hora_ou_min~0_combout\);

-- Location: LCFF_X4_Y17_N7
\contador2|estado_hora_ou_min\ : cycloneii_lcell_ff
PORT MAP (
	clk => \set~clkctrl_outclk\,
	datain => \contador2|estado_hora_ou_min~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|estado_hora_ou_min~regout\);

-- Location: LCCOMB_X3_Y18_N10
\contador2|cont_hora_uni[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_uni[3]~1_combout\ = (!\start_stop~combout\ & (\contador2|process_0~0_combout\ & (!\contador2|x~regout\ & !\contador2|estado_hora_ou_min~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~combout\,
	datab => \contador2|process_0~0_combout\,
	datac => \contador2|x~regout\,
	datad => \contador2|estado_hora_ou_min~regout\,
	combout => \contador2|cont_hora_uni[3]~1_combout\);

-- Location: LCFF_X3_Y18_N31
\contador2|cont_hora_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_hora_uni~3_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_hora_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_uni\(0));

-- Location: LCCOMB_X3_Y18_N4
\contador2|cont_hora_uni~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_uni~2_combout\ = (!\contador2|process_0~2_combout\ & (\contador2|cont_hora_uni[3]~0_combout\ & (\contador2|cont_hora_uni\(1) $ (\contador2|cont_hora_uni\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|process_0~2_combout\,
	datab => \contador2|cont_hora_uni[3]~0_combout\,
	datac => \contador2|cont_hora_uni\(1),
	datad => \contador2|cont_hora_uni\(0),
	combout => \contador2|cont_hora_uni~2_combout\);

-- Location: LCFF_X3_Y18_N5
\contador2|cont_hora_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_hora_uni~2_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_hora_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_uni\(1));

-- Location: LCCOMB_X3_Y18_N8
\contador2|cont_hora_uni[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_uni[3]~0_combout\ = ((\contador2|cont_hora_uni\(2) & (\contador2|cont_hora_uni\(0) & \contador2|cont_hora_uni\(1))) # (!\contador2|cont_hora_uni\(2) & (!\contador2|cont_hora_uni\(0) & !\contador2|cont_hora_uni\(1)))) # 
-- (!\contador2|cont_hora_uni\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_uni\(2),
	datab => \contador2|cont_hora_uni\(0),
	datac => \contador2|cont_hora_uni\(3),
	datad => \contador2|cont_hora_uni\(1),
	combout => \contador2|cont_hora_uni[3]~0_combout\);

-- Location: LCCOMB_X2_Y18_N16
\contador2|cont_hora_dez[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_dez[0]~0_combout\ = (\contador2|cont_hora_uni[3]~1_combout\ & (!\contador2|process_0~2_combout\ & (\contador2|cont_hora_uni[3]~0_combout\ $ (!\contador2|cont_hora_dez\(0))))) # (!\contador2|cont_hora_uni[3]~1_combout\ & 
-- (((\contador2|cont_hora_dez\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_uni[3]~0_combout\,
	datab => \contador2|cont_hora_uni[3]~1_combout\,
	datac => \contador2|cont_hora_dez\(0),
	datad => \contador2|process_0~2_combout\,
	combout => \contador2|cont_hora_dez[0]~0_combout\);

-- Location: LCFF_X2_Y18_N17
\contador2|cont_hora_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador2|cont_hora_dez[0]~0_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_dez\(0));

-- Location: LCCOMB_X3_Y18_N22
\contador2|cont_hora_dez[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_dez[2]~1_combout\ = (\contador2|cont_hora_uni[3]~1_combout\ & ((\contador2|process_0~2_combout\) # (!\contador2|cont_hora_uni[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|cont_hora_uni[3]~0_combout\,
	datac => \contador2|process_0~2_combout\,
	datad => \contador2|cont_hora_uni[3]~1_combout\,
	combout => \contador2|cont_hora_dez[2]~1_combout\);

-- Location: LCCOMB_X3_Y18_N26
\contador2|cont_hora_dez[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_dez[2]~3_combout\ = \contador2|cont_hora_dez\(2) $ (((\contador2|cont_hora_dez\(1) & (\contador2|cont_hora_dez\(0) & \contador2|cont_hora_dez[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_dez\(1),
	datab => \contador2|cont_hora_dez\(0),
	datac => \contador2|cont_hora_dez\(2),
	datad => \contador2|cont_hora_dez[2]~1_combout\,
	combout => \contador2|cont_hora_dez[2]~3_combout\);

-- Location: LCFF_X3_Y18_N27
\contador2|cont_hora_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_hora_dez[2]~3_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_dez\(2));

-- Location: LCCOMB_X3_Y18_N24
\contador2|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|process_0~1_combout\ = (\contador2|cont_hora_uni\(2) & (((!\contador2|cont_hora_uni\(1)) # (!\contador2|cont_hora_uni\(3))) # (!\contador2|cont_hora_uni\(0)))) # (!\contador2|cont_hora_uni\(2) & ((\contador2|cont_hora_uni\(3)) # 
-- ((\contador2|cont_hora_uni\(0) & \contador2|cont_hora_uni\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_uni\(2),
	datab => \contador2|cont_hora_uni\(0),
	datac => \contador2|cont_hora_uni\(3),
	datad => \contador2|cont_hora_uni\(1),
	combout => \contador2|process_0~1_combout\);

-- Location: LCCOMB_X3_Y18_N20
\contador2|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|process_0~2_combout\ = (\contador2|cont_hora_dez\(1) & (!\contador2|cont_hora_dez\(2) & (\contador2|process_0~1_combout\ & !\contador2|cont_hora_dez\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_dez\(1),
	datab => \contador2|cont_hora_dez\(2),
	datac => \contador2|process_0~1_combout\,
	datad => \contador2|cont_hora_dez\(0),
	combout => \contador2|process_0~2_combout\);

-- Location: LCCOMB_X2_Y18_N18
\contador2|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|Add2~1_combout\ = \contador2|cont_hora_uni\(2) $ (((\contador2|cont_hora_uni\(1) & \contador2|cont_hora_uni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_uni\(1),
	datac => \contador2|cont_hora_uni\(2),
	datad => \contador2|cont_hora_uni\(0),
	combout => \contador2|Add2~1_combout\);

-- Location: LCCOMB_X3_Y18_N6
\contador2|cont_hora_uni~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_uni~5_combout\ = (\contador2|cont_hora_uni[3]~0_combout\ & (!\contador2|process_0~2_combout\ & \contador2|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|cont_hora_uni[3]~0_combout\,
	datac => \contador2|process_0~2_combout\,
	datad => \contador2|Add2~1_combout\,
	combout => \contador2|cont_hora_uni~5_combout\);

-- Location: LCFF_X3_Y18_N7
\contador2|cont_hora_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_hora_uni~5_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_hora_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_uni\(2));

-- Location: LCCOMB_X4_Y18_N30
\contador2|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|Add2~0_combout\ = \contador2|cont_hora_uni\(3) $ (((\contador2|cont_hora_uni\(2) & (\contador2|cont_hora_uni\(0) & \contador2|cont_hora_uni\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_uni\(3),
	datab => \contador2|cont_hora_uni\(2),
	datac => \contador2|cont_hora_uni\(0),
	datad => \contador2|cont_hora_uni\(1),
	combout => \contador2|Add2~0_combout\);

-- Location: LCCOMB_X3_Y18_N28
\contador2|cont_hora_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_uni~4_combout\ = (\contador2|cont_hora_uni[3]~0_combout\ & (!\contador2|process_0~2_combout\ & \contador2|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|cont_hora_uni[3]~0_combout\,
	datac => \contador2|process_0~2_combout\,
	datad => \contador2|Add2~0_combout\,
	combout => \contador2|cont_hora_uni~4_combout\);

-- Location: LCFF_X3_Y18_N29
\contador2|cont_hora_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_hora_uni~4_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_hora_uni[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_uni\(3));

-- Location: LCCOMB_X4_Y16_N16
\contador1|cont_hora_uni~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~8_combout\ = (!\contador1|Add5~0_combout\ & (\contador1|Add5~2_combout\ & ((!\contador1|Equal1~0_combout\) # (!\contador1|Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Add5~1_combout\,
	datab => \contador1|Add5~0_combout\,
	datac => \contador1|Add5~2_combout\,
	datad => \contador1|Equal1~0_combout\,
	combout => \contador1|cont_hora_uni~8_combout\);

-- Location: LCFF_X4_Y18_N13
\contador1|x\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \contador1|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|x~regout\);

-- Location: LCCOMB_X2_Y16_N30
\contador1|cont_hora_uni~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~3_combout\ = (\contador1|Equal0~7_combout\ & (\contador1|LessThan1~0_combout\ & (\contador1|Equal0~5_combout\ & \contador1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Equal0~7_combout\,
	datab => \contador1|LessThan1~0_combout\,
	datac => \contador1|Equal0~5_combout\,
	datad => \contador1|Equal0~6_combout\,
	combout => \contador1|cont_hora_uni~3_combout\);

-- Location: LCCOMB_X3_Y16_N20
\contador1|cont_hora_uni~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~4_combout\ = (\contador1|cont_hora_uni~2_combout\ & (\contador1|LessThan0~0_combout\ & (\contador1|cont_hora_uni~3_combout\ & \contador1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_uni~2_combout\,
	datab => \contador1|LessThan0~0_combout\,
	datac => \contador1|cont_hora_uni~3_combout\,
	datad => \contador1|Equal0~4_combout\,
	combout => \contador1|cont_hora_uni~4_combout\);

-- Location: LCCOMB_X3_Y16_N30
\contador1|cont_hora_uni~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~11_combout\ = (\contador1|cont_hora_uni~4_combout\) # ((\contador1|process_0~0_combout\ & (!\contador1|x~regout\ & !\contador1|estado_hora_ou_min~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|process_0~0_combout\,
	datab => \contador1|x~regout\,
	datac => \contador1|cont_hora_uni~4_combout\,
	datad => \contador1|estado_hora_ou_min~regout\,
	combout => \contador1|cont_hora_uni~11_combout\);

-- Location: LCFF_X4_Y16_N17
\contador1|cont_hora_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_uni~8_combout\,
	ena => \contador1|cont_hora_uni~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_uni\(1));

-- Location: LCCOMB_X4_Y18_N10
\contador1|cont_hora_uni[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni[2]~5_combout\ = (\contador1|x~regout\) # ((\contador1|estado_hora_ou_min~regout\) # (!\contador1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|x~regout\,
	datac => \contador1|process_0~0_combout\,
	datad => \contador1|estado_hora_ou_min~regout\,
	combout => \contador1|cont_hora_uni[2]~5_combout\);

-- Location: LCCOMB_X3_Y18_N12
\contador1|cont_hora_uni~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~6_combout\ = (\contador1|cont_hora_dez[2]~1_combout\ & ((\contador1|cont_hora_uni~4_combout\) # (!\contador1|cont_hora_uni[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_hora_uni[2]~5_combout\,
	datac => \contador1|cont_hora_uni~4_combout\,
	datad => \contador1|cont_hora_dez[2]~1_combout\,
	combout => \contador1|cont_hora_uni~6_combout\);

-- Location: LCCOMB_X3_Y18_N16
\contador1|cont_hora_uni~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~7_combout\ = (\contador1|cont_hora_uni\(0) & (!\contador1|cont_hora_uni~11_combout\)) # (!\contador1|cont_hora_uni\(0) & ((\contador1|cont_hora_uni~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_hora_uni~11_combout\,
	datac => \contador1|cont_hora_uni\(0),
	datad => \contador1|cont_hora_uni~6_combout\,
	combout => \contador1|cont_hora_uni~7_combout\);

-- Location: LCFF_X3_Y18_N17
\contador1|cont_hora_uni[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_uni~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_uni\(0));

-- Location: LCCOMB_X4_Y16_N24
\contador1|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add5~2_combout\ = \contador1|cont_hora_uni\(1) $ (\contador1|cont_hora_uni\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|cont_hora_uni\(1),
	datad => \contador1|cont_hora_uni\(0),
	combout => \contador1|Add5~2_combout\);

-- Location: LCCOMB_X4_Y18_N20
\contador1|cont_hora_dez[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez[2]~1_combout\ = (\contador1|Add5~1_combout\ & (!\contador1|Equal1~0_combout\ & (!\contador1|Add5~0_combout\))) # (!\contador1|Add5~1_combout\ & (((!\contador1|Equal1~0_combout\ & !\contador1|Add5~2_combout\)) # 
-- (!\contador1|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Add5~1_combout\,
	datab => \contador1|Equal1~0_combout\,
	datac => \contador1|Add5~0_combout\,
	datad => \contador1|Add5~2_combout\,
	combout => \contador1|cont_hora_dez[2]~1_combout\);

-- Location: LCCOMB_X4_Y18_N0
\contador1|cont_hora_dez[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez[2]~2_combout\ = (\contador1|x~regout\) # (((\contador1|cont_hora_dez[2]~1_combout\) # (\contador1|estado_hora_ou_min~regout\)) # (!\contador1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|x~regout\,
	datab => \contador1|process_0~0_combout\,
	datac => \contador1|cont_hora_dez[2]~1_combout\,
	datad => \contador1|estado_hora_ou_min~regout\,
	combout => \contador1|cont_hora_dez[2]~2_combout\);

-- Location: LCCOMB_X4_Y16_N12
\contador1|Add5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add5~1_combout\ = \contador1|cont_hora_uni\(2) $ (((\contador1|cont_hora_uni\(1) & \contador1|cont_hora_uni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_hora_uni\(2),
	datac => \contador1|cont_hora_uni\(1),
	datad => \contador1|cont_hora_uni\(0),
	combout => \contador1|Add5~1_combout\);

-- Location: LCCOMB_X3_Y16_N28
\contador1|cont_hora_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez~0_combout\ = (!\contador1|cont_hora_dez\(0) & (((!\contador1|Add5~1_combout\ & !\contador1|Add5~0_combout\)) # (!\contador1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_dez\(0),
	datab => \contador1|Equal1~0_combout\,
	datac => \contador1|Add5~1_combout\,
	datad => \contador1|Add5~0_combout\,
	combout => \contador1|cont_hora_dez~0_combout\);

-- Location: LCCOMB_X3_Y16_N0
\contador1|cont_hora_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez~3_combout\ = (\contador1|cont_hora_dez[2]~2_combout\ & (\contador1|LessThan5~0_combout\ $ (((\contador1|cont_hora_dez\(0)))))) # (!\contador1|cont_hora_dez[2]~2_combout\ & (((\contador1|cont_hora_dez~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|LessThan5~0_combout\,
	datab => \contador1|cont_hora_dez~0_combout\,
	datac => \contador1|cont_hora_dez\(0),
	datad => \contador1|cont_hora_dez[2]~2_combout\,
	combout => \contador1|cont_hora_dez~3_combout\);

-- Location: LCCOMB_X3_Y16_N12
\contador1|cont_hora_dez[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez[2]~4_combout\ = (\contador1|cont_hora_uni~4_combout\) # (!\contador1|cont_hora_dez[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contador1|cont_hora_uni~4_combout\,
	datad => \contador1|cont_hora_dez[2]~2_combout\,
	combout => \contador1|cont_hora_dez[2]~4_combout\);

-- Location: LCFF_X3_Y16_N1
\contador1|cont_hora_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_dez~3_combout\,
	ena => \contador1|cont_hora_dez[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_dez\(0));

-- Location: LCCOMB_X3_Y16_N24
\contador1|cont_hora_dez~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez~7_combout\ = (!\contador1|cont_hora_dez\(2) & ((\contador1|Add5~0_combout\) # (\contador1|Add5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|Add5~0_combout\,
	datac => \contador1|cont_hora_dez\(2),
	datad => \contador1|Add5~1_combout\,
	combout => \contador1|cont_hora_dez~7_combout\);

-- Location: LCCOMB_X3_Y16_N16
\contador1|cont_hora_dez~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez~8_combout\ = (\contador1|cont_hora_dez\(1) & ((\contador1|cont_hora_dez\(0)) # (!\contador1|cont_hora_dez~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_hora_dez\(0),
	datac => \contador1|cont_hora_dez~7_combout\,
	datad => \contador1|cont_hora_dez\(1),
	combout => \contador1|cont_hora_dez~8_combout\);

-- Location: LCCOMB_X3_Y16_N22
\contador1|cont_hora_dez~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez~9_combout\ = \contador1|cont_hora_dez~8_combout\ $ (((\contador1|cont_hora_dez\(0) & ((\contador1|LessThan5~0_combout\) # (!\contador1|cont_hora_dez[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|LessThan5~0_combout\,
	datab => \contador1|cont_hora_dez[2]~2_combout\,
	datac => \contador1|cont_hora_dez~8_combout\,
	datad => \contador1|cont_hora_dez\(0),
	combout => \contador1|cont_hora_dez~9_combout\);

-- Location: LCFF_X3_Y16_N23
\contador1|cont_hora_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_dez~9_combout\,
	ena => \contador1|cont_hora_dez[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_dez\(1));

-- Location: LCCOMB_X3_Y18_N2
\contador1|cont_hora_dez[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_dez[2]~6_combout\ = \contador1|cont_hora_dez\(2) $ (((\contador1|cont_hora_dez[2]~5_combout\ & (\contador1|cont_hora_dez\(1) & \contador1|cont_hora_dez[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_dez[2]~5_combout\,
	datab => \contador1|cont_hora_dez\(1),
	datac => \contador1|cont_hora_dez\(2),
	datad => \contador1|cont_hora_dez[2]~4_combout\,
	combout => \contador1|cont_hora_dez[2]~6_combout\);

-- Location: LCFF_X3_Y18_N3
\contador1|cont_hora_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_dez[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_dez\(2));

-- Location: LCCOMB_X3_Y16_N26
\contador1|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Equal1~0_combout\ = (!\contador1|cont_hora_dez\(2) & (!\contador1|cont_hora_dez\(0) & \contador1|cont_hora_dez\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador1|cont_hora_dez\(2),
	datac => \contador1|cont_hora_dez\(0),
	datad => \contador1|cont_hora_dez\(1),
	combout => \contador1|Equal1~0_combout\);

-- Location: LCCOMB_X4_Y16_N8
\contador1|cont_hora_uni~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~9_combout\ = (\contador1|Add5~1_combout\ & (!\contador1|Add5~0_combout\ & !\contador1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Add5~1_combout\,
	datab => \contador1|Add5~0_combout\,
	datad => \contador1|Equal1~0_combout\,
	combout => \contador1|cont_hora_uni~9_combout\);

-- Location: LCFF_X4_Y16_N9
\contador1|cont_hora_uni[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_uni~9_combout\,
	ena => \contador1|cont_hora_uni~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_uni\(2));

-- Location: LCCOMB_X4_Y16_N22
\contador1|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|Add5~0_combout\ = \contador1|cont_hora_uni\(3) $ (((\contador1|cont_hora_uni\(1) & (\contador1|cont_hora_uni\(2) & \contador1|cont_hora_uni\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_uni\(1),
	datab => \contador1|cont_hora_uni\(3),
	datac => \contador1|cont_hora_uni\(2),
	datad => \contador1|cont_hora_uni\(0),
	combout => \contador1|Add5~0_combout\);

-- Location: LCCOMB_X4_Y16_N30
\contador1|cont_hora_uni~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador1|cont_hora_uni~10_combout\ = (!\contador1|Add5~1_combout\ & (\contador1|Add5~0_combout\ & (!\contador1|Add5~2_combout\ & !\contador1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|Add5~1_combout\,
	datab => \contador1|Add5~0_combout\,
	datac => \contador1|Add5~2_combout\,
	datad => \contador1|Equal1~0_combout\,
	combout => \contador1|cont_hora_uni~10_combout\);

-- Location: LCFF_X4_Y16_N31
\contador1|cont_hora_uni[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador1|cont_hora_uni~10_combout\,
	ena => \contador1|cont_hora_uni~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador1|cont_hora_uni\(3));

-- Location: LCCOMB_X4_Y14_N28
\contagem_hora_uni[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_uni[3]~3_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_uni\(3))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_uni\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_uni\(3),
	datad => \contador1|cont_hora_uni\(3),
	combout => \contagem_hora_uni[3]~3_combout\);

-- Location: LCCOMB_X4_Y14_N30
\contagem_hora_uni[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_uni(3) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_uni(3))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_uni[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_hora_uni(3),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_uni[3]~3_combout\,
	combout => contagem_hora_uni(3));

-- Location: LCCOMB_X4_Y14_N12
\contagem_hora_uni[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_uni[1]~1_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_uni\(1))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_uni\(1),
	datad => \contador1|cont_hora_uni\(1),
	combout => \contagem_hora_uni[1]~1_combout\);

-- Location: LCCOMB_X4_Y14_N14
\contagem_hora_uni[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_uni(1) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_uni(1))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_uni[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_hora_uni(1),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_uni[1]~1_combout\,
	combout => contagem_hora_uni(1));

-- Location: LCCOMB_X4_Y14_N10
\contagem_hora_uni[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_uni[2]~2_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_uni\(2))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_uni\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_uni\(2),
	datad => \contador1|cont_hora_uni\(2),
	combout => \contagem_hora_uni[2]~2_combout\);

-- Location: LCCOMB_X4_Y14_N0
\contagem_hora_uni[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_uni(2) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_uni(2))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_uni[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_hora_uni(2),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_uni[2]~2_combout\,
	combout => contagem_hora_uni(2));

-- Location: LCCOMB_X4_Y14_N4
\Conversor7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux6~0_combout\ = (contagem_hora_uni(1) & (!contagem_hora_uni(3) & ((!contagem_hora_uni(2)) # (!contagem_hora_uni(0))))) # (!contagem_hora_uni(1) & ((contagem_hora_uni(3) $ (contagem_hora_uni(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(0),
	datab => contagem_hora_uni(3),
	datac => contagem_hora_uni(1),
	datad => contagem_hora_uni(2),
	combout => \Conversor7|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y14_N28
\Conversor7|q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[0]~1_combout\ = (!\Conversor7|Mux6~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux6~0_combout\,
	combout => \Conversor7|q[0]~1_combout\);

-- Location: LCCOMB_X3_Y14_N20
\Conversor7|q[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(0) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[0]~1_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q\(0),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor7|q[0]~1_combout\,
	combout => \Conversor7|q\(0));

-- Location: LCCOMB_X4_Y14_N2
\Conversor7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux5~0_combout\ = (contagem_hora_uni(2) & (((contagem_hora_uni(3))))) # (!contagem_hora_uni(2) & ((contagem_hora_uni(1)) # ((contagem_hora_uni(0) & !contagem_hora_uni(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(0),
	datab => contagem_hora_uni(3),
	datac => contagem_hora_uni(1),
	datad => contagem_hora_uni(2),
	combout => \Conversor7|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y14_N20
\Conversor7|q[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[1]~2_combout\ = (\Conversor7|Mux5~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux5~0_combout\,
	combout => \Conversor7|q[1]~2_combout\);

-- Location: LCCOMB_X4_Y14_N6
\Conversor7|q[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(1) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[1]~2_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q\(1),
	datac => \Conversor7|q[1]~2_combout\,
	datad => \Conversor5|q[6]~1clkctrl_outclk\,
	combout => \Conversor7|q\(1));

-- Location: LCCOMB_X4_Y14_N18
\Conversor7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux4~0_combout\ = (contagem_hora_uni(0)) # ((contagem_hora_uni(1) & (contagem_hora_uni(3))) # (!contagem_hora_uni(1) & ((contagem_hora_uni(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(0),
	datab => contagem_hora_uni(3),
	datac => contagem_hora_uni(1),
	datad => contagem_hora_uni(2),
	combout => \Conversor7|Mux4~0_combout\);

-- Location: LCCOMB_X5_Y14_N12
\Conversor7|q[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[2]~3_combout\ = (\Conversor7|Mux4~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux4~0_combout\,
	combout => \Conversor7|q[2]~3_combout\);

-- Location: LCCOMB_X5_Y14_N14
\Conversor7|q[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(2) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[2]~3_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor7|q\(2),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor7|q[2]~3_combout\,
	combout => \Conversor7|q\(2));

-- Location: LCCOMB_X4_Y14_N24
\Conversor7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux3~0_combout\ = (contagem_hora_uni(1) & ((contagem_hora_uni(3)) # ((contagem_hora_uni(0) & contagem_hora_uni(2))))) # (!contagem_hora_uni(1) & (contagem_hora_uni(2) $ (((contagem_hora_uni(0) & !contagem_hora_uni(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(0),
	datab => contagem_hora_uni(3),
	datac => contagem_hora_uni(1),
	datad => contagem_hora_uni(2),
	combout => \Conversor7|Mux3~0_combout\);

-- Location: LCCOMB_X5_Y14_N22
\Conversor7|q[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[3]~4_combout\ = (\Conversor7|Mux3~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux3~0_combout\,
	combout => \Conversor7|q[3]~4_combout\);

-- Location: LCCOMB_X5_Y14_N8
\Conversor7|q[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(3) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[3]~4_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor7|q\(3),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor7|q[3]~4_combout\,
	combout => \Conversor7|q\(3));

-- Location: LCCOMB_X4_Y14_N26
\contagem_hora_uni[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_uni[0]~0_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_uni\(0))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_uni\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_uni\(0),
	datad => \contador1|cont_hora_uni\(0),
	combout => \contagem_hora_uni[0]~0_combout\);

-- Location: LCCOMB_X4_Y14_N8
\contagem_hora_uni[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_uni(0) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_uni(0))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_uni[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_hora_uni(0),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_uni[0]~0_combout\,
	combout => contagem_hora_uni(0));

-- Location: LCCOMB_X5_Y14_N0
\Conversor7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux2~0_combout\ = (contagem_hora_uni(2) & (contagem_hora_uni(3))) # (!contagem_hora_uni(2) & (contagem_hora_uni(1) & ((contagem_hora_uni(3)) # (!contagem_hora_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(3),
	datab => contagem_hora_uni(1),
	datac => contagem_hora_uni(2),
	datad => contagem_hora_uni(0),
	combout => \Conversor7|Mux2~0_combout\);

-- Location: LCCOMB_X5_Y14_N18
\Conversor7|q[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[4]~5_combout\ = (\Conversor7|Mux2~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux2~0_combout\,
	combout => \Conversor7|q[4]~5_combout\);

-- Location: LCCOMB_X5_Y14_N6
\Conversor7|q[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(4) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[4]~5_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q\(4),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor7|q[4]~5_combout\,
	combout => \Conversor7|q\(4));

-- Location: LCCOMB_X4_Y14_N22
\Conversor7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux1~0_combout\ = (contagem_hora_uni(3) & (((contagem_hora_uni(1)) # (contagem_hora_uni(2))))) # (!contagem_hora_uni(3) & (contagem_hora_uni(2) & (contagem_hora_uni(0) $ (contagem_hora_uni(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(0),
	datab => contagem_hora_uni(3),
	datac => contagem_hora_uni(1),
	datad => contagem_hora_uni(2),
	combout => \Conversor7|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y14_N18
\Conversor7|q[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[5]~6_combout\ = (\Conversor7|Mux1~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux1~0_combout\,
	combout => \Conversor7|q[5]~6_combout\);

-- Location: LCCOMB_X3_Y14_N14
\Conversor7|q[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(5) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[5]~6_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor7|q\(5),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor7|q[5]~6_combout\,
	combout => \Conversor7|q\(5));

-- Location: LCCOMB_X4_Y14_N16
\Conversor7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|Mux0~0_combout\ = (contagem_hora_uni(1) & (contagem_hora_uni(3))) # (!contagem_hora_uni(1) & (contagem_hora_uni(2) $ (((!contagem_hora_uni(3) & contagem_hora_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_uni(1),
	datab => contagem_hora_uni(3),
	datac => contagem_hora_uni(0),
	datad => contagem_hora_uni(2),
	combout => \Conversor7|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y14_N28
\Conversor7|q[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q[6]~7_combout\ = (\Conversor7|Mux0~0_combout\) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q[6]~0_combout\,
	datad => \Conversor7|Mux0~0_combout\,
	combout => \Conversor7|q[6]~7_combout\);

-- Location: LCCOMB_X5_Y14_N24
\Conversor7|q[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor7|q\(6) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor7|q[6]~7_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor7|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q\(6),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor7|q[6]~7_combout\,
	combout => \Conversor7|q\(6));

-- Location: LCCOMB_X3_Y18_N14
\contador2|cont_hora_dez[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_hora_dez[1]~2_combout\ = (\contador2|cont_hora_dez[2]~1_combout\ & (!\contador2|process_0~2_combout\ & (\contador2|cont_hora_dez\(0) $ (\contador2|cont_hora_dez\(1))))) # (!\contador2|cont_hora_dez[2]~1_combout\ & 
-- (((\contador2|cont_hora_dez\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|process_0~2_combout\,
	datab => \contador2|cont_hora_dez\(0),
	datac => \contador2|cont_hora_dez\(1),
	datad => \contador2|cont_hora_dez[2]~1_combout\,
	combout => \contador2|cont_hora_dez[1]~2_combout\);

-- Location: LCFF_X3_Y18_N15
\contador2|cont_hora_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_hora_dez[1]~2_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_hora_dez\(1));

-- Location: LCCOMB_X2_Y18_N0
\contagem_hora_dez[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_dez[1]~1_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_dez\(1))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_dez\(1),
	datad => \contador1|cont_hora_dez\(1),
	combout => \contagem_hora_dez[1]~1_combout\);

-- Location: LCCOMB_X2_Y18_N30
\contagem_hora_dez[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_dez(1) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_dez(1))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_dez[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_hora_dez(1),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_dez[1]~1_combout\,
	combout => contagem_hora_dez(1));

-- Location: LCCOMB_X2_Y18_N26
\contagem_hora_dez[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_dez[0]~0_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_dez\(0))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_dez\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_dez\(0),
	datad => \contador1|cont_hora_dez\(0),
	combout => \contagem_hora_dez[0]~0_combout\);

-- Location: LCCOMB_X2_Y18_N20
\contagem_hora_dez[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_dez(0) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_dez(0))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_dez[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(0),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_dez[0]~0_combout\,
	combout => contagem_hora_dez(0));

-- Location: LCCOMB_X2_Y18_N8
\Conversor8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|Mux6~0_combout\ = (\Conversor7|q[6]~0_combout\ & ((contagem_hora_dez(2) & ((!contagem_hora_dez(0)) # (!contagem_hora_dez(1)))) # (!contagem_hora_dez(2) & (contagem_hora_dez(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(2),
	datab => contagem_hora_dez(1),
	datac => contagem_hora_dez(0),
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor8|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y18_N6
\Conversor8|q[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(0) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((!\Conversor8|Mux6~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor8|q\(0),
	datac => \Conversor8|Mux6~0_combout\,
	datad => \Conversor5|q[6]~1clkctrl_outclk\,
	combout => \Conversor8|q\(0));

-- Location: LCCOMB_X2_Y18_N24
\Conversor8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|Mux5~0_combout\ = ((!contagem_hora_dez(2) & ((contagem_hora_dez(1)) # (contagem_hora_dez(0))))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(2),
	datab => contagem_hora_dez(1),
	datac => contagem_hora_dez(0),
	datad => \Conversor7|q[6]~0_combout\,
	combout => \Conversor8|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y18_N28
\Conversor8|q[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(1) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor8|Mux5~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor8|q\(1),
	datac => \Conversor8|Mux5~0_combout\,
	datad => \Conversor5|q[6]~1clkctrl_outclk\,
	combout => \Conversor8|q\(1));

-- Location: LCCOMB_X2_Y18_N12
\contagem_hora_dez[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem_hora_dez[2]~2_combout\ = (\contador2|modo\(0) & (\contador2|cont_hora_dez\(2))) # (!\contador2|modo\(0) & ((\contador1|cont_hora_dez\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|cont_hora_dez\(2),
	datad => \contador1|cont_hora_dez\(2),
	combout => \contagem_hora_dez[2]~2_combout\);

-- Location: LCCOMB_X2_Y18_N10
\contagem_hora_dez[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_hora_dez(2) = (GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & (contagem_hora_dez(2))) # (!GLOBAL(\contador2|modo[1]~clkctrl_outclk\) & ((\contagem_hora_dez[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(2),
	datac => \contador2|modo[1]~clkctrl_outclk\,
	datad => \contagem_hora_dez[2]~2_combout\,
	combout => contagem_hora_dez(2));

-- Location: LCCOMB_X1_Y18_N4
\Conversor8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|Mux4~0_combout\ = ((contagem_hora_dez(0)) # ((contagem_hora_dez(2) & !contagem_hora_dez(1)))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q[6]~0_combout\,
	datab => contagem_hora_dez(0),
	datac => contagem_hora_dez(2),
	datad => contagem_hora_dez(1),
	combout => \Conversor8|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N20
\Conversor8|q[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(2) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor8|Mux4~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor8|q\(2),
	datac => \Conversor8|Mux4~0_combout\,
	datad => \Conversor5|q[6]~1clkctrl_outclk\,
	combout => \Conversor8|q\(2));

-- Location: LCCOMB_X1_Y18_N18
\Conversor8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|Mux3~0_combout\ = ((contagem_hora_dez(0) & (contagem_hora_dez(2) $ (!contagem_hora_dez(1)))) # (!contagem_hora_dez(0) & (contagem_hora_dez(2) & !contagem_hora_dez(1)))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Conversor7|q[6]~0_combout\,
	datab => contagem_hora_dez(0),
	datac => contagem_hora_dez(2),
	datad => contagem_hora_dez(1),
	combout => \Conversor8|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N14
\Conversor8|q[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(3) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor8|Mux3~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor8|q\(3),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor8|Mux3~0_combout\,
	combout => \Conversor8|q\(3));

-- Location: LCCOMB_X3_Y18_N0
\Conversor8|q[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q[4]~0_combout\ = ((contagem_hora_dez(1) & (!contagem_hora_dez(0) & !contagem_hora_dez(2)))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(1),
	datab => \Conversor7|q[6]~0_combout\,
	datac => contagem_hora_dez(0),
	datad => contagem_hora_dez(2),
	combout => \Conversor8|q[4]~0_combout\);

-- Location: LCCOMB_X3_Y18_N18
\Conversor8|q[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(4) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor8|q[4]~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor8|q\(4),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor8|q[4]~0_combout\,
	combout => \Conversor8|q\(4));

-- Location: LCCOMB_X2_Y18_N4
\Conversor8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|Mux1~0_combout\ = ((contagem_hora_dez(2) & (contagem_hora_dez(0) $ (contagem_hora_dez(1))))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(0),
	datab => contagem_hora_dez(1),
	datac => \Conversor7|q[6]~0_combout\,
	datad => contagem_hora_dez(2),
	combout => \Conversor8|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y18_N14
\Conversor8|q[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(5) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor8|Mux1~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor8|q\(5),
	datac => \Conversor8|Mux1~0_combout\,
	datad => \Conversor5|q[6]~1clkctrl_outclk\,
	combout => \Conversor8|q\(5));

-- Location: LCCOMB_X2_Y18_N22
\Conversor8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|Mux0~0_combout\ = ((!contagem_hora_dez(1) & (contagem_hora_dez(0) $ (contagem_hora_dez(2))))) # (!\Conversor7|q[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_hora_dez(0),
	datab => contagem_hora_dez(1),
	datac => \Conversor7|q[6]~0_combout\,
	datad => contagem_hora_dez(2),
	combout => \Conversor8|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y18_N2
\Conversor8|q[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor8|q\(6) = (GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & ((\Conversor8|Mux0~0_combout\))) # (!GLOBAL(\Conversor5|q[6]~1clkctrl_outclk\) & (\Conversor8|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Conversor8|q\(6),
	datac => \Conversor5|q[6]~1clkctrl_outclk\,
	datad => \Conversor8|Mux0~0_combout\,
	combout => \Conversor8|q\(6));

-- Location: CLKCTRL_G0
\Equal0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y15_N20
\contagem_centseg_uni[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_uni(3) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_uni\(3)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_uni(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_uni\(3),
	combout => contagem_centseg_uni(3));

-- Location: LCCOMB_X4_Y15_N14
\contagem_centseg_uni[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_uni(2) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_uni\(2)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_uni(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_centseg_uni(2),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_uni\(2),
	combout => contagem_centseg_uni(2));

-- Location: LCCOMB_X4_Y15_N4
\contagem_centseg_uni[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_uni(1) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_uni\(1)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_uni(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_centseg_uni(1),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_uni\(1),
	combout => contagem_centseg_uni(1));

-- Location: LCCOMB_X4_Y15_N26
\contagem_centseg_uni[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_uni(0) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_uni\(0)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_uni(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_centseg_uni(0),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_uni\(0),
	combout => contagem_centseg_uni(0));

-- Location: LCCOMB_X24_Y3_N0
\Conversor1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux6~0_combout\ = (contagem_centseg_uni(1) & (contagem_centseg_uni(3))) # (!contagem_centseg_uni(1) & (contagem_centseg_uni(2) $ (((!contagem_centseg_uni(3) & contagem_centseg_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y3_N22
\Conversor1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux5~0_combout\ = (contagem_centseg_uni(3) & ((contagem_centseg_uni(2)) # ((contagem_centseg_uni(1))))) # (!contagem_centseg_uni(3) & (contagem_centseg_uni(2) & (contagem_centseg_uni(1) $ (contagem_centseg_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y3_N4
\Conversor1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux4~0_combout\ = (contagem_centseg_uni(2) & (contagem_centseg_uni(3))) # (!contagem_centseg_uni(2) & (contagem_centseg_uni(1) & ((contagem_centseg_uni(3)) # (!contagem_centseg_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y3_N2
\Conversor1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux3~0_combout\ = (contagem_centseg_uni(1) & ((contagem_centseg_uni(3)) # ((contagem_centseg_uni(2) & contagem_centseg_uni(0))))) # (!contagem_centseg_uni(1) & (contagem_centseg_uni(2) $ (((!contagem_centseg_uni(3) & 
-- contagem_centseg_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y3_N12
\Conversor1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux2~0_combout\ = (contagem_centseg_uni(0)) # ((contagem_centseg_uni(1) & (contagem_centseg_uni(3))) # (!contagem_centseg_uni(1) & ((contagem_centseg_uni(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y3_N10
\Conversor1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux1~0_combout\ = (contagem_centseg_uni(2) & ((contagem_centseg_uni(3)) # ((contagem_centseg_uni(1) & contagem_centseg_uni(0))))) # (!contagem_centseg_uni(2) & ((contagem_centseg_uni(1)) # ((!contagem_centseg_uni(3) & 
-- contagem_centseg_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y3_N24
\Conversor1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor1|Mux0~0_combout\ = (contagem_centseg_uni(2) & (((!contagem_centseg_uni(0)) # (!contagem_centseg_uni(1))))) # (!contagem_centseg_uni(2) & ((contagem_centseg_uni(3)) # ((contagem_centseg_uni(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_uni(3),
	datab => contagem_centseg_uni(2),
	datac => contagem_centseg_uni(1),
	datad => contagem_centseg_uni(0),
	combout => \Conversor1|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y15_N12
\contador3|cont_centseg_dez~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_dez~3_combout\ = (!\contador3|cont_centseg_dez\(3) & (\contador3|cont_centseg_dez\(2) $ (((\contador3|cont_centseg_dez\(1) & \contador3|cont_centseg_dez\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_dez\(3),
	datab => \contador3|cont_centseg_dez\(1),
	datac => \contador3|cont_centseg_dez\(2),
	datad => \contador3|cont_centseg_dez\(0),
	combout => \contador3|cont_centseg_dez~3_combout\);

-- Location: LCCOMB_X5_Y15_N18
\contador3|cont_centseg_dez[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_dez[3]~1_combout\ = (\contador3|Equal1~5_combout\ & (\contador3|LessThan2~0_combout\ & \contador3|str_stp~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|Equal1~5_combout\,
	datab => \contador3|LessThan2~0_combout\,
	datac => \contador3|str_stp~0_combout\,
	combout => \contador3|cont_centseg_dez[3]~1_combout\);

-- Location: LCFF_X5_Y15_N13
\contador3|cont_centseg_dez[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_dez~3_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_dez[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_dez\(2));

-- Location: LCCOMB_X5_Y15_N28
\contador3|cont_centseg_dez~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_dez~0_combout\ = (!\contador3|cont_centseg_dez\(0) & (((!\contador3|cont_centseg_dez\(1) & !\contador3|cont_centseg_dez\(2))) # (!\contador3|cont_centseg_dez\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_dez\(3),
	datab => \contador3|cont_centseg_dez\(1),
	datac => \contador3|cont_centseg_dez\(0),
	datad => \contador3|cont_centseg_dez\(2),
	combout => \contador3|cont_centseg_dez~0_combout\);

-- Location: LCFF_X5_Y15_N29
\contador3|cont_centseg_dez[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_dez~0_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_dez[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_dez\(0));

-- Location: LCCOMB_X5_Y15_N6
\contador3|cont_centseg_dez~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_dez~2_combout\ = (!\contador3|cont_centseg_dez\(3) & (\contador3|cont_centseg_dez\(0) $ (\contador3|cont_centseg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_dez\(3),
	datab => \contador3|cont_centseg_dez\(0),
	datac => \contador3|cont_centseg_dez\(1),
	combout => \contador3|cont_centseg_dez~2_combout\);

-- Location: LCFF_X5_Y15_N7
\contador3|cont_centseg_dez[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_dez~2_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_dez[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_dez\(1));

-- Location: LCCOMB_X5_Y15_N14
\contagem_centseg_dez[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_dez(1) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_dez\(1)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_dez(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_centseg_dez(1),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_dez\(1),
	combout => contagem_centseg_dez(1));

-- Location: LCCOMB_X5_Y15_N16
\contagem_centseg_dez[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_dez(2) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_dez\(2)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_dez(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(2),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_dez\(2),
	combout => contagem_centseg_dez(2));

-- Location: LCCOMB_X5_Y15_N22
\contador3|cont_centseg_dez~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador3|cont_centseg_dez~4_combout\ = (\contador3|cont_centseg_dez\(2) & (\contador3|cont_centseg_dez\(1) & (!\contador3|cont_centseg_dez\(3) & \contador3|cont_centseg_dez\(0)))) # (!\contador3|cont_centseg_dez\(2) & (!\contador3|cont_centseg_dez\(1) & 
-- (\contador3|cont_centseg_dez\(3) & !\contador3|cont_centseg_dez\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador3|cont_centseg_dez\(2),
	datab => \contador3|cont_centseg_dez\(1),
	datac => \contador3|cont_centseg_dez\(3),
	datad => \contador3|cont_centseg_dez\(0),
	combout => \contador3|cont_centseg_dez~4_combout\);

-- Location: LCFF_X5_Y15_N23
\contador3|cont_centseg_dez[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \contador3|cont_centseg_dez~4_combout\,
	aclr => \contador3|process_0~0_combout\,
	ena => \contador3|cont_centseg_dez[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador3|cont_centseg_dez\(3));

-- Location: LCCOMB_X5_Y15_N26
\contagem_centseg_dez[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_dez(3) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_dez\(3)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_dez(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem_centseg_dez(3),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_dez\(3),
	combout => contagem_centseg_dez(3));

-- Location: LCCOMB_X5_Y15_N24
\contagem_centseg_dez[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- contagem_centseg_dez(0) = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\contador3|cont_centseg_dez\(0)))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (contagem_centseg_dez(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(0),
	datac => \Equal0~0clkctrl_outclk\,
	datad => \contador3|cont_centseg_dez\(0),
	combout => contagem_centseg_dez(0));

-- Location: LCCOMB_X57_Y15_N16
\Conversor2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux6~0_combout\ = (contagem_centseg_dez(1) & (((contagem_centseg_dez(3))))) # (!contagem_centseg_dez(1) & (contagem_centseg_dez(2) $ (((!contagem_centseg_dez(3) & contagem_centseg_dez(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y15_N10
\Conversor2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux5~0_combout\ = (contagem_centseg_dez(2) & ((contagem_centseg_dez(3)) # (contagem_centseg_dez(1) $ (contagem_centseg_dez(0))))) # (!contagem_centseg_dez(2) & (contagem_centseg_dez(1) & (contagem_centseg_dez(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y15_N4
\Conversor2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux4~0_combout\ = (contagem_centseg_dez(2) & (((contagem_centseg_dez(3))))) # (!contagem_centseg_dez(2) & (contagem_centseg_dez(1) & ((contagem_centseg_dez(3)) # (!contagem_centseg_dez(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y15_N2
\Conversor2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux3~0_combout\ = (contagem_centseg_dez(1) & ((contagem_centseg_dez(3)) # ((contagem_centseg_dez(2) & contagem_centseg_dez(0))))) # (!contagem_centseg_dez(1) & (contagem_centseg_dez(2) $ (((!contagem_centseg_dez(3) & 
-- contagem_centseg_dez(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y15_N8
\Conversor2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux2~0_combout\ = (contagem_centseg_dez(0)) # ((contagem_centseg_dez(1) & ((contagem_centseg_dez(3)))) # (!contagem_centseg_dez(1) & (contagem_centseg_dez(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y15_N22
\Conversor2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux1~0_combout\ = (contagem_centseg_dez(2) & ((contagem_centseg_dez(3)) # ((contagem_centseg_dez(1) & contagem_centseg_dez(0))))) # (!contagem_centseg_dez(2) & ((contagem_centseg_dez(1)) # ((!contagem_centseg_dez(3) & 
-- contagem_centseg_dez(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y15_N12
\Conversor2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Conversor2|Mux0~0_combout\ = (contagem_centseg_dez(1) & (((!contagem_centseg_dez(0))) # (!contagem_centseg_dez(2)))) # (!contagem_centseg_dez(1) & ((contagem_centseg_dez(2)) # ((contagem_centseg_dez(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contagem_centseg_dez(1),
	datab => contagem_centseg_dez(2),
	datac => contagem_centseg_dez(3),
	datad => contagem_centseg_dez(0),
	combout => \Conversor2|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y16_N22
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = \contador2|modo\(1) $ (!\contador2|modo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(1),
	datac => \contador2|modo\(0),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X5_Y16_N10
\saida_led_modo0$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida_led_modo0$latch~combout\ = (\comb~0_combout\ & ((\saida_led_modo0$latch~combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \comb~0_combout\,
	datad => \saida_led_modo0$latch~combout\,
	combout => \saida_led_modo0$latch~combout\);

-- Location: LCCOMB_X7_Y16_N6
\saida_led_modo1$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida_led_modo1$latch~combout\ = (\contador2|modo\(0) & ((\saida_led_modo1$latch~combout\) # (!\contador2|modo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \saida_led_modo1$latch~combout\,
	combout => \saida_led_modo1$latch~combout\);

-- Location: LCCOMB_X4_Y16_N26
\saida_led_modo2$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida_led_modo2$latch~combout\ = (\contador2|modo\(1) & ((\saida_led_modo2$latch~combout\) # (!\contador2|modo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|modo\(0),
	datac => \contador2|modo\(1),
	datad => \saida_led_modo2$latch~combout\,
	combout => \saida_led_modo2$latch~combout\);

-- Location: LCCOMB_X6_Y16_N18
\process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (!\contador1|cont_seg_uni\(3) & (!\contador1|cont_seg_dez\(2) & !\contador1|cont_seg_uni\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(3),
	datab => \contador1|cont_seg_dez\(2),
	datad => \contador1|cont_seg_uni\(0),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X6_Y16_N24
\process_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (!\contador1|cont_seg_uni\(2) & (!\contador1|cont_seg_dez\(0) & (!\contador1|cont_seg_uni\(1) & !\contador1|cont_seg_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(2),
	datab => \contador1|cont_seg_dez\(0),
	datac => \contador1|cont_seg_uni\(1),
	datad => \contador1|cont_seg_dez\(1),
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X6_Y17_N16
\process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\contador2|cont_min_uni\(2) & (\contador1|cont_min_uni\(2) & (\contador1|cont_min_uni\(3) $ (!\contador2|cont_min_uni\(3))))) # (!\contador2|cont_min_uni\(2) & (!\contador1|cont_min_uni\(2) & (\contador1|cont_min_uni\(3) $ 
-- (!\contador2|cont_min_uni\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_uni\(2),
	datab => \contador1|cont_min_uni\(3),
	datac => \contador1|cont_min_uni\(2),
	datad => \contador2|cont_min_uni\(3),
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X4_Y16_N28
\process_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\contador1|cont_hora_uni\(0) & (\contador2|cont_hora_uni\(0) & (\contador1|cont_hora_uni\(1) $ (!\contador2|cont_hora_uni\(1))))) # (!\contador1|cont_hora_uni\(0) & (!\contador2|cont_hora_uni\(0) & (\contador1|cont_hora_uni\(1) $ 
-- (!\contador2|cont_hora_uni\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_uni\(0),
	datab => \contador1|cont_hora_uni\(1),
	datac => \contador2|cont_hora_uni\(1),
	datad => \contador2|cont_hora_uni\(0),
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X5_Y16_N16
\process_0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\process_0~14_combout\ & (\process_0~13_combout\ & (\process_0~11_combout\ & \process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~14_combout\,
	datab => \process_0~13_combout\,
	datac => \process_0~11_combout\,
	datad => \process_0~12_combout\,
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X3_Y17_N26
\process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\contador2|cont_min_dez\(2) & (\contador1|cont_min_dez\(2) & (\contador1|cont_hora_dez\(0) $ (!\contador2|cont_hora_dez\(0))))) # (!\contador2|cont_min_dez\(2) & (!\contador1|cont_min_dez\(2) & (\contador1|cont_hora_dez\(0) $ 
-- (!\contador2|cont_hora_dez\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_min_dez\(2),
	datab => \contador1|cont_min_dez\(2),
	datac => \contador1|cont_hora_dez\(0),
	datad => \contador2|cont_hora_dez\(0),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X7_Y17_N16
\contador2|cont_min_uni~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \contador2|cont_min_uni~1_combout\ = (!\contador2|cont_min_uni\(3) & (\contador2|cont_min_uni\(0) $ (\contador2|cont_min_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contador2|cont_min_uni\(0),
	datac => \contador2|cont_min_uni\(1),
	datad => \contador2|cont_min_uni\(3),
	combout => \contador2|cont_min_uni~1_combout\);

-- Location: LCFF_X7_Y17_N17
\contador2|cont_min_uni[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \contador2|cont_min_uni~1_combout\,
	aclr => \contador2|cont_min_uni[3]~0_combout\,
	ena => \contador2|cont_min_dez[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \contador2|cont_min_uni\(1));

-- Location: LCCOMB_X7_Y17_N20
\process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\contador1|cont_min_uni\(0) & (\contador2|cont_min_uni\(0) & (\contador2|cont_min_uni\(1) $ (!\contador1|cont_min_uni\(1))))) # (!\contador1|cont_min_uni\(0) & (!\contador2|cont_min_uni\(0) & (\contador2|cont_min_uni\(1) $ 
-- (!\contador1|cont_min_uni\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(0),
	datab => \contador2|cont_min_uni\(0),
	datac => \contador2|cont_min_uni\(1),
	datad => \contador1|cont_min_uni\(1),
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X4_Y18_N24
\process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\contador2|cont_hora_dez\(2) & (\contador1|cont_hora_dez\(2) & (\contador2|cont_hora_dez\(1) $ (!\contador1|cont_hora_dez\(1))))) # (!\contador2|cont_hora_dez\(2) & (!\contador1|cont_hora_dez\(2) & (\contador2|cont_hora_dez\(1) $ 
-- (!\contador1|cont_hora_dez\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador2|cont_hora_dez\(2),
	datab => \contador2|cont_hora_dez\(1),
	datac => \contador1|cont_hora_dez\(1),
	datad => \contador1|cont_hora_dez\(2),
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X4_Y17_N18
\process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~5_combout\ & (\process_0~6_combout\ & (\process_0~8_combout\ & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \process_0~6_combout\,
	datac => \process_0~8_combout\,
	datad => \process_0~7_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X5_Y16_N30
\process_0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\process_0~10_combout\ & (\process_0~15_combout\ & \process_0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~10_combout\,
	datac => \process_0~15_combout\,
	datad => \process_0~9_combout\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X6_Y16_N28
\process_0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (!\contador1|cont_seg_uni\(1) & (!\contador1|cont_seg_dez\(1) & (\contador1|cont_seg_dez\(0) & !\contador1|cont_seg_uni\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(1),
	datab => \contador1|cont_seg_dez\(1),
	datac => \contador1|cont_seg_dez\(0),
	datad => \contador1|cont_seg_uni\(2),
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X6_Y16_N16
\process_0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\contador1|cont_seg_uni\(3) & (\contador1|cont_seg_uni\(0) & (\contador1|cont_seg_dez\(2) & \process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_seg_uni\(3),
	datab => \contador1|cont_seg_uni\(0),
	datac => \contador1|cont_seg_dez\(2),
	datad => \process_0~17_combout\,
	combout => \process_0~18_combout\);

-- Location: LCCOMB_X6_Y16_N0
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\contador1|cont_min_uni\(2) & (!\contador1|cont_min_uni\(0) & (!\contador1|cont_min_uni\(1) & !\contador1|cont_min_dez\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(2),
	datab => \contador1|cont_min_uni\(0),
	datac => \contador1|cont_min_uni\(1),
	datad => \contador1|cont_min_dez\(2),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X6_Y16_N20
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\contador1|cont_hora_dez\(2) & (!\contador1|cont_hora_dez\(0) & (!\contador1|cont_min_dez\(0) & !\contador1|cont_min_dez\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_hora_dez\(2),
	datab => \contador1|cont_hora_dez\(0),
	datac => \contador1|cont_min_dez\(0),
	datad => \contador1|cont_min_dez\(1),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X6_Y16_N6
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\contador1|cont_min_uni\(3) & (!\contador1|cont_hora_dez\(1) & (!\contador1|cont_hora_uni\(0) & !\contador1|cont_hora_uni\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador1|cont_min_uni\(3),
	datab => \contador1|cont_hora_dez\(1),
	datac => \contador1|cont_hora_uni\(0),
	datad => \contador1|cont_hora_uni\(1),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X6_Y16_N2
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~3_combout\ & (\process_0~1_combout\ & (\process_0~0_combout\ & \process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \process_0~1_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X6_Y16_N14
\led_alarme$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_alarme$latch~combout\ = (!\process_0~18_combout\ & ((\process_0~16_combout\ & ((!\process_0~4_combout\))) # (!\process_0~16_combout\ & (\led_alarme$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \led_alarme$latch~combout\,
	datac => \process_0~18_combout\,
	datad => \process_0~4_combout\,
	combout => \led_alarme$latch~combout\);

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(0));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(1));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(4));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(5));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_uni[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_uni(6));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(1));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(4));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seg_saida_dez[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seg_saida_dez(6));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_uni[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor5|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_uni(6));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(0));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(4));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min_saida_dez[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor6|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min_saida_dez(6));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_uni[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor7|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_uni(6));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(0));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(1));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(3));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(4));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(5));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hora_saida_dez[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor8|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hora_saida_dez(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_uni[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor1|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_uni(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\centseg_saida_dez[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Conversor2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_centseg_saida_dez(6));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_led_modo0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida_led_modo0$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_led_modo0);

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_led_modo1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida_led_modo1$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_led_modo1);

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_led_modo2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida_led_modo2$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_led_modo2);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_alarme~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led_alarme$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_alarme);
END structure;


