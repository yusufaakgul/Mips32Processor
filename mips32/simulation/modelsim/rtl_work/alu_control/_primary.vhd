library verilog;
use verilog.vl_types.all;
entity alu_control is
    port(
        OP              : in     vl_logic_vector(1 downto 0);
        FF              : in     vl_logic_vector(5 downto 0);
        O               : out    vl_logic_vector(2 downto 0);
        JR              : out    vl_logic
    );
end alu_control;
