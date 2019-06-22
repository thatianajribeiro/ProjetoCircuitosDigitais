library ieee;
use ieee.std_logic_1164.all;

entity Registrador8bits is 
	port(
		clk : in std_logic; 
		clear : in std_logic;
		load : in std_logic; --sinal de controle proveniente da UNIDADE DE CONTROLE
		preset : in std_logic;
		dado_RDM : in std_logic_vector(7 downto 0); --conjunto intrucao (4 bits) + endereco de memoria (4 bits)
		operacao_out : out std_logic_vector(7 downto 0) -- 4 bits mais significativos, representando o codigo da operacao a ser feita, que vai para ser decodificada
	);
end Registrador8bits;

architecture archRegistrador8bits of Registrador8bits is

--FLIPFLOP JK armazena 1 bit
component flipFlopJK is
port(
	J,K : in std_logic;
	clear, preset : in std_logic;
	clk : in std_logic;
	Q, Qbar: out std_logic
);
end component;


	signal Qs: std_logic_vector (7 downto 0);
	signal Qs_bar: std_logic_vector (7 downto 0);
	signal aux_s: std_logic;
	
	begin 
		
		--FFN é o conjunto de flipflops que juntos armazenarão os 8 bits, sendo (XXXX YYYY) X->referente a operacao a ser realizada e Y-> o endereco da memoria(de 0 a 15)
					RFOR : for I in 4 to 7 generate
						FFN: flipFlopJK port map (not(dado_RDM(I)),dado_RDM(I),'1','1', clk, Qs(I), Qs_bar(I)); --clear e preset sempre estão setados em 1 devido a logica utilizada pelo professor em sala, mas nao necessariamente precisaria ser 1.
						operacao_out(I) <= Qs(I);
				end generate RFOR;
				
		aux_s <= '0' and '0';
		operacao_out(3) <= aux_s;
		operacao_out(2) <= aux_s;
		operacao_out(1) <= aux_s;
		operacao_out(0) <= aux_s;
				
				
		 



end archRegistrador8bits;