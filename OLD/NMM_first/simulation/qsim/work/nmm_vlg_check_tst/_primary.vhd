library verilog;
use verilog.vl_types.all;
entity nmm_vlg_check_tst is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        number          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end nmm_vlg_check_tst;
