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

package my_mux is
  component mux is

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
		  
   end component ;
end my_mux;

