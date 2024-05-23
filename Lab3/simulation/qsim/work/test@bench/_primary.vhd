library verilog;
use verilog.vl_types.all;
entity testBench is
    port(
        mstl            : out    vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        resetn          : in     vl_logic;
        sscs            : in     vl_logic;
        ctep            : in     vl_logic;
        slct            : out    vl_logic_vector(1 downto 0);
        sstl            : out    vl_logic_vector(2 downto 0)
    );
end testBench;
