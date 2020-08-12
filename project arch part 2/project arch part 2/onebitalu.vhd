

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package onebitalu is

component oneBit is
 Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC;
           carry : out  STD_LOGIC
			  );
end component ;






end onebitalu;

