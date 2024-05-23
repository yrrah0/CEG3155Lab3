library verilog;
use verilog.vl_types.all;
entity testBench_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ctep            : in     vl_logic;
        resetn          : in     vl_logic;
        sscs            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end testBench_vlg_sample_tst;
