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

-- DATE "06/27/2019 19:20:45"

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

ENTITY 	memoria IS
    PORT (
	rw : IN std_logic;
	clk : IN std_logic;
	rem_end : IN std_logic_vector(7 DOWNTO 0);
	Dados : IN std_logic_vector(7 DOWNTO 0);
	S : OUT std_logic_vector(7 DOWNTO 0)
	);
END memoria;

-- Design Ports Information
-- rem_end[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rem_end[5]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rem_end[6]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rem_end[7]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[4]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[5]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rem_end[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rem_end[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rem_end[2]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rem_end[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rw	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[4]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[5]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[6]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Dados[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF memoria IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rem_end : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Dados : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL \CEL03|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL04|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL05|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~2_combout\ : std_logic;
SIGNAL \CEL10|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL11|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \CEL13|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL03|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL02|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \CEL10|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL15|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL14|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \CEL03|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL02|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \CEL11|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL10|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \CEL12|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL01|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \CEL10|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL15|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL14|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \CEL02|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL04|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL07|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \CEL09|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL08|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \CEL14|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL07|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \CEL09|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL08|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \CEL03|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL02|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \CEL04|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL11|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL10|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \CEL03|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL02|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \CEL06|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL11|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL10|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \CEL12|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01~135\ : std_logic;
SIGNAL \CEL01|FOR01~7\ : std_logic;
SIGNAL \CEL02|FOR01~7\ : std_logic;
SIGNAL \CEL03|FOR01~7\ : std_logic;
SIGNAL \CEL04|FOR01~7\ : std_logic;
SIGNAL \CEL05|FOR01~7\ : std_logic;
SIGNAL \CEL06|FOR01~7\ : std_logic;
SIGNAL \CEL07|FOR01~7\ : std_logic;
SIGNAL \CEL08|FOR01~7\ : std_logic;
SIGNAL \CEL09|FOR01~7\ : std_logic;
SIGNAL \CEL10|FOR01~7\ : std_logic;
SIGNAL \CEL11|FOR01~7\ : std_logic;
SIGNAL \CEL12|FOR01~7\ : std_logic;
SIGNAL \CEL13|FOR01~7\ : std_logic;
SIGNAL \CEL14|FOR01~7\ : std_logic;
SIGNAL \CEL15|FOR01~7\ : std_logic;
SIGNAL \CEL00|FOR01~combout\ : std_logic;
SIGNAL \CEL01|FOR01~combout\ : std_logic;
SIGNAL \CEL02|FOR01~combout\ : std_logic;
SIGNAL \CEL03|FOR01~combout\ : std_logic;
SIGNAL \CEL04|FOR01~combout\ : std_logic;
SIGNAL \CEL05|FOR01~combout\ : std_logic;
SIGNAL \CEL06|FOR01~combout\ : std_logic;
SIGNAL \CEL07|FOR01~combout\ : std_logic;
SIGNAL \CEL08|FOR01~combout\ : std_logic;
SIGNAL \CEL09|FOR01~combout\ : std_logic;
SIGNAL \CEL10|FOR01~combout\ : std_logic;
SIGNAL \CEL11|FOR01~combout\ : std_logic;
SIGNAL \CEL12|FOR01~combout\ : std_logic;
SIGNAL \CEL13|FOR01~combout\ : std_logic;
SIGNAL \CEL14|FOR01~combout\ : std_logic;
SIGNAL \CEL15|FOR01~combout\ : std_logic;
SIGNAL \CEL00|FOR01~136\ : std_logic;
SIGNAL \CEL01|FOR01~8\ : std_logic;
SIGNAL \CEL02|FOR01~8\ : std_logic;
SIGNAL \CEL03|FOR01~8\ : std_logic;
SIGNAL \CEL04|FOR01~8\ : std_logic;
SIGNAL \CEL05|FOR01~8\ : std_logic;
SIGNAL \CEL06|FOR01~8\ : std_logic;
SIGNAL \CEL07|FOR01~8\ : std_logic;
SIGNAL \CEL08|FOR01~8\ : std_logic;
SIGNAL \CEL09|FOR01~8\ : std_logic;
SIGNAL \CEL10|FOR01~8\ : std_logic;
SIGNAL \CEL11|FOR01~8\ : std_logic;
SIGNAL \CEL12|FOR01~8\ : std_logic;
SIGNAL \CEL13|FOR01~8\ : std_logic;
SIGNAL \CEL14|FOR01~8\ : std_logic;
SIGNAL \CEL15|FOR01~8\ : std_logic;
SIGNAL \CEL00|FOR01~137\ : std_logic;
SIGNAL \CEL01|FOR01~9\ : std_logic;
SIGNAL \CEL02|FOR01~9\ : std_logic;
SIGNAL \CEL03|FOR01~9\ : std_logic;
SIGNAL \CEL04|FOR01~9\ : std_logic;
SIGNAL \CEL05|FOR01~9\ : std_logic;
SIGNAL \CEL06|FOR01~9\ : std_logic;
SIGNAL \CEL07|FOR01~9\ : std_logic;
SIGNAL \CEL08|FOR01~9\ : std_logic;
SIGNAL \CEL09|FOR01~9\ : std_logic;
SIGNAL \CEL10|FOR01~9\ : std_logic;
SIGNAL \CEL11|FOR01~9\ : std_logic;
SIGNAL \CEL12|FOR01~9\ : std_logic;
SIGNAL \CEL13|FOR01~9\ : std_logic;
SIGNAL \CEL14|FOR01~9\ : std_logic;
SIGNAL \CEL15|FOR01~9\ : std_logic;
SIGNAL \CEL00|FOR01~138\ : std_logic;
SIGNAL \CEL01|FOR01~10\ : std_logic;
SIGNAL \CEL02|FOR01~10\ : std_logic;
SIGNAL \CEL03|FOR01~10\ : std_logic;
SIGNAL \CEL04|FOR01~10\ : std_logic;
SIGNAL \CEL05|FOR01~10\ : std_logic;
SIGNAL \CEL06|FOR01~10\ : std_logic;
SIGNAL \CEL07|FOR01~10\ : std_logic;
SIGNAL \CEL08|FOR01~10\ : std_logic;
SIGNAL \CEL09|FOR01~10\ : std_logic;
SIGNAL \CEL10|FOR01~10\ : std_logic;
SIGNAL \CEL11|FOR01~10\ : std_logic;
SIGNAL \CEL12|FOR01~10\ : std_logic;
SIGNAL \CEL13|FOR01~10\ : std_logic;
SIGNAL \CEL14|FOR01~10\ : std_logic;
SIGNAL \CEL15|FOR01~10\ : std_logic;
SIGNAL \CEL00|FOR01~139\ : std_logic;
SIGNAL \CEL01|FOR01~11\ : std_logic;
SIGNAL \CEL02|FOR01~11\ : std_logic;
SIGNAL \CEL03|FOR01~11\ : std_logic;
SIGNAL \CEL04|FOR01~11\ : std_logic;
SIGNAL \CEL05|FOR01~11\ : std_logic;
SIGNAL \CEL06|FOR01~11\ : std_logic;
SIGNAL \CEL07|FOR01~11\ : std_logic;
SIGNAL \CEL08|FOR01~11\ : std_logic;
SIGNAL \CEL09|FOR01~11\ : std_logic;
SIGNAL \CEL10|FOR01~11\ : std_logic;
SIGNAL \CEL11|FOR01~11\ : std_logic;
SIGNAL \CEL12|FOR01~11\ : std_logic;
SIGNAL \CEL13|FOR01~11\ : std_logic;
SIGNAL \CEL14|FOR01~11\ : std_logic;
SIGNAL \CEL15|FOR01~11\ : std_logic;
SIGNAL \CEL00|FOR01~140\ : std_logic;
SIGNAL \CEL01|FOR01~12\ : std_logic;
SIGNAL \CEL02|FOR01~12\ : std_logic;
SIGNAL \CEL03|FOR01~12\ : std_logic;
SIGNAL \CEL04|FOR01~12\ : std_logic;
SIGNAL \CEL05|FOR01~12\ : std_logic;
SIGNAL \CEL06|FOR01~12\ : std_logic;
SIGNAL \CEL07|FOR01~12\ : std_logic;
SIGNAL \CEL08|FOR01~12\ : std_logic;
SIGNAL \CEL09|FOR01~12\ : std_logic;
SIGNAL \CEL10|FOR01~12\ : std_logic;
SIGNAL \CEL11|FOR01~12\ : std_logic;
SIGNAL \CEL12|FOR01~12\ : std_logic;
SIGNAL \CEL13|FOR01~12\ : std_logic;
SIGNAL \CEL14|FOR01~12\ : std_logic;
SIGNAL \CEL15|FOR01~12\ : std_logic;
SIGNAL \CEL00|FOR01~141\ : std_logic;
SIGNAL \CEL01|FOR01~13\ : std_logic;
SIGNAL \CEL02|FOR01~13\ : std_logic;
SIGNAL \CEL03|FOR01~13\ : std_logic;
SIGNAL \CEL04|FOR01~13\ : std_logic;
SIGNAL \CEL05|FOR01~13\ : std_logic;
SIGNAL \CEL06|FOR01~13\ : std_logic;
SIGNAL \CEL07|FOR01~13\ : std_logic;
SIGNAL \CEL08|FOR01~13\ : std_logic;
SIGNAL \CEL09|FOR01~13\ : std_logic;
SIGNAL \CEL10|FOR01~13\ : std_logic;
SIGNAL \CEL11|FOR01~13\ : std_logic;
SIGNAL \CEL12|FOR01~13\ : std_logic;
SIGNAL \CEL13|FOR01~13\ : std_logic;
SIGNAL \CEL14|FOR01~13\ : std_logic;
SIGNAL \CEL15|FOR01~13\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \CEL14|FOR01:1:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL02|FOR01:4:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL08|FOR01:4:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL14|FOR01:4:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|FOR01:4:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL06|FOR01:5:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL08|FOR01:5:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|FOR01:6:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL02|en~0_combout\ : std_logic;
SIGNAL \CEL02|S[0]~0_combout\ : std_logic;
SIGNAL \CEL02|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL03|en~0_combout\ : std_logic;
SIGNAL \rw~combout\ : std_logic;
SIGNAL \CEL03|S[0]~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \CEL01|en~0_combout\ : std_logic;
SIGNAL \CEL01|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|en~combout\ : std_logic;
SIGNAL \CEL00|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL01|S[0]~0_combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \CEL07|en~0_combout\ : std_logic;
SIGNAL \CEL07|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|en~0_combout\ : std_logic;
SIGNAL \CEL06|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|S[0]~0_combout\ : std_logic;
SIGNAL \S~3_combout\ : std_logic;
SIGNAL \S~4_combout\ : std_logic;
SIGNAL \CEL15|en~0_combout\ : std_logic;
SIGNAL \CEL15|S[0]~0_combout\ : std_logic;
SIGNAL \CEL14|en~0_combout\ : std_logic;
SIGNAL \CEL14|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL15|FOR01:0:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL15|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \CEL13|en~0_combout\ : std_logic;
SIGNAL \CEL13|S[0]~0_combout\ : std_logic;
SIGNAL \CEL12|en~0_combout\ : std_logic;
SIGNAL \CEL12|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL12|S[0]~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \CEL09|en~0_combout\ : std_logic;
SIGNAL \CEL09|S[0]~0_combout\ : std_logic;
SIGNAL \CEL08|en~0_combout\ : std_logic;
SIGNAL \CEL08|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL09|FOR01:0:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL09|FOR01:0:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \CEL04|FOR01:1:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|en~0_combout\ : std_logic;
SIGNAL \CEL04|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL05|en~0_combout\ : std_logic;
SIGNAL \CEL05|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL05|S[0]~0_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \CEL00|S[0]~0_combout\ : std_logic;
SIGNAL \CEL01|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \CEL06|FOR01:1:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL06|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL07|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \CEL08|FOR01:1:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL08|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL09|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \CEL11|en~0_combout\ : std_logic;
SIGNAL \CEL11|S[0]~0_combout\ : std_logic;
SIGNAL \CEL11|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL10|S[0]~0_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \CEL12|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL13|FOR01:1:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \CEL01|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \CEL04|FOR01:2:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL05|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \CEL07|S[0]~0_combout\ : std_logic;
SIGNAL \CEL07|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \CEL13|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \CEL09|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL08|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \CEL14|S[0]~0_combout\ : std_logic;
SIGNAL \CEL15|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL14|FOR01:2:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \CEL11|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \CEL12|FOR01:3:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL12|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL13|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \CEL08|FOR01:3:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL08|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL09|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \CEL03|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL02|FOR01:3:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL02|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \CEL07|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \CEL05|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL04|FOR01:3:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|FOR01:3:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \CEL10|en~0_combout\ : std_logic;
SIGNAL \CEL10|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL11|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \CEL15|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \CEL12|FOR01:4:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL12|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL13|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \CEL00|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL01|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \CEL03|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \CEL04|S[0]~0_combout\ : std_logic;
SIGNAL \CEL05|FOR01:4:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \CEL15|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL14|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \CEL10|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL11|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \CEL13|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL12|FOR01:5:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL12|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \CEL05|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL04|FOR01:5:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \CEL03|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL02|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \CEL01|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01:5:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \CEL14|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL15|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \CEL08|S[0]~0_combout\ : std_logic;
SIGNAL \CEL09|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL08|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \CEL12|FOR01:6:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL12|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL13|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \CEL05|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \CEL01|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \CEL07|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL06|FOR01:6:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \CEL04|FOR01:7:cont1|qsignal~feeder_combout\ : std_logic;
SIGNAL \CEL04|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL05|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \CEL01|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL00|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \CEL07|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \CEL15|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL14|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~85_combout\ : std_logic;
SIGNAL \CEL13|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~84_combout\ : std_logic;
SIGNAL \CEL09|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \CEL08|FOR01:7:cont1|qsignal~regout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \S~86_combout\ : std_logic;
SIGNAL \S~87_combout\ : std_logic;
SIGNAL \Dados~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rem_end~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_rw <= rw;
ww_clk <= clk;
ww_rem_end <= rem_end;
ww_Dados <= Dados;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCFF_X31_Y33_N11
\CEL03|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:0:cont1|qsignal~regout\);

-- Location: LCFF_X32_Y30_N9
\CEL04|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:0:cont1|qsignal~regout\);

-- Location: LCFF_X33_Y30_N31
\CEL05|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y30_N8
\S~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~2_combout\ = (\CEL05|S[0]~0_combout\ & ((\CEL05|FOR01:0:cont1|qsignal~regout\) # ((\CEL04|S[0]~0_combout\ & \CEL04|FOR01:0:cont1|qsignal~regout\)))) # (!\CEL05|S[0]~0_combout\ & (\CEL04|S[0]~0_combout\ & (\CEL04|FOR01:0:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL05|S[0]~0_combout\,
	datab => \CEL04|S[0]~0_combout\,
	datac => \CEL04|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL05|FOR01:0:cont1|qsignal~regout\,
	combout => \S~2_combout\);

-- Location: LCFF_X29_Y30_N11
\CEL10|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:0:cont1|qsignal~regout\);

-- Location: LCFF_X29_Y30_N7
\CEL11|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X29_Y30_N10
\S~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~6_combout\ = (\CEL11|FOR01:0:cont1|qsignal~regout\ & ((\CEL11|S[0]~0_combout\) # ((\CEL10|FOR01:0:cont1|qsignal~regout\ & \CEL10|S[0]~0_combout\)))) # (!\CEL11|FOR01:0:cont1|qsignal~regout\ & (((\CEL10|FOR01:0:cont1|qsignal~regout\ & 
-- \CEL10|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL11|FOR01:0:cont1|qsignal~regout\,
	datab => \CEL11|S[0]~0_combout\,
	datac => \CEL10|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL10|S[0]~0_combout\,
	combout => \S~6_combout\);

-- Location: LCFF_X33_Y29_N1
\CEL13|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:0:cont1|qsignal~regout\);

-- Location: LCFF_X32_Y34_N7
\CEL03|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X32_Y34_N3
\CEL02|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y34_N6
\S~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~12_combout\ = (\CEL02|S[0]~0_combout\ & ((\CEL02|FOR01:1:cont1|qsignal~regout\) # ((\CEL03|S[0]~0_combout\ & \CEL03|FOR01:1:cont1|qsignal~regout\)))) # (!\CEL02|S[0]~0_combout\ & (\CEL03|S[0]~0_combout\ & (\CEL03|FOR01:1:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL02|S[0]~0_combout\,
	datab => \CEL03|S[0]~0_combout\,
	datac => \CEL03|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL02|FOR01:1:cont1|qsignal~regout\,
	combout => \S~12_combout\);

-- Location: LCFF_X30_Y28_N7
\CEL10|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X28_Y33_N11
\CEL15|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X28_Y33_N19
\CEL14|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~combout\,
	datain => \CEL14|FOR01:1:cont1|qsignal~feeder_combout\,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X28_Y33_N10
\S~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~19_combout\ = (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:1:cont1|qsignal~regout\) # ((\CEL15|FOR01:1:cont1|qsignal~regout\ & \CEL15|S[0]~0_combout\)))) # (!\CEL14|S[0]~0_combout\ & (((\CEL15|FOR01:1:cont1|qsignal~regout\ & \CEL15|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL14|S[0]~0_combout\,
	datab => \CEL14|FOR01:1:cont1|qsignal~regout\,
	datac => \CEL15|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL15|S[0]~0_combout\,
	combout => \S~19_combout\);

-- Location: LCFF_X29_Y33_N15
\CEL03|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X29_Y33_N1
\CEL02|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X29_Y33_N14
\S~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~23_combout\ = (\CEL02|S[0]~0_combout\ & ((\CEL02|FOR01:2:cont1|qsignal~regout\) # ((\CEL03|FOR01:2:cont1|qsignal~regout\ & \CEL03|S[0]~0_combout\)))) # (!\CEL02|S[0]~0_combout\ & (((\CEL03|FOR01:2:cont1|qsignal~regout\ & \CEL03|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL02|S[0]~0_combout\,
	datab => \CEL02|FOR01:2:cont1|qsignal~regout\,
	datac => \CEL03|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL03|S[0]~0_combout\,
	combout => \S~23_combout\);

-- Location: LCFF_X34_Y30_N15
\CEL11|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y30_N1
\CEL10|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y30_N14
\S~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~28_combout\ = (\CEL10|S[0]~0_combout\ & ((\CEL10|FOR01:2:cont1|qsignal~regout\) # ((\CEL11|FOR01:2:cont1|qsignal~regout\ & \CEL11|S[0]~0_combout\)))) # (!\CEL10|S[0]~0_combout\ & (((\CEL11|FOR01:2:cont1|qsignal~regout\ & \CEL11|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|S[0]~0_combout\,
	datab => \CEL10|FOR01:2:cont1|qsignal~regout\,
	datac => \CEL11|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL11|S[0]~0_combout\,
	combout => \S~28_combout\);

-- Location: LCFF_X35_Y30_N11
\CEL12|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y32_N13
\CEL01|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:3:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y32_N11
\CEL00|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~137\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X30_Y32_N12
\S~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~33_combout\ = (\CEL00|FOR01:3:cont1|qsignal~regout\ & ((\CEL00|S[0]~0_combout\) # ((\CEL01|S[0]~0_combout\ & \CEL01|FOR01:3:cont1|qsignal~regout\)))) # (!\CEL00|FOR01:3:cont1|qsignal~regout\ & (\CEL01|S[0]~0_combout\ & 
-- (\CEL01|FOR01:3:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL00|FOR01:3:cont1|qsignal~regout\,
	datab => \CEL01|S[0]~0_combout\,
	datac => \CEL01|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL00|S[0]~0_combout\,
	combout => \S~33_combout\);

-- Location: LCFF_X34_Y32_N7
\CEL10|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:3:cont1|qsignal~regout\);

-- Location: LCFF_X29_Y32_N17
\CEL15|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:3:cont1|qsignal~regout\);

-- Location: LCFF_X29_Y32_N1
\CEL14|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X29_Y32_N16
\S~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~41_combout\ = (\CEL15|S[0]~0_combout\ & ((\CEL15|FOR01:3:cont1|qsignal~regout\) # ((\CEL14|S[0]~0_combout\ & \CEL14|FOR01:3:cont1|qsignal~regout\)))) # (!\CEL15|S[0]~0_combout\ & (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:3:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL15|S[0]~0_combout\,
	datab => \CEL14|S[0]~0_combout\,
	datac => \CEL15|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL14|FOR01:3:cont1|qsignal~regout\,
	combout => \S~41_combout\);

-- Location: LCFF_X29_Y35_N11
\CEL02|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~10\,
	datain => \CEL02|FOR01:4:cont1|qsignal~feeder_combout\,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y30_N7
\CEL04|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~10\,
	datain => \CEL04|FOR01:4:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y32_N17
\CEL07|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y32_N1
\CEL06|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y32_N16
\S~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~47_combout\ = (\CEL07|S[0]~0_combout\ & ((\CEL07|FOR01:4:cont1|qsignal~regout\) # ((\CEL06|FOR01:4:cont1|qsignal~regout\ & \CEL06|S[0]~0_combout\)))) # (!\CEL07|S[0]~0_combout\ & (\CEL06|FOR01:4:cont1|qsignal~regout\ & ((\CEL06|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL07|S[0]~0_combout\,
	datab => \CEL06|FOR01:4:cont1|qsignal~regout\,
	datac => \CEL07|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL06|S[0]~0_combout\,
	combout => \S~47_combout\);

-- Location: LCFF_X29_Y34_N11
\CEL09|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X29_Y34_N7
\CEL08|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~10\,
	datain => \CEL08|FOR01:4:cont1|qsignal~feeder_combout\,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X29_Y34_N10
\S~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~49_combout\ = (\CEL08|FOR01:4:cont1|qsignal~regout\ & ((\CEL08|S[0]~0_combout\) # ((\CEL09|FOR01:4:cont1|qsignal~regout\ & \CEL09|S[0]~0_combout\)))) # (!\CEL08|FOR01:4:cont1|qsignal~regout\ & (((\CEL09|FOR01:4:cont1|qsignal~regout\ & 
-- \CEL09|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|FOR01:4:cont1|qsignal~regout\,
	datab => \CEL08|S[0]~0_combout\,
	datac => \CEL09|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL09|S[0]~0_combout\,
	combout => \S~49_combout\);

-- Location: LCFF_X29_Y31_N13
\CEL14|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~10\,
	datain => \CEL14|FOR01:4:cont1|qsignal~feeder_combout\,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X37_Y35_N7
\CEL07|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:5:cont1|qsignal~regout\);

-- Location: LCFF_X37_Y35_N1
\CEL06|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~11\,
	datain => \CEL06|FOR01:5:cont1|qsignal~feeder_combout\,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X37_Y35_N6
\S~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~58_combout\ = (\CEL07|S[0]~0_combout\ & ((\CEL07|FOR01:5:cont1|qsignal~regout\) # ((\CEL06|S[0]~0_combout\ & \CEL06|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL07|S[0]~0_combout\ & (\CEL06|S[0]~0_combout\ & ((\CEL06|FOR01:5:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL07|S[0]~0_combout\,
	datab => \CEL06|S[0]~0_combout\,
	datac => \CEL07|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL06|FOR01:5:cont1|qsignal~regout\,
	combout => \S~58_combout\);

-- Location: LCFF_X36_Y34_N21
\CEL09|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:5:cont1|qsignal~regout\);

-- Location: LCFF_X36_Y34_N1
\CEL08|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~11\,
	datain => \CEL08|FOR01:5:cont1|qsignal~feeder_combout\,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X36_Y34_N20
\S~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~60_combout\ = (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:5:cont1|qsignal~regout\) # ((\CEL09|S[0]~0_combout\ & \CEL09|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL08|S[0]~0_combout\ & (\CEL09|S[0]~0_combout\ & (\CEL09|FOR01:5:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|S[0]~0_combout\,
	datab => \CEL09|S[0]~0_combout\,
	datac => \CEL09|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL08|FOR01:5:cont1|qsignal~regout\,
	combout => \S~60_combout\);

-- Location: LCFF_X30_Y34_N15
\CEL03|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y34_N7
\CEL02|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X30_Y34_N14
\S~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~67_combout\ = (\CEL03|S[0]~0_combout\ & ((\CEL03|FOR01:6:cont1|qsignal~regout\) # ((\CEL02|S[0]~0_combout\ & \CEL02|FOR01:6:cont1|qsignal~regout\)))) # (!\CEL03|S[0]~0_combout\ & (\CEL02|S[0]~0_combout\ & ((\CEL02|FOR01:6:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL03|S[0]~0_combout\,
	datab => \CEL02|S[0]~0_combout\,
	datac => \CEL03|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL02|FOR01:6:cont1|qsignal~regout\,
	combout => \S~67_combout\);

-- Location: LCFF_X32_Y28_N7
\CEL04|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~12\,
	datain => \CEL04|FOR01:6:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y28_N1
\CEL11|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y28_N7
\CEL10|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y28_N0
\S~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~72_combout\ = (\CEL11|S[0]~0_combout\ & ((\CEL11|FOR01:6:cont1|qsignal~regout\) # ((\CEL10|S[0]~0_combout\ & \CEL10|FOR01:6:cont1|qsignal~regout\)))) # (!\CEL11|S[0]~0_combout\ & (\CEL10|S[0]~0_combout\ & ((\CEL10|FOR01:6:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL11|S[0]~0_combout\,
	datab => \CEL10|S[0]~0_combout\,
	datac => \CEL11|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL10|FOR01:6:cont1|qsignal~regout\,
	combout => \S~72_combout\);

-- Location: LCFF_X30_Y35_N23
\CEL03|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y35_N7
\CEL02|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X30_Y35_N22
\S~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~78_combout\ = (\CEL03|S[0]~0_combout\ & ((\CEL03|FOR01:7:cont1|qsignal~regout\) # ((\CEL02|S[0]~0_combout\ & \CEL02|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL03|S[0]~0_combout\ & (\CEL02|S[0]~0_combout\ & ((\CEL02|FOR01:7:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL03|S[0]~0_combout\,
	datab => \CEL02|S[0]~0_combout\,
	datac => \CEL03|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL02|FOR01:7:cont1|qsignal~regout\,
	combout => \S~78_combout\);

-- Location: LCFF_X35_Y32_N11
\CEL06|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y28_N9
\CEL11|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y28_N7
\CEL10|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y28_N8
\S~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~83_combout\ = (\CEL10|FOR01:7:cont1|qsignal~regout\ & ((\CEL10|S[0]~0_combout\) # ((\CEL11|S[0]~0_combout\ & \CEL11|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL10|FOR01:7:cont1|qsignal~regout\ & (\CEL11|S[0]~0_combout\ & 
-- (\CEL11|FOR01:7:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|FOR01:7:cont1|qsignal~regout\,
	datab => \CEL11|S[0]~0_combout\,
	datac => \CEL11|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL10|S[0]~0_combout\,
	combout => \S~83_combout\);

-- Location: LCFF_X36_Y30_N7
\CEL12|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y32_N24
\CEL00|FOR01~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~135\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~135\);

-- Location: LCCOMB_X32_Y32_N16
\CEL01|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~7\);

-- Location: LCCOMB_X30_Y33_N14
\CEL02|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~7\);

-- Location: LCCOMB_X30_Y33_N30
\CEL03|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~7\);

-- Location: LCCOMB_X32_Y30_N6
\CEL04|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~7\);

-- Location: LCCOMB_X33_Y30_N6
\CEL05|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~7\);

-- Location: LCCOMB_X33_Y35_N8
\CEL06|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~7\);

-- Location: LCCOMB_X33_Y35_N12
\CEL07|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~7\);

-- Location: LCCOMB_X33_Y34_N2
\CEL08|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~7\);

-- Location: LCCOMB_X34_Y34_N30
\CEL09|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~7\);

-- Location: LCCOMB_X29_Y30_N8
\CEL10|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~7\);

