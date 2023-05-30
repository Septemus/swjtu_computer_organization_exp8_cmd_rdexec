library verilog;
use verilog.vl_types.all;
entity exp8_vlg_check_tst is
    port(
        opt1            : in     vl_logic_vector(7 downto 0);
        opt2            : in     vl_logic_vector(7 downto 0);
        PC              : in     vl_logic_vector(7 downto 0);
        R0              : in     vl_logic_vector(7 downto 0);
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        res_alu         : in     vl_logic_vector(7 downto 0);
        res_dest        : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end exp8_vlg_check_tst;
