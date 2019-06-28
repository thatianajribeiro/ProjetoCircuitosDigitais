library ieee;
use ieee.std_logic_1164.all;

entity RegAC is 
	port(
		clk : in std_logic; 
		clear : in std_logic;
		load : in std_logic; --sinal de controle proveniente da UNIDADE DE CONTROLE
		preset : in std_logic;
		dado_ULA : in std_logic_vector(7 downto 0); --resultado da operacao realizada na ULA
		saida_AC : out std_logic_vector(7 downto 0) -- valor que estava armazenado proveniente da ULA, que pode ir para a memoria ou de volta para ULA
	);
end RegAC;

architecture archRegAC of RegAC is

--FLIPFLOP JK armazena 1 bit
component flipFlopJK is
port(
	J,K : in std_logic;
	clear, preset, load : in std_logic;
	clk : in std_logic;
	Q, Qbar: out std_logic
);
end component;


	signal Qs: std_logic_vector (7 downto 0);
	signal Qs_bar: std_logic_vector (7 downto 0);

	
	begin 
		

		--FFN é o conjunto de flipflops que juntos armazenarão os 8 bits
					RFOR : for I in 0 to 7 generate
						FFN: flipFlopJK port map (not(dado_ULA(I)),dado_ULA(I),'1','1', load, clk, Qs(I), Qs_bar(I)); --clear e preset sempre estão setados em 1 devido a logica utilizada pelo professor em sala, mas nao necessariamente precisaria ser 1.
				end generate RFOR;
				
		 saida_AC <= Qs;


end archRegAC;