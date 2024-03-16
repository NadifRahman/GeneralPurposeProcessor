library verilog;
use verilog.vl_types.all;
entity GPP is
    port(
        R1              : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        En_Decod        : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_Reset       : in     vl_logic;
        R2              : out    vl_logic_vector(0 to 6);
        SignLED         : out    vl_logic_vector(0 to 6);
        StudentIdLed    : out    vl_logic_vector(0 to 6)
    );
end GPP;
