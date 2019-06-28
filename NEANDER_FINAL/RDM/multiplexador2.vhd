library ieee;
use ieee.std_logic_1164.all;

entity multiplexador2 is
port
	(
		MemInput, ACinput : in std_logic_vector (7 downto 0);
		seletor: in std_logic_vector(1 downto 0);
		SaidaMux: out std_logic_vector(7 downto 0)		
	);
end multiplexador2;

architecture archmultiplexador2 of multiplexador2 is

begin
WITH seletor SELECT 
	saidaMux <= MemInput when "00", 
					ACinput when "01",
					"00000000" when others;

	
end archmultiplexador2;