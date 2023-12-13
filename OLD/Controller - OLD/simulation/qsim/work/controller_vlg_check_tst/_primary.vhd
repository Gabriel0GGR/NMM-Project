library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        M               : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
