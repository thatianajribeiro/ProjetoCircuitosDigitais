library ieee;
use ieee.std_logic_1164.all;

entity NEANDER is 
	port(

	);
end NEANDER;

architecture archNEANDER of NEANDER is

--FLIPFLOP JK armazena 1 bit
component flipFlopJK is
port(
	J,K : in std_logic;
	clear, preset, load : in std_logic;
	clk : in std_logic;
	Q, Qbar: out std_logic
);
end component;


	
	begin 
		



end archNEANDER;