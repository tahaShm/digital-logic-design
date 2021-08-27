library verilog;
use verilog.vl_types.all;
entity frequencyDivider is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        countDownEn     : in     vl_logic;
        LdP             : in     vl_logic;
        pin             : in     vl_logic_vector(15 downto 0);
        outSignal       : out    vl_logic
    );
end frequencyDivider;
