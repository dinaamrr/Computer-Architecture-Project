library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA is
    Port ( i_bit1 : in  STD_LOGIC;
           I_bit2 : in  STD_LOGIC;
           i_carry : in  STD_LOGIC;
           o_sum : out  STD_LOGIC;
           o_carry : out  STD_LOGIC);
end FA;

architecture Behavioral of FA is
 
  signal w_WIRE_1 : std_logic;
  signal w_WIRE_2 : std_logic;
  signal w_WIRE_3 : std_logic;
   
begin
 
  w_WIRE_1 <= i_bit1 xor i_bit2;
  w_WIRE_2 <= w_WIRE_1 and i_carry;
  w_WIRE_3 <= i_bit1 and i_bit2;
 
  o_sum   <= w_WIRE_1 xor i_carry;
  o_carry <= w_WIRE_2 or w_WIRE_3;
 
 
  -- FYI: Code above using wires will produce the same results as:
  -- o_sum   <= i_bit1 xor i_bit2 xor i_carry;
  -- o_carry <= (i_bit1 xor i_bit2) and i_carry) or (i_bit1 and i_bit2);
 
  -- Wires are just used to be explicit. 
 
end Behavioral;