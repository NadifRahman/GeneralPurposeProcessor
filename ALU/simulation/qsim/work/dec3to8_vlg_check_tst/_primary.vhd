library verilog;
use verilog.vl_types.all;
entity dec3to8_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end dec3to8_vlg_check_tst;
