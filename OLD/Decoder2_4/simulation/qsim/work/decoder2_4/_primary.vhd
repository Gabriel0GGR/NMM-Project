library verilog;
use verilog.vl_types.all;
entity decoder2_4 is
    port(
        LR              : in     vl_logic_vector(1 downto 0);
        LO              : out    vl_logic_vector(3 downto 0)
    );
end decoder2_4;
