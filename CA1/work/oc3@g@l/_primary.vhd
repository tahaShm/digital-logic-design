library verilog;
use verilog.vl_types.all;
entity oc3GL is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        y0              : out    vl_logic;
        y1              : out    vl_logic
    );
end oc3GL;
