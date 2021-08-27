library verilog;
use verilog.vl_types.all;
entity n_bit_adder is
    generic(
        n               : integer := 4
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        cin             : in     vl_logic;
        s               : out    vl_logic_vector;
        co              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end n_bit_adder;
