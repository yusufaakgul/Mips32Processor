library verilog;
use verilog.vl_types.all;
entity comparator_out_select is
    port(
        gt              : in     vl_logic;
        eq              : in     vl_logic;
        lt              : in     vl_logic;
        o               : out    vl_logic_vector(31 downto 0)
    );
end comparator_out_select;
