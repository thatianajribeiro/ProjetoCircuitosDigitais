library ieee;
use ieee.std_logic_1164.all;

entity RegNZ is
port(
		reset: in std_logic;
		clock: in std_logic;
		cargaNZ: in std_logic;
		entrada: in std_logic_vector (1 downto 0);
		saida: out std_logic_vector (1 downto 0)
		);
		
end RegNZ;

architecture archRegNZ of RegNZ is

	signal REG: std_logic_vector(1 downto 0) := "00";
	
begin

	saida <= REG;
	process (reset,clock)
	
	begin
	
		if reset = '1' then
				REG <= "00";
			elsif clock'event and clock = '1' then
				if cargaNZ = '1' then
					REG <= entrada;
				end if ;
			end if;
		
	end process;
	
end archRegNZ;