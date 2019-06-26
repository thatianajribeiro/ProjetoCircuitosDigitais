library ieee;
use ieee.std_logic_1164.all;

entity ula is 										
	port(
		a        : in std_logic_vector(7 downto 0);
		b        : in std_logic_vector(7 downto 0);
		operacao : in std_logic_vector(2 downto 0);
		y        : out std_logic_vector(7 downto 0);
		NZ			: out std_logic_vector(1 downto 0)
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

   signal ySoma 						: std_logic_vector(7 downto 0);
	signal Carry_Soma					: std_logic;
	signal Z_resultado 				: std_logic;
	signal Z_auxiliar, N_auxiliar	: std_logic;

begin

  total : soma port map(a, b, ySoma, Carry_Soma);
  
  Z_auxiliar <= '0';
  
  Z_resultado <= (ySoma(7) xnor Z_auxiliar) and (ySoma(6) xnor Z_auxiliar) and (ySoma(5) xnor Z_auxiliar) and
				(ySoma(4) xnor Z_auxiliar) and (ySoma(3) xnor Z_auxiliar) and (ySoma(2) xnor Z_auxiliar) and 
							(ySoma(1) xnor Z_auxiliar) and (ySoma(0) xnor Z_auxiliar);
  
  NZ(1) <= ySoma(7) and  '1'; -- Saber se é negativo o resultado da soma
  NZ(0) <= Z_resultado; 		-- Saber se o resultado da soma é zero

	
  WITH operacao SELECT
		y <=  ySoma   WHEN "000",
				a and b WHEN "001",
				a or b  WHEN "010",
				not b   WHEN "011",
				b       WHEN "100",
				"ZZZZZZZZ"  WHEN OTHERS;
end archULA;