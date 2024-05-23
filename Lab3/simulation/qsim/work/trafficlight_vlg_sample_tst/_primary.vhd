library verilog;
use verilog.vl_types.all;
entity trafficlight_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        msc             : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        ssc             : in     vl_logic_vector(3 downto 0);
        sscs            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end trafficlight_vlg_sample_tst;
