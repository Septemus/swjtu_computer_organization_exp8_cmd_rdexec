library verilog;
use verilog.vl_types.all;
entity exp8 is
    port(
        opt1            : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        cin             : in     vl_logic;
        PC              : out    vl_logic_vector(7 downto 0);
        wr              : in     vl_logic;
        rd              : in     vl_logic;
        pc_clr          : in     vl_logic;
        manual_plus     : in     vl_logic;
        enact           : in     vl_logic;
        key_out         : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        RA              : in     vl_logic_vector(1 downto 0);
        res_alu         : out    vl_logic_vector(7 downto 0);
        res_dest        : out    vl_logic_vector(1 downto 0);
        R0              : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0);
        opt2            : out    vl_logic_vector(7 downto 0)
    );
end exp8;
