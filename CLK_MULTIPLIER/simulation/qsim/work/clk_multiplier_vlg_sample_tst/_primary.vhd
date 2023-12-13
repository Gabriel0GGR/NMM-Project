library verilog;
use verilog.vl_types.all;
entity clk_multiplier_vlg_sample_tst is
    port(
        C_IN            : in     vl_logic;
        CLK_IN_1        : in     vl_logic;
        CLK_IN_2        : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clk_multiplier_vlg_sample_tst;
