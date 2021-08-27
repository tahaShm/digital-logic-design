library verilog;
use verilog.vl_types.all;
entity freqMultTB is
    generic(
        c               : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of c : constant is 1;
end freqMultTB;
