library ieee;
use ieee.std_logic_1164.all;

entity Registrador8bits is 
	port(
		clk : in std_logic;
		clear : in std_logic;
		load : in std_logic;
		preset : in std_logic;
		entrada : in std_logic_vector(7 downto 0);
		output : out std_logic_vector(7 downto 0)
	);
end Registrador8bits;

architecture archRegistrador8bits of Registrador8bits is

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
	
	begin 
		
		FF0 : flipFlopJK port map (not(entrada(0)),entrada(0),'1','1',clk,Qs(0), Qs_bar(0));	
					RFOR : for I in 1 to 7 generate
						FFN: flipFlopJK port map (not(entrada(I)),entrada(I),'1','1', clk, Qs(I), Qs_bar(I));
				end generate RFOR;
				
		 output <= Qs;

end archRegistrador8bits;