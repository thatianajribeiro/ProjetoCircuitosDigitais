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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
-- CREATED		"Fri Jun 21 16:52:51 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY teste IS 
	PORT
	(
		pin_name1 :  IN  STD_LOGIC;
		pin_name2 :  IN  STD_LOGIC;
		pin_name3 :  OUT  STD_LOGIC
	);
END teste;

ARCHITECTURE bdf_type OF teste IS 



BEGIN 



pin_name3 <= pin_name1 AND pin_name2;


END bdf_type;