----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:28:33 05/04/2019 
-- Design Name: 
-- Module Name:    SignExtension - Behavioral 
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

entity SignExtension is

	PORT    (	Input : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
			Output : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	

end SignExtension;

architecture Behavioral of SignExtension is
signal tmp: STD_LOGIC;
begin
tmp <= Input(15);
Output(15 downto 0) <= Input(15 downto 0);
Output(31) <= tmp;
Output(30) <= tmp;
Output(29) <= tmp;
Output(28) <= tmp;
Output(27) <= tmp;
Output(26) <= tmp;
Output(25) <= tmp;
Output(24) <= tmp;
Output(23) <= tmp;
Output(22) <= tmp;
Output(21) <= tmp;
Output(20) <= tmp;
Output(19) <= tmp;
Output(18) <= tmp;
Output(17) <= tmp;
Output(16) <= tmp;


end Behavioral;

