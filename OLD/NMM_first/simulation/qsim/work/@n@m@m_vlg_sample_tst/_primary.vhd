library verilog;
use verilog.vl_types.all;
entity NMM_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        SQR_IN          : in     vl_logic;
        SQR_OUT         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end NMM_vlg_sample_tst;
