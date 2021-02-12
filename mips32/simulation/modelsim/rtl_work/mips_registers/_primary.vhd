library verilog;
use verilog.vl_types.all;
entity mips_registers is
    port(
        read_reg_1      : in     vl_logic_vector(4 downto 0);
        read_reg_2      : in     vl_logic_vector(4 downto 0);
        write_reg_1     : in     vl_logic_vector(4 downto 0);
        write_data_1    : in     vl_logic_vector(31 downto 0);
        write_reg_2     : in     vl_logic_vector(4 downto 0);
        write_data_2    : in     vl_logic_vector(31 downto 0);
        read_data_1     : out    vl_logic_vector(31 downto 0);
        read_data_2     : out    vl_logic_vector(31 downto 0);
        signal_reg_write_1: in     vl_logic;
        signal_reg_write_2: in     vl_logic;
        clk             : in     vl_logic
    );
end mips_registers;
