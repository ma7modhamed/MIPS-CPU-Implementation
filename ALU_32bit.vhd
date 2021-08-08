----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:21:37 05/02/2019 
-- Design Name: 
-- Module Name:    ALU_32bit - Behavioral 
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
use work.ALU_Pack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_32bit is
PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
end ALU_32bit;

architecture Behavioral of ALU_32bit is
signal CarryOut1: std_logic;
signal CarryOut2: std_logic;
signal CarryOut3: std_logic;
signal CarryOut4: std_logic;
signal CarryOut5: std_logic;
signal CarryOut6: std_logic;
signal CarryOut7: std_logic;
signal CarryOut8: std_logic;
signal CarryOut9: std_logic;
signal CarryOut10: std_logic;
signal CarryOut11: std_logic;
signal CarryOut12: std_logic;
signal CarryOut13: std_logic;
signal CarryOut14: std_logic;
signal CarryOut15: std_logic;
signal CarryOut16: std_logic;
signal CarryOut17: std_logic;
signal CarryOut18: std_logic;
signal CarryOut19: std_logic;
signal CarryOut20: std_logic;
signal CarryOut21: std_logic;
signal CarryOut22: std_logic;
signal CarryOut23: std_logic;
signal CarryOut24: std_logic;
signal CarryOut25: std_logic;
signal CarryOut26: std_logic;
signal CarryOut27: std_logic;
signal CarryOut28: std_logic;
signal CarryOut29: std_logic;
signal CarryOut30: std_logic;
signal CarryOut31: std_logic;
signal CarryOut32: std_logic;

signal ALU1Result: std_logic;
signal ALU2Result: std_logic;
signal ALU3Result: std_logic;
signal ALU4Result: std_logic;
signal ALU5Result: std_logic;
signal ALU6Result: std_logic;
signal ALU7Result: std_logic;
signal ALU8Result: std_logic;
signal ALU9Result: std_logic;
signal ALU10Result: std_logic;
signal ALU11Result: std_logic;
signal ALU12Result: std_logic;
signal ALU13Result: std_logic;
signal ALU14Result: std_logic;
signal ALU15Result: std_logic;
signal ALU16Result: std_logic;
signal ALU17Result: std_logic;
signal ALU18Result: std_logic;
signal ALU19Result: std_logic;
signal ALU20Result: std_logic;
signal ALU21Result: std_logic;
signal ALU22Result: std_logic;
signal ALU23Result: std_logic;
signal ALU24Result: std_logic;
signal ALU25Result: std_logic;
signal ALU26Result: std_logic;
signal ALU27Result: std_logic;
signal ALU28Result: std_logic;
signal ALU29Result: std_logic;
signal ALU30Result: std_logic;
signal ALU31Result: std_logic;
signal ALU32Result: std_logic;
signal set : std_logic_vector(31 downto 0);
begin
ALU1: ALU_1bit port map(data1(0) , data2(0) , aluop , cin ,set(31),set(0), CarryOut1 , ALU1Result);
ALU2: ALU_1bit port map(data1(1) , data2(1) , aluop , CarryOut1 ,'0',set(1) ,CarryOut2 , ALU2Result);
ALU3: ALU_1bit port map(data1(2) , data2(2) , aluop , CarryOut2 ,'0',set(2), CarryOut3 , ALU3Result);
ALU4: ALU_1bit port map(data1(3) , data2(3) , aluop , CarryOut3 ,'0',set(3), CarryOut4 , ALU4Result);
ALU5: ALU_1bit port map(data1(4) , data2(4) , aluop , CarryOut4 ,'0',set(4), CarryOut5 , ALU5Result);
ALU6: ALU_1bit port map(data1(5) , data2(5) , aluop , CarryOut5 , '0',set(5),CarryOut6 , ALU6Result);
ALU7: ALU_1bit port map(data1(6) , data2(6) , aluop , CarryOut6 ,'0',set(6), CarryOut7 , ALU7Result);
ALU8: ALU_1bit port map(data1(7) , data2(7) , aluop , CarryOut7 ,'0', set(7),CarryOut8 , ALU8Result);
ALU9: ALU_1bit port map(data1(8) , data2(8) , aluop , CarryOut8 ,'0', set(8),CarryOut9 , ALU9Result);
ALU10: ALU_1bit port map(data1(9) , data2(9) , aluop , CarryOut9 , '0',set(9),CarryOut10 , ALU10Result);
ALU11: ALU_1bit port map(data1(10) , data2(10) , aluop , CarryOut10 ,'0',set(10), CarryOut11 , ALU11Result);
ALU12: ALU_1bit port map(data1(11) , data2(11) , aluop , CarryOut11 ,'0', set(11),CarryOut12 , ALU12Result);
ALU13: ALU_1bit port map(data1(12) , data2(12) , aluop , CarryOut12 ,'0', set(12),CarryOut13 , ALU13Result);
ALU14: ALU_1bit port map(data1(13) , data2(13) , aluop , CarryOut13 ,'0', set(13),CarryOut14 , ALU14Result);
ALU15: ALU_1bit port map(data1(14) , data2(14) , aluop , CarryOut14 ,'0', set(14),CarryOut15 , ALU15Result);
ALU16: ALU_1bit port map(data1(15) , data2(15) , aluop , CarryOut15 , '0',set(15),CarryOut16 , ALU16Result);
ALU17: ALU_1bit port map(data1(16) , data2(16) , aluop , CarryOut16 ,'0', set(16),CarryOut17 , ALU17Result);
ALU18: ALU_1bit port map(data1(17) , data2(17) , aluop , CarryOut17 ,'0',set(17), CarryOut18 , ALU18Result);
ALU19: ALU_1bit port map(data1(18) , data2(18) , aluop , CarryOut18 ,'0', set(18),CarryOut19 , ALU19Result);
ALU20: ALU_1bit port map(data1(19) , data2(19) , aluop , CarryOut19 , '0',set(19),CarryOut20 , ALU20Result);
ALU21: ALU_1bit port map(data1(20) , data2(20) , aluop , CarryOut20 ,'0', set(20),CarryOut21 , ALU21Result);
ALU22: ALU_1bit port map(data1(21) , data2(21) , aluop , CarryOut21 , '0',set(21),CarryOut22 , ALU22Result);
ALU23: ALU_1bit port map(data1(22) , data2(22) , aluop , CarryOut22 , '0',set(22),CarryOut23 , ALU23Result);
ALU24: ALU_1bit port map(data1(23) , data2(23) , aluop , CarryOut23 , '0',set(23),CarryOut24 , ALU24Result);
ALU25: ALU_1bit port map(data1(24) , data2(24) , aluop , CarryOut24 , '0',set(24),CarryOut25 , ALU25Result);
ALU26: ALU_1bit port map(data1(25) , data2(25) , aluop , CarryOut25 , '0',set(25),CarryOut26 , ALU26Result);
ALU27: ALU_1bit port map(data1(26) , data2(26) , aluop , CarryOut26 ,'0',set(26), CarryOut27 , ALU27Result);
ALU28: ALU_1bit port map(data1(27) , data2(27) , aluop , CarryOut27 , '0',set(27),CarryOut28 , ALU28Result);
ALU29: ALU_1bit port map(data1(28) , data2(28) , aluop , CarryOut28 ,'0', set(28),CarryOut29 , ALU29Result);
ALU30: ALU_1bit port map(data1(29) , data2(29) , aluop , CarryOut29 , '0',set(29),CarryOut30 , ALU30Result);
ALU31: ALU_1bit port map(data1(30) , data2(30) , aluop , CarryOut30 , '0',set(30),CarryOut31 , ALU31Result);
ALU32: ALU_1bit port map(data1(31) , data2(31) , aluop , CarryOut31 , '0',set(31),CarryOut32 , ALU32Result);


