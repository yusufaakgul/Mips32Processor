library verilog;
use verilog.vl_types.all;
entity nextPC is
    port(
        instruction     : in     vl_logic_vector(31 downto 0);
        PC_in           : in     vl_logic_vector(31 downto 0);
        PC_out          : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end nextPC;
