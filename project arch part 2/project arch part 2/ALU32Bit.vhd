library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.onebitalu.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU32 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           CIn : in  STD_LOGIC;
			  ALUop : in std_logic_vector ( 3 downto 0);
           res : out  STD_LOGIC_VECTOR (31 downto 0);
           cFlag : out  STD_LOGIC;
           oFlag : out  STD_LOGIC;
			  zFlag : out std_logic);
end ALU32;
 
architecture Behavioral of ALU32 is
signal C : std_logic_vector (31 downto 0); 
signal tempres : std_logic_vector (31 downto 0);
begin
 ALU1 : OneBit port map ( A(0) , B(0) , CIn , ALUop(3 downto 0) , tempres(0) , C(0));
 ALU2 : OneBit port map ( A(1) , B(1) , C(0) , ALUop(3 downto 0) , tempres(1) , C(1));
 ALU3 : OneBit port map ( A(2) , B(2) , C(1) , ALUop(3 downto 0) , tempres(2) , C(2));
 ALU4 : OneBit port map ( A(3) , B(3) , C(2) , ALUop(3 downto 0) , tempres(3) , C(3));
 ALU5 : OneBit port map ( A(4) , B(4) , C(3) , ALUop(3 downto 0) , tempres(4) , C(4));
 ALU6 : OneBit port map ( A(5) , B(5) , C(4) , ALUop(3 downto 0) , tempres(5) , C(5));
 ALU7 : OneBit port map ( A(6) , B(6) , C(5) , ALUop(3 downto 0) , tempres(6) , C(6));
 ALU8 : OneBit port map ( A(7) , B(7) , C(6) , ALUop(3 downto 0) , tempres(7) , C(7));
 ALU9 : OneBit port map ( A(8) , B(8) , C(7) , ALUop(3 downto 0) , tempres(8) , C(8));
 ALU10 : OneBit port map ( A(9) , B(9) , C(8) , ALUop(3 downto 0) , tempres(9) , C(9));
 ALU11 : OneBit port map ( A(10) , B(10) , C(9) , ALUop(3 downto 0) , tempres(10) , C(10));
 ALU12 : OneBit port map ( A(11) , B(11) , C(10) , ALUop(3 downto 0) , tempres(11) , C(11));
 ALU13: OneBit port map ( A(12) , B(12) , C(11) , ALUop(3 downto 0) , tempres(12) , C(12));
 ALU14: OneBit port map ( A(13) , B(13) , C(12) , ALUop(3 downto 0) , tempres(13) , C(13));
 ALU15 : OneBit port map ( A(14) , B(14) , C(13) , ALUop(3 downto 0) , tempres(14) , C(14));
 ALU16 : OneBit port map ( A(15) , B(15) , C(14) , ALUop(3 downto 0) , tempres(15) , C(15));
 ALU17 : OneBit port map ( A(16) , B(16) , C(15) , ALUop(3 downto 0) , tempres(16) , C(16));
 ALU18 : OneBit port map ( A(17) , B(17) , C(16) , ALUop(3 downto 0) , tempres(17) , C(17));
 ALU19 : OneBit port map ( A(18) , B(18) , C(17) , ALUop(3 downto 0) , tempres(18) , C(18));
 ALU20 : OneBit port map ( A(19) , B(19) , C(18) , ALUop(3 downto 0) , tempres(19) , C(19));
 ALU21 : OneBit port map ( A(20) , B(20) , C(19) , ALUop(3 downto 0) , tempres(20) , C(20));
 ALU22 : OneBit port map ( A(21) , B(21) , C(20) , ALUop(3 downto 0) , tempres(21) , C(21));
 ALU23 : OneBit port map ( A(22) , B(22) , C(21) , ALUop(3 downto 0) , tempres(22) , C(22));
 ALU24 : OneBit port map ( A(23) , B(23) , C(22) , ALUop(3 downto 0) , tempres(23) , C(23));
 ALU25 : OneBit port map ( A(24) , B(24) , C(23) , ALUop(3 downto 0) , tempres(24) , C(24));
 ALU26 : OneBit port map ( A(25) , B(25) , C(24) , ALUop(3 downto 0) , tempres(25) , C(25));
 ALU27 : OneBit port map ( A(26) , B(26) , C(25) , ALUop(3 downto 0) , tempres(26) , C(26));
 ALU28 : OneBit port map ( A(27) , B(27) , C(26) , ALUop(3 downto 0) , tempres(27) , C(27));
 ALU29 : OneBit port map ( A(28) , B(28) , C(27) , ALUop(3 downto 0) , tempres(28) , C(28));
 ALU30 : OneBit port map ( A(29) , B(29) , C(28) , ALUop(3 downto 0) , tempres(29) , C(29));
 ALU31 : OneBit port map ( A(30) , B(30) , C(29) , ALUop(3 downto 0) , tempres(30) , C(30));
 ALU32 : OneBit port map ( A(31) , B(31) , C(30) , ALUop(3 downto 0) , tempres(31) , C(31)); 

 res <= tempres;
 zFlag <= not (tempres(0) or tempres(1) or tempres(2) or tempres(3) or tempres(4) or tempres(4) or tempres(6) or tempres(7) or tempres(8) or tempres(9) or tempres(10) or tempres(11) or tempres(12) or tempres(13) or tempres(14) or tempres(15) or tempres(16) or tempres(17) or tempres(18) or tempres(19) or tempres(20) or tempres(21) or tempres(22) or tempres(23) or tempres(24) or tempres(25) or tempres(26) or tempres(27) or tempres(28) or tempres(29) or tempres(30) or tempres(31));
 cFlag <= C(31);
 oFlag <= C(30) xor c(31);

end Behavioral;