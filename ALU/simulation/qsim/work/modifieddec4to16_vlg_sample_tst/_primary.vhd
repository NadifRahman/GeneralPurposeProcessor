library verilog;
use verilog.vl_types.all;
entity modifieddec4to16_vlg_sample_tst is
    port(
        En              : in     vl_logic;
        s               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end modifieddec4to16_vlg_sample_tst;
