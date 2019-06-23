library ieee;
use ieee.std_logic_1164.all;

entity celula is
generic (N : integer := 8);


port(
		clk, rw : in std_logic;
		E				: in std_logic_vector(N-1 downto 0);
		T				: in std_logic_vector(3 downto 0);
		P				: in std_logic_vector(3 downto 0);
		S				: out std_logic_vector(N-1 downto 0);
		M				: out std_logic_vector(N-1 downto 0)	-- Usada para teste
);

end celula;

architecture archCelula of celula is

component  FlipFlopJK is
	port(
	
		J, K, preset, clear		: in std_logic;
		clk							: in std_logic;
		Q, QBar						: out std_logic
		
	);
end component;

signal Qs : std_logic_vector(N-1 downto 0);
signal aux: std_logic_vector(3 downto 0);
signal en : std_logic;
	
begin
	aux <=  T xnor P;
	en <= aux(0) and aux(1) and aux(2) and aux(3);
	
	FOR01: for i in 0 to (N-1) generate	
		cont1: FlipFlopJK port map(not(E(i)) or not(en), E(i) and rw, '1', '1', clk and rw, Qs(i));
		S(i) <= Qs(i) and rw;
	end generate;
	M <= Qs;

end archCelula;
	
