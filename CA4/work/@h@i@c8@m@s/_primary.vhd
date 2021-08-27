library verilog;
use verilog.vl_types.all;
entity HIC8MS is
    port(
        cin             : in     vl_logic;
        pin             : in     vl_logic_vector(7 downto 0);
        m               : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        cout            : out    vl_logic;
        fout            : out    vl_logic_vector(7 downto 0);
        mo              : out    vl_logic_vector(1 downto 0)
    );
end HIC8MS;
