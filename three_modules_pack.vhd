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

package three_modules_pack is


  component Mux1 is
    Port ( data1 : in  STD_LOGIC;
           data2 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           Mux_out : out  STD_LOGIC);
  end component;

  component full_adder is 
  Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           carry_in : in  STD_LOGIC;
           carry_out : out  STD_LOGIC;
           result : out  STD_LOGIC);
	end component;		  
	
	component Mux2 is
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
   end component;
  
end three_modules_pack;

package body three_modules_pack is

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
 
end three_modules_pack;
