library verilog;
use verilog.vl_types.all;
entity comparator1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        lgt_in          : in     vl_logic;
        leq_in          : in     vl_logic;
        llt_in          : in     vl_logic;
        Gt_out          : out    vl_logic;
        Eq_out          : out    vl_logic;
        Lt_out          : out    vl_logic
    );
end comparator1;
