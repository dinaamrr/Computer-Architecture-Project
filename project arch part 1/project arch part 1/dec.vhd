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

package dec is
component decoder is
port(
       i : in std_logic_vector(4 downto 0);
		 E : in std_logic ;
		 output : out std_logic_vector(31 downto 0)
		 );
end component ;
end dec;

