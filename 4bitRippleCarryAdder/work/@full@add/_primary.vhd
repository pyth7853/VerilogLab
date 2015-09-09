library verilog;
use verilog.vl_types.all;
entity FullAdd is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        Carry_In        : in     vl_logic;
        Sum             : out    vl_logic;
        Carry_Out       : out    vl_logic
    );
end FullAdd;
