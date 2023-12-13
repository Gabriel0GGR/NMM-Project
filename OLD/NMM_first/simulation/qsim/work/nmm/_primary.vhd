library verilog;
use verilog.vl_types.all;
entity nmm is
    port(
        sqr_in          : in     vl_logic;
        sqr_out         : in     vl_logic;
        clk             : in     vl_logic;
        number          : out    vl_logic_vector(31 downto 0);
        a               : out    vl_logic_vector(31 downto 0)
    );
end nmm;
