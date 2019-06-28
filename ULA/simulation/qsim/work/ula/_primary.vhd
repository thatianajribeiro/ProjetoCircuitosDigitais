library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        operacao        : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(7 downto 0);
        NZ              : out    vl_logic_vector(1 downto 0)
    );
end ula;
