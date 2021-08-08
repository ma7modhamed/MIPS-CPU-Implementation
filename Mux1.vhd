----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:12:20 05/02/2019 
-- Design Name: 
-- Module Name:    Mux1 - Behavioral 
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

entity Mux1 is
 Port ( data1 : in  STD_LOGIC;
           data2 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           Mux_out : out  STD_LOGIC);


end Mux1;

architecture Behavioral of Mux1 is

begin
Mux_out <= data1 when sel = '0' else
           data2 when sel = '1' else
			  'Z';

end Behavioral;

