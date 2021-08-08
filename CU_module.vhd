----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:28:58 05/02/2019 
-- Design Name: 
-- Module Name:    CU_module - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU_module is
port(
       DATA: in STD_LOGIC_VECTOR(5 downto 0);
      MEM_READ : out STD_LOGIC;
      MEM_WRITE : out STD_LOGIC;
		RegDst : out std_logic;
		Branch : out std_logic;
		BranchNE : out std_logic;
		Jump : out std_logic;
		MemToReg : out std_logic;
		ALUSrc : out std_logic;
		RegWrite : out std_logic;
		ALUOp : out std_logic_vector(1 downto 0)
		);
end CU_module;

architecture Behavioral of CU_module is
signal R_Format : std_logic;
signal LW : std_logic;
signal SW : std_logic;
signal beq : std_logic;
signal bne : std_logic;
signal jmp : std_logic;
begin
R_Format <= (not(Data(0)) and not(Data(1)) and not(Data(2)) and not(Data(3)) and not(Data(4)) and not(Data(5)));
LW <= Data(0) and Data(1)  and not(Data(2)) and not(Data(3)) and not(Data(4)) and Data(5);
SW <= Data(0) and Data(1) and not(Data(2)) and Data(3) and not(Data(4)) and Data(5);
beq <= not(Data(0)) and not(Data(1)) and Data(2) and not(Data(3)) and not(Data(4)) and not(Data(5));
bne <= Data(0) and not(Data(1)) and Data(2) and not(Data(3)) and not(Data(4)) and not(Data(5));
jmp <= not(Data(0)) and Data(1) and not(Data(2)) and not(Data(3)) and not(Data(4)) and not(Data(5));
Jump <= jmp;
RegDst <= R_Format;
ALUSrc <= LW or SW;
MemToReg <= LW;
RegWrite <= R_Format or LW;
MEM_READ <= LW;
MEM_WRITE <= SW;
Branch <= beq;
BranchNE <= bne;
ALUOp(0) <= beq ;
ALUOp(1) <= R_Format;




end Behavioral;

