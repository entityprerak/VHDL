--
-- VHDL Entity my_project1_lib.and_gate.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 16:04:51 01-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY and_gate IS
  port ( input1,input2: in std_logic;
         output: out std_logic);
END ENTITY and_gate;

architecture logic of and_gate is
begin
    output<= input1 and input2;
  end logic;