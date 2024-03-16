library verilog;
use verilog.vl_types.all;
entity modifieddec4to16 is
    port(
        OP              : out    vl_logic_vector(0 to 15);
        s               : in     vl_logic_vector(3 downto 0);
        En              : in     vl_logic
    );
end modifieddec4to16;
