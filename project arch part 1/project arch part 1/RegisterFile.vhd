
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

use work.projectregisterpackage.all ;
use work.my_mux.all;
use work.dec.all;
entity RegisterFile is
    Generic(
	           N: integer := 32;
				  w: integer :=5
			 	  );
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (w-1 downto 0);
	        read_sel2 : in  STD_LOGIC_VECTOR (w-1 downto 0);        
           write_sel : in  STD_LOGIC_VECTOR (w-1 downto 0);          
	        write_ena : in  STD_LOGIC;           
	        clk : in STD_LOGIC;           
	        write_data : in  STD_LOGIC_VECTOR (N-1 downto 0);           
	        data1 : out  STD_LOGIC_VECTOR (N-1 downto 0);            
	         data2 : out  STD_LOGIC_VECTOR (N-1 downto 0)
			  );
end RegisterFile;
  
architecture Behavioral of RegisterFile is 
signal r0_in: std_logic_vector(31 downto 0);
signal r0_out,r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out,r10_out,r11_out,r12_out,r13_out,r14_out,r15_out,r16_out,r17_out,r18_out,r19_out,r20_out,r21_out,r22_out,r23_out,r24_out,r25_out,r26_out,r27_out,r28_out,r29_out,r30_out,r31_out: std_logic_vector(31 downto 0 ); 
 begin
deco : decoder  port map ( write_sel , '1' ,r0_in );
mux0 : mux generic map (N => 32) port map (r0_out,r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out,r10_out,r11_out,r12_out,r13_out,r14_out,r15_out,r16_out,r17_out,r18_out,r19_out,r20_out,r21_out,r22_out,r23_out,r24_out,r25_out,r26_out,r27_out,r28_out,r29_out,r30_out,r31_out ,read_sel1,data1);

                                              
mux1  : mux generic map (N => 32) port map (r0_out,r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,r8_out,r9_out,r10_out,r11_out,r12_out,r13_out,r14_out,r15_out,r16_out,r17_out,r18_out,r19_out,r20_out,r21_out,r22_out,r23_out,r24_out,r25_out,r26_out,r27_out,r28_out,r29_out,r30_out,r31_out ,read_sel2,
                                               data2) ;	
																
--r0: projectregister generic map(32) port map( write_data,clk,write_ena, '0','0' , r0_out);

r0 : projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(0) , '0','0' , r0_out);
r1 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(1), '0','0' , r1_out);
r2 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(2) , '0','0' , r2_out);
r3 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(3) , '0','0' , r3_out);
r4 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(4), '0','0' , r4_out);
r5 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(5), '0','0' , r5_out);
r6 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(6), '0','0' , r6_out);
r7 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(7), '0','0' , r7_out);
r8 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(8), '0','0' , r8_out);
r9 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(9), '0','0' , r9_out);
r10 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(10), '0','0' , r10_out);
r11 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(11), '0','0' , r11_out);
r12 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(12), '0','0' , r12_out);
r13 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(13), '0','0' , r13_out);
r14 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(14), '0','0' , r14_out);
r15 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(15), '0','0' , r15_out);
r16 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(16), '0','0' , r16_out);
r17:  projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(17), '0','0' , r17_out);
r18 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(18), '0','0' , r18_out);
r19 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(19), '0','0' , r19_out);
r20 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(20), '0','0' , r20_out);
r21 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(21), '0','0' , r21_out);
r22 :  projectregister generic map(n => 32) port map (write_data,clk,write_ena and r0_in(22), '0','0' , r22_out);
r23 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(23), '0','0' , r23_out);
r24 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(24), '0','0' , r24_out);
r25 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(25), '0','0' , r25_out);
r26 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(26), '0','0' , r26_out);
r27 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(27), '0','0' , r27_out);
r28 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(28), '0','0' , r28_out);
r29 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(29), '0','0' , r29_out);
r30 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(30), '0','0' , r30_out);
r31 : projectregister  generic map(n => 32) port map (write_data,clk,write_ena and r0_in(31), '0','0' , r31_out);
									

end Behavioral;

