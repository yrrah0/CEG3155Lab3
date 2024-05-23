library verilog;
use verilog.vl_types.all;
entity trafficlight_vlg_check_tst is
    port(
        bcd10           : in     vl_logic;
        bcd11           : in     vl_logic;
        bcd12           : in     vl_logic;
        bcd13           : in     vl_logic;
        bcd20           : in     vl_logic;
        bcd21           : in     vl_logic;
        bcd22           : in     vl_logic;
        bcd23           : in     vl_logic;
        mstl            : in     vl_logic_vector(2 downto 0);
        sstl            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end trafficlight_vlg_check_tst;
