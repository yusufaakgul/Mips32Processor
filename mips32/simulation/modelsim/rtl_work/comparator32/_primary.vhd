library verilog;
use verilog.vl_types.all;
entity comparator32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Gt              : out    vl_logic;
        Eq              : out    vl_logic;
        Lt              : out    vl_logic
    );
end comparator32;
