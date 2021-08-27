library verilog;
use verilog.vl_types.all;
entity MSDffR is
    port(
        d               : in     vl_logic;
        r               : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end MSDffR;
