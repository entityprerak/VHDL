--
-- VHDL Entity my_project_2_lib.demux_2x1.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 10:30:18 07-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY demux_2x1 IS
  port( a: in std_logic ;
    s: in std_logic;
    d0,d1:out std_logic
  );
END ENTITY demux_2x1;
architecture logic of demux_2x1 is
begin
  process(a,s)
  begin
    if s='0' then
      d0<='1';
      d1<='0';
  else
    d1<='1';
    d0<='0';
end if;
end process;
end logic;

        

