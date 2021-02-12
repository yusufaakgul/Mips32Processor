library verilog;
use verilog.vl_types.all;
entity adder32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        O               : out    vl_logic_vector(31 downto 0);
        Co              : out    vl_logic
    );
end adder32;
