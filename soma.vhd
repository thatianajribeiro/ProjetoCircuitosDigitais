library ieee;
use ieee.std_logic_1164.all;

entity soma is
port
	(
		A, B : in std_logic_vector (7 downto 0);
		soma : out std_logic_vector(8 downto 0)
	);
end soma;

architecture archsoma of soma is
signal c_out: std_logic_vector (7 downto 0);
 

begin

soma(0) <= (A(0) xor B(0)) xor '0';
c_out(0) <= (A(0) and B(0)) or (A(0) and '0') or (B(0) and '0');

	RFOR: for I in 1 to 7 generate
		sN: soma(I) <= (A(I) xor B(I)) xor c_out(I-1);
		cN: c_out(I) <= (A(I) and B(I)) or (A(I) and c_out(I-1)) or (B(I) and c_out(I-1));
	end generate RFOR;
soma(8) <= c_out(7); --Esse eh o carry em caso de OverFlow, pode ser util
	
end archsoma;
