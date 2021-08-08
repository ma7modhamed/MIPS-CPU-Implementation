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

package CPU_Pack is
component ALU_32bit is 

PORT(
         data1 : IN  std_logic_vector(31 downto 0);
         data2 : IN  std_logic_vector(31 downto 0);
         aluop : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         dataout : OUT  std_logic_vector(31 downto 0);
         cflag : OUT  std_logic;
         zflag : OUT  std_logic;
         oflag : OUT  std_logic
        );
		  
end component;	

component Register_File is
GENERIC (n: NATURAL := 32) ;

Port (
           read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0)

);
end component;
component CU_module is 
port(
          DATA: in STD_LOGIC_VECTOR(5 downto 0);
      MEM_READ : out STD_LOGIC;
      MEM_WRITE : out STD_LOGIC;
		RegDst : out std_logic;
		Branch : out std_logic;
		BranchNE : out std_logic;
		Jump : out std_logic;
		MemToReg : out std_logic;
		ALUSrc : out std_logic;
		RegWrite : out std_logic;
		ALUOp : out std_logic_vector(1 downto 0)
		);
end component;

component ALU_Control is
port(
      ALUOp : in std_logic_vector(1 downto 0);
		funct : in std_logic_vector(5 downto 0);
		operation : out std_logic_vector(3 downto 0)
		);
end component;		
      
component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component GenericFullAdder is
GENERIC (	n : NATURAL := 8) ;
	PORT    (	A : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			B : IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			S : OUT STD_LOGIC_VECTOR (n-1 DOWNTO 0);
			Carry : OUT  STD_LOGIC);

end component;
component SignExtension is

	PORT    (	Input : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
			Output : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	

end component;
component Reg is

Generic(n:NATURAL :=4);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK,LD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );

end component;
component MUX2x1 is
Generic(n:NATURAL :=32);
 Port ( data1 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           data2 : in  STD_LOGIC_VECTOR(n-1 downto 0);
           sel : in  STD_LOGIC;
           Mux_out : out  STD_LOGIC_VECTOR(n-1 downto 0));


end component;
end CPU_Pack;

package body CPU_Pack is

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
 
end CPU_Pack;
