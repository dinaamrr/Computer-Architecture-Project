LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestALU IS
END TestALU;
 
ARCHITECTURE behavior OF TestALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU32
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         ALUop : IN  std_logic_vector(3 downto 0);
         CIn : IN  std_logic;
         res : OUT  std_logic_vector(31 downto 0);
         cFlag : OUT  std_logic;
         zFlag : OUT  std_logic;
         oFlag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal ALUop : std_logic_vector(3 downto 0) := (others => '0');
   signal CIn : std_logic := '0';

 	--Outputs
   signal res : std_logic_vector(31 downto 0);
   signal cFlag : std_logic;
   signal zFlag : std_logic;
   signal oFlag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU32 PORT MAP (
          A => A,
          B => B,
          ALUop => ALUop,
          CIn => CIn,
          res => res, 
          cFlag => cFlag,
          zFlag => zFlag,
          oFlag => oFlag
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     		wait for 10ns;
		--AND testcase
			A <= "11000000000000000000000000000000" ;
			B <= "10100000000000000000000000000000" ;
			ALUop <= "0000" ;
			wait for 10ns;
			report "Test1";
			assert(res = "10000000000000000000000000000000" and zFlag = '0') report "1:Fail" severity error;

			wait for 1ns;
		
		--OR testcase
			A <= "11000000000000000000000000000000" ;
			B <= "10100000000000000000000000000000" ;
			ALUop <= "0001" ;
			wait for 10ns;
			report "Test2";
			assert(res = "11100000000000000000000000000000" and zFlag = '0') report "2:Fail" severity error;

			wait for 1ns;
		
		--ADD testcase1 (overflow = 1, cout = 0)
			A <= "01110000000000000000000000000000" ;
			B <= "01100000000000000000000000000000" ;
			ALUop <= "0010" ;
			wait for 10ns;
			report "Test3";
			assert(res = "11010000000000000000000000000000" and oFlag = '1' and cFlag = '0' and zFlag = '0') report "3:Fail" severity error;

			wait for 1ns;
		
		--ADD testcase2 (zero = 1, cout = 1)
			A <= "11110000000000000000000000000000" ;
			B <= "00010000000000000000000000000000" ;
			ALUop <= "0010" ;
			wait for 10ns;
			report "Test4";
			assert(res = "00000000000000000000000000000000" and oFlag = '0' and cFlag = '1' and zFlag = '1') report "4:Fail" severity error;

			wait for 1ns;

		--SUB testcase1 (cout = 1)
			A <= "00000000000000000000000000000111" ; --a = 7
			B <= "00000000000000000000000000000110" ; --b = 6
			CIn <= '1' ;
			ALUop <= "0110" ;
			wait for 10ns;
			report "Test5";
			assert(res = "00000000000000000000000000000001" and oFlag = '0' and cFlag = '1' and zFlag = '0') report "5:Fail" severity error;

			wait for 1ns;

		--SUB testcase2 (cout = 0)
			A <= "00000000000000000000000000000110" ; --a = 6
			B <= "00000000000000000000000000000111" ; --b = 7
			CIn <= '1' ;
			ALUop <= "0110" ;
			wait for 10ns;
			report "Test6";
			assert(res = "11111111111111111111111111111111" and oFlag = '0' and cFlag = '0' and zFlag = '0') report "6:Fail" severity error;

			wait for 1ns;
			
		report "Test Complete";
      wait;
   end process;

END;