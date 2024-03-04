--
-- VHDL Entity my_project1_lib.xnor_gate.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 17:46:50 01-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY xnor_gate IS
  port ( input1,input2: in std_logic;
         output: out std_logic
      );      
END ENTITY xnor_gate;

architecture logic of xnor_gate is 
begin
  process(input1,input2)
  begin
  output<=input1 xnor input2;
  end process;
end logic;



