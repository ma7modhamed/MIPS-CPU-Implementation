----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:07:52 05/04/2019 
-- Design Name: 
-- Module Name:    MUX2x1 - Behavioral 
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

entity MUX2x1 is
Generic(n:NATURAL :=32);
 Port ( data1 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           data2 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           sel : in  STD_LOGIC;
           Mux_out : out  STD_LOGIC_VECTOR(n-1 downto 0));


end MUX2x1;

architecture Behavioral of MUX2x1 is
--signal tmp:STD_LOGIC_VECTOR(n-1 downto 0) := 'Z';
begin

Mux_out <= data1 when sel = '0' else
           data2 when sel = '1' else
			   (others=>'Z');
end Behavioral;


