library verilog;
use verilog.vl_types.all;
entity controller_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        CR              : in     vl_logic_vector(3 downto 0);
        I               : in     vl_logic_vector(11 downto 0);
        load            : in     vl_logic;
        LR              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end controller_vlg_sample_tst;
