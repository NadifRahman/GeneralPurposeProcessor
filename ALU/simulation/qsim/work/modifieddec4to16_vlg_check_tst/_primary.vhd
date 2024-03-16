library verilog;
use verilog.vl_types.all;
entity modifieddec4to16_vlg_check_tst is
    port(
        OP              : in     vl_logic_vector(0 to 15);
        sampler_rx      : in     vl_logic
    );
end modifieddec4to16_vlg_check_tst;
