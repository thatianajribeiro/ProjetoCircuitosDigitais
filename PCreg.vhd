library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PCreg is
	port(
		clk : in std_logic; --pulso de clock (definido pela FPGA)
		reset : in std_logic; --reseta o contador do PC
		incrementa : in std_logic; --incrementa endereço de memória armazenado em "reg"
		carga : in std_logic; --faz "reg" receber o valor da entrada
		entrada : in std_logic_vector(7 downto 0); --endereço de memória a ser carregado 
		pc : out std_logic_vector(7 downto 0) --próximo endereço de memória
	);
end PCreg;

architecture Comportamento of PCreg is
	signal reg: std_logic_vector(7 downto 0) := "00000000"; --Registrador interno que guarda o endereço de memória
	begin
	pc <= reg;
	process(clk,reset)
		begin
			if reset = '1' then
				reg <= "00000000";
			elsif (clk'event and clk = '1') then
				if(carga = '1') then
					reg <= entrada;
				elsif (incrementa = '1') then
					reg <= reg + 1;
				end if;
			end if;
	end process;
end Comportamento;