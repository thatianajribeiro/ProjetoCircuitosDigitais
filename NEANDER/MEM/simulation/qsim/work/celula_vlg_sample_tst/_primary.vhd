library verilog;
use verilog.vl_types.all;
entity celula_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        E               : in     vl_logic_vector(7 downto 0);
        P               : in     vl_logic_vector(3 downto 0);
        rw              : in     vl_logic;
        T               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end celula_vlg_sample_tst;
