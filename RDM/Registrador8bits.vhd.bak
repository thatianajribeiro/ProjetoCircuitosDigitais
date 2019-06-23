library ieee;
use ieee.std_logic_1164.all;

entity Registrador8bits is 
	port(
		clk : in std_logic; 
		clear : in std_logic;
		load : in std_logic; --sinal de controle proveniente da UNIDADE DE CONTROLE
		preset : in std_logic;
		endereco_in : in std_logic_vector(7 downto 0); --endereco de memoria proveniente do MUX que por sua vez é proveniente do contador de programa ou do proprio RDM caso seja operacao de STA (armazenar valor do acumulador AC na memoria)
		endereco_out : out std_logic_vector(7 downto 0) -- endereco de memoria que vai acionar determinada celula de memoria
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
		
--		--ESTA É A LOGICA PENSANDO NO REM INDIVIDUALMENTE
--		--FFN é o conjunto de flipflops que juntos armazenarão os 8 bits, sendo (XXXX YYYY) X->referente a operacao a ser realizada e Y-> que é realmente o endereco da memoria(de 0 a 15)
--					RFOR : for I in 0 to 7 generate
--						FFN: flipFlopJK port map (not(endereco_in(I)),endereco_in(I),'1','1', clk, Qs(I), Qs_bar(I)); --clear e preset sempre estão setados em 1 devido a logica utilizada pelo professor em sala, mas nao necessariamente precisaria ser 1.
--				end generate RFOR;
--				
--		 endereco_out <= Qs;

		--ESTA É A LOGICA PENSANDO NO REM NO CONJUNTO DO NEANDER, POIS SÓ INTERESSA REALMENTE OS 4 ULTIMOS BITS
		--FF0 é o conjunto de flipflops que juntos armazenarão os 8 bits, sendo (XXXX YYYY) X->referente a operacao a ser realizada e Y-> que é realmente o endereco da memoria(de 0 a 15)
					RFOR : for I in 0 to 3 generate
						FFN: flipFlopJK port map (not(endereco_in(I)),endereco_in(I),'1','1', clk, Qs(I), Qs_bar(I)); --clear e preset sempre estão setados em 1 devido a logica utilizada pelo professor em sala, mas nao necessariamente precisaria ser 1.
						endereco_out(I) <= Qs(I);
				end generate RFOR;
			
			--preenchendo as posicoes mais significativas do vetor com 0, pois o endereco da memoria so vai de 0 ate 15
			aux_s <= '0' and '0';
			endereco_out(7) <= aux_s;
			endereco_out(6) <= aux_s;
			endereco_out(5) <= aux_s;
			endereco_out(4) <= aux_s;

end archRegistrador8bits;