-- Location: LCCOMB_X29_Y30_N0
\CEL11|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~7\);

-- Location: LCCOMB_X33_Y29_N8
\CEL12|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~7\);

-- Location: LCCOMB_X33_Y29_N6
\CEL13|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~7\);

-- Location: LCCOMB_X28_Y32_N20
\CEL14|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~7\);

-- Location: LCCOMB_X28_Y32_N6
\CEL15|FOR01~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~7\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~7\);

-- Location: LCCOMB_X32_Y31_N6
\CEL00|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~combout\);

-- Location: LCCOMB_X32_Y31_N12
\CEL01|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~combout\);

-- Location: LCCOMB_X32_Y34_N0
\CEL02|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~combout\);

-- Location: LCCOMB_X32_Y34_N8
\CEL03|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~combout\);

-- Location: LCCOMB_X32_Y30_N4
\CEL04|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~combout\);

-- Location: LCCOMB_X33_Y30_N0
\CEL05|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~combout\);

-- Location: LCCOMB_X33_Y31_N6
\CEL06|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~combout\);

-- Location: LCCOMB_X33_Y31_N8
\CEL07|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~combout\);

-- Location: LCCOMB_X28_Y35_N6
\CEL08|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~combout\);

-- Location: LCCOMB_X28_Y35_N8
\CEL09|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~combout\);

