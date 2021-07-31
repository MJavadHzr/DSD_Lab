library verilog;
use verilog.vl_types.all;
entity top_module_vlg_check_tst is
    port(
        close           : in     vl_logic;
        \open\          : in     vl_logic;
        test0           : in     vl_logic;
        test1           : in     vl_logic;
        test2           : in     vl_logic;
        test3           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end top_module_vlg_check_tst;
