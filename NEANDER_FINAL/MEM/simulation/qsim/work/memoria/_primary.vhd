library verilog;
use verilog.vl_types.all;
entity memoria is
    port(
        rw              : in     vl_logic;
        clk             : in     vl_logic;
        rem_end         : in     vl_logic_vector(7 downto 0);
        Dados           : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic_vector(7 downto 0)
    );
end memoria;
