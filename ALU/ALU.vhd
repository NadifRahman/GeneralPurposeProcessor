library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALU is
port(Clock : in std_logic; --input clock signal
   A,B : in unsigned(7 downto 0); --8-bit inputs from latches A and B
   --this is not used anywhere in this compoent student_id : in unsigned(3 downto 0); --4 bit student id from FSM
   OP : in unsigned(0 to 15); --16-bit selector for Operation from Decoder --NOTE TO IFTY I MADE IT 0 TO 15, NOT SURE IF I GOTTA CHANGE BACK
   Neg: out std_logic; --is the result negative Set-ve bit output
   R1 : out unsigned(3 downto 0); -- lower 4-bits of 8-bit Result Output
   R2 : out unsigned(3 downto 0)); -- higher 4-bits of 8-bit Result Output
end ALU;
architecture calculation of ALU is --temporary signal declarations.
signal Reg1 ,Reg2,Result : unsigned(7 downto 0):=(others => '0');
--signal Reg4 : unsigned (0 to 7); -- this was not used anywhere from the code give in lab 6 so commentd out
begin
Reg1 <= A; --temporarily store A in Reg1 local variable 
Reg2 <= B ; --temporarily store B in Reg2 local variable 
process(Clock, OP)
begin
	
   if(rising_edge(Clock))THEN --Do the calculation @ positive edge of clock cycle. 
   case OP Is
		  WHEN "1000000000000000" => --does addition function 1
		  Result <= Reg1 + Reg2;
        Neg <= '0'; 
        WHEN "0100000000000000" => --does subtraction
		  
		  if (Reg1 > Reg2) then --if A is larger than B
			Result <= (Reg1 - Reg2); --subtract reg1 and reg2
			Neg <= '0'; --the number cannot possibly be negative
            --Do Subtraction
            --"Neg" bit set if required. 
			else --otherwise if B is greater than A 
				Result <= (Reg2 - Reg1); --subtract B from A, this gives mag. of A-B
				Neg <= '1'; --sets the neg bit to 1 because its definetly a neg number 
				end if;
        WHEN "0010000000000000" => --NOT of A 
            Result <= (NOT Reg1); 
				Neg <= '0';
        WHEN "0001000000000000" => --NAND 
            Result <= (Reg1 NAND Reg2);
				Neg <= '0';
        WHEN "0000100000000000" => --NOR
            Result <= (Reg1 NOR Reg2);
				Neg <= '0';
        WHEN "0000010000000000" => --AND
            Result <= (Reg1 AND Reg2);
				Neg <= '0';
        WHEN "0000001000000000" => --XOR
            Result <= (Reg1 XOR Reg2);
				Neg <= '0';
        WHEN "0000000100000000" => -- OR
            Result <= (Reg1 OR Reg2);
				Neg <= '0';
        WHEN "0000000010000000" => --XNOR
            Result <= (Reg1 XNOR Reg2);
				Neg <= '0';
        WHEN OTHERS =>
		  Neg <= '0';
            --Don't care, do nothing
   end case;
   end if;
end process;
R1 <= Result(3 downto 0); --Since the output seven segments can
R2 <= Result(7 downto 4); --only 4-bits, split the 8-bit to two 4-bits.
end calculation;
