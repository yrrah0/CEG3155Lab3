library verilog;
use verilog.vl_types.all;
entity trafficlight is
    port(
        bcd13           : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        sscs            : in     vl_logic;
        msc             : in     vl_logic_vector(3 downto 0);
        ssc             : in     vl_logic_vector(3 downto 0);
        bcd12           : out    vl_logic;
        bcd11           : out    vl_logic;
        bcd10           : out    vl_logic;
        bcd23           : out    vl_logic;
        bcd22           : out    vl_logic;
        bcd21           : out    vl_logic;
        bcd20           : out    vl_logic;
        mstl            : out    vl_logic_vector(2 downto 0);
        sstl            : out    vl_logic_vector(2 downto 0)
    );
end trafficlight;
