library ieee;
use ieee.std_logic_1164.all;

entity soma2 is
port
	(
		A, B : in std_logic_vector (7 downto 0);
		soma : out std_logic_vector(7 downto 0)
	);
end soma2;

architecture archsoma2 of soma2 is
signal c_out: std_logic_vector (7 downto 0);
 

begin

soma(0) <= (A(0) xor B(0)) xor '0';
c_out(0) <= (A(0) and B(0)) or (A(0) and '0') or (B(0) and '0');

	RFOR: for I in 1 to 7 generate
		soma(I) <= (A(I) xor B(I)) xor c_out(I-1);
		c_out(I) <= (A(I) and B(I)) or (A(I) and c_out(I-1)) or (B(I) and c_out(I-1));
	
	end generate RFOR;
--soma(7) <= c_out(6); --Carry de overflow nao sera utilizado nesse caso, ao chegar no valor maximo de endereco, queremos que ele volte pro inicio 0.
	
end archsoma2;
