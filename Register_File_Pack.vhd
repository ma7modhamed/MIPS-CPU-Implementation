--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Register_File_Pack is

Component Reg is
Generic(n:NATURAL :=4);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK,LD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );
end component;

component Decoder is
 PORT (I:IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
		E:IN  STD_LOGIC;
		O:OUT STD_LOGIC_VECTOR (31 DOWNTO 0));

end component;

component MUX is
PORT(	I31: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	   I30: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I29: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I28: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I27: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I26: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I25: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I24: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I23: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I22: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I21: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I20: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I19: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I18: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I17: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I16: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I15: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I14: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I13: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I12: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I11: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I10: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I9: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I8: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I7: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I6: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I5: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I4: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I3: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I2: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I1: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		I0: IN STD_LOGIC_VECTOR(31 DOWNTO 0);

		S:	IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		O:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
);

end component;

end Register_File_Pack;

package body Register_File_Pack is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end Register_File_Pack;
