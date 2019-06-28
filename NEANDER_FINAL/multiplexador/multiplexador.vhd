library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is
port
(
	x : in std_logic_vector(7 downto 0); -- Entrada de 8 bits	
	y : in std_logic_vector(7 downto 0); -- Entrada de 8 bits
	s : in std_logic;							 -- Seleção
	z : out std_logic_vector(7 downto 0) -- Saída de 8 bits
);
end multiplexador;

architecture archMultiplexador of multiplexador is
begin
	RFOR: for I in 0 to 7 generate
		z(I) <= (x(I) and not(s)) or (y(I) and s);
	end generate RFOR;
end archMultiplexador;