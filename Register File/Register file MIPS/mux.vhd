----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux is
generic(
           N : integer
			  );
port(
        mux_in0 : in std_logic_vector(N-1 Downto 0);
		  mux_in1 : in std_logic_vector(N-1 Downto 0);
		  mux_in2 : in std_logic_vector(N-1 Downto 0);
		  mux_in3 : in std_logic_vector(N-1 Downto 0);
		  mux_in4 : in std_logic_vector(N-1 Downto 0);
		  mux_in5 : in std_logic_vector(N-1 Downto 0);
		  mux_in6 : in std_logic_vector(N-1 Downto 0);
		  mux_in7 : in std_logic_vector(N-1 Downto 0);
		  mux_in8 : in std_logic_vector(N-1 Downto 0);
		  mux_in9 : in std_logic_vector(N-1 Downto 0);
		  mux_in10 : in std_logic_vector(N-1 Downto 0);
		  mux_in11: in std_logic_vector(N-1 Downto 0);
		  mux_in12 : in std_logic_vector(N-1 Downto 0);
		  mux_in13 : in std_logic_vector(N-1 Downto 0);
		  mux_in14 : in std_logic_vector(N-1 Downto 0);
		  mux_in15 : in std_logic_vector(N-1 Downto 0);
		  mux_in16 : in std_logic_vector(N-1 Downto 0);
		  mux_in17 : in std_logic_vector(N-1 Downto 0);
		  mux_in18 : in std_logic_vector(N-1 Downto 0);
		  mux_in19 : in std_logic_vector(N-1 Downto 0);
		  mux_in20 : in std_logic_vector(N-1 Downto 0);
		  mux_in21 : in std_logic_vector(N-1 Downto 0);
		  mux_in22 : in std_logic_vector(N-1 Downto 0);
		  mux_in23 : in std_logic_vector(N-1 Downto 0);
		  mux_in24 : in std_logic_vector(N-1 Downto 0);
		  mux_in25 : in std_logic_vector(N-1 Downto 0);
		  mux_in26 : in std_logic_vector(N-1 Downto 0);
		  mux_in27 : in std_logic_vector(N-1 Downto 0);
		  mux_in28 : in std_logic_vector(N-1 Downto 0);                          
		  mux_in29 : in std_logic_vector(N-1 Downto 0);
		  mux_in30 : in std_logic_vector(N-1 Downto 0);
		  mux_in31 : in std_logic_vector(N-1 Downto 0);
		  mux_ctl :in std_logic_vector(4 downto 0);
		  mux_out : out std_logic_vector(N-1 downto 0)
		  );
		   

end mux;

architecture Behavioral of mux is

begin
--process
 
     --case mux_ctl is
	 mux_out <=   
	 mux_in0 when mux_ctl ="00000" else
	 mux_in1 when mux_ctl ="00001" else
	 mux_in2 when mux_ctl ="00010" else
	 mux_in3 when mux_ctl ="00011" else
	 mux_in4 when mux_ctl ="00100" else
	 mux_in5 when mux_ctl ="00101" else
	 mux_in6 when mux_ctl ="00110" else
	 mux_in7 when mux_ctl ="00111" else
	 mux_in8 when mux_ctl ="01000" else
	 mux_in9 when mux_ctl ="01001" else
	 mux_in10 when mux_ctl ="01010" else
	 mux_in11 when mux_ctl ="01011" else
	 mux_in12 when mux_ctl ="01100" else
	 mux_in13 when mux_ctl ="01101" else
	 mux_in14 when mux_ctl ="01110" else
	 mux_in15 when mux_ctl ="01111" else
	 mux_in16 when mux_ctl ="10000" else
	 mux_in17 when mux_ctl ="10001" else
	 mux_in18 when mux_ctl ="10010" else
	 mux_in19 when mux_ctl ="10011" else
	 mux_in20 when mux_ctl ="10100" else
	 mux_in21 when mux_ctl ="10101" else
	 mux_in22 when mux_ctl ="10110" else
	 mux_in23 when mux_ctl ="10111" else
	 mux_in24 when mux_ctl ="11000" else
	 mux_in25 when mux_ctl ="11001" else
	 mux_in26 when mux_ctl ="11010" else
	 mux_in27 when mux_ctl ="11011" else
	 mux_in28 when mux_ctl ="11100" else
	 mux_in29 when mux_ctl ="11101" else
	 mux_in30 when mux_ctl ="11110" else
	 mux_in31 when mux_ctl ="11111" ;
		
      -- end case;
	--	 end process;

end Behavioral;

