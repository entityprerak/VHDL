--
-- VHDL Entity my_project_2_lib.mux_4x1.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 14:51:13 06-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY mux_4x2 IS
  port( s0,s1,d0,d1,d2,d3: in std_logic;
    y: out std_logic
  );
END ENTITY mux_4x2;
architecture logic of mux_4x2 is
begin 
  process(s0,s1,d0,d1,d2,d3)
  begin
    if s0='0' then 
    if s1='0' then
    y<=d0;
    else
    y<=d1;
    end if;
  else
    if s1='0' then
    y<=d2;
    else
    y<=d1;
    end if;
end if;
end process;
end logic;



  
    
  
     

