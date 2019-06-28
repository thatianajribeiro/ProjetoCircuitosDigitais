library verilog;
use verilog.vl_types.all;
entity memoria_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        Dados           : in     vl_logic_vector(7 downto 0);
        rem_end         : in     vl_logic_vector(7 downto 0);
        rw              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memoria_vlg_sample_tst;
