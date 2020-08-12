library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mult4 is 
port(
  a1      : in  std_logic;
  a2      : in  std_logic;
  a3      : in  std_logic;
  a4      : in  std_logic;
  sel     : in  std_logic_vector(1 downto 0);
  b       : out std_logic);
end mult4;
architecture Behavioral of mult4 is
  -- declarative part: empty
begin
p_mux : process(a1,a2,a3,a4,sel)
begin
  case sel is
    when "00" => b <= a1 ;
    when "01" => b <= a2 ;
    when "10" => b <= a3 ;
    when others => b <= a4 ;
  end case;
  
end process p_mux;

end Behavioral;