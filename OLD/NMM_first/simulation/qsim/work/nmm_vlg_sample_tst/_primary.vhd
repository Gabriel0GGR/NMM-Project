library verilog;
use verilog.vl_types.all;
entity nmm_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sqr_in          : in     vl_logic;
        sqr_out         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end nmm_vlg_sample_tst;
