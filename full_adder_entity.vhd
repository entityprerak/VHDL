--
-- VHDL Entity my_project1_lib.full_adder.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 10:19:18 04-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY full_adder IS
  port( a,b,c : in std_logic;
    sum1,carry1 : out std_logic
      );     
END ENTITY full_adder;
architecture logic of full_adder is
  signal xs,xc : std_logic;
begin
  process(a,b,c,xs,xc)
 
  begin 
    xs <= (a xor b) xor c;
    xc <= ((a xor b) and c)or(a and b);
    sum1 <= xs;
    carry1 <= xc;
  end process;
end logic; 


