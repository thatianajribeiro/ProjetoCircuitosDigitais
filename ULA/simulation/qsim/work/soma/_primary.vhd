library verilog;
use verilog.vl_types.all;
entity soma is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        S               : out    vl_logic_vector(7 downto 0);
        Co              : out    vl_logic
    );
end soma;
