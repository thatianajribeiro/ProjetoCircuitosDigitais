library ieee;
use ieee.std_logic_1164.all;

entity PCcomJK is
	port(
		clk : in std_logic; --pulso de clock (definido pela FPGA)
		reset : in std_logic; --reseta o contador do PC
		Inc : in std_logic; --incrementa endereço de memória armazenado em "reg"
		C : in std_logic; --carga faz registrador receber o valor da entrada
		m : in std_logic_vector(7 downto 0); --endereço de memória a ser carregado 
		pm : out std_logic_vector(7 downto 0) --proximo endereço de memória a ser carregado 
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
		A, B : in std_logic_vector (3 downto 0);
		soma : out std_logic_vector(4 downto 0)
	);
	end component;
	signal reg: std_logic_vector(7 downto 0) := "00000000"; isso aqui ainda eh incerteza
	signal Qs: std_logic_vector(7 downto 0);
	signal Jpc, Kpc: std_logic_vector(7 downto 0); --Sinais resposaveis pela logica para gerar o resistrador interno do CONTADOR DE PROGRAMA
begin
	Qs <= soma(pm, inc and not(C)); --Perguntar se posso colocar que Qs recebe a soma diretamente ou se eh necessario um laco	
	RFOR: for I in 0 to 7 generate
		JN: Jpc(I) <= (not(C(I)) and Inc(I) and not(Qs(I))) or (C(I) and not(M(I)));
		KN: Kpc(I) <= (not(C(I)) and Inc(I) and Qs(I)) or (C(I) and M(I));
		FFN: FlipFlopJK port map(Jpc(I), Kpc(I), '1', '1', clk, Qs(I)); --Sera que eh o Q depois de somado mesmo?
	end generate RFOR;
	pm <= Qs; --Aqui sera o endereco apos ter passado no FlipFlopJK
end archPCcomJK;