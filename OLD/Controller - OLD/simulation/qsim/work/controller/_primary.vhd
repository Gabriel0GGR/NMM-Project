library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        A               : in     vl_logic_vector(11 downto 0);
        clk             : in     vl_logic;
        M               : out    vl_logic_vector(11 downto 0)
    );
end controller;
