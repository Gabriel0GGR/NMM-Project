library verilog;
use verilog.vl_types.all;
entity NMM_vlg_check_tst is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end NMM_vlg_check_tst;
