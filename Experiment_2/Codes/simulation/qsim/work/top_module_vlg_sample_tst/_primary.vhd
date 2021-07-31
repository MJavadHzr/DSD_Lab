library verilog;
use verilog.vl_types.all;
entity top_module_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        Ent             : in     vl_logic;
        \IN\            : in     vl_logic;
        \OUT\           : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_module_vlg_sample_tst;
