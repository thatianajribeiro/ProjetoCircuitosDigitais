library ieee;
use ieee.std_logic_1164.all;

entity memoria is
port(
		rw												  : in std_logic;									-- Habilita a leitura e escrita de dados
		clk		  									  : in std_logic;									-- Entrada do clock
		rem_end									     : in std_logic_vector(7 downto 0);  		-- Recebe o endereço vindo do REM
		Dados		  									  : in std_logic_vector(7 downto 0);		-- Entrada de dados
		S								 				  : out std_logic_vector(7 downto 0)		-- Saída de dados

);

end memoria;

architecture archMemoria of memoria is

component celula is
generic (N : integer := 8);

port(
		clk, rw 		: in std_logic; 							  -- Clock e habilitador de leitura/escrita
		E				: in std_logic_vector(N-1 downto 0);  -- Desculpa a desorganização nos nomes das portas, não teve outro jeito.
		T				: in std_logic_vector(3 downto 0);	  -- Endereço de entrada
		P				: in std_logic_vector(3 downto 0);	  -- "Chave" da célula, poderia ter chamado de key
		S				: out std_logic_vector(N-1 downto 0); -- Saída
		M				: out std_logic_vector(N-1 downto 0)  -- Usado para teste
);

end component;

signal T 											  : std_logic_vector(3 downto 0);
signal OP00, OP01, OP02, OP03, OP04			  : std_logic_vector(7 downto 0);		-- Saída de dados da célula
signal OP05, OP06, OP07, OP08, OP09			  : std_logic_vector(7 downto 0);		
signal OP10, OP11, OP12, OP13, OP14			  : std_logic_vector(7 downto 0);		
signal OP15 										  : std_logic_vector(7 downto 0);		

begin

	T(0) <= rem_end(0);
	T(1) <= rem_end(1);
	T(2) <= rem_end(2);
	T(3) <= rem_end(3);
	
	
	CEL00 : celula port map(clk, rw, Dados, T, "0000", OP00); -- Chamada: na descida de clock e com o rw ativado, o dado de entrada entra na célula.
	CEL01 : celula port map(clk, rw, Dados, T, "0001", OP01); -- O endereço T é comparado com o código da célula entre aspas duplas
	CEL02 : celula port map(clk, rw, Dados, T, "0010", OP02); -- A informação de saída é gravada no vetor OP.
	CEL03 : celula port map(clk, rw, Dados, T, "0011", OP03);
	CEL04 : celula port map(clk, rw, Dados, T, "0100", OP04);
	CEL05 : celula port map(clk, rw, Dados, T, "0101", OP05);
	CEL06 : celula port map(clk, rw, Dados, T, "0110", OP06);
	CEL07 : celula port map(clk, rw, Dados, T, "0111", OP07);
	CEL08 : celula port map(clk, rw, Dados, T, "1000", OP08);
	CEL09 : celula port map(clk, rw, Dados, T, "1001", OP09);
	CEL10 : celula port map(clk, rw, Dados, T, "1010", OP10);
	CEL11 : celula port map(clk, rw, Dados, T, "1011", OP11);
	CEL12 : celula port map(clk, rw, Dados, T, "1100", OP12);
	CEL13 : celula port map(clk, rw, Dados, T, "1101", OP13);
	CEL14 : celula port map(clk, rw, Dados, T, "1110", OP14);
	CEL15 : celula port map(clk, rw, Dados, T, "1111", OP15);
	
	S <= OP00 OR OP01 OR OP02 OR OP03 OR OP04 OR OP05 OR OP06 OR OP07 OR OP08 OR OP09 		-- Se a célula não for a solicitada, retornará 0. Se for a solicidada, retornará o valor dado na entrada.
													OR OP10 OR OP11 OR OP12 OR OP13 OR OP14 OR OP15;	-- Lembrando que: Falso (0) 'ou' qualquer coisa é qualquer coisa. O resultado é escrito na saída.


end archMemoria;