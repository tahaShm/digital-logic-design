library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        inC             : in     vl_logic;
        cntUp           : in     vl_logic;
        rstDone         : in     vl_logic;
        done            : out    vl_logic;
        cout            : out    vl_logic_vector(15 downto 0)
    );
end counter;