oflag <= CarryOut31 xor CarryOut32;
cflag <= CarryOut32;
zflag <= not(ALU1Result or ALU2Result or ALU3Result or ALU4Result or ALU5Result or ALU6Result or ALU7Result or ALU8Result or ALU9Result or ALU10Result or ALU11Result or ALU12Result or ALU13Result or ALU14Result or ALU15Result or ALU16Result or ALU17Result or ALU18Result or ALU19Result or ALU20Result or ALU21Result or ALU22Result or ALU23Result or ALU24Result or ALU25Result or ALU26Result or ALU27Result or ALU28Result or ALU29Result or ALU30Result or ALU31Result or ALU32Result);
dataout(0) <= ALU1Result;
dataout(1) <= ALU2Result;
dataout(2) <= ALU3Result;
dataout(3) <= ALU4Result;
dataout(4) <= ALU5Result;
dataout(5) <= ALU6Result;
dataout(6) <= ALU7Result;
dataout(7) <= ALU8Result;
dataout(8) <= ALU9Result;
dataout(9) <= ALU10Result;
dataout(10) <= ALU11Result;
dataout(11) <= ALU12Result;
dataout(12) <= ALU13Result;
dataout(13) <= ALU14Result;
dataout(14) <= ALU15Result;
dataout(15) <= ALU16Result;
dataout(16) <= ALU17Result;
dataout(17) <= ALU18Result;
dataout(18) <= ALU19Result;
dataout(19) <= ALU20Result;
dataout(20) <= ALU21Result;
dataout(21) <= ALU22Result;
dataout(22) <= ALU23Result;
dataout(23) <= ALU24Result;
dataout(24) <= ALU25Result;
dataout(25) <= ALU26Result;
dataout(26) <= ALU27Result;
dataout(27) <= ALU28Result;
dataout(28) <= ALU29Result;
dataout(29) <= ALU30Result;
dataout(30) <= ALU31Result;
dataout(31) <= ALU32Result;

        

end Behavioral;

