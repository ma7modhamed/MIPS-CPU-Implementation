----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:15:16 05/02/2019 
-- Design Name: 
-- Module Name:    ALU_1bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.three_modules_pack.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_1bit is
 Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  aluop : in std_logic_vector(3 downto 0); 
           carry_in : in  STD_LOGIC;
			  Less : in std_logic;
			  set : out std_logic;
           carry_out : out  STD_LOGIC;
           result : out  STD_LOGIC);
end ALU_1bit;

architecture Behavioral of ALU_1bit is
signal ANDResult : std_logic;
signal ORResult : std_logic;
signal AdderResult : std_logic;
signal ARes: std_logic;
signal NotA:std_logic;
signal BRes: std_logic;
signal NotB: std_logic;
signal OperationMuxResult: std_logic;

begin
NotA <= not(A);
NotB <= not(B);
BMux: Mux1 port map(B,NotB,aluop(2),BRes);
adder: full_adder port map(A,BRes,carry_in,carry_out,AdderResult);
ANDResult <= A and B when aluop(2) = '0' else
             NotA and NotB when aluop(2) ='1';              	   
ORResult <=  A OR B when aluop(2) = '0' else
             NotA or NotB when aluop(2)='1' ;
----OperationMux: Mux2 port map(ANDResult , ORResult , AdderResult,Less , '0' , '0' , AdderResult , '0' , '0' , '0' , '0' , '0' , '0' , '0' , '0' , '0' , aluop , OperationMuxResult);	
OperationMux: Mux2 port map(ANDResult , ORResult , AdderResult,Less , aluop(1 downto 0) , OperationMuxResult);	
set <= AdderResult	 ;
result <= OperationMuxResult;

end Behavioral;

