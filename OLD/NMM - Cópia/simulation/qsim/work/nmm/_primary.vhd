library verilog;
use verilog.vl_types.all;
entity nmm is
    port(
        pin_name1       : out    vl_logic;
        sqr_in          : in     vl_logic;
        sqr_out         : in     vl_logic;
        clk             : in     vl_logic;
        pin_name2       : out    vl_logic;
        pin_name3       : out    vl_logic;
        pin_name4       : out    vl_logic;
        pin_name5       : out    vl_logic;
        pin_name6       : out    vl_logic;
        pin_name7       : out    vl_logic;
        pin_name8       : out    vl_logic;
        pin_name9       : out    vl_logic;
        pin_name10      : out    vl_logic;
        pin_name11      : out    vl_logic;
        pin_name12      : out    vl_logic;
        load            : out    vl_logic;
        c_out           : out    vl_logic
    );
end nmm;
