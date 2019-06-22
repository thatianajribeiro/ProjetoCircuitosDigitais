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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/21/2019 18:07:07"

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

ENTITY 	PCcomJK IS
    PORT (
	clk : IN std_logic;
	R : IN std_logic_vector(7 DOWNTO 0);
	carga : IN std_logic;
	incrementa : IN std_logic;
	E : OUT std_logic_vector(7 DOWNTO 0)
	);
END PCcomJK;

-- Design Ports Information
-- E[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[2]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[4]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[5]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[6]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- E[7]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- carga	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- incrementa	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[1]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[3]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[6]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[7]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PCcomJK IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carga : std_logic;
SIGNAL ww_incrementa : std_logic;
SIGNAL ww_E : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RFOR:1:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \RFOR:7:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \carga~combout\ : std_logic;
SIGNAL \RFOR:0:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:0:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:1:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \RFOR:1:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:2:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:2:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \RFOR:2:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:3:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:3:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \RFOR:3:FFN|qsignal~regout\ : std_logic;
SIGNAL \somalabel|c_out~0_combout\ : std_logic;
SIGNAL \RFOR:4:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:4:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \RFOR:4:FFN|qsignal~regout\ : std_logic;
SIGNAL \incrementa~combout\ : std_logic;
SIGNAL \RFOR:5:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:5:FFN|qsignal~1_combout\ : std_logic;
SIGNAL \RFOR:5:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~2_combout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~3_combout\ : std_logic;
SIGNAL \RFOR:6:FFN|qsignal~regout\ : std_logic;
SIGNAL \RFOR:7:FFN|qsignal~0_combout\ : std_logic;
SIGNAL \somalabel|c_out~1_combout\ : std_logic;
SIGNAL \RFOR:7:FFN|qsignal~2_combout\ : std_logic;
SIGNAL \RFOR:7:FFN|qsignal~regout\ : std_logic;
SIGNAL \R~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_R <= R;
ww_carga <= carga;
ww_incrementa <= incrementa;
E <= ww_E;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCCOMB_X54_Y35_N16
\RFOR:1:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:1:FFN|qsignal~0_combout\ = (!\carga~combout\ & (\RFOR:1:FFN|qsignal~regout\ $ (((\RFOR:0:FFN|qsignal~regout\) # (!\incrementa~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementa~combout\,
	datab => \carga~combout\,
	datac => \RFOR:1:FFN|qsignal~regout\,
	datad => \RFOR:0:FFN|qsignal~regout\,
	combout => \RFOR:1:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X55_Y35_N12
\RFOR:6:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:6:FFN|qsignal~1_combout\ = (\carga~combout\ & ((\R~combout\(6)))) # (!\carga~combout\ & (\incrementa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carga~combout\,
	datac => \incrementa~combout\,
	datad => \R~combout\(6),
	combout => \RFOR:6:FFN|qsignal~1_combout\);

-- Location: LCCOMB_X55_Y35_N16
\RFOR:7:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:7:FFN|qsignal~1_combout\ = (\carga~combout\ & (((\R~combout\(7))))) # (!\carga~combout\ & (!\incrementa~combout\ & ((!\RFOR:7:FFN|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementa~combout\,
	datab => \carga~combout\,
	datac => \R~combout\(7),
	datad => \RFOR:7:FFN|qsignal~regout\,
	combout => \RFOR:7:FFN|qsignal~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[0]~I\ : cycloneii_io
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
	padio => ww_R(0),
	combout => \R~combout\(0));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[3]~I\ : cycloneii_io
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
	padio => ww_R(3),
	combout => \R~combout\(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[5]~I\ : cycloneii_io
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
	padio => ww_R(5),
	combout => \R~combout\(5));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[6]~I\ : cycloneii_io
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
	padio => ww_R(6),
	combout => \R~combout\(6));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[7]~I\ : cycloneii_io
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
	padio => ww_R(7),
	combout => \R~combout\(7));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\carga~I\ : cycloneii_io
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
	padio => ww_carga,
	combout => \carga~combout\);

-- Location: LCCOMB_X54_Y35_N4
\RFOR:0:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:0:FFN|qsignal~0_combout\ = (\carga~combout\ & (\R~combout\(0))) # (!\carga~combout\ & ((!\RFOR:0:FFN|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~combout\(0),
	datac => \RFOR:0:FFN|qsignal~regout\,
	datad => \carga~combout\,
	combout => \RFOR:0:FFN|qsignal~0_combout\);

-- Location: LCFF_X54_Y35_N5
\RFOR:0:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:0:FFN|qsignal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:0:FFN|qsignal~regout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[1]~I\ : cycloneii_io
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
	padio => ww_R(1),
	combout => \R~combout\(1));

-- Location: LCCOMB_X54_Y35_N14
\RFOR:1:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:1:FFN|qsignal~1_combout\ = (\RFOR:1:FFN|qsignal~0_combout\) # ((\carga~combout\ & \R~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RFOR:1:FFN|qsignal~0_combout\,
	datab => \carga~combout\,
	datac => \R~combout\(1),
	combout => \RFOR:1:FFN|qsignal~1_combout\);

