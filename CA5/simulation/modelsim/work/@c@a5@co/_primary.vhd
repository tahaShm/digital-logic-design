library verilog;
use verilog.vl_types.all;
entity CA5Co is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        done            : in     vl_logic;
        adjust          : in     vl_logic;
        n               : in     vl_logic_vector(2 downto 0);
        cntUp           : out    vl_logic;
        rstDone         : out    vl_logic;
        shE             : out    vl_logic;
        LdP             : out    vl_logic;
        downCountEn     : out    vl_logic;
        valid           : out    vl_logic
    );
end CA5Co;
