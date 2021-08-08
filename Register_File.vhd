----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:40:31 05/02/2019 
-- Design Name: 
-- Module Name:    Register_File - Behavioral 
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
use work.Register_File_Pack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_File is

GENERIC (n: NATURAL := 32) ;

Port (
           read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0)

);
end Register_File;

architecture Behavioral of Register_File is
signal decoderOutput: STD_LOGIC_VECTOR (31 downto 0);
signal R1Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R2Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R3Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R4Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R5Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R6Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R7Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R8Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R9Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R10Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R11Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R12Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R13Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R14Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R15Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R16Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R17Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R18Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R19Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R20Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R21Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R22Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R23Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R24Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R25Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R26Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R27Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R28Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R29Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R30Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R31Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal R32Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal MUX1Out: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal MUX2Out: STD_LOGIC_VECTOR(31 DOWNTO 0);

begin
decod: Decoder PORT MAP (write_sel,'1',decoderOutput);
R1: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(0) ,'0','0',R1Out);
R2: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(1) ,'0','0',R2Out);
R3: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(2) ,'0','0',R3Out);
R4: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(3) ,'0','0',R4Out);
R5: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(4) ,'0','0',R5Out);
R6: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(5) ,'0','0',R6Out);
R7: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(6) ,'0','0',R7Out);
R8: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(7) ,'0','0',R8Out);
R9: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(8) ,'0','0',R9Out);
R10: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(9) ,'0','0',R10Out);
R11: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(10) ,'0','0',R11Out);
R12: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(11) ,'0','0',R12Out);
R13: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(12) ,'0','0',R13Out);
R14: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(13) ,'0','0',R14Out);
R15: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(14) ,'0','0',R15Out);
R16: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(15) ,'0','0',R16Out);
R17: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(16) ,'0','0',R17Out);
R18: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(17) ,'0','0',R18Out);
R19: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(18) ,'0','0',R19Out);
R20: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(19) ,'0','0',R20Out);
R21: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(20) ,'0','0',R21Out);
R22: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(21) ,'0','0',R22Out);
R23: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(22) ,'0','0',R23Out);
R24: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(23) ,'0','0',R24Out);
R25: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(24) ,'0','0',R25Out);
R26: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(25) ,'0','0',R26Out);
R27: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(26) ,'0','0',R27Out);
R28: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(27) ,'0','0',R28Out);
R29: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(28) ,'0','0',R29Out);
R30: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(29) ,'0','0',R30Out);
R31: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(30) ,'0','0',R31Out);
R32: Reg GENERIC MAP(n) PORT MAP (write_data, clk, write_ena and decoderOutput(31) ,'0','0',R32Out);

MUX1: MUX PORT MAP (R32Out,R31Out,R30Out,R29Out,R28Out,R27Out,R26Out,R25Out,R24Out,R23Out,R22Out,R21Out,R20Out,R19Out,R18Out,R17Out,R16Out,R15Out,R14Out,R13Out,R12Out,R11Out,R10Out,R9Out,R8Out,R7Out,R6Out,R5Out,R4Out,R3Out,R2Out,R1Out,read_sel1,MUX1Out);
MUX2: MUX PORT MAP (R32Out,R31Out,R30Out,R29Out,R28Out,R27Out,R26Out,R25Out,R24Out,R23Out,R22Out,R21Out,R20Out,R19Out,R18Out,R17Out,R16Out,R15Out,R14Out,R13Out,R12Out,R11Out,R10Out,R9Out,R8Out,R7Out,R6Out,R5Out,R4Out,R3Out,R2Out,R1Out,read_sel2,MUX2Out);

data1 <= MUX1Out;
data2 <= MUX2Out;


end Behavioral;

