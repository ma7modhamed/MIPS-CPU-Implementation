--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:08:36 05/05/2019
-- Design Name:   
-- Module Name:   C:/Users/mahmoud/Desktop/Main_Module_Project/CU_test.vhd
-- Project Name:  Main_Module_Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU_module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CU_test IS
END CU_test;
 
ARCHITECTURE behavior OF CU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU_module
    PORT(
         DATA : IN  std_logic_vector(5 downto 0);
         MEM_READ : OUT  std_logic;
         MEM_WRITE : OUT  std_logic;
         RegDst : OUT  std_logic;
         Branch : OUT  std_logic;
         BranchNE : OUT  std_logic;
         Jump : OUT  std_logic;
         MemToReg : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         RegWrite : OUT  std_logic;
         ALUOp : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DATA : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal MEM_READ : std_logic;
   signal MEM_WRITE : std_logic;
   signal RegDst : std_logic;
   signal Branch : std_logic;
   signal BranchNE : std_logic;
   signal Jump : std_logic;
   signal MemToReg : std_logic;
   signal ALUSrc : std_logic;
   signal RegWrite : std_logic;
   signal ALUOp : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU_module PORT MAP (
          DATA => DATA,
          MEM_READ => MEM_READ,
          MEM_WRITE => MEM_WRITE,
          RegDst => RegDst,
          Branch => Branch,
          BranchNE => BranchNE,
          Jump => Jump,
          MemToReg => MemToReg,
          ALUSrc => ALUSrc,
          RegWrite => RegWrite,
          ALUOp => ALUOp
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
    Data <= "000010";
     -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
