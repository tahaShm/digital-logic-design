library verilog;
use verilog.vl_types.all;
entity n_shifter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        shE             : in     vl_logic;
        n               : in     vl_logic_vector(2 downto 0);
        m               : in     vl_logic_vector(15 downto 0);
        shOut           : out    vl_logic_vector(15 downto 0)
    );
end n_shifter;
