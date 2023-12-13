library verilog;
use verilog.vl_types.all;
entity nmm is
    port(
        dd              : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        b3              : in     vl_logic;
        sqr_in          : in     vl_logic;
        sqr_out         : in     vl_logic;
        ds              : out    vl_logic_vector(5 downto 0)
    );
end nmm;
