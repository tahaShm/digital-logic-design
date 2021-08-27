library verilog;
use verilog.vl_types.all;
entity UCC8Bit is
    port(
        cin             : in     vl_logic;
        fin             : in     vl_logic_vector(7 downto 0);
        pin             : in     vl_logic_vector(7 downto 0);
        m               : in     vl_logic_vector(1 downto 0);
        cout            : out    vl_logic;
        fout            : out    vl_logic_vector(7 downto 0);
        mout            : out    vl_logic_vector(1 downto 0)
    );
end UCC8Bit;
