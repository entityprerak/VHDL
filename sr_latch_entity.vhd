--
-- VHDL Entity my_project_2_lib.sr_latch.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 17:23:59 06-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY sr_latch IS
  port( s,r:in std_logic;
    q,not_q:out std_logic
  );
END ENTITY sr_latch;
architecture logic of sr_latch is
begin
  process(s,r)
  begin
    if r='1' then
    if s='1' then
    report "error: unexpected value"
    severity error;
    else
    q<='0';
    not_q<= '1'; 
  end if;
  else 
      q<='0';
     not_q<= '1';
   end if;
   end process;
end logic;

  
    
  

