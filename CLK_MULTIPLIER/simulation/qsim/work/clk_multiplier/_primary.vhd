library verilog;
use verilog.vl_types.all;
entity clk_multiplier is
    port(
        CLK_OUT_1       : out    vl_logic;
        SET             : in     vl_logic;
        CLR             : in     vl_logic;
        T               : in     vl_logic;
        CLK_IN_1        : in     vl_logic;
        CLK_OUT_2       : out    vl_logic;
        CLK_IN_2        : in     vl_logic;
        C_OUT           : out    vl_logic;
        C_IN            : in     vl_logic;
        S0              : out    vl_logic;
        S1              : out    vl_logic;
        S2              : out    vl_logic;
        S3              : out    vl_logic
    );
end clk_multiplier;
