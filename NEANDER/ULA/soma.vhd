library ieee;
use ieee.std_logic_1164.all;

entity soma is -- Realiza a soma entre A e B e indica o Carry out
	port
		(
			A, B 		: in std_logic_vector(7 downto 0);  -- Entradas da soma
			S 			: out std_logic_vector(7 downto 0); -- Saída da soma
			Co  		: out std_logic							-- Indicador do uso de Carry out
		);
end soma;

architecture archSoma of soma is

component somador is	-- Componente somador, realiza o somatório das entradas com carry in e devolve carry out
	port
		(
			Ci, A, B  : in std_logic; 							-- Entradas A e B e Ci do somatório, Ci é o carry in usado quando a soma excede a casa da unidade
			Co, S     : out std_logic							-- Saídas Co e S do somatório, devolvem um carry out caso haja e o resultado da soma
		);
end component;

signal carry		 : std_logic_vector(7 downto 0);
signal S_resultado : std_logic_vector(7 downto 0);

begin
-- Cálculo das operações de soma --
	S0 : somador port map('0', A(0), B(0), carry(0), S(0));			-- Passando os parâmetros bit a bit para serem somados com carry de início igual a zero
	S1 : somador port map(carry(0), A(1), B(1), carry(1), S(1));
	S2 : somador port map(carry(1), A(2), B(2), carry(2), S(2));
	S3 : somador port map(carry(2), A(3), B(3), carry(3), S(3));
	S4 : somador port map(carry(3), A(4), B(4), carry(4), S(4));
	S5 : somador port map(carry(4), A(5), B(5), carry(5), S(5));
	S6 : somador port map(carry(5), A(6), B(6), carry(6), S(6));
	S7 : somador port map(carry(6), A(7), B(7), carry(7), S(7));		
	Co <= carry(7);																-- Devolvendo o último carry out para indicar o uso do mesmo
end archSoma;