library ieee;
use ieee.std_logic_1164.all;

entity Reg2bits is 
port(
	clk : in std_logic;
	clear : in std_logic;
	load : in std_logic;
	preset : in std_logic;
	input : in std_logic_vector(1 downto 0);
	Output : out std_logic_vector(1 downto 0);
	Output_bar : out std_logic_vector(1 downto 0);
	Output_toCTRL: out std_logic

	);
end Reg2bits;

architecture archReg2bits of Reg2bits is

component flipFlopJK is
port(
	J,K : in std_logic;
	clear, preset, load : in std_logic;
	clk : in std_logic;
	Q, Qbar: out std_logic
);
end component;


	signal Qs: std_logic_vector (1 downto 0);
	signal QsBar: std_logic_vector (1 downto 0);

	
begin 
		
	
	FF0: flipFlopJK port map (not(input(0)),input(0),'1','1', load, clk,Qs(0), QsBar(0));	
	FF1: flipFlopJK port map (not(input(1)),input(1),'1','1', load,  clk, Qs(1), QsBar(1));			
	
	Output <= Qs;
	Output_bar <= QsBar;
	Output_toCTRL <= Qs(1) and not(Qs(0));



end archReg2bits;