LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY latch1 IS
  PORT ( A : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ; --8 bit A input
       Resetn, Clock : IN STD_LOGIC ;--1 bit clock input and 1 bit reset input bit 
       Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ) ;-- S bit output
END latch1 ;
ARCHITECTURE Behavior OF latch1 IS
BEGIN
  PROCESS ( Resetn, Clock )--Process takes reset and clock as inputs
  BEGIN
    IF Resetn ='0' THEN -- when reset input is '0' the latches does not operate
      Q <= "00000000" ;
    ELSIF Clock'EVENT AND Clock = '1' THEN -- level sensitive based on clock
      Q <= A;
    END IF; 
  END PROCESS;
END Behavior;
