library verilog;
use verilog.vl_types.all;
entity address_jump is
    port(
        PC              : in     vl_logic_vector(31 downto 0);
        INST            : in     vl_logic_vector(31 downto 0);
        O               : out    vl_logic_vector(31 downto 0)
    );
end address_jump;
