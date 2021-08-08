----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:31:08 05/02/2019 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.CPU_Pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
---use UNISIM.VComponents.all;

entity MainModule is
port(
       START: IN STD_LOGIC;
		 CLK: IN STD_LOGIC;
		 RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
		 RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
		 ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		 PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		 DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0)
		 );
		 
end MainModule;

architecture Behavioral of MainModule is
SIGNAL PCInput:STD_LOGIC_VECTOR(31 DOWNTO 0):=(OTHERS=>'0');
SIGNAL PCOutput:STD_LOGIC_VECTOR(31 DOWNTO 0):=(OTHERS=>'0');
signal Instruction:STD_LOGIC_VECTOR(31 DOWNTO 0):=(OTHERS=>'0');
signal MEM_READ :STD_LOGIC;
signal MEM_WRITE : STD_LOGIC;
signal RegDst : std_logic;
signal Branch : std_logic;
signal BranchNE : std_logic;
signal Jump : std_logic;
signal MemToReg : std_logic;
signal ALUSrc : std_logic;
signal RegWrite : std_logic;
signal ALUOp : std_logic_vector(1 downto 0);
signal operation : std_logic_vector(3 downto 0);
signal Four: STD_LOGIC_VECTOR(31 DOWNTO 0):= "00000000000000000000000000000100";
signal PCPlus4: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal PCPlus4CarryOut: STD_LOGIC;
signal WriteRegCode: STD_LOGIC_VECTOR(4 DOWNTO 0);
signal WriteData: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal RFOut1: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal RFOut2: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal ALUInput2: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal ALUResult: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal cflag : std_logic;
signal zflag : std_logic;
signal oflag : std_logic;
signal CarryIn : std_logic;
signal InstructionImmediate: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal JumpAddress: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal BranchMUXSelector : std_logic;
signal BranchAddrResult: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal BranchAddrCarryOut: STD_LOGIC;
signal BranchMUXResult: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal MemoryOutput: STD_LOGIC_VECTOR(31 DOWNTO 0);
signal BranchAddress: STD_LOGIC_VECTOR(31 DOWNTO 0);


begin

-- calculate PC
PC: Reg GENERIC MAP(32) PORT MAP (PCInput, CLK, START ,'0',not(START),PCOutput);
PCPlus4Addr: GenericFullAdder Generic MAP(32) PORT MAP(PCOutput,Four,PCPlus4,PCPlus4CarryOut); 
-- pass PC to Instruction Memory
InstructionMemory: INSTRMEMORY Port Map (not(START),Instruction,PCOutput,CLK);

-- Instruction <=

ControlUnit: CU_module PORT MAP(Instruction(31 downto 26),MEM_READ,MEM_WRITE,RegDst,Branch,BranchNE,Jump,MemToReg,ALUSrc,RegWrite,ALUOp);
AluControl: ALU_Control PORT MAP(ALUOp,Instruction(5 downto 0),operation);
RegisterFile: Register_File PORT MAP(Instruction(25 downto 21),Instruction(20 downto 16),WriteRegCode ,RegWrite,CLK,WriteData,RFOut1,RFOut2);
WriteRegMUX: MUX2x1 Generic Map(5) Port Map(Instruction(20 downto 16),Instruction(15 downto 11),RegDst,WriteRegCode);
			  
ALU: ALU_32bit PORT MAP(RFOut1,ALUInput2,operation ,operation(2), ALUResult,cflag,zflag,oflag);
--CarryIn = what ?		  
SignExtender: SignExtension Port Map(Instruction(15 downto 0),InstructionImmediate);
AluInput2MUX: MUX2x1 Generic Map(32) Port Map(RFOut2,InstructionImmediate,ALUSrc,ALUInput2);
JumpAddress <=PCPlus4(31 downto 28)&(Instruction(25 downto 0)&"00");

BranchMUXSelector <= (Branch and zflag) or (BranchNE and not(zflag));
BranchAddress <= (InstructionImmediate(29 downto 0)&"00");
BranchAddr: GenericFullAdder Generic MAP(32) PORT MAP(PCPlus4,BranchAddress,BranchAddrResult,BranchAddrCarryOut); 
BranchMUX: MUX2x1 Generic Map(32) Port Map(PCPlus4,BranchAddrResult,BranchMUXSelector,BranchMUXResult);

JumpMUX: MUX2x1 Generic Map(32) Port Map(BranchMUXResult,JumpAddress,Jump,PCInput);
DataMEM: DATAMEMORY PORT MAP(not(START),RFOut2,MemoryOutput,MEM_READ,MEM_WRITE,ALUResult,CLK);

AluMemoryMUX: MUX2x1 Generic Map(32) Port Map(ALUResult,MemoryOutput,MemToReg,WriteData);

RegFileOut1 <= RFOut1;
RegFileOut2 <= RFOut2;
ALUOut <= ALUResult;
PCOut <= PCOutput;
DataMemOut <= MemoryOutput;

end Behavioral;

