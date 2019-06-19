library ieee;
use ieee.std_logic_1164.all;

entity ula is 										
	port(
		a        : in std_logic_vector(7 downto 0);
		b        : in std_logic_vector(7 downto 0);
		operacao : in std_logic_vector(2 downto 0);
		y        : out std_logic_vector(7 downto 0);
		N, Z		: out std_logic
		);
end ula;

architecture archUla of ula is

component soma is
		port(
			A, B : in std_logic_vector(7 downto 0);
			S 	  : out std_logic_vector(7 downto 0);
			Co   : out std_logic
			);
end component;

   signal ySoma 		: std_logic_vector(7 downto 0);
	signal Carry_Soma	: std_logic;
	signal N_aux : std_logic_vector(7 downto 0);

begin

  total : soma port map(a, b, ySoma, Carry_Soma);
  
  N <= ySoma(7);
  
	N_aux(0) <= ySoma(0);
  
	FOR01: for i in 1 to (7) generate	
		N_aux(i) <= N_aux(i-1) nor ySoma(i);
	end generate; 

	N <= N_aux(7);	
	
  WITH operacao SELECT
		y <=  ySoma   WHEN "000",
				a and b WHEN "001",
				a or b  WHEN "010",
				not b   WHEN "011",
				b       WHEN "100",
				"ZZZZZZZZ"  WHEN OTHERS;
end archULA;