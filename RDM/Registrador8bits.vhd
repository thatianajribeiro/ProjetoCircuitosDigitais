library ieee;
use ieee.std_logic_1164.all;

entity Registrador8bits is 
	port(
		clk : in std_logic; 
		clear : in std_logic;
		load : in std_logic_vector(1 downto 0); --sinal de controle proveniente da UNIDADE DE CONTROLE
		preset : in std_logic;
		input_AC : in std_logic_vector(7 downto 0); --endereco de memoria proveniente do MUX que por sua vez é proveniente do contador de programa ou do proprio RDM caso seja operacao de STA (armazenar valor do acumulador AC na memoria)
		input_Mem : in std_logic_vector(7 downto 0); --endereco de memoria proveniente do MUX que por sua vez é proveniente do contador de programa ou do proprio RDM caso seja operacao de STA (armazenar valor do acumulador AC na memoria)
		--seletor: in std_logic;
		--seletor: in std_logic_vector;
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

component multiplexador is
port
	(
		MemInput, ACinput : in std_logic_vector (7 downto 0);
		seletor: in std_logic_vector(1 downto 0);
		SaidaMux: out std_logic_vector(7 downto 0)		
	);
end component;

	signal Qs: std_logic_vector (7 downto 0);
	signal Qs_bar: std_logic_vector (7 downto 0);
	signal entrada_rdm: std_logic_vector (7 downto 0);
	
	begin 
			
			--Utilizando um mux para considerar alteracoes no load. 00 - carrega memoria, 01 - carrega AC, 10 e 11 carrega nada.
			Muxentrada: multiplexador port map (input_Mem,input_AC,load,entrada_rdm);
	
--			RFOR0 : for I in 0 to 7 generate
--				Muxentrada: multiplexador port map (input_Mem(I),input_AC(I),load,entrada_rdm(I));
--			end generate RFOR0;
--	
	
--	--Logica implementada pois a entrada do RDM depende da operacao realizada. STA dado vai vir do acumulador para a memoria, para as outras operacoes o fluxo sera da memoria para o restante
--	RFOR0 : for I in 0 to 7 generate
--		--minha logica entre dados da memoria e dados do AC
--		entrada_rdm(I) <= (input_Mem(I) and (input_Mem(I) xnor seletor)) or  (input_AC(I) and (input_Mem(I) xor seletor));
--		--logica baseada num multiplex que vi na net
--		--entrada_rdm(I) <= (input_Mem(I) and not(seletor)) or (input_AC(I) and seletor);
--	end generate RFOR0;	
--		
		
		--FFN é o conjunto de flipflops que juntos armazenarão os 8 bits, sendo (XXXX YYYY) X->referente a operacao a ser realizada e Y-> que é realmente o endereco da memoria(de 0 a 15)
					RFOR : for I in 0 to 7 generate
						FFN: flipFlopJK port map (not(entrada_rdm(I)),entrada_rdm(I),'1','1', clk, Qs(I), Qs_bar(I)); --clear e preset sempre estão setados em 1 devido a logica utilizada pelo professor em sala, mas nao necessariamente precisaria ser 1.
				end generate RFOR;
		
			
		 endereco_out <= Qs;


end archRegistrador8bits;