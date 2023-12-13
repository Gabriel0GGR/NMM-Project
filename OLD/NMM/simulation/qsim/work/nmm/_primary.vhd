library verilog;
use verilog.vl_types.all;
entity nmm is
    port(
        c_out           : out    vl_logic;
        clk             : in     vl_logic;
        sqr_in          : in     vl_logic;
        sqr_out         : in     vl_logic;
        L0              : out    vl_logic;
        C0              : in     vl_logic;
        C2              : in     vl_logic;
        C1              : in     vl_logic;
        C3              : in     vl_logic;
        L1              : out    vl_logic;
        L2              : out    vl_logic;
        L3              : out    vl_logic;
        A               : out    vl_logic_vector(11 downto 0);
        AT              : out    vl_logic_vector(9 downto 0);
        DC              : out    vl_logic_vector(3 downto 0);
        M               : out    vl_logic_vector(9 downto 0);
        MC              : out    vl_logic_vector(9 downto 0);
        T               : out    vl_logic_vector(15 downto 0)
    );
end nmm;
