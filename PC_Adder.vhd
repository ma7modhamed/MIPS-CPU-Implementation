----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:05:39 05/03/2019 
-- Design Name: 
-- Module Name:    PC_Adder - Behavioral 
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

entity PC_Adder is
		 PCOut: in STD_LOGIC_VECTOR(31 downto 0);
       Adder_out : out std_logic_vector(31 downto 0);
end PC_Adder;

architecture Behavioral of PC_Adder is

begin
Adder_out <= PCOut + 4 

end Behavioral;

