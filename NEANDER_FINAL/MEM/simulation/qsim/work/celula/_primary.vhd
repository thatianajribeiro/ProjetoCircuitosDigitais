library verilog;
use verilog.vl_types.all;
entity celula is
    port(
        clk             : in     vl_logic;
        rw              : in     vl_logic;
        E               : in     vl_logic_vector(7 downto 0);
        T               : in     vl_logic_vector(3 downto 0);
        P               : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(7 downto 0);
        M               : out    vl_logic_vector(7 downto 0)
    );
end celula;
