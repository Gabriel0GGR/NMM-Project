library verilog;
use verilog.vl_types.all;
entity nmm_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(11 downto 0);
        AT              : in     vl_logic_vector(9 downto 0);
        c_out           : in     vl_logic;
        DC              : in     vl_logic_vector(3 downto 0);
        M               : in     vl_logic_vector(9 downto 0);
        MC              : in     vl_logic_vector(9 downto 0);
        T               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end nmm_vlg_check_tst;
