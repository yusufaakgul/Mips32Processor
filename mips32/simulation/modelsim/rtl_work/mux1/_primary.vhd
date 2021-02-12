library verilog;
use verilog.vl_types.all;
entity mux1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        S               : in     vl_logic;
        O               : out    vl_logic
    );
end mux1;
