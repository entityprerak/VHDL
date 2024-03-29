--
-- VHDL Entity my_project1_lib.full_adder_1.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 11:32:51 04-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY full_adder_using_variable IS
  port( a,b,c : in std_logic;
    sum,carry : out std_logic
      );     
END ENTITY full_adder_using_variable;
architecture logic of full_adder_using_variable is
begin
  process(a,b,c)
   variable xa,xb,xc1,xs,xc : std_logic;
  begin 
    xa := a;
    xb:= b;
    xc1:= c;
    xs := (xa xor xb) xor xc1 ;
    xc := ((xa xor xb) and xc1)or(xa and xb);
    sum <= xs;
    carry <= xc;
  end process;
end logic; 


