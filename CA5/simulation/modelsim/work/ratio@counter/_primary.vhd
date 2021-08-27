library verilog;
use verilog.vl_types.all;
entity ratioCounter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        zeroLd          : in     vl_logic;
        ratio50ToInf    : out    vl_logic_vector(16 downto 0)
    );
end ratioCounter;
