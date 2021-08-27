library verilog;
use verilog.vl_types.all;
entity one_counter_127bit is
    port(
        a               : in     vl_logic_vector(126 downto 0);
        s               : out    vl_logic_vector(6 downto 0)
    );
end one_counter_127bit;
