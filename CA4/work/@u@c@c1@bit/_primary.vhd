library verilog;
use verilog.vl_types.all;
entity UCC1Bit is
    port(
        cin             : in     vl_logic;
        fin             : in     vl_logic;
        pin             : in     vl_logic;
        m               : in     vl_logic_vector(1 downto 0);
        cout            : out    vl_logic;
        fout            : out    vl_logic;
        mo              : out    vl_logic_vector(1 downto 0)
    );
end UCC1Bit;
