library verilog;
use verilog.vl_types.all;
entity add1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Ci              : in     vl_logic;
        O               : out    vl_logic;
        Co              : out    vl_logic
    );
end add1;
