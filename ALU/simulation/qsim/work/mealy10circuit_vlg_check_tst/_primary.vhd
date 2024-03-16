library verilog;
use verilog.vl_types.all;
entity mealy10circuit_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end mealy10circuit_vlg_check_tst;
