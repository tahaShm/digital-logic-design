library verilog;
use verilog.vl_types.all;
entity CA5 is
    port(
        outSignal       : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        countDownEn     : in     vl_logic;
        LdP             : in     vl_logic;
        shE             : in     vl_logic;
        inSignal        : in     vl_logic;
        cntUp           : in     vl_logic;
        rstDone         : in     vl_logic;
        n               : in     vl_logic_vector(2 downto 0);
        done            : out    vl_logic
    );
end CA5;
