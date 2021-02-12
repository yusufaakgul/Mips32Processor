library verilog;
use verilog.vl_types.all;
entity alu32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        Co              : out    vl_logic;
        O               : out    vl_logic_vector(31 downto 0);
        Ow              : out    vl_logic;
        Zero            : out    vl_logic
    );
end alu32;
