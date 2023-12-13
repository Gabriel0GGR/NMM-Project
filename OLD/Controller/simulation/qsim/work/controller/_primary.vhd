library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        I               : in     vl_logic_vector(11 downto 0);
        clk             : in     vl_logic;
        load            : in     vl_logic;
        CR              : in     vl_logic_vector(3 downto 0);
        LR              : in     vl_logic_vector(1 downto 0);
        DC              : out    vl_logic_vector(3 downto 0);
        AT              : out    vl_logic_vector(9 downto 0);
        MC              : out    vl_logic_vector(9 downto 0);
        A               : out    vl_logic_vector(11 downto 0);
        T               : out    vl_logic_vector(15 downto 0);
        M               : out    vl_logic_vector(9 downto 0)
    );
end controller;
