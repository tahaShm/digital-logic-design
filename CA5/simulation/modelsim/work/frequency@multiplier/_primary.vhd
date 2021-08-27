library verilog;
use verilog.vl_types.all;
entity frequencyMultiplier is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        inSignal        : in     vl_logic;
        adjust          : in     vl_logic;
        n               : in     vl_logic_vector(2 downto 0);
        valid           : out    vl_logic;
        outSignal       : out    vl_logic
    );
end frequencyMultiplier;
