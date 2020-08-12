library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.ALU.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity oneBit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC;
           carry : out  STD_LOGIC
			  );
end oneBit;
architecture Behavioral of oneBit is
signal tmpA,tmpB : std_logic;
signal s,c: std_logic;

begin

m1 : mult2 port map( ALUop(3) , A , not(A) , tmpA);
m2 : mult2 port map( ALUop(2) , B , not(B) , tmpB);
FullAdder : FA port map( tmpA , tmpB , Cin, s,c);
m4 : mult4 port map( (tmpA and tmpB), (tmpA or tmpB) , s, '0', ALUop(1 downto 0),res);

carry  <= c;

end Behavioral;