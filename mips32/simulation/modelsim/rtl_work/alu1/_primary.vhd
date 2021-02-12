library verilog;
use verilog.vl_types.all;
entity alu1 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        Ci              : in     vl_logic;
        Co              : out    vl_logic;
        O               : out    vl_logic
    );
end alu1;
