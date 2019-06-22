library ieee;
use ieee.std_logic_1164.all;

entity PCcomJK is
	port(
		clk : in std_logic; 
		R : in std_logic_vector(7 downto 0); -- endereco de memoria atual, que vem da RDM na forma ( XXXX YYYY ) x->operacao a ser realizada e Y-> endereco de memoria 4 bits(0 ate 15 da memoria) 
		carga, incrementa : in std_logic; -- sinais de controle provenientes da UNIDADE DE CONTROLE
		E : out std_logic_vector(7 downto 0) -- endereco de memoria que sai (ideia de ponteiro, linha da proxima instrucao a ser realizada) vai para MUX e depois para REM e depois pra MEMORIA		
	);
end PCcomJK;

architecture archPCcomJK of PCcomJK is
	
	--FLIPFLOP JK - armazena 1 bit
	component FlipFlopJK is
	port(
		J, K: in std_logic;
		preset, clear: in std_logic;
		clk:	in std_logic;
		Q, Qbar: out std_logic
	);
	end component;
	
	--Incrementar o endereco de memoria 
	component soma is
	port(
		A, B : in std_logic_vector (7 downto 0);
		soma : out std_logic_vector(7 downto 0)
	);
	
	
	end component;

	signal Qs, soma_result: std_logic_vector(7 downto 0); -- sinal de saida e da soma utilizados no portmap
	signal Jpc, Kpc: std_logic_vector(7 downto 0); --Entradas de cada flip flip
	signal aux_s: std_logic;--sinal criado somente para zerar as posicoes mais significativas do endereco que sai do PC, pois neste trabalho a memoria so tem 15 enderecos
	
	
	begin
	
	somalabel: soma port map (Qs,"00000001", soma_result); --s do futuro
	
	
--	--PENSANDO SOMENTE NO BLOCO PC INDIVIDUALMENTE, É ESSA LOGICA
--	RFOR: for I in 0 to 7 generate
--		Jpc(I) <= (not(R(I)) and carga) or (incrementa and not(Carga) and not(soma_result(I)));
--		Kpc(I) <= (R(I) and carga) or (incrementa and not(carga) and soma_result(I));
--		FFN: FlipFlopJK port map(Jpc(I), Kpc(I), '1', '1', clk, Qs(I)); --Queremos armazenar o endereco de memoria, logo precisamos de um conjunto de flipflops, feito com portmap FFN.
--	end generate RFOR;
--	
--	E <= Qs;


		--PENSANDO NO BLOCO PC NO CONJUNTO DO NEANDER, SÓ DEVEMOS INCREMENTAR OS 4 ULTIMOS BITS SIGNIFICATIVOS, QUE É REALMENTE O ENDERECO  DA MEMORIA
	RFOR: for I in 0 to 3 generate
		Jpc(I) <= (not(R(I)) and carga) or (incrementa and not(Carga) and not(soma_result(I)));
		Kpc(I) <= (R(I) and carga) or (incrementa and not(carga) and soma_result(I));
		FFN: FlipFlopJK port map(Jpc(I), Kpc(I), '1', '1', clk, Qs(I)); --Queremos armazenar o endereco de memoria, logo precisamos de um conjunto de flipflops, feito com portmap FFN.
		E(I) <= Qs(I);
	end generate RFOR;
	
		--PREENCHE as posicoes mais significativas do vetor de saida E, pois a memoria so vai ter 15 enderecos (que sao representados pelos 4 bits menos significativos)
	aux_s <= '0' and '0';
	E(7)<= aux_s;
	E(6)<= aux_s;
	E(5)<= aux_s;
	E(4)<= aux_s;
	


end archPCcomJK;