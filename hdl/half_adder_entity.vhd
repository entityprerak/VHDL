--
-- VHDL Entity my_project1_lib.half_adder.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 17:57:46 01-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY half_adder IS
  port( a,b : in std_logic;
    sum,carry : out std_logic
      );     
END ENTITY half_adder;
architecture logic of half_adder is
begin 
process(a,b)
begin 
  sum <= a xor b;
  carry <= a and b;
  end process;
end logic; 

