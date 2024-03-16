LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY hexasseg IS
    PORT (bcd          : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
            neg       : IN STD_LOGIC; 
            leds       : OUT STD_LOGIC_VECTOR(1 TO 7)  ;
            negative : OUT STD_LOGIC_VECTOR(1 TO 7) ) ;
END hexasseg ;
ARCHITECTURE Behavior OF hexasseg IS
BEGIN
    PROCESS (bcd, neg) 
    BEGIN

		CASE bcd IS               --  abcdefg
            WHEN "0000" => leds <= "0000001";
            WHEN "0001" => leds <= "1001111";
            WHEN "0010" => leds <= "0010010";
            WHEN "0011" => leds <= "0000110";
            WHEN "0100" => leds <= "1001100";
            WHEN "0101" => leds <= "0100100";
            WHEN "0110" => leds <= "0100000";
            WHEN "0111" => leds <= "0001111";
            WHEN "1000" => leds <= "0000000";
            WHEN "1001" => leds <= "0000100"; --9
				WHEN "1010" => leds <= "0001000"; --10A
				WHEN "1011" => leds <= "1100000"; --11b
				WHEN "1100" => leds <= "0110001"; --12C
				WHEN "1101" => leds <= "1000010"; --13D
				WHEN "1110" => leds <= "0110000"; --14E
				WHEN "1111" => leds <= "0111000"; -- 15F
            WHEN OTHERS => leds <= "0110000"; --error E
        END CASE;

        IF neg = '0' THEN --if the number is not negative
            negative <= "1111111"; 
			ELSE --if number is negative 
				negative <= "1111110";--puts a neg sign on the 7seg
			END IF;
				
				
    END PROCESS;
END Behavior;
            