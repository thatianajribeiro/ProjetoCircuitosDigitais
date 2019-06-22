library ieee;
use ieee.std_logic_1164.all;

entity PCcomJK is
	port(
		clk : in std_logic; --pulso de clock (definido pela FPGA)
		R : in std_logic_vector(7 downto 0); --incrementa endereço de memória armazenado em "reg"
		carga, incrementa : in std_logic; --carga faz registrador receber o valor da entrada
		E : out std_logic_vector(7 downto 0) --proximo endereço de memória a ser carregado
		--Qf: out std_logic_vector(7 downto 0)
		
	);
end PCcomJK;

architecture archPCcomJK of PCcomJK is
	
	--Este componente serve para o resistrador
	component FlipFlopJK is
	port(
		J, K: in std_logic;
		preset, clear: in std_logic;
		clk:	in std_logic;
		Q, Qbar: out std_logic
	);
	end component;
	
	--A soma serve para quando o usuario quiser incrementar, assim o Qs eh acrescentado
	component soma is
	port(
		A, B : in std_logic_vector (7 downto 0);
		soma : out std_logic_vector(7 downto 0)
	);
	
	
	end component;

	signal Qs, soma_result: std_logic_vector(7 downto 0);
	signal Jpc, Kpc: std_logic_vector(7 downto 0); --Sinais resposaveis pela logica para gerar o resistrador interno do CONTADOR DE PROGRAMA

	
	
	begin
	
	somalabel: soma port map (Qs,"00000001", soma_result); --s do futuro
	
	
	
	RFOR: for I in 0 to 7 generate
		Jpc(I) <= (not(R(I)) and carga) or (incrementa and not(Carga) and not(soma_result(I)));
		Kpc(I) <= (R(I) and carga) or (incrementa and not(carga) and soma_result(I));
		FFN: FlipFlopJK port map(Jpc(I), Kpc(I), '1', '1', clk, Qs(I)); --Sera que eh o Q depois de somado mesmo?
	end generate RFOR;
	
	E <= Qs;
	
	 --Aqui sera o endereco apos ter passado no FlipFlopJK
end archPCcomJK;