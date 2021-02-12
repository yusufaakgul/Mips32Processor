library verilog;
use verilog.vl_types.all;
entity sign_extender is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        O               : out    vl_logic_vector(31 downto 0)
    );
end sign_extender;
