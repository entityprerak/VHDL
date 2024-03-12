--
-- VHDL Entity my_project_2_lib.demux_8x3.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 10:39:38 07-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY demux_8x3 IS
  port( a: in std_logic;
    s: in std_logic_vector(2 downto 0);
    d: out std_logic_vector(7 downto 0)
  );
END ENTITY demux_8x3;

architecture logic of demux_8x3 is
  
component demux_4x2 IS
  port( a: in std_logic ;
    s: in std_logic_vector(1 downto 0);
    d:out std_logic_vector(3 downto 0)
  );
END component demux_4x2; 
 
component demux_2x1 IS
  port( a: in std_logic ;
    s: in std_logic;
    d0,d1:out std_logic
  );
END component demux_2x1;

 signal d0,d1 : std_logic;
 --signal do1,do2: std_logic_vector(3 downto 0);
 begin 
   --process(s,d)
   --begin
   --do1 <= d(7 downto 4);
   --do2 <= d(3 downto 0);
   
 --end process;
  utt0: demux_2x1 port map( a, s(0), d0, d1);
  utt1: demux_4x2 port map( d0, s(2 downto 1), d(3 downto 0));
  utt2: demux_4x2 port map( d1, s(2 downto 1), d(7 downto 4));
end logic;  