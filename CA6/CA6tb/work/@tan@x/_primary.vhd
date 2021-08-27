library verilog;
use verilog.vl_types.all;
entity TanX is
    port(
        ready           : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        x               : in     vl_logic_vector(15 downto 0);
        busy            : out    vl_logic;
        tan             : out    vl_logic_vector(15 downto 0)
    );
end TanX;
