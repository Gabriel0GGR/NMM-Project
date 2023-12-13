library verilog;
use verilog.vl_types.all;
entity nmm_vlg_sample_tst is
    port(
        C0              : in     vl_logic;
        C1              : in     vl_logic;
        C2              : in     vl_logic;
        C3              : in     vl_logic;
        clk             : in     vl_logic;
        sqr_in          : in     vl_logic;
        sqr_out         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end nmm_vlg_sample_tst;
