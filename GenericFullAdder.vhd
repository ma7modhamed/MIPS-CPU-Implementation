----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:22:56 05/04/2019 
-- Design Name: 
-- Module Name:    GenericFullAdder - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GenericFullAdder is
GENERIC (	n : NATURAL := 8) ;
	PORT    (	A : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			B : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			S : OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			Carry : OUT  STD_LOGIC);

end GenericFullAdder;

architecture Behavioral of GenericFullAdder is
SIGNAL Tmp: STD_LOGIC_VECTOR (n DOWNTO 0);
BEGIN
	Tmp <= ('0' & A) + ('0' & B);
	S <= Tmp(n-1 DOWNTO 0) ;
	Carry <= Tmp(n) ;

end Behavioral;

