library verilog;
use verilog.vl_types.all;
entity clk_multiplier_vlg_check_tst is
    port(
        C_OUT           : in     vl_logic;
        CLK_OUT_1       : in     vl_logic;
        CLK_OUT_2       : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end clk_multiplier_vlg_check_tst;
