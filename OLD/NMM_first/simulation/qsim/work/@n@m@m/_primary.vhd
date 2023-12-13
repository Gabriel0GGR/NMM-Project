library verilog;
use verilog.vl_types.all;
entity NMM is
    port(
        SQR_IN          : in     vl_logic;
        SQR_OUT         : in     vl_logic;
        CLK             : in     vl_logic;
        a               : out    vl_logic_vector(31 downto 0)
    );
end NMM;
