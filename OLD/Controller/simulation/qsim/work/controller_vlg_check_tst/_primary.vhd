library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(11 downto 0);
        AT              : in     vl_logic_vector(9 downto 0);
        DC              : in     vl_logic_vector(3 downto 0);
        M               : in     vl_logic_vector(9 downto 0);
        MC              : in     vl_logic_vector(9 downto 0);
        T               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
