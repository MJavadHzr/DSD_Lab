library verilog;
use verilog.vl_types.all;
entity top_module is
    port(
        close           : out    vl_logic;
        \IN\            : in     vl_logic;
        Ent             : in     vl_logic;
        \OUT\           : in     vl_logic;
        clear           : in     vl_logic;
        T               : in     vl_logic;
        clk             : in     vl_logic;
        \open\          : out    vl_logic;
        test0           : out    vl_logic;
        test1           : out    vl_logic;
        test2           : out    vl_logic;
        test3           : out    vl_logic
    );
end top_module;
