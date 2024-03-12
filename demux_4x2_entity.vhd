--
-- VHDL Entity my_project_2_lib.demux_4x2.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 10:05:35 07-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY demux_4x2 IS
  port( a: in std_logic ;
    s: in std_logic_vector(1 downto 0);
    d:out std_logic_vector(3 downto 0)
  );
END ENTITY demux_4x2;
architecture logic of demux_4x2 is
begin
  process(a,s)
  begin
    if s(0)='0' then
      if s(1)='0' then
      d(0)<=a;
      d(1)<='0';
      d(2)<='0';
      d(3)<='0';
      else
       d(1)<=a;
      d(0)<='0';
      d(2)<='0';
      d(3)<='0';
      end if;
  elsif s(0)='1' then
      if s(1)='0' then
      d(2)<=a;
      d(0)<='0';
      d(1)<='0';
      d(3)<='0';
      else
        d(3)<=a;
      d(0)<='0';
      d(1)<='0';
      d(2)<='0';
    end if;
  end if;
  end process;
end logic;
  
    
    
    
    

