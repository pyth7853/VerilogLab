library verilog;
use verilog.vl_types.all;
entity add is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end add;
