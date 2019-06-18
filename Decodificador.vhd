library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodificador is
    Port ( instrucao : in  STD_LOGIC_VECTOR (7 downto 0);
    	   out_decod : out STD_LOGIC_VECTOR(12 downto 0));
end decodificador;

architecture Comportamento of decodificador is

begin	
	process (instrucao)
	begin
		-- Inicializa todos em 0
		out_decod <= "0000000000000";
		case instrucao(7 downto 4) is
			when "0000" => out_decod <= "1000000000000"; --nop;
			when "0001" => out_decod <= "0100000000000"; --sta;
			when "0010" => out_decod <= "0010000000000"; --lda;
			when "0011" => out_decod <= "0001000000000"; --add;
			when "0100" => out_decod <= "0000100000000"; --or;
			when "0101" => out_decod <= "0000010000000"; --and;
			when "0110" => out_decod <= "0000001000000"; --not;
			when "1000" => out_decod <= "0000000100000"; --jmp;
			when "1001" => out_decod <= "0000000010000"; --jn;
			when "1010" => out_decod <= "0000000001000"; --jz;
			when "1111" => out_decod <= "0000000000001"; --hlt <= '1';
			when others => out_decod <= "0000000000000"; 
		end case;
	end process;
end Comportamento;