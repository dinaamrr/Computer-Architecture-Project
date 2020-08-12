--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package projectregisterpackage is

 Component projectregister is
    GENERIC (n:Natural := 32);
    Port(
       I : IN STD_LOGIC_VECTOR (n-1 downto 0);
		 CLK , ld , INC , CLR : IN STD_LOGIC ;
		 O : OUT STD_LOGIC_VECTOR (n-1 downto 0)
		 );

end component;


end projectregisterpackage;

