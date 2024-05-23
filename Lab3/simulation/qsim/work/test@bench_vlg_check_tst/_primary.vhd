library verilog;
use verilog.vl_types.all;
entity testBench_vlg_check_tst is
    port(
        mstl            : in     vl_logic_vector(2 downto 0);
        slct            : in     vl_logic_vector(1 downto 0);
        sstl            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end testBench_vlg_check_tst;
