library verilog;
use verilog.vl_types.all;
entity mux32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic;
        O               : out    vl_logic_vector(31 downto 0)
    );
end mux32;
