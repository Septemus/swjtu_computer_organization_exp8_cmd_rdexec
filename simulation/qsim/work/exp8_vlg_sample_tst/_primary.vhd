library verilog;
use verilog.vl_types.all;
entity exp8_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        clk             : in     vl_logic;
        key_out         : in     vl_logic_vector(7 downto 0);
        M               : in     vl_logic_vector(1 downto 0);
        manual_plus     : in     vl_logic;
        pc_clr          : in     vl_logic;
        RA              : in     vl_logic_vector(1 downto 0);
        rd              : in     vl_logic;
        wr              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exp8_vlg_sample_tst;
