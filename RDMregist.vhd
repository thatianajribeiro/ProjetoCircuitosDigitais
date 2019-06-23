library ieee;
use ieee.std_logic_1164.all;
entity RDMregist is
    port(clk: in std_logic;
			 reset: in std_logic;
	       loadRDM: in std_logic;
          datain: in std_logic_vector(7 downto 0);
          dataOut: out std_logic_vector(7 downto 0));
end RDMregist;

architecture ffd of RDMregist is
signal reg: std_logic_vector(7 downto 0) := (others => '0');
    begin
	 dataOut <= reg;
    process (clk,loadRDM,reset)
        begin
		  if reset='1' then
				reg<= (others =>'0');
		  elsif clk'event and clk='1' then
            if loadRDM = '1' then
					reg<=dataIn;
				end if;
			end if;
    end process;
end ffd;