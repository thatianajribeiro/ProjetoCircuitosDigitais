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

-- DATE "06/27/2019 20:41:06"

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

ENTITY 	ula IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	operacao : IN std_logic_vector(2 DOWNTO 0);
	y : OUT std_logic_vector(7 DOWNTO 0);
	NZ : OUT std_logic_vector(1 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- y[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[2]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[3]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[4]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[5]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[6]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[7]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NZ[0]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- NZ[1]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operacao[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operacao[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operacao[2]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_operacao : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NZ : std_logic_vector(1 DOWNTO 0);
SIGNAL \total|S6|Co~0_combout\ : std_logic;
SIGNAL \total|S3|Co~0_combout\ : std_logic;
SIGNAL \total|S6|S~0_combout\ : std_logic;
SIGNAL \total|S3|S~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \total|S1|S~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \total|S1|Co~0_combout\ : std_logic;
SIGNAL \total|S2|S~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \y~9_combout\ : std_logic;
SIGNAL \total|S3|Co~1_combout\ : std_logic;
SIGNAL \total|S4|S~combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \total|S4|Co~0_combout\ : std_logic;
SIGNAL \total|S5|S~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \total|S6|Co~1_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \total|S3|S~combout\ : std_logic;
SIGNAL \Z_resultado~0_combout\ : std_logic;
SIGNAL \Z_resultado~1_combout\ : std_logic;
SIGNAL \y~8_combout\ : std_logic;
SIGNAL \total|S7|S~combout\ : std_logic;
SIGNAL \total|S6|S~combout\ : std_logic;
SIGNAL \Z_resultado~2_combout\ : std_logic;
SIGNAL \operacao~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Z_resultado~2_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_operacao <= operacao;
y <= ww_y;
NZ <= ww_NZ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Z_resultado~2_combout\ <= NOT \Z_resultado~2_combout\;

-- Location: LCCOMB_X64_Y32_N10
\total|S6|Co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S6|Co~0_combout\ = (\b~combout\(6)) # (\a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \total|S6|Co~0_combout\);

-- Location: LCCOMB_X63_Y33_N24
\total|S3|Co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S3|Co~0_combout\ = (\b~combout\(3) & \a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \total|S3|Co~0_combout\);

-- Location: LCCOMB_X64_Y32_N24
\total|S6|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S6|S~0_combout\ = \b~combout\(6) $ (\a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \total|S6|S~0_combout\);

-- Location: LCCOMB_X64_Y33_N4
\total|S3|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S3|S~0_combout\ = \a~combout\(3) $ (((\b~combout\(2) & ((\a~combout\(2)) # (\total|S1|Co~0_combout\))) # (!\b~combout\(2) & (\a~combout\(2) & \total|S1|Co~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a~combout\(2),
	datac => \total|S1|Co~0_combout\,
	datad => \a~combout\(3),
	combout => \total|S3|S~0_combout\);

-- Location: LCCOMB_X63_Y33_N8
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\operacao~combout\(1) & (((\operacao~combout\(0)) # (\y~9_combout\)))) # (!\operacao~combout\(1) & (\total|S3|S~combout\ & (!\operacao~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(1),
	datab => \total|S3|S~combout\,
	datac => \operacao~combout\(0),
	datad => \y~9_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X64_Y32_N12
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\operacao~combout\(0) & ((\operacao~combout\(1)) # ((\y~8_combout\)))) # (!\operacao~combout\(0) & (!\operacao~combout\(1) & (\total|S6|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \total|S6|S~combout\,
	datad => \y~8_combout\,
	combout => \Mux6~0_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operacao[2]~I\ : cycloneii_io
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
	padio => ww_operacao(2),
	combout => \operacao~combout\(2));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operacao[1]~I\ : cycloneii_io
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
	padio => ww_operacao(1),
	combout => \operacao~combout\(1));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X64_Y33_N28
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\b~combout\(0) & (\operacao~combout\(0) $ (((\operacao~combout\(1)) # (!\a~combout\(0)))))) # (!\b~combout\(0) & ((\operacao~combout\(0) & (\operacao~combout\(1))) # (!\operacao~combout\(0) & ((\a~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X64_Y33_N30
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\operacao~combout\(2) & ((\b~combout\(0)))) # (!\operacao~combout\(2) & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(2),
	datab => \Mux0~0_combout\,
	datac => \b~combout\(0),
	combout => \Mux0~1_combout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operacao[0]~I\ : cycloneii_io
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
	padio => ww_operacao(0),
	combout => \operacao~combout\(0));

-- Location: LCCOMB_X63_Y33_N6
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ((!\operacao~combout\(0) & !\operacao~combout\(1))) # (!\operacao~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(2),
	datab => \operacao~combout\(0),
	datac => \operacao~combout\(1),
	combout => \Mux8~0_combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X64_Y33_N10
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\operacao~combout\(2) & (((\b~combout\(1))))) # (!\operacao~combout\(2) & (\operacao~combout\(1) $ (((\operacao~combout\(0) & \b~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \b~combout\(1),
	datad => \operacao~combout\(2),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X64_Y33_N8
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\operacao~combout\(2)) # ((\b~combout\(1) & ((\operacao~combout\(1)))) # (!\b~combout\(1) & (\operacao~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \b~combout\(1),
	datad => \operacao~combout\(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X64_Y33_N16
\total|S1|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S1|S~0_combout\ = \a~combout\(1) $ (\b~combout\(1) $ (((\b~combout\(0) & \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \total|S1|S~0_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X64_Y33_N12
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\Mux1~0_combout\) # ((\a~combout\(1))))) # (!\Mux1~1_combout\ & (!\Mux1~0_combout\ & (\total|S1|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \total|S1|S~0_combout\,
	datad => \a~combout\(1),
	combout => \Mux1~2_combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X64_Y33_N6
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\operacao~combout\(2) & (((!\b~combout\(2))))) # (!\operacao~combout\(2) & (\operacao~combout\(0) $ (((\operacao~combout\(1) & !\b~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \operacao~combout\(2),
	datad => \b~combout\(2),
	combout => \Mux2~0_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X64_Y33_N24
\total|S1|Co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S1|Co~0_combout\ = (\a~combout\(1) & ((\b~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\a~combout\(1) & (\b~combout\(1) & (\b~combout\(0) & \a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \b~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \total|S1|Co~0_combout\);

-- Location: LCCOMB_X64_Y33_N22
\total|S2|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S2|S~0_combout\ = \a~combout\(2) $ (\total|S1|Co~0_combout\ $ (\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(2),
	datac => \total|S1|Co~0_combout\,
	datad => \b~combout\(2),
	combout => \total|S2|S~0_combout\);

-- Location: LCCOMB_X64_Y33_N0
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\operacao~combout\(2)) # ((\b~combout\(2) & ((\operacao~combout\(1)))) # (!\b~combout\(2) & (\operacao~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \operacao~combout\(2),
	datad => \b~combout\(2),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X64_Y33_N2
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~0_combout\ & (((\a~combout\(2) & !\Mux2~1_combout\)))) # (!\Mux2~0_combout\ & ((\total|S2|S~0_combout\) # ((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \total|S2|S~0_combout\,
	datac => \a~combout\(2),
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X63_Y33_N2
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((!\b~combout\(3))) # (!\operacao~combout\(0)))) # (!\Mux3~0_combout\ & (\operacao~combout\(0) & (\b~combout\(3) & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \operacao~combout\(0),
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X63_Y33_N4
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\operacao~combout\(2) & ((\b~combout\(3)))) # (!\operacao~combout\(2) & (\Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(2),
	datab => \Mux3~1_combout\,
	datac => \b~combout\(3),
	combout => \Mux3~2_combout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X63_Y33_N22
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\operacao~combout\(2) & (((!\b~combout\(4))))) # (!\operacao~combout\(2) & (\operacao~combout\(0) $ (((!\b~combout\(4) & \operacao~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(2),
	datab => \operacao~combout\(0),
	datac => \b~combout\(4),
	datad => \operacao~combout\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X63_Y33_N18
\y~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~9_combout\ = (\b~combout\(3)) # (\a~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \y~9_combout\);

-- Location: LCCOMB_X64_Y33_N26
\total|S3|Co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S3|Co~1_combout\ = (\y~9_combout\ & ((\total|S1|Co~0_combout\ & ((\a~combout\(2)) # (\b~combout\(2)))) # (!\total|S1|Co~0_combout\ & (\a~combout\(2) & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S1|Co~0_combout\,
	datab => \y~9_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \total|S3|Co~1_combout\);

-- Location: LCCOMB_X63_Y33_N16
\total|S4|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S4|S~combout\ = \b~combout\(4) $ (\a~combout\(4) $ (((\total|S3|Co~0_combout\) # (\total|S3|Co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S3|Co~0_combout\,
	datab => \b~combout\(4),
	datac => \total|S3|Co~1_combout\,
	datad => \a~combout\(4),
	combout => \total|S4|S~combout\);

-- Location: LCCOMB_X63_Y33_N0
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\operacao~combout\(2)) # ((\b~combout\(4) & ((\operacao~combout\(1)))) # (!\b~combout\(4) & (\operacao~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(2),
	datab => \operacao~combout\(0),
	datac => \b~combout\(4),
	datad => \operacao~combout\(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X63_Y33_N10
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~0_combout\ & (\a~combout\(4) & ((!\Mux4~1_combout\)))) # (!\Mux4~0_combout\ & (((\total|S4|S~combout\) # (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datab => \Mux4~0_combout\,
	datac => \total|S4|S~combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X63_Y33_N28
\total|S4|Co~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S4|Co~0_combout\ = (\b~combout\(4) & ((\total|S3|Co~0_combout\) # ((\total|S3|Co~1_combout\) # (\a~combout\(4))))) # (!\b~combout\(4) & (\a~combout\(4) & ((\total|S3|Co~0_combout\) # (\total|S3|Co~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S3|Co~0_combout\,
	datab => \b~combout\(4),
	datac => \total|S3|Co~1_combout\,
	datad => \a~combout\(4),
	combout => \total|S4|Co~0_combout\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X64_Y32_N20
\total|S5|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S5|S~combout\ = \a~combout\(5) $ (\total|S4|Co~0_combout\ $ (\b~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datac => \total|S4|Co~0_combout\,
	datad => \b~combout\(5),
	combout => \total|S5|S~combout\);

-- Location: LCCOMB_X64_Y32_N30
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\operacao~combout\(2)) # ((\b~combout\(5) & ((\operacao~combout\(1)))) # (!\b~combout\(5) & (\operacao~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \operacao~combout\(2),
	datad => \b~combout\(5),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X64_Y32_N8
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\operacao~combout\(2) & (((\b~combout\(5))))) # (!\operacao~combout\(2) & (\operacao~combout\(1) $ (((\operacao~combout\(0) & \b~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \operacao~combout\(2),
	datad => \b~combout\(5),
	combout => \Mux5~1_combout\);

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X64_Y32_N18
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~0_combout\ & (((\Mux5~1_combout\)))) # (!\Mux5~0_combout\ & ((\Mux5~1_combout\ & ((\a~combout\(5)))) # (!\Mux5~1_combout\ & (\total|S5|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S5|S~combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \a~combout\(5),
	combout => \Mux5~2_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X64_Y32_N14
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((!\b~combout\(6))) # (!\operacao~combout\(1)))) # (!\Mux6~0_combout\ & (\operacao~combout\(1) & ((\b~combout\(6)) # (\a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \operacao~combout\(1),
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X64_Y33_N20
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\operacao~combout\(2) & ((\b~combout\(6)))) # (!\operacao~combout\(2) & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \b~combout\(6),
	datac => \operacao~combout\(2),
	combout => \Mux6~2_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X64_Y32_N4
\total|S6|Co~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S6|Co~1_combout\ = (\total|S6|Co~0_combout\ & ((\b~combout\(5) & ((\total|S4|Co~0_combout\) # (\a~combout\(5)))) # (!\b~combout\(5) & (\total|S4|Co~0_combout\ & \a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S6|Co~0_combout\,
	datab => \b~combout\(5),
	datac => \total|S4|Co~0_combout\,
	datad => \a~combout\(5),
	combout => \total|S6|Co~1_combout\);

-- Location: LCCOMB_X64_Y32_N22
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\total|S6|Co~1_combout\) # ((\b~combout\(6) & \a~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(6),
	datac => \total|S6|Co~1_combout\,
	datad => \a~combout\(6),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X64_Y32_N16
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\operacao~combout\(1) & (\operacao~combout\(0))) # (!\operacao~combout\(1) & (\a~combout\(7) $ (((\operacao~combout\(0)) # (\Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operacao~combout\(0),
	datab => \operacao~combout\(1),
	datac => \a~combout\(7),
	datad => \Mux7~5_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X64_Y32_N26
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\operacao~combout\(1) & (\a~combout\(7) & !\operacao~combout\(0))) # (!\operacao~combout\(1) & (!\a~combout\(7) & \operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operacao~combout\(1),
	datac => \a~combout\(7),
	datad => \operacao~combout\(0),
	combout => \Mux7~3_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X64_Y32_N28
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\operacao~combout\(2) & (((\b~combout\(7))))) # (!\operacao~combout\(2) & (\Mux7~2_combout\ $ (((\Mux7~3_combout\) # (\b~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~3_combout\,
	datac => \operacao~combout\(2),
	datad => \b~combout\(7),
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X63_Y33_N30
\total|S3|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S3|S~combout\ = \total|S3|S~0_combout\ $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S3|S~0_combout\,
	datac => \b~combout\(3),
	combout => \total|S3|S~combout\);

-- Location: LCCOMB_X64_Y33_N18
\Z_resultado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z_resultado~0_combout\ = (\total|S1|S~0_combout\) # ((\total|S2|S~0_combout\) # (\b~combout\(0) $ (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S1|S~0_combout\,
	datab => \total|S2|S~0_combout\,
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \Z_resultado~0_combout\);

-- Location: LCCOMB_X63_Y33_N26
\Z_resultado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z_resultado~1_combout\ = (\total|S5|S~combout\) # ((\total|S3|S~combout\) # ((\total|S4|S~combout\) # (\Z_resultado~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S5|S~combout\,
	datab => \total|S3|S~combout\,
	datac => \total|S4|S~combout\,
	datad => \Z_resultado~0_combout\,
	combout => \Z_resultado~1_combout\);

-- Location: LCCOMB_X64_Y32_N0
\y~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~8_combout\ = (\b~combout\(6) & \a~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	combout => \y~8_combout\);

-- Location: LCCOMB_X64_Y32_N6
\total|S7|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S7|S~combout\ = \b~combout\(7) $ (\a~combout\(7) $ (((\total|S6|Co~1_combout\) # (\y~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \total|S6|Co~1_combout\,
	datac => \a~combout\(7),
	datad => \y~8_combout\,
	combout => \total|S7|S~combout\);

-- Location: LCCOMB_X64_Y32_N2
\total|S6|S\ : cycloneii_lcell_comb
-- Equation(s):
-- \total|S6|S~combout\ = \total|S6|S~0_combout\ $ (((\b~combout\(5) & ((\total|S4|Co~0_combout\) # (\a~combout\(5)))) # (!\b~combout\(5) & (\total|S4|Co~0_combout\ & \a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \total|S6|S~0_combout\,
	datab => \b~combout\(5),
	datac => \total|S4|Co~0_combout\,
	datad => \a~combout\(5),
	combout => \total|S6|S~combout\);

-- Location: LCCOMB_X63_Y33_N20
\Z_resultado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z_resultado~2_combout\ = (\Z_resultado~1_combout\) # ((\total|S7|S~combout\) # (\total|S6|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Z_resultado~1_combout\,
	datac => \total|S7|S~combout\,
	datad => \total|S6|S~combout\,
	combout => \Z_resultado~2_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[0]~I\ : cycloneii_io
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
	datain => \Mux0~1_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[1]~I\ : cycloneii_io
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
	datain => \Mux1~2_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(1));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[2]~I\ : cycloneii_io
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
	datain => \Mux2~2_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(2));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[3]~I\ : cycloneii_io
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
	datain => \Mux3~2_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(3));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[4]~I\ : cycloneii_io
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
	datain => \Mux4~2_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(4));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[5]~I\ : cycloneii_io
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
	datain => \Mux5~2_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(5));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[6]~I\ : cycloneii_io
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
	datain => \Mux6~2_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(6));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[7]~I\ : cycloneii_io
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
	datain => \Mux7~4_combout\,
	oe => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y(7));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NZ[0]~I\ : cycloneii_io
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
	datain => \ALT_INV_Z_resultado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NZ(0));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\NZ[1]~I\ : cycloneii_io
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
	datain => \total|S7|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NZ(1));
END structure;