-- Location: LCCOMB_X30_Y28_N12
\CEL10|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~combout\);

-- Location: LCCOMB_X30_Y28_N8
\CEL11|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~combout\);

-- Location: LCCOMB_X32_Y29_N6
\CEL12|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~combout\);

-- Location: LCCOMB_X32_Y29_N8
\CEL13|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~combout\);

-- Location: LCCOMB_X28_Y33_N8
\CEL14|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~combout\);

-- Location: LCCOMB_X28_Y33_N0
\CEL15|FOR01\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~combout\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~combout\);

-- Location: LCCOMB_X30_Y33_N24
\CEL00|FOR01~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~136\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~136\);

-- Location: LCCOMB_X30_Y33_N8
\CEL01|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~8\);

-- Location: LCCOMB_X29_Y33_N6
\CEL02|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~8\);

-- Location: LCCOMB_X28_Y33_N14
\CEL03|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~8\);

-- Location: LCCOMB_X31_Y29_N6
\CEL04|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~8\);

-- Location: LCCOMB_X31_Y29_N8
\CEL05|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~8\);

-- Location: LCCOMB_X31_Y35_N6
\CEL06|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~8\);

-- Location: LCCOMB_X31_Y35_N8
\CEL07|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~8\);

-- Location: LCCOMB_X34_Y35_N8
\CEL08|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~8\);

-- Location: LCCOMB_X34_Y35_N6
\CEL09|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~8\);

-- Location: LCCOMB_X34_Y30_N6
\CEL10|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~8\);

-- Location: LCCOMB_X34_Y30_N8
\CEL11|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~8\);

-- Location: LCCOMB_X35_Y30_N6
\CEL12|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~8\);

-- Location: LCCOMB_X35_Y30_N8
\CEL13|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~8\);

-- Location: LCCOMB_X36_Y31_N6
\CEL14|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~8\);

-- Location: LCCOMB_X36_Y31_N8
\CEL15|FOR01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~8\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~8\);

-- Location: LCCOMB_X30_Y32_N0
\CEL00|FOR01~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~137\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~137\);

-- Location: LCCOMB_X30_Y32_N6
\CEL01|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~9\);

-- Location: LCCOMB_X32_Y35_N4
\CEL02|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~9\);

-- Location: LCCOMB_X32_Y35_N8
\CEL03|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~9\);

-- Location: LCCOMB_X33_Y32_N6
\CEL04|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~9\);

-- Location: LCCOMB_X33_Y32_N8
\CEL05|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~9\);

-- Location: LCCOMB_X37_Y32_N6
\CEL06|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~9\);

-- Location: LCCOMB_X37_Y32_N8
\CEL07|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~9\);

-- Location: LCCOMB_X33_Y34_N20
\CEL08|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~9\);

-- Location: LCCOMB_X34_Y34_N2
\CEL09|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~9\);

-- Location: LCCOMB_X34_Y32_N18
\CEL10|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~9\);

-- Location: LCCOMB_X34_Y32_N2
\CEL11|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~9\);

-- Location: LCCOMB_X37_Y33_N20
\CEL12|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~9\);

-- Location: LCCOMB_X37_Y33_N8
\CEL13|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~9\);

-- Location: LCCOMB_X29_Y32_N6
\CEL14|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~9\);

-- Location: LCCOMB_X29_Y32_N20
\CEL15|FOR01~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~9\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~9\);

-- Location: LCCOMB_X30_Y33_N2
\CEL00|FOR01~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~138\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~138\);

-- Location: LCCOMB_X30_Y33_N28
\CEL01|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~10\);

-- Location: LCCOMB_X29_Y35_N6
\CEL02|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~10\);

-- Location: LCCOMB_X29_Y35_N8
\CEL03|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~10\);

-- Location: LCCOMB_X31_Y30_N8
\CEL04|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~10\);

-- Location: LCCOMB_X31_Y30_N0
\CEL05|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~10\);

-- Location: LCCOMB_X31_Y32_N8
\CEL06|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~10\);

-- Location: LCCOMB_X31_Y32_N6
\CEL07|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~10\);

-- Location: LCCOMB_X29_Y34_N8
\CEL08|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~10\);

-- Location: LCCOMB_X29_Y34_N0
\CEL09|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~10\);

-- Location: LCCOMB_X30_Y30_N8
\CEL10|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~10\);

-- Location: LCCOMB_X30_Y30_N6
\CEL11|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~10\);

-- Location: LCCOMB_X31_Y31_N8
\CEL12|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~10\);

-- Location: LCCOMB_X31_Y31_N6
\CEL13|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~10\);

-- Location: LCCOMB_X29_Y31_N0
\CEL14|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~10\);

-- Location: LCCOMB_X29_Y31_N6
\CEL15|FOR01~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~10\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~10\);

-- Location: LCCOMB_X35_Y33_N8
\CEL00|FOR01~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~139\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~139\);

-- Location: LCCOMB_X35_Y33_N2
\CEL01|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~11\);

-- Location: LCCOMB_X32_Y33_N8
\CEL02|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~11\);

-- Location: LCCOMB_X32_Y33_N6
\CEL03|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~11\);

-- Location: LCCOMB_X33_Y33_N6
\CEL04|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~11\);

-- Location: LCCOMB_X33_Y33_N8
\CEL05|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~11\);

-- Location: LCCOMB_X37_Y35_N12
\CEL06|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~11\);

-- Location: LCCOMB_X37_Y35_N8
\CEL07|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~11\);

-- Location: LCCOMB_X36_Y34_N6
\CEL08|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~11\);

-- Location: LCCOMB_X36_Y34_N8
\CEL09|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~11\);

-- Location: LCCOMB_X34_Y29_N6
\CEL10|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~11\);

-- Location: LCCOMB_X34_Y29_N8
\CEL11|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~11\);

-- Location: LCCOMB_X37_Y34_N6
\CEL12|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~11\);

-- Location: LCCOMB_X37_Y34_N8
\CEL13|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~11\);

-- Location: LCCOMB_X36_Y33_N6
\CEL14|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~11\);

-- Location: LCCOMB_X36_Y33_N8
\CEL15|FOR01~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~11\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~11\);

-- Location: LCCOMB_X35_Y31_N6
\CEL00|FOR01~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~140\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~140\);

-- Location: LCCOMB_X35_Y31_N8
\CEL01|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~12\);

-- Location: LCCOMB_X30_Y34_N0
\CEL02|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~12\);

-- Location: LCCOMB_X30_Y34_N8
\CEL03|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~12\);

-- Location: LCCOMB_X32_Y28_N12
\CEL04|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~12\);

