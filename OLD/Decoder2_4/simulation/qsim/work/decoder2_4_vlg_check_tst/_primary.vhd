library verilog;
use verilog.vl_types.all;
entity decoder2_4_vlg_check_tst is
    port(
        LO              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end decoder2_4_vlg_check_tst;
