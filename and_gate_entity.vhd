--
-- VHDL Entity my_project_2_lib.and_gate.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 14:00:42 06-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY and_gate IS
  port(a,b:in std_logic;
    c:out std_logic);
END ENTITY and_gate;
architecture logic of and_gate is
begin
  process(a,b)
  begin
  if a= '0' then
    c<='0';
  else 
  if b='0' then
    c<='0';
  else
    c<='1';
  end if;
  end if;
  end process;
end logic;
     
    

