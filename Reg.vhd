----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:47:00 05/02/2019 
-- Design Name: 
-- Module Name:    Reg - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg is

Generic(n:NATURAL :=4);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK,LD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );

end Reg;

architecture Behavioral of Reg is
SIGNAL TEMP:STD_LOGIC_VECTOR(N-1 DOWNTO 0):=(OTHERS=>'0');
begin
PROCESS(CLK)
	BEGIN
		IF(CLK'EVENT AND CLK='1') THEN
			IF(LD='1') THEN
				TEMP<=I;
				ELSIF (INC='1') THEN
				TEMP<=TEMP+1;
				ELSIF(CLR='1') THEN
				TEMP<= (OTHERS=>'0');
			END IF;
		END IF;
	END PROCESS;
	O<=TEMP;

end Behavioral;

