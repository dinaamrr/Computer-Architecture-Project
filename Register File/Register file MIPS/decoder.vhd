
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is

port(
       i : in std_logic_vector(4 downto 0);
		 E : in std_logic ;
		 output : out std_logic_vector(31 downto 0)
		 );
end decoder;

architecture Behavioral of decoder is

begin
   --output <= "11111";  
 output <= "00000000000000000000000000000000" when E = '0' else 
 "00000000000000000000000000000001" when i = "00000" else
 "00000000000000000000000000000010" when i = "00001" else
 "00000000000000000000000000000100" when i = "00010" else
 "00000000000000000000000000001000" when i = "00011" else
 "00000000000000000000000000010000" when i = "00100" else
 "00000000000000000000000000100000" when i = "00101" else
 "00000000000000000000000001000000" when i = "00110" else
 "00000000000000000000000010000000" when i = "00111" else
 "00000000000000000000000100000000" when i = "01000" else
 "00000000000000000000001000000000" when i = "01001" else
 "00000000000000000000010000000000" when i = "01010" else
 "00000000000000000000100000000000" when i = "01011" else
 "00000000000000000001000000000000" when i = "01100" else
 "00000000000000000010000000000000" when i = "01101" else
 "00000000000000000100000000000000" when i = "01110" else
 "00000000000000001000000000000000" when i = "01111" else
 "00000000000000010000000000000000" when i = "10000" else
 "00000000000000100000000000000000" when i = "10001" else
 "00000000000001000000000000000000" when i = "10010" else
 "00000000000010000000000000000000" when i = "10011" else
 "00000000000100000000000000000000" when i = "10100" else
 "00000000001000000000000000000000" when i = "10101" else
 "00000000010000000000000000000000" when i = "10110" else
 "00000000100000000000000000000000" when i = "10111" else
 "00000001000000000000000000000000" when i = "11000" else
 "00000010000000000000000000000000" when i = "11001" else
 "00000100000000000000000000000000" when i = "11010" else
 "00001000000000000000000000000000" when i = "11011" else
 "00010000000000000000000000000000" when i = "11100" else
 "00100000000000000000000000000000" when i = "11101" else
 "01000000000000000000000000000000" when i = "11110" else
 "10000000000000000000000000000000" when i = "11111" ;
end Behavioral;

