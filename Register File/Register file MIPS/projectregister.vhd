library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity projectregister is
GENERIC (n: integer);
Port(
       I : IN STD_LOGIC_VECTOR (n-1 downto 0);
		 CLK , ld ,INC, CLR : IN STD_LOGIC ;
		 O : OUT STD_LOGIC_VECTOR (n-1 downto 0)
	   	 );
  
end projectregister;
 
   architecture Behavioral of projectregister is
Signal temp: STD_LOGIC_VECTOR (n-1 downto 0) := (others => '0');
begin
 process(CLK)
   begin 
       if(CLK' event AND CLK='1') then
		    if(ld='1') then
			   temp <= I;
			  ELSIF(INC = '1' ) then
			   temp <= std_logic_vector(unsigned(temp) + 1);
			 ELSIF(CLR ='1') then
			    temp <= (others => '0');
			END if;
	   END if;
	END process;
 O <= temp;
			 
			 

end Behavioral;