-- Location: LCCOMB_X32_Y28_N8
\CEL05|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~12\);

-- Location: LCCOMB_X35_Y34_N6
\CEL06|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~12\);

-- Location: LCCOMB_X35_Y34_N8
\CEL07|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~12\);

-- Location: LCCOMB_X35_Y35_N6
\CEL08|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~12\);

-- Location: LCCOMB_X35_Y35_N8
\CEL09|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~12\);

-- Location: LCCOMB_X31_Y28_N12
\CEL10|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~12\);

-- Location: LCCOMB_X31_Y28_N8
\CEL11|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~12\);

-- Location: LCCOMB_X31_Y34_N2
\CEL12|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~12\);

-- Location: LCCOMB_X31_Y34_N8
\CEL13|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~12\);

-- Location: LCCOMB_X34_Y33_N6
\CEL14|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~12\);

-- Location: LCCOMB_X33_Y33_N14
\CEL15|FOR01~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~12\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~12\);

-- Location: LCCOMB_X34_Y31_N6
\CEL00|FOR01~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|FOR01~141\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL00|FOR01~141\);

-- Location: LCCOMB_X34_Y31_N8
\CEL01|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL01|FOR01~13\);

-- Location: LCCOMB_X30_Y35_N8
\CEL02|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL02|FOR01~13\);

-- Location: LCCOMB_X30_Y35_N0
\CEL03|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL03|FOR01~13\);

-- Location: LCCOMB_X33_Y28_N8
\CEL04|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL04|FOR01~13\);

-- Location: LCCOMB_X33_Y28_N6
\CEL05|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL05|FOR01~13\);

-- Location: LCCOMB_X35_Y32_N8
\CEL06|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL06|FOR01~13\);

-- Location: LCCOMB_X35_Y32_N2
\CEL07|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL07|FOR01~13\);

-- Location: LCCOMB_X36_Y35_N6
\CEL08|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL08|FOR01~13\);

-- Location: LCCOMB_X36_Y35_N8
\CEL09|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL09|FOR01~13\);

-- Location: LCCOMB_X34_Y28_N0
\CEL10|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL10|FOR01~13\);

-- Location: LCCOMB_X34_Y28_N20
\CEL11|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL11|FOR01~13\);

-- Location: LCCOMB_X36_Y30_N0
\CEL12|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL12|FOR01~13\);

-- Location: LCCOMB_X36_Y30_N8
\CEL13|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL13|FOR01~13\);

-- Location: LCCOMB_X36_Y32_N8
\CEL14|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL14|FOR01~13\);

