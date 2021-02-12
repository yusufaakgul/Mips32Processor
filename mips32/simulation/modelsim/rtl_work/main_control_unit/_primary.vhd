library verilog;
use verilog.vl_types.all;
entity main_control_unit is
    port(
        OP              : in     vl_logic_vector(5 downto 0);
        RegDst          : out    vl_logic;
        ALUSrc          : out    vl_logic;
        MemtoReg        : out    vl_logic;
        RegWrite        : out    vl_logic;
        RegWrite2       : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Branch          : out    vl_logic;
        BranchN         : out    vl_logic;
        Lui             : out    vl_logic;
        Jump            : out    vl_logic;
        JAL             : out    vl_logic;
        ALUop           : out    vl_logic_vector(1 downto 0)
    );
end main_control_unit;
