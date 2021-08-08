----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:13:23 05/02/2019 
-- Design Name: 
-- Module Name:    Mux2 - Behavioral 
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

entity Mux2 is
 Port ( 
           A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
			  A3 : in  std_logic;
			 -- A4 : in std_logic;
			  --A5 : in std_logic;
			 ---- A6 : in std_logic;
			 -- A7 : in std_logic;
			 -- A8 : in std_logic;
			 ---- A9 : in std_logic;
			 -- A10 : in std_logic;
			  --A11 : in std_logic;
			  --A12 : in std_logic;
			  --A13 : in std_logic;
			  --A14 : in std_logic;
			  --A15 : in std_logic;
           sel : in  STD_LOGIC_vector(1 downto 0);
           Mux2_out : out  STD_LOGIC);
end Mux2;

architecture Behavioral of Mux2 is

begin
Mux2_out <= A0 when sel = "00" else
            A1 when sel = "01" else
            A2 when sel = "10" else
				A3 when sel = "11" else
				--A4 when sel = "0100" else
				--A5 when sel = "0101" else
			--	A6 when sel = "0110" else
			--	A7 when sel = "0111" else
			--	A8 when sel = "1000" else
			--	A9 when sel = "1001" else
			--	A10 when sel = "1010" else
			--	A11 when sel = "1011" else
			--	A12 when sel = "1100" else
			--	A13 when sel = "1101" else
			--	A14 when sel = "1110" else
			--	A15 when sel = "1111" else
				'Z';
				


end Behavioral;