-- Location: LCFF_X54_Y35_N15
\RFOR:1:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:1:FFN|qsignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:1:FFN|qsignal~regout\);

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[2]~I\ : cycloneii_io
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
	padio => ww_R(2),
	combout => \R~combout\(2));

-- Location: LCCOMB_X54_Y35_N30
\RFOR:2:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:2:FFN|qsignal~0_combout\ = \RFOR:2:FFN|qsignal~regout\ $ (((\incrementa~combout\ & ((!\RFOR:0:FFN|qsignal~regout\) # (!\RFOR:1:FFN|qsignal~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementa~combout\,
	datab => \RFOR:2:FFN|qsignal~regout\,
	datac => \RFOR:1:FFN|qsignal~regout\,
	datad => \RFOR:0:FFN|qsignal~regout\,
	combout => \RFOR:2:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X54_Y35_N20
\RFOR:2:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:2:FFN|qsignal~1_combout\ = (\carga~combout\ & (\R~combout\(2))) # (!\carga~combout\ & ((!\RFOR:2:FFN|qsignal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carga~combout\,
	datac => \R~combout\(2),
	datad => \RFOR:2:FFN|qsignal~0_combout\,
	combout => \RFOR:2:FFN|qsignal~1_combout\);

-- Location: LCFF_X54_Y35_N21
\RFOR:2:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:2:FFN|qsignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:2:FFN|qsignal~regout\);

-- Location: LCCOMB_X54_Y35_N24
\RFOR:3:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:3:FFN|qsignal~0_combout\ = (\incrementa~combout\ & (((!\RFOR:0:FFN|qsignal~regout\) # (!\RFOR:1:FFN|qsignal~regout\)) # (!\RFOR:2:FFN|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementa~combout\,
	datab => \RFOR:2:FFN|qsignal~regout\,
	datac => \RFOR:1:FFN|qsignal~regout\,
	datad => \RFOR:0:FFN|qsignal~regout\,
	combout => \RFOR:3:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X54_Y35_N26
\RFOR:3:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:3:FFN|qsignal~1_combout\ = (\carga~combout\ & (\R~combout\(3))) # (!\carga~combout\ & ((\RFOR:3:FFN|qsignal~regout\ $ (!\RFOR:3:FFN|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~combout\(3),
	datab => \carga~combout\,
	datac => \RFOR:3:FFN|qsignal~regout\,
	datad => \RFOR:3:FFN|qsignal~0_combout\,
	combout => \RFOR:3:FFN|qsignal~1_combout\);

-- Location: LCFF_X54_Y35_N27
\RFOR:3:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:3:FFN|qsignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:3:FFN|qsignal~regout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\R[4]~I\ : cycloneii_io
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
	padio => ww_R(4),
	combout => \R~combout\(4));

-- Location: LCCOMB_X54_Y35_N18
\somalabel|c_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somalabel|c_out~0_combout\ = (\RFOR:2:FFN|qsignal~regout\ & (\RFOR:0:FFN|qsignal~regout\ & (\RFOR:1:FFN|qsignal~regout\ & \RFOR:3:FFN|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RFOR:2:FFN|qsignal~regout\,
	datab => \RFOR:0:FFN|qsignal~regout\,
	datac => \RFOR:1:FFN|qsignal~regout\,
	datad => \RFOR:3:FFN|qsignal~regout\,
	combout => \somalabel|c_out~0_combout\);

-- Location: LCCOMB_X55_Y35_N28
\RFOR:4:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:4:FFN|qsignal~0_combout\ = (!\carga~combout\ & (\RFOR:4:FFN|qsignal~regout\ $ (((\somalabel|c_out~0_combout\) # (!\incrementa~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incrementa~combout\,
	datab => \carga~combout\,
	datac => \RFOR:4:FFN|qsignal~regout\,
	datad => \somalabel|c_out~0_combout\,
	combout => \RFOR:4:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X55_Y35_N8
\RFOR:4:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:4:FFN|qsignal~1_combout\ = (\RFOR:4:FFN|qsignal~0_combout\) # ((\carga~combout\ & \R~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carga~combout\,
	datac => \R~combout\(4),
	datad => \RFOR:4:FFN|qsignal~0_combout\,
	combout => \RFOR:4:FFN|qsignal~1_combout\);

-- Location: LCFF_X55_Y35_N9
\RFOR:4:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:4:FFN|qsignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:4:FFN|qsignal~regout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\incrementa~I\ : cycloneii_io
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
	padio => ww_incrementa,
	combout => \incrementa~combout\);

-- Location: LCCOMB_X55_Y35_N6
\RFOR:5:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:5:FFN|qsignal~0_combout\ = (\incrementa~combout\ & ((!\somalabel|c_out~0_combout\) # (!\RFOR:4:FFN|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RFOR:4:FFN|qsignal~regout\,
	datac => \incrementa~combout\,
	datad => \somalabel|c_out~0_combout\,
	combout => \RFOR:5:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X55_Y35_N14
\RFOR:5:FFN|qsignal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:5:FFN|qsignal~1_combout\ = (\carga~combout\ & (\R~combout\(5))) # (!\carga~combout\ & ((\RFOR:5:FFN|qsignal~regout\ $ (!\RFOR:5:FFN|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~combout\(5),
	datab => \carga~combout\,
	datac => \RFOR:5:FFN|qsignal~regout\,
	datad => \RFOR:5:FFN|qsignal~0_combout\,
	combout => \RFOR:5:FFN|qsignal~1_combout\);

-- Location: LCFF_X55_Y35_N15
\RFOR:5:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:5:FFN|qsignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:5:FFN|qsignal~regout\);

-- Location: LCCOMB_X55_Y35_N30
\RFOR:6:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:6:FFN|qsignal~0_combout\ = (\RFOR:4:FFN|qsignal~regout\ & (\RFOR:5:FFN|qsignal~regout\ & \somalabel|c_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RFOR:4:FFN|qsignal~regout\,
	datac => \RFOR:5:FFN|qsignal~regout\,
	datad => \somalabel|c_out~0_combout\,
	combout => \RFOR:6:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X55_Y35_N22
\RFOR:6:FFN|qsignal~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:6:FFN|qsignal~2_combout\ = (\carga~combout\ & (!\RFOR:6:FFN|qsignal~1_combout\)) # (!\carga~combout\ & ((\RFOR:6:FFN|qsignal~regout\) # ((\RFOR:6:FFN|qsignal~1_combout\ & !\RFOR:6:FFN|qsignal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RFOR:6:FFN|qsignal~1_combout\,
	datab => \carga~combout\,
	datac => \RFOR:6:FFN|qsignal~regout\,
	datad => \RFOR:6:FFN|qsignal~0_combout\,
	combout => \RFOR:6:FFN|qsignal~2_combout\);

-- Location: LCCOMB_X55_Y35_N24
\RFOR:6:FFN|qsignal~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:6:FFN|qsignal~3_combout\ = ((\RFOR:7:FFN|qsignal~0_combout\ & !\RFOR:6:FFN|qsignal~0_combout\)) # (!\RFOR:6:FFN|qsignal~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RFOR:7:FFN|qsignal~0_combout\,
	datac => \RFOR:6:FFN|qsignal~0_combout\,
	datad => \RFOR:6:FFN|qsignal~2_combout\,
	combout => \RFOR:6:FFN|qsignal~3_combout\);

-- Location: LCFF_X55_Y35_N25
\RFOR:6:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:6:FFN|qsignal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:6:FFN|qsignal~regout\);

-- Location: LCCOMB_X55_Y35_N20
\RFOR:7:FFN|qsignal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:7:FFN|qsignal~0_combout\ = (\RFOR:6:FFN|qsignal~regout\ & (!\carga~combout\ & \incrementa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RFOR:6:FFN|qsignal~regout\,
	datab => \carga~combout\,
	datac => \incrementa~combout\,
	combout => \RFOR:7:FFN|qsignal~0_combout\);

-- Location: LCCOMB_X55_Y35_N26
\somalabel|c_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somalabel|c_out~1_combout\ = (\RFOR:4:FFN|qsignal~regout\ & \somalabel|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RFOR:4:FFN|qsignal~regout\,
	datad => \somalabel|c_out~0_combout\,
	combout => \somalabel|c_out~1_combout\);

-- Location: LCCOMB_X55_Y35_N18
\RFOR:7:FFN|qsignal~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RFOR:7:FFN|qsignal~2_combout\ = (\RFOR:7:FFN|qsignal~1_combout\) # ((\RFOR:5:FFN|qsignal~regout\ & (\RFOR:7:FFN|qsignal~0_combout\ & \somalabel|c_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RFOR:7:FFN|qsignal~1_combout\,
	datab => \RFOR:5:FFN|qsignal~regout\,
	datac => \RFOR:7:FFN|qsignal~0_combout\,
	datad => \somalabel|c_out~1_combout\,
	combout => \RFOR:7:FFN|qsignal~2_combout\);

-- Location: LCFF_X55_Y35_N19
\RFOR:7:FFN|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \RFOR:7:FFN|qsignal~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RFOR:7:FFN|qsignal~regout\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[0]~I\ : cycloneii_io
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
	datain => \RFOR:0:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(0));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[1]~I\ : cycloneii_io
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
	datain => \RFOR:1:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(1));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[2]~I\ : cycloneii_io
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
	datain => \RFOR:2:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(2));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[3]~I\ : cycloneii_io
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
	datain => \RFOR:3:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(3));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[4]~I\ : cycloneii_io
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
	datain => \RFOR:4:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(4));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[5]~I\ : cycloneii_io
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
	datain => \RFOR:5:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(5));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[6]~I\ : cycloneii_io
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
	datain => \RFOR:6:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(6));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\E[7]~I\ : cycloneii_io
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
	datain => \RFOR:7:FFN|qsignal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_E(7));
END structure;


