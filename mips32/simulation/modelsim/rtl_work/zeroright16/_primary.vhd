library verilog;
use verilog.vl_types.all;
entity zeroright16 is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        O               : out    vl_logic_vector(31 downto 0)
    );
end zeroright16;
