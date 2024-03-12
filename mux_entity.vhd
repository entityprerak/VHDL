--
-- VHDL Entity my_project_2_lib.mux.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 14:20:24 06-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY mux_2x1 IS
  port( d0,d1,s:in std_logic;
    y:out std_logic
  );
END ENTITY mux_2x1;
architecture logic of mux_2x1 is 
begin
  process(d0,d1,s)
  begin
    if s = '0' then
    y<=d0;
  else
    y<=d1;
  end if;
end process;
end logic;