-- Location: LCCOMB_X36_Y32_N2
\CEL15|FOR01~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01~13\ = LCELL((!\clk~combout\) # (!\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \clk~combout\,
	combout => \CEL15|FOR01~13\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[2]~I\ : cycloneii_io
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
	padio => ww_rem_end(2),
	combout => \rem_end~combout\(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X28_Y33_N18
\CEL14|FOR01:1:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01:1:cont1|qsignal~feeder_combout\ = \Dados~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(1),
	combout => \CEL14|FOR01:1:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X29_Y35_N10
\CEL02|FOR01:4:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01:4:cont1|qsignal~feeder_combout\ = \Dados~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(4),
	combout => \CEL02|FOR01:4:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X29_Y34_N6
\CEL08|FOR01:4:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01:4:cont1|qsignal~feeder_combout\ = \Dados~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(4),
	combout => \CEL08|FOR01:4:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X29_Y31_N12
\CEL14|FOR01:4:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|FOR01:4:cont1|qsignal~feeder_combout\ = \Dados~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(4),
	combout => \CEL14|FOR01:4:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X31_Y30_N6
\CEL04|FOR01:4:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:4:cont1|qsignal~feeder_combout\ = \Dados~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(4),
	combout => \CEL04|FOR01:4:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X37_Y35_N0
\CEL06|FOR01:5:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01:5:cont1|qsignal~feeder_combout\ = \Dados~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(5),
	combout => \CEL06|FOR01:5:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X36_Y34_N0
\CEL08|FOR01:5:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01:5:cont1|qsignal~feeder_combout\ = \Dados~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(5),
	combout => \CEL08|FOR01:5:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X32_Y28_N6
\CEL04|FOR01:6:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:6:cont1|qsignal~feeder_combout\ = \Dados~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(6),
	combout => \CEL04|FOR01:6:cont1|qsignal~feeder_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[1]~I\ : cycloneii_io
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
	padio => ww_rem_end(1),
	combout => \rem_end~combout\(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[0]~I\ : cycloneii_io
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
	padio => ww_rem_end(0),
	combout => \rem_end~combout\(0));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[3]~I\ : cycloneii_io
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
	padio => ww_rem_end(3),
	combout => \rem_end~combout\(3));

-- Location: LCCOMB_X31_Y33_N6
\CEL02|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|en~0_combout\ = (!\rem_end~combout\(2) & (\rem_end~combout\(1) & (!\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL02|en~0_combout\);

-- Location: LCCOMB_X29_Y35_N18
\CEL02|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|S[0]~0_combout\ = (!\rw~combout\ & \CEL02|en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datad => \CEL02|en~0_combout\,
	combout => \CEL02|S[0]~0_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[0]~I\ : cycloneii_io
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
	padio => ww_Dados(0),
	combout => \Dados~combout\(0));

-- Location: LCFF_X31_Y33_N25
\CEL02|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y33_N20
\CEL03|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|en~0_combout\ = (!\rem_end~combout\(2) & (\rem_end~combout\(1) & (\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL03|en~0_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rw~I\ : cycloneii_io
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
	padio => ww_rw,
	combout => \rw~combout\);

-- Location: LCCOMB_X29_Y35_N0
\CEL03|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL03|S[0]~0_combout\ = (\CEL03|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL03|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL03|S[0]~0_combout\);

-- Location: LCCOMB_X31_Y33_N24
\S~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~1_combout\ = (\CEL03|FOR01:0:cont1|qsignal~regout\ & ((\CEL03|S[0]~0_combout\) # ((\CEL02|S[0]~0_combout\ & \CEL02|FOR01:0:cont1|qsignal~regout\)))) # (!\CEL03|FOR01:0:cont1|qsignal~regout\ & (\CEL02|S[0]~0_combout\ & 
-- (\CEL02|FOR01:0:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL03|FOR01:0:cont1|qsignal~regout\,
	datab => \CEL02|S[0]~0_combout\,
	datac => \CEL02|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL03|S[0]~0_combout\,
	combout => \S~1_combout\);

-- Location: LCCOMB_X32_Y32_N28
\CEL01|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|en~0_combout\ = (!\rem_end~combout\(2) & (!\rem_end~combout\(1) & (\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL01|en~0_combout\);

-- Location: LCFF_X32_Y32_N3
\CEL01|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y32_N10
\CEL00|en\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|en~combout\ = (!\rem_end~combout\(2) & (!\rem_end~combout\(1) & (!\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL00|en~combout\);

-- Location: LCFF_X32_Y32_N9
\CEL00|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~135\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y32_N0
\CEL01|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL01|S[0]~0_combout\ = (\CEL01|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL01|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL01|S[0]~0_combout\);

-- Location: LCCOMB_X32_Y32_N8
\S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = (\CEL00|S[0]~0_combout\ & ((\CEL00|FOR01:0:cont1|qsignal~regout\) # ((\CEL01|FOR01:0:cont1|qsignal~regout\ & \CEL01|S[0]~0_combout\)))) # (!\CEL00|S[0]~0_combout\ & (\CEL01|FOR01:0:cont1|qsignal~regout\ & ((\CEL01|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL00|S[0]~0_combout\,
	datab => \CEL01|FOR01:0:cont1|qsignal~regout\,
	datac => \CEL00|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL01|S[0]~0_combout\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X31_Y33_N12
\CEL07|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|en~0_combout\ = (\rem_end~combout\(2) & (\rem_end~combout\(1) & (\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL07|en~0_combout\);

-- Location: LCFF_X33_Y35_N1
\CEL07|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y33_N22
\CEL06|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|en~0_combout\ = (\rem_end~combout\(2) & (\rem_end~combout\(1) & (!\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL06|en~0_combout\);

-- Location: LCFF_X33_Y35_N7
\CEL06|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y32_N28
\CEL06|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|S[0]~0_combout\ = (!\rw~combout\ & \CEL06|en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datac => \CEL06|en~0_combout\,
	combout => \CEL06|S[0]~0_combout\);

-- Location: LCCOMB_X33_Y35_N6
\S~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~3_combout\ = (\CEL07|S[0]~0_combout\ & ((\CEL07|FOR01:0:cont1|qsignal~regout\) # ((\CEL06|FOR01:0:cont1|qsignal~regout\ & \CEL06|S[0]~0_combout\)))) # (!\CEL07|S[0]~0_combout\ & (((\CEL06|FOR01:0:cont1|qsignal~regout\ & \CEL06|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL07|S[0]~0_combout\,
	datab => \CEL07|FOR01:0:cont1|qsignal~regout\,
	datac => \CEL06|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL06|S[0]~0_combout\,
	combout => \S~3_combout\);

-- Location: LCCOMB_X32_Y32_N6
\S~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~4_combout\ = (\S~2_combout\) # ((\S~1_combout\) # ((\S~0_combout\) # (\S~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~2_combout\,
	datab => \S~1_combout\,
	datac => \S~0_combout\,
	datad => \S~3_combout\,
	combout => \S~4_combout\);

-- Location: LCCOMB_X31_Y33_N4
\CEL15|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|en~0_combout\ = (\rem_end~combout\(2) & (\rem_end~combout\(1) & (\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL15|en~0_combout\);

-- Location: LCCOMB_X29_Y31_N2
\CEL15|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|S[0]~0_combout\ = (!\rw~combout\ & \CEL15|en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datac => \CEL15|en~0_combout\,
	combout => \CEL15|S[0]~0_combout\);

-- Location: LCCOMB_X31_Y33_N14
\CEL14|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|en~0_combout\ = (\rem_end~combout\(2) & (\rem_end~combout\(1) & (!\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL14|en~0_combout\);

-- Location: LCFF_X28_Y32_N25
\CEL14|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X28_Y32_N10
\CEL15|FOR01:0:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL15|FOR01:0:cont1|qsignal~feeder_combout\ = \Dados~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(0),
	combout => \CEL15|FOR01:0:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X28_Y32_N11
\CEL15|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~7\,
	datain => \CEL15|FOR01:0:cont1|qsignal~feeder_combout\,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X28_Y32_N24
\S~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~8_combout\ = (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:0:cont1|qsignal~regout\) # ((\CEL15|S[0]~0_combout\ & \CEL15|FOR01:0:cont1|qsignal~regout\)))) # (!\CEL14|S[0]~0_combout\ & (\CEL15|S[0]~0_combout\ & ((\CEL15|FOR01:0:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL14|S[0]~0_combout\,
	datab => \CEL15|S[0]~0_combout\,
	datac => \CEL14|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL15|FOR01:0:cont1|qsignal~regout\,
	combout => \S~8_combout\);

-- Location: LCCOMB_X31_Y33_N8
\CEL13|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|en~0_combout\ = (\rem_end~combout\(2) & (!\rem_end~combout\(1) & (\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL13|en~0_combout\);

-- Location: LCCOMB_X37_Y33_N24
\CEL13|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL13|S[0]~0_combout\ = (\CEL13|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL13|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL13|S[0]~0_combout\);

-- Location: LCCOMB_X31_Y33_N26
\CEL12|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|en~0_combout\ = (\rem_end~combout\(2) & (!\rem_end~combout\(1) & (!\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL12|en~0_combout\);

-- Location: LCFF_X33_Y29_N5
\CEL12|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X37_Y33_N26
\CEL12|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|S[0]~0_combout\ = (\CEL12|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CEL12|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL12|S[0]~0_combout\);

-- Location: LCCOMB_X33_Y29_N4
\S~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~7_combout\ = (\CEL13|FOR01:0:cont1|qsignal~regout\ & ((\CEL13|S[0]~0_combout\) # ((\CEL12|FOR01:0:cont1|qsignal~regout\ & \CEL12|S[0]~0_combout\)))) # (!\CEL13|FOR01:0:cont1|qsignal~regout\ & (((\CEL12|FOR01:0:cont1|qsignal~regout\ & 
-- \CEL12|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL13|FOR01:0:cont1|qsignal~regout\,
	datab => \CEL13|S[0]~0_combout\,
	datac => \CEL12|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL12|S[0]~0_combout\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X31_Y33_N0
\CEL09|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|en~0_combout\ = (!\rem_end~combout\(2) & (!\rem_end~combout\(1) & (\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL09|en~0_combout\);

-- Location: LCCOMB_X34_Y34_N0
\CEL09|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|S[0]~0_combout\ = (\CEL09|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL09|en~0_combout\,
	datac => \rw~combout\,
	combout => \CEL09|S[0]~0_combout\);

-- Location: LCCOMB_X31_Y33_N2
\CEL08|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|en~0_combout\ = (!\rem_end~combout\(2) & (!\rem_end~combout\(1) & (!\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL08|en~0_combout\);

-- Location: LCFF_X33_Y34_N9
\CEL08|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~7\,
	sdata => \Dados~combout\(0),
	sload => VCC,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y34_N6
\CEL09|FOR01:0:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL09|FOR01:0:cont1|qsignal~feeder_combout\ = \Dados~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(0),
	combout => \CEL09|FOR01:0:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X34_Y34_N7
\CEL09|FOR01:0:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~7\,
	datain => \CEL09|FOR01:0:cont1|qsignal~feeder_combout\,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:0:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y34_N8
\S~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~5_combout\ = (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:0:cont1|qsignal~regout\) # ((\CEL09|S[0]~0_combout\ & \CEL09|FOR01:0:cont1|qsignal~regout\)))) # (!\CEL08|S[0]~0_combout\ & (\CEL09|S[0]~0_combout\ & ((\CEL09|FOR01:0:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|S[0]~0_combout\,
	datab => \CEL09|S[0]~0_combout\,
	datac => \CEL08|FOR01:0:cont1|qsignal~regout\,
	datad => \CEL09|FOR01:0:cont1|qsignal~regout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X32_Y32_N12
\S~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~9_combout\ = (\S~6_combout\) # ((\S~8_combout\) # ((\S~7_combout\) # (\S~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~6_combout\,
	datab => \S~8_combout\,
	datac => \S~7_combout\,
	datad => \S~5_combout\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X32_Y32_N26
\S~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~10_combout\ = (\S~4_combout\) # (\S~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~4_combout\,
	datad => \S~9_combout\,
	combout => \S~10_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[1]~I\ : cycloneii_io
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
	padio => ww_Dados(1),
	combout => \Dados~combout\(1));

-- Location: LCCOMB_X32_Y30_N18
\CEL04|FOR01:1:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:1:cont1|qsignal~feeder_combout\ = \Dados~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(1),
	combout => \CEL04|FOR01:1:cont1|qsignal~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N18
\CEL04|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|en~0_combout\ = (\rem_end~combout\(2) & (!\rem_end~combout\(1) & (!\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL04|en~0_combout\);

-- Location: LCFF_X32_Y30_N19
\CEL04|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~combout\,
	datain => \CEL04|FOR01:1:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y33_N16
\CEL05|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|en~0_combout\ = (\rem_end~combout\(2) & (!\rem_end~combout\(1) & (\rem_end~combout\(0) & !\rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL05|en~0_combout\);

-- Location: LCFF_X33_Y30_N25
\CEL05|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y30_N10
\CEL05|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL05|S[0]~0_combout\ = (\CEL05|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL05|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL05|S[0]~0_combout\);

-- Location: LCCOMB_X33_Y30_N24
\S~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~13_combout\ = (\CEL04|S[0]~0_combout\ & ((\CEL04|FOR01:1:cont1|qsignal~regout\) # ((\CEL05|FOR01:1:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\)))) # (!\CEL04|S[0]~0_combout\ & (((\CEL05|FOR01:1:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|S[0]~0_combout\,
	datab => \CEL04|FOR01:1:cont1|qsignal~regout\,
	datac => \CEL05|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL05|S[0]~0_combout\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X32_Y32_N22
\CEL00|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL00|S[0]~0_combout\ = (\CEL00|en~combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL00|en~combout\,
	datad => \rw~combout\,
	combout => \CEL00|S[0]~0_combout\);

-- Location: LCFF_X32_Y31_N9
\CEL01|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X32_Y31_N1
\CEL00|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y31_N8
\S~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~11_combout\ = (\CEL01|S[0]~0_combout\ & ((\CEL01|FOR01:1:cont1|qsignal~regout\) # ((\CEL00|S[0]~0_combout\ & \CEL00|FOR01:1:cont1|qsignal~regout\)))) # (!\CEL01|S[0]~0_combout\ & (\CEL00|S[0]~0_combout\ & ((\CEL00|FOR01:1:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL01|S[0]~0_combout\,
	datab => \CEL00|S[0]~0_combout\,
	datac => \CEL01|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL00|FOR01:1:cont1|qsignal~regout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X33_Y31_N0
\CEL06|FOR01:1:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL06|FOR01:1:cont1|qsignal~feeder_combout\ = \Dados~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(1),
	combout => \CEL06|FOR01:1:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X33_Y31_N1
\CEL06|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~combout\,
	datain => \CEL06|FOR01:1:cont1|qsignal~feeder_combout\,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X33_Y31_N23
\CEL07|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y31_N22
\S~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~14_combout\ = (\CEL07|S[0]~0_combout\ & ((\CEL07|FOR01:1:cont1|qsignal~regout\) # ((\CEL06|FOR01:1:cont1|qsignal~regout\ & \CEL06|S[0]~0_combout\)))) # (!\CEL07|S[0]~0_combout\ & (\CEL06|FOR01:1:cont1|qsignal~regout\ & ((\CEL06|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL07|S[0]~0_combout\,
	datab => \CEL06|FOR01:1:cont1|qsignal~regout\,
	datac => \CEL07|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL06|S[0]~0_combout\,
	combout => \S~14_combout\);

-- Location: LCCOMB_X32_Y34_N16
\S~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~15_combout\ = (\S~12_combout\) # ((\S~13_combout\) # ((\S~11_combout\) # (\S~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~12_combout\,
	datab => \S~13_combout\,
	datac => \S~11_combout\,
	datad => \S~14_combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X28_Y35_N0
\CEL08|FOR01:1:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01:1:cont1|qsignal~feeder_combout\ = \Dados~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(1),
	combout => \CEL08|FOR01:1:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X28_Y35_N1
\CEL08|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~combout\,
	datain => \CEL08|FOR01:1:cont1|qsignal~feeder_combout\,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X28_Y35_N17
\CEL09|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X28_Y35_N16
\S~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~16_combout\ = (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:1:cont1|qsignal~regout\) # ((\CEL09|FOR01:1:cont1|qsignal~regout\ & \CEL09|S[0]~0_combout\)))) # (!\CEL08|S[0]~0_combout\ & (((\CEL09|FOR01:1:cont1|qsignal~regout\ & \CEL09|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|S[0]~0_combout\,
	datab => \CEL08|FOR01:1:cont1|qsignal~regout\,
	datac => \CEL09|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL09|S[0]~0_combout\,
	combout => \S~16_combout\);

-- Location: LCCOMB_X31_Y33_N28
\CEL11|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|en~0_combout\ = (!\rem_end~combout\(2) & (\rem_end~combout\(1) & (\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL11|en~0_combout\);

-- Location: LCCOMB_X34_Y28_N22
\CEL11|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL11|S[0]~0_combout\ = (!\rw~combout\ & \CEL11|en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rw~combout\,
	datac => \CEL11|en~0_combout\,
	combout => \CEL11|S[0]~0_combout\);

-- Location: LCFF_X30_Y28_N1
\CEL11|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y32_N28
\CEL10|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|S[0]~0_combout\ = (\CEL10|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL10|S[0]~0_combout\);

-- Location: LCCOMB_X30_Y28_N0
\S~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~17_combout\ = (\CEL10|FOR01:1:cont1|qsignal~regout\ & ((\CEL10|S[0]~0_combout\) # ((\CEL11|S[0]~0_combout\ & \CEL11|FOR01:1:cont1|qsignal~regout\)))) # (!\CEL10|FOR01:1:cont1|qsignal~regout\ & (\CEL11|S[0]~0_combout\ & 
-- (\CEL11|FOR01:1:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|FOR01:1:cont1|qsignal~regout\,
	datab => \CEL11|S[0]~0_combout\,
	datac => \CEL11|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL10|S[0]~0_combout\,
	combout => \S~17_combout\);

-- Location: LCFF_X32_Y29_N1
\CEL12|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:1:cont1|qsignal~regout\);

-- Location: LCFF_X32_Y29_N21
\CEL13|FOR01:1:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~combout\,
	sdata => \Dados~combout\(1),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:1:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y29_N20
\S~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~18_combout\ = (\CEL13|S[0]~0_combout\ & ((\CEL13|FOR01:1:cont1|qsignal~regout\) # ((\CEL12|FOR01:1:cont1|qsignal~regout\ & \CEL12|S[0]~0_combout\)))) # (!\CEL13|S[0]~0_combout\ & (\CEL12|FOR01:1:cont1|qsignal~regout\ & ((\CEL12|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL13|S[0]~0_combout\,
	datab => \CEL12|FOR01:1:cont1|qsignal~regout\,
	datac => \CEL13|FOR01:1:cont1|qsignal~regout\,
	datad => \CEL12|S[0]~0_combout\,
	combout => \S~18_combout\);

-- Location: LCCOMB_X28_Y33_N22
\S~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~20_combout\ = (\S~19_combout\) # ((\S~16_combout\) # ((\S~17_combout\) # (\S~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~19_combout\,
	datab => \S~16_combout\,
	datac => \S~17_combout\,
	datad => \S~18_combout\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X28_Y33_N12
\S~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~21_combout\ = (\S~15_combout\) # (\S~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S~15_combout\,
	datad => \S~20_combout\,
	combout => \S~21_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[2]~I\ : cycloneii_io
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
	padio => ww_Dados(2),
	combout => \Dados~combout\(2));

-- Location: LCFF_X30_Y33_N1
\CEL01|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y33_N27
\CEL00|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~136\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X30_Y33_N0
\S~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~22_combout\ = (\CEL01|S[0]~0_combout\ & ((\CEL01|FOR01:2:cont1|qsignal~regout\) # ((\CEL00|S[0]~0_combout\ & \CEL00|FOR01:2:cont1|qsignal~regout\)))) # (!\CEL01|S[0]~0_combout\ & (\CEL00|S[0]~0_combout\ & ((\CEL00|FOR01:2:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL01|S[0]~0_combout\,
	datab => \CEL00|S[0]~0_combout\,
	datac => \CEL01|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL00|FOR01:2:cont1|qsignal~regout\,
	combout => \S~22_combout\);

-- Location: LCCOMB_X31_Y29_N0
\CEL04|FOR01:2:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:2:cont1|qsignal~feeder_combout\ = \Dados~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(2),
	combout => \CEL04|FOR01:2:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X31_Y29_N1
\CEL04|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~8\,
	datain => \CEL04|FOR01:2:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y29_N13
\CEL05|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y29_N12
\S~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~24_combout\ = (\CEL04|S[0]~0_combout\ & ((\CEL04|FOR01:2:cont1|qsignal~regout\) # ((\CEL05|FOR01:2:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\)))) # (!\CEL04|S[0]~0_combout\ & (((\CEL05|FOR01:2:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|S[0]~0_combout\,
	datab => \CEL04|FOR01:2:cont1|qsignal~regout\,
	datac => \CEL05|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL05|S[0]~0_combout\,
	combout => \S~24_combout\);

-- Location: LCCOMB_X31_Y32_N20
\CEL07|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL07|S[0]~0_combout\ = (\CEL07|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL07|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL07|S[0]~0_combout\);

-- Location: LCFF_X31_Y35_N21
\CEL07|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y35_N1
\CEL06|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y35_N20
\S~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~25_combout\ = (\CEL06|S[0]~0_combout\ & ((\CEL06|FOR01:2:cont1|qsignal~regout\) # ((\CEL07|S[0]~0_combout\ & \CEL07|FOR01:2:cont1|qsignal~regout\)))) # (!\CEL06|S[0]~0_combout\ & (\CEL07|S[0]~0_combout\ & (\CEL07|FOR01:2:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL06|S[0]~0_combout\,
	datab => \CEL07|S[0]~0_combout\,
	datac => \CEL07|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL06|FOR01:2:cont1|qsignal~regout\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X30_Y33_N10
\S~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~26_combout\ = (\S~23_combout\) # ((\S~22_combout\) # ((\S~24_combout\) # (\S~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~23_combout\,
	datab => \S~22_combout\,
	datac => \S~24_combout\,
	datad => \S~25_combout\,
	combout => \S~26_combout\);

-- Location: LCFF_X35_Y30_N1
\CEL13|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y30_N0
\S~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~29_combout\ = (\CEL12|FOR01:2:cont1|qsignal~regout\ & ((\CEL12|S[0]~0_combout\) # ((\CEL13|S[0]~0_combout\ & \CEL13|FOR01:2:cont1|qsignal~regout\)))) # (!\CEL12|FOR01:2:cont1|qsignal~regout\ & (\CEL13|S[0]~0_combout\ & 
-- (\CEL13|FOR01:2:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL12|FOR01:2:cont1|qsignal~regout\,
	datab => \CEL13|S[0]~0_combout\,
	datac => \CEL13|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL12|S[0]~0_combout\,
	combout => \S~29_combout\);

-- Location: LCFF_X34_Y35_N17
\CEL09|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y35_N1
\CEL08|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y35_N16
\S~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~27_combout\ = (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:2:cont1|qsignal~regout\) # ((\CEL09|S[0]~0_combout\ & \CEL09|FOR01:2:cont1|qsignal~regout\)))) # (!\CEL08|S[0]~0_combout\ & (\CEL09|S[0]~0_combout\ & (\CEL09|FOR01:2:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|S[0]~0_combout\,
	datab => \CEL09|S[0]~0_combout\,
	datac => \CEL09|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL08|FOR01:2:cont1|qsignal~regout\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X28_Y33_N16
\CEL14|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL14|S[0]~0_combout\ = (!\rw~combout\ & \CEL14|en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rw~combout\,
	datad => \CEL14|en~0_combout\,
	combout => \CEL14|S[0]~0_combout\);

-- Location: LCFF_X36_Y31_N17
\CEL15|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:2:cont1|qsignal~regout\);

-- Location: LCFF_X36_Y31_N1
\CEL14|FOR01:2:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~8\,
	sdata => \Dados~combout\(2),
	sload => VCC,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:2:cont1|qsignal~regout\);

-- Location: LCCOMB_X36_Y31_N16
\S~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~30_combout\ = (\CEL15|S[0]~0_combout\ & ((\CEL15|FOR01:2:cont1|qsignal~regout\) # ((\CEL14|S[0]~0_combout\ & \CEL14|FOR01:2:cont1|qsignal~regout\)))) # (!\CEL15|S[0]~0_combout\ & (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:2:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL15|S[0]~0_combout\,
	datab => \CEL14|S[0]~0_combout\,
	datac => \CEL15|FOR01:2:cont1|qsignal~regout\,
	datad => \CEL14|FOR01:2:cont1|qsignal~regout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X35_Y30_N28
\S~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~31_combout\ = (\S~28_combout\) # ((\S~29_combout\) # ((\S~27_combout\) # (\S~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~28_combout\,
	datab => \S~29_combout\,
	datac => \S~27_combout\,
	datad => \S~30_combout\,
	combout => \S~31_combout\);

-- Location: LCCOMB_X30_Y33_N6
\S~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~32_combout\ = (\S~26_combout\) # (\S~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~26_combout\,
	datad => \S~31_combout\,
	combout => \S~32_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[3]~I\ : cycloneii_io
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
	padio => ww_Dados(3),
	combout => \Dados~combout\(3));

-- Location: LCFF_X34_Y32_N1
\CEL11|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y32_N0
\S~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~39_combout\ = (\CEL10|FOR01:3:cont1|qsignal~regout\ & ((\CEL10|S[0]~0_combout\) # ((\CEL11|S[0]~0_combout\ & \CEL11|FOR01:3:cont1|qsignal~regout\)))) # (!\CEL10|FOR01:3:cont1|qsignal~regout\ & (\CEL11|S[0]~0_combout\ & 
-- (\CEL11|FOR01:3:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|FOR01:3:cont1|qsignal~regout\,
	datab => \CEL11|S[0]~0_combout\,
	datac => \CEL11|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL10|S[0]~0_combout\,
	combout => \S~39_combout\);

-- Location: LCCOMB_X37_Y33_N2
\CEL12|FOR01:3:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01:3:cont1|qsignal~feeder_combout\ = \Dados~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(3),
	combout => \CEL12|FOR01:3:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X37_Y33_N3
\CEL12|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~9\,
	datain => \CEL12|FOR01:3:cont1|qsignal~feeder_combout\,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:3:cont1|qsignal~regout\);

-- Location: LCFF_X37_Y33_N17
\CEL13|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X37_Y33_N16
\S~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~40_combout\ = (\CEL13|S[0]~0_combout\ & ((\CEL13|FOR01:3:cont1|qsignal~regout\) # ((\CEL12|FOR01:3:cont1|qsignal~regout\ & \CEL12|S[0]~0_combout\)))) # (!\CEL13|S[0]~0_combout\ & (\CEL12|FOR01:3:cont1|qsignal~regout\ & ((\CEL12|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL13|S[0]~0_combout\,
	datab => \CEL12|FOR01:3:cont1|qsignal~regout\,
	datac => \CEL13|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL12|S[0]~0_combout\,
	combout => \S~40_combout\);

-- Location: LCCOMB_X33_Y34_N18
\CEL08|FOR01:3:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|FOR01:3:cont1|qsignal~feeder_combout\ = \Dados~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(3),
	combout => \CEL08|FOR01:3:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X33_Y34_N19
\CEL08|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~9\,
	datain => \CEL08|FOR01:3:cont1|qsignal~feeder_combout\,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:3:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y34_N9
\CEL09|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y34_N8
\S~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~38_combout\ = (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:3:cont1|qsignal~regout\) # ((\CEL09|FOR01:3:cont1|qsignal~regout\ & \CEL09|S[0]~0_combout\)))) # (!\CEL08|S[0]~0_combout\ & (((\CEL09|FOR01:3:cont1|qsignal~regout\ & \CEL09|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|S[0]~0_combout\,
	datab => \CEL08|FOR01:3:cont1|qsignal~regout\,
	datac => \CEL09|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL09|S[0]~0_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X34_Y32_N10
\S~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~42_combout\ = (\S~41_combout\) # ((\S~39_combout\) # ((\S~40_combout\) # (\S~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~41_combout\,
	datab => \S~39_combout\,
	datac => \S~40_combout\,
	datad => \S~38_combout\,
	combout => \S~42_combout\);

-- Location: LCFF_X32_Y35_N21
\CEL03|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y35_N0
\CEL02|FOR01:3:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL02|FOR01:3:cont1|qsignal~feeder_combout\ = \Dados~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(3),
	combout => \CEL02|FOR01:3:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X32_Y35_N1
\CEL02|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~9\,
	datain => \CEL02|FOR01:3:cont1|qsignal~feeder_combout\,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y35_N20
\S~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~34_combout\ = (\CEL02|S[0]~0_combout\ & ((\CEL02|FOR01:3:cont1|qsignal~regout\) # ((\CEL03|S[0]~0_combout\ & \CEL03|FOR01:3:cont1|qsignal~regout\)))) # (!\CEL02|S[0]~0_combout\ & (\CEL03|S[0]~0_combout\ & (\CEL03|FOR01:3:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL02|S[0]~0_combout\,
	datab => \CEL03|S[0]~0_combout\,
	datac => \CEL03|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL02|FOR01:3:cont1|qsignal~regout\,
	combout => \S~34_combout\);

-- Location: LCFF_X37_Y32_N5
\CEL07|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:3:cont1|qsignal~regout\);

-- Location: LCFF_X37_Y32_N1
\CEL06|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X37_Y32_N4
\S~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~36_combout\ = (\CEL07|S[0]~0_combout\ & ((\CEL07|FOR01:3:cont1|qsignal~regout\) # ((\CEL06|S[0]~0_combout\ & \CEL06|FOR01:3:cont1|qsignal~regout\)))) # (!\CEL07|S[0]~0_combout\ & (\CEL06|S[0]~0_combout\ & ((\CEL06|FOR01:3:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL07|S[0]~0_combout\,
	datab => \CEL06|S[0]~0_combout\,
	datac => \CEL07|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL06|FOR01:3:cont1|qsignal~regout\,
	combout => \S~36_combout\);

-- Location: LCFF_X33_Y32_N15
\CEL05|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~9\,
	sdata => \Dados~combout\(3),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y32_N0
\CEL04|FOR01:3:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:3:cont1|qsignal~feeder_combout\ = \Dados~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(3),
	combout => \CEL04|FOR01:3:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X33_Y32_N1
\CEL04|FOR01:3:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~9\,
	datain => \CEL04|FOR01:3:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:3:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y32_N14
\S~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~35_combout\ = (\CEL04|S[0]~0_combout\ & ((\CEL04|FOR01:3:cont1|qsignal~regout\) # ((\CEL05|S[0]~0_combout\ & \CEL05|FOR01:3:cont1|qsignal~regout\)))) # (!\CEL04|S[0]~0_combout\ & (\CEL05|S[0]~0_combout\ & (\CEL05|FOR01:3:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|S[0]~0_combout\,
	datab => \CEL05|S[0]~0_combout\,
	datac => \CEL05|FOR01:3:cont1|qsignal~regout\,
	datad => \CEL04|FOR01:3:cont1|qsignal~regout\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X34_Y32_N30
\S~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~37_combout\ = (\S~33_combout\) # ((\S~34_combout\) # ((\S~36_combout\) # (\S~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~33_combout\,
	datab => \S~34_combout\,
	datac => \S~36_combout\,
	datad => \S~35_combout\,
	combout => \S~37_combout\);

-- Location: LCCOMB_X34_Y32_N22
\S~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~43_combout\ = (\S~42_combout\) # (\S~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~42_combout\,
	datad => \S~37_combout\,
	combout => \S~43_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[4]~I\ : cycloneii_io
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
	padio => ww_Dados(4),
	combout => \Dados~combout\(4));

-- Location: LCCOMB_X31_Y33_N30
\CEL10|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL10|en~0_combout\ = (!\rem_end~combout\(2) & (\rem_end~combout\(1) & (!\rem_end~combout\(0) & \rem_end~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rem_end~combout\(2),
	datab => \rem_end~combout\(1),
	datac => \rem_end~combout\(0),
	datad => \rem_end~combout\(3),
	combout => \CEL10|en~0_combout\);

-- Location: LCFF_X30_Y30_N13
\CEL10|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y30_N1
\CEL11|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X30_Y30_N0
\S~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~50_combout\ = (\CEL10|S[0]~0_combout\ & ((\CEL10|FOR01:4:cont1|qsignal~regout\) # ((\CEL11|FOR01:4:cont1|qsignal~regout\ & \CEL11|S[0]~0_combout\)))) # (!\CEL10|S[0]~0_combout\ & (((\CEL11|FOR01:4:cont1|qsignal~regout\ & \CEL11|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|S[0]~0_combout\,
	datab => \CEL10|FOR01:4:cont1|qsignal~regout\,
	datac => \CEL11|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL11|S[0]~0_combout\,
	combout => \S~50_combout\);

-- Location: LCFF_X29_Y31_N9
\CEL15|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X29_Y31_N8
\S~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~52_combout\ = (\CEL14|FOR01:4:cont1|qsignal~regout\ & ((\CEL14|S[0]~0_combout\) # ((\CEL15|FOR01:4:cont1|qsignal~regout\ & \CEL15|S[0]~0_combout\)))) # (!\CEL14|FOR01:4:cont1|qsignal~regout\ & (((\CEL15|FOR01:4:cont1|qsignal~regout\ & 
-- \CEL15|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL14|FOR01:4:cont1|qsignal~regout\,
	datab => \CEL14|S[0]~0_combout\,
	datac => \CEL15|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL15|S[0]~0_combout\,
	combout => \S~52_combout\);

-- Location: LCCOMB_X31_Y31_N0
\CEL12|FOR01:4:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01:4:cont1|qsignal~feeder_combout\ = \Dados~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(4),
	combout => \CEL12|FOR01:4:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X31_Y31_N1
\CEL12|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~10\,
	datain => \CEL12|FOR01:4:cont1|qsignal~feeder_combout\,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y31_N31
\CEL13|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y31_N30
\S~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~51_combout\ = (\CEL12|S[0]~0_combout\ & ((\CEL12|FOR01:4:cont1|qsignal~regout\) # ((\CEL13|FOR01:4:cont1|qsignal~regout\ & \CEL13|S[0]~0_combout\)))) # (!\CEL12|S[0]~0_combout\ & (((\CEL13|FOR01:4:cont1|qsignal~regout\ & \CEL13|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL12|S[0]~0_combout\,
	datab => \CEL12|FOR01:4:cont1|qsignal~regout\,
	datac => \CEL13|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL13|S[0]~0_combout\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X30_Y31_N6
\S~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~53_combout\ = (\S~49_combout\) # ((\S~50_combout\) # ((\S~52_combout\) # (\S~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~49_combout\,
	datab => \S~50_combout\,
	datac => \S~52_combout\,
	datad => \S~51_combout\,
	combout => \S~53_combout\);

-- Location: LCFF_X30_Y31_N3
\CEL00|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~138\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:4:cont1|qsignal~regout\);

-- Location: LCFF_X30_Y31_N1
\CEL01|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X30_Y31_N0
\S~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~44_combout\ = (\CEL01|S[0]~0_combout\ & ((\CEL01|FOR01:4:cont1|qsignal~regout\) # ((\CEL00|FOR01:4:cont1|qsignal~regout\ & \CEL00|S[0]~0_combout\)))) # (!\CEL01|S[0]~0_combout\ & (\CEL00|FOR01:4:cont1|qsignal~regout\ & ((\CEL00|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL01|S[0]~0_combout\,
	datab => \CEL00|FOR01:4:cont1|qsignal~regout\,
	datac => \CEL01|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL00|S[0]~0_combout\,
	combout => \S~44_combout\);

-- Location: LCFF_X29_Y35_N13
\CEL03|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X29_Y35_N12
\S~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~45_combout\ = (\CEL02|FOR01:4:cont1|qsignal~regout\ & ((\CEL02|S[0]~0_combout\) # ((\CEL03|FOR01:4:cont1|qsignal~regout\ & \CEL03|S[0]~0_combout\)))) # (!\CEL02|FOR01:4:cont1|qsignal~regout\ & (((\CEL03|FOR01:4:cont1|qsignal~regout\ & 
-- \CEL03|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL02|FOR01:4:cont1|qsignal~regout\,
	datab => \CEL02|S[0]~0_combout\,
	datac => \CEL03|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL03|S[0]~0_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X32_Y30_N2
\CEL04|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|S[0]~0_combout\ = (\CEL04|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CEL04|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL04|S[0]~0_combout\);

-- Location: LCFF_X31_Y30_N5
\CEL05|FOR01:4:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~10\,
	sdata => \Dados~combout\(4),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:4:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y30_N4
\S~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~46_combout\ = (\CEL04|FOR01:4:cont1|qsignal~regout\ & ((\CEL04|S[0]~0_combout\) # ((\CEL05|FOR01:4:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\)))) # (!\CEL04|FOR01:4:cont1|qsignal~regout\ & (((\CEL05|FOR01:4:cont1|qsignal~regout\ & 
-- \CEL05|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|FOR01:4:cont1|qsignal~regout\,
	datab => \CEL04|S[0]~0_combout\,
	datac => \CEL05|FOR01:4:cont1|qsignal~regout\,
	datad => \CEL05|S[0]~0_combout\,
	combout => \S~46_combout\);

-- Location: LCCOMB_X30_Y31_N12
\S~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~48_combout\ = (\S~47_combout\) # ((\S~44_combout\) # ((\S~45_combout\) # (\S~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~47_combout\,
	datab => \S~44_combout\,
	datac => \S~45_combout\,
	datad => \S~46_combout\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X30_Y31_N8
\S~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~54_combout\ = (\S~53_combout\) # (\S~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~53_combout\,
	datad => \S~48_combout\,
	combout => \S~54_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[5]~I\ : cycloneii_io
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
	padio => ww_Dados(5),
	combout => \Dados~combout\(5));

-- Location: LCFF_X36_Y33_N31
\CEL15|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:5:cont1|qsignal~regout\);

-- Location: LCFF_X36_Y33_N1
\CEL14|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X36_Y33_N30
\S~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~63_combout\ = (\CEL15|S[0]~0_combout\ & ((\CEL15|FOR01:5:cont1|qsignal~regout\) # ((\CEL14|S[0]~0_combout\ & \CEL14|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL15|S[0]~0_combout\ & (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:5:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL15|S[0]~0_combout\,
	datab => \CEL14|S[0]~0_combout\,
	datac => \CEL15|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL14|FOR01:5:cont1|qsignal~regout\,
	combout => \S~63_combout\);

-- Location: LCFF_X34_Y29_N1
\CEL10|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL10|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL10|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL10|FOR01:5:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y29_N25
\CEL11|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL11|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL11|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL11|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y29_N24
\S~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~61_combout\ = (\CEL10|S[0]~0_combout\ & ((\CEL10|FOR01:5:cont1|qsignal~regout\) # ((\CEL11|FOR01:5:cont1|qsignal~regout\ & \CEL11|S[0]~0_combout\)))) # (!\CEL10|S[0]~0_combout\ & (((\CEL11|FOR01:5:cont1|qsignal~regout\ & \CEL11|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL10|S[0]~0_combout\,
	datab => \CEL10|FOR01:5:cont1|qsignal~regout\,
	datac => \CEL11|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL11|S[0]~0_combout\,
	combout => \S~61_combout\);

-- Location: LCFF_X37_Y34_N17
\CEL13|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X37_Y34_N0
\CEL12|FOR01:5:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01:5:cont1|qsignal~feeder_combout\ = \Dados~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(5),
	combout => \CEL12|FOR01:5:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X37_Y34_N1
\CEL12|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~11\,
	datain => \CEL12|FOR01:5:cont1|qsignal~feeder_combout\,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X37_Y34_N16
\S~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~62_combout\ = (\CEL12|S[0]~0_combout\ & ((\CEL12|FOR01:5:cont1|qsignal~regout\) # ((\CEL13|S[0]~0_combout\ & \CEL13|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL12|S[0]~0_combout\ & (\CEL13|S[0]~0_combout\ & (\CEL13|FOR01:5:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL12|S[0]~0_combout\,
	datab => \CEL13|S[0]~0_combout\,
	datac => \CEL13|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL12|FOR01:5:cont1|qsignal~regout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X35_Y33_N6
\S~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~64_combout\ = (\S~60_combout\) # ((\S~63_combout\) # ((\S~61_combout\) # (\S~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~60_combout\,
	datab => \S~63_combout\,
	datac => \S~61_combout\,
	datad => \S~62_combout\,
	combout => \S~64_combout\);

-- Location: LCFF_X33_Y33_N17
\CEL05|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y33_N0
\CEL04|FOR01:5:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:5:cont1|qsignal~feeder_combout\ = \Dados~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(5),
	combout => \CEL04|FOR01:5:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X33_Y33_N1
\CEL04|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~11\,
	datain => \CEL04|FOR01:5:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y33_N16
\S~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~57_combout\ = (\CEL04|S[0]~0_combout\ & ((\CEL04|FOR01:5:cont1|qsignal~regout\) # ((\CEL05|S[0]~0_combout\ & \CEL05|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL04|S[0]~0_combout\ & (\CEL05|S[0]~0_combout\ & (\CEL05|FOR01:5:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|S[0]~0_combout\,
	datab => \CEL05|S[0]~0_combout\,
	datac => \CEL05|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL04|FOR01:5:cont1|qsignal~regout\,
	combout => \S~57_combout\);

-- Location: LCFF_X32_Y33_N19
\CEL03|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL03|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL03|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL03|FOR01:5:cont1|qsignal~regout\);

-- Location: LCFF_X32_Y33_N1
\CEL02|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL02|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL02|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL02|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y33_N18
\S~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~56_combout\ = (\CEL02|S[0]~0_combout\ & ((\CEL02|FOR01:5:cont1|qsignal~regout\) # ((\CEL03|S[0]~0_combout\ & \CEL03|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL02|S[0]~0_combout\ & (\CEL03|S[0]~0_combout\ & (\CEL03|FOR01:5:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL02|S[0]~0_combout\,
	datab => \CEL03|S[0]~0_combout\,
	datac => \CEL03|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL02|FOR01:5:cont1|qsignal~regout\,
	combout => \S~56_combout\);

-- Location: LCFF_X35_Y33_N23
\CEL01|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~11\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:5:cont1|qsignal~regout\);

-- Location: LCFF_X35_Y33_N27
\CEL00|FOR01:5:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~139\,
	sdata => \Dados~combout\(5),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:5:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y33_N22
\S~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~55_combout\ = (\CEL00|S[0]~0_combout\ & ((\CEL00|FOR01:5:cont1|qsignal~regout\) # ((\CEL01|S[0]~0_combout\ & \CEL01|FOR01:5:cont1|qsignal~regout\)))) # (!\CEL00|S[0]~0_combout\ & (\CEL01|S[0]~0_combout\ & (\CEL01|FOR01:5:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL00|S[0]~0_combout\,
	datab => \CEL01|S[0]~0_combout\,
	datac => \CEL01|FOR01:5:cont1|qsignal~regout\,
	datad => \CEL00|FOR01:5:cont1|qsignal~regout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X35_Y33_N10
\S~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~59_combout\ = (\S~58_combout\) # ((\S~57_combout\) # ((\S~56_combout\) # (\S~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~58_combout\,
	datab => \S~57_combout\,
	datac => \S~56_combout\,
	datad => \S~55_combout\,
	combout => \S~59_combout\);

-- Location: LCCOMB_X35_Y33_N0
\S~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~65_combout\ = (\S~64_combout\) # (\S~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~64_combout\,
	datad => \S~59_combout\,
	combout => \S~65_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[6]~I\ : cycloneii_io
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
	padio => ww_Dados(6),
	combout => \Dados~combout\(6));

-- Location: LCFF_X34_Y33_N5
\CEL14|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y33_N1
\CEL15|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y33_N0
\S~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~74_combout\ = (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:6:cont1|qsignal~regout\) # ((\CEL15|FOR01:6:cont1|qsignal~regout\ & \CEL15|S[0]~0_combout\)))) # (!\CEL14|S[0]~0_combout\ & (((\CEL15|FOR01:6:cont1|qsignal~regout\ & \CEL15|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL14|S[0]~0_combout\,
	datab => \CEL14|FOR01:6:cont1|qsignal~regout\,
	datac => \CEL15|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL15|S[0]~0_combout\,
	combout => \S~74_combout\);

-- Location: LCCOMB_X33_Y34_N0
\CEL08|S[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL08|S[0]~0_combout\ = (\CEL08|en~0_combout\ & !\rw~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|en~0_combout\,
	datad => \rw~combout\,
	combout => \CEL08|S[0]~0_combout\);

-- Location: LCFF_X35_Y35_N17
\CEL09|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X35_Y35_N1
\CEL08|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y35_N16
\S~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~71_combout\ = (\CEL09|S[0]~0_combout\ & ((\CEL09|FOR01:6:cont1|qsignal~regout\) # ((\CEL08|S[0]~0_combout\ & \CEL08|FOR01:6:cont1|qsignal~regout\)))) # (!\CEL09|S[0]~0_combout\ & (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:6:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL09|S[0]~0_combout\,
	datab => \CEL08|S[0]~0_combout\,
	datac => \CEL09|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL08|FOR01:6:cont1|qsignal~regout\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X31_Y34_N22
\CEL12|FOR01:6:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL12|FOR01:6:cont1|qsignal~feeder_combout\ = \Dados~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(6),
	combout => \CEL12|FOR01:6:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X31_Y34_N23
\CEL12|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL12|FOR01~12\,
	datain => \CEL12|FOR01:6:cont1|qsignal~feeder_combout\,
	ena => \CEL12|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL12|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X31_Y34_N11
\CEL13|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X31_Y34_N10
\S~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~73_combout\ = (\CEL12|S[0]~0_combout\ & ((\CEL12|FOR01:6:cont1|qsignal~regout\) # ((\CEL13|FOR01:6:cont1|qsignal~regout\ & \CEL13|S[0]~0_combout\)))) # (!\CEL12|S[0]~0_combout\ & (((\CEL13|FOR01:6:cont1|qsignal~regout\ & \CEL13|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL12|S[0]~0_combout\,
	datab => \CEL12|FOR01:6:cont1|qsignal~regout\,
	datac => \CEL13|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL13|S[0]~0_combout\,
	combout => \S~73_combout\);

-- Location: LCCOMB_X31_Y34_N0
\S~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~75_combout\ = (\S~72_combout\) # ((\S~74_combout\) # ((\S~71_combout\) # (\S~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~72_combout\,
	datab => \S~74_combout\,
	datac => \S~71_combout\,
	datad => \S~73_combout\,
	combout => \S~75_combout\);

-- Location: LCFF_X32_Y28_N1
\CEL05|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X32_Y28_N0
\S~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~68_combout\ = (\CEL04|FOR01:6:cont1|qsignal~regout\ & ((\CEL04|S[0]~0_combout\) # ((\CEL05|S[0]~0_combout\ & \CEL05|FOR01:6:cont1|qsignal~regout\)))) # (!\CEL04|FOR01:6:cont1|qsignal~regout\ & (\CEL05|S[0]~0_combout\ & 
-- (\CEL05|FOR01:6:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|FOR01:6:cont1|qsignal~regout\,
	datab => \CEL05|S[0]~0_combout\,
	datac => \CEL05|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL04|S[0]~0_combout\,
	combout => \S~68_combout\);

-- Location: LCFF_X35_Y31_N5
\CEL01|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X35_Y31_N1
\CEL00|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~140\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y31_N4
\S~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~66_combout\ = (\CEL01|S[0]~0_combout\ & ((\CEL01|FOR01:6:cont1|qsignal~regout\) # ((\CEL00|S[0]~0_combout\ & \CEL00|FOR01:6:cont1|qsignal~regout\)))) # (!\CEL01|S[0]~0_combout\ & (\CEL00|S[0]~0_combout\ & ((\CEL00|FOR01:6:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL01|S[0]~0_combout\,
	datab => \CEL00|S[0]~0_combout\,
	datac => \CEL01|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL00|FOR01:6:cont1|qsignal~regout\,
	combout => \S~66_combout\);

-- Location: LCFF_X35_Y34_N29
\CEL07|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:6:cont1|qsignal~regout\);

-- Location: LCFF_X35_Y34_N1
\CEL06|FOR01:6:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL06|FOR01~12\,
	sdata => \Dados~combout\(6),
	sload => VCC,
	ena => \CEL06|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL06|FOR01:6:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y34_N28
\S~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~69_combout\ = (\CEL07|S[0]~0_combout\ & ((\CEL07|FOR01:6:cont1|qsignal~regout\) # ((\CEL06|S[0]~0_combout\ & \CEL06|FOR01:6:cont1|qsignal~regout\)))) # (!\CEL07|S[0]~0_combout\ & (\CEL06|S[0]~0_combout\ & ((\CEL06|FOR01:6:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL07|S[0]~0_combout\,
	datab => \CEL06|S[0]~0_combout\,
	datac => \CEL07|FOR01:6:cont1|qsignal~regout\,
	datad => \CEL06|FOR01:6:cont1|qsignal~regout\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X31_Y34_N6
\S~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~70_combout\ = (\S~67_combout\) # ((\S~68_combout\) # ((\S~66_combout\) # (\S~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~67_combout\,
	datab => \S~68_combout\,
	datac => \S~66_combout\,
	datad => \S~69_combout\,
	combout => \S~70_combout\);

-- Location: LCCOMB_X31_Y34_N28
\S~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~76_combout\ = (\S~75_combout\) # (\S~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~75_combout\,
	datad => \S~70_combout\,
	combout => \S~76_combout\);

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dados[7]~I\ : cycloneii_io
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
	padio => ww_Dados(7),
	combout => \Dados~combout\(7));

-- Location: LCCOMB_X33_Y28_N0
\CEL04|FOR01:7:cont1|qsignal~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \CEL04|FOR01:7:cont1|qsignal~feeder_combout\ = \Dados~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dados~combout\(7),
	combout => \CEL04|FOR01:7:cont1|qsignal~feeder_combout\);

-- Location: LCFF_X33_Y28_N1
\CEL04|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL04|FOR01~13\,
	datain => \CEL04|FOR01:7:cont1|qsignal~feeder_combout\,
	ena => \CEL04|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL04|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X33_Y28_N25
\CEL05|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL05|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL05|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL05|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X33_Y28_N24
\S~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~79_combout\ = (\CEL04|S[0]~0_combout\ & ((\CEL04|FOR01:7:cont1|qsignal~regout\) # ((\CEL05|FOR01:7:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\)))) # (!\CEL04|S[0]~0_combout\ & (((\CEL05|FOR01:7:cont1|qsignal~regout\ & \CEL05|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL04|S[0]~0_combout\,
	datab => \CEL04|FOR01:7:cont1|qsignal~regout\,
	datac => \CEL05|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL05|S[0]~0_combout\,
	combout => \S~79_combout\);

-- Location: LCFF_X34_Y31_N1
\CEL01|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL01|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL01|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL01|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X34_Y31_N13
\CEL00|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL00|FOR01~141\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL00|en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL00|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X34_Y31_N0
\S~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~77_combout\ = (\CEL00|S[0]~0_combout\ & ((\CEL00|FOR01:7:cont1|qsignal~regout\) # ((\CEL01|S[0]~0_combout\ & \CEL01|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL00|S[0]~0_combout\ & (\CEL01|S[0]~0_combout\ & (\CEL01|FOR01:7:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL00|S[0]~0_combout\,
	datab => \CEL01|S[0]~0_combout\,
	datac => \CEL01|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL00|FOR01:7:cont1|qsignal~regout\,
	combout => \S~77_combout\);

-- Location: LCFF_X35_Y32_N7
\CEL07|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL07|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL07|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL07|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X35_Y32_N6
\S~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~80_combout\ = (\CEL06|FOR01:7:cont1|qsignal~regout\ & ((\CEL06|S[0]~0_combout\) # ((\CEL07|S[0]~0_combout\ & \CEL07|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL06|FOR01:7:cont1|qsignal~regout\ & (\CEL07|S[0]~0_combout\ & 
-- (\CEL07|FOR01:7:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL06|FOR01:7:cont1|qsignal~regout\,
	datab => \CEL07|S[0]~0_combout\,
	datac => \CEL07|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL06|S[0]~0_combout\,
	combout => \S~80_combout\);

-- Location: LCCOMB_X35_Y32_N14
\S~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~81_combout\ = (\S~78_combout\) # ((\S~79_combout\) # ((\S~77_combout\) # (\S~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~78_combout\,
	datab => \S~79_combout\,
	datac => \S~77_combout\,
	datad => \S~80_combout\,
	combout => \S~81_combout\);

-- Location: LCFF_X36_Y32_N27
\CEL15|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL15|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL15|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL15|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X36_Y32_N7
\CEL14|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL14|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL14|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL14|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X36_Y32_N26
\S~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~85_combout\ = (\CEL15|S[0]~0_combout\ & ((\CEL15|FOR01:7:cont1|qsignal~regout\) # ((\CEL14|S[0]~0_combout\ & \CEL14|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL15|S[0]~0_combout\ & (\CEL14|S[0]~0_combout\ & ((\CEL14|FOR01:7:cont1|qsignal~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL15|S[0]~0_combout\,
	datab => \CEL14|S[0]~0_combout\,
	datac => \CEL15|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL14|FOR01:7:cont1|qsignal~regout\,
	combout => \S~85_combout\);

-- Location: LCFF_X36_Y30_N3
\CEL13|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL13|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL13|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL13|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X36_Y30_N2
\S~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~84_combout\ = (\CEL12|FOR01:7:cont1|qsignal~regout\ & ((\CEL12|S[0]~0_combout\) # ((\CEL13|S[0]~0_combout\ & \CEL13|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL12|FOR01:7:cont1|qsignal~regout\ & (\CEL13|S[0]~0_combout\ & 
-- (\CEL13|FOR01:7:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL12|FOR01:7:cont1|qsignal~regout\,
	datab => \CEL13|S[0]~0_combout\,
	datac => \CEL13|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL12|S[0]~0_combout\,
	combout => \S~84_combout\);

-- Location: LCFF_X36_Y35_N21
\CEL09|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL09|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL09|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL09|FOR01:7:cont1|qsignal~regout\);

-- Location: LCFF_X36_Y35_N1
\CEL08|FOR01:7:cont1|qsignal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CEL08|FOR01~13\,
	sdata => \Dados~combout\(7),
	sload => VCC,
	ena => \CEL08|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CEL08|FOR01:7:cont1|qsignal~regout\);

-- Location: LCCOMB_X36_Y35_N20
\S~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~82_combout\ = (\CEL08|S[0]~0_combout\ & ((\CEL08|FOR01:7:cont1|qsignal~regout\) # ((\CEL09|S[0]~0_combout\ & \CEL09|FOR01:7:cont1|qsignal~regout\)))) # (!\CEL08|S[0]~0_combout\ & (\CEL09|S[0]~0_combout\ & (\CEL09|FOR01:7:cont1|qsignal~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEL08|S[0]~0_combout\,
	datab => \CEL09|S[0]~0_combout\,
	datac => \CEL09|FOR01:7:cont1|qsignal~regout\,
	datad => \CEL08|FOR01:7:cont1|qsignal~regout\,
	combout => \S~82_combout\);

-- Location: LCCOMB_X36_Y32_N10
\S~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~86_combout\ = (\S~83_combout\) # ((\S~85_combout\) # ((\S~84_combout\) # (\S~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~83_combout\,
	datab => \S~85_combout\,
	datac => \S~84_combout\,
	datad => \S~82_combout\,
	combout => \S~86_combout\);

-- Location: LCCOMB_X36_Y32_N0
\S~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \S~87_combout\ = (\S~81_combout\) # (\S~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~81_combout\,
	datad => \S~86_combout\,
	combout => \S~87_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[4]~I\ : cycloneii_io
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
	padio => ww_rem_end(4));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[5]~I\ : cycloneii_io
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
	padio => ww_rem_end(5));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[6]~I\ : cycloneii_io
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
	padio => ww_rem_end(6));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rem_end[7]~I\ : cycloneii_io
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
	padio => ww_rem_end(7));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[0]~I\ : cycloneii_io
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
	datain => \S~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[1]~I\ : cycloneii_io
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
	datain => \S~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[2]~I\ : cycloneii_io
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
	datain => \S~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[3]~I\ : cycloneii_io
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
	datain => \S~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[4]~I\ : cycloneii_io
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
	datain => \S~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[5]~I\ : cycloneii_io
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
	datain => \S~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(5));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[6]~I\ : cycloneii_io
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
	datain => \S~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(6));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S[7]~I\ : cycloneii_io
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
	datain => \S~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(7));
END structure;


