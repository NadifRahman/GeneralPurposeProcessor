library verilog;
use verilog.vl_types.all;
entity GPP_vlg_check_tst is
    port(
        R1              : in     vl_logic_vector(0 to 6);
        R2              : in     vl_logic_vector(0 to 6);
        SignLED         : in     vl_logic_vector(0 to 6);
        StudentIdLed    : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end GPP_vlg_check_tst;
