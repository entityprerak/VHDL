--
-- VHDL Entity my_project_2_lib.mux_8x3.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 15:09:09 06-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY mux_8x3 IS
  port(s: in std_logic_vector(2 downto 0);
  d:in std_logic_vector(7 downto 0);
  y: out std_logic_vector(2 downto 0)
  
);  
END ENTITY mux_8x3;

architecture logic of mux_8x3 is  
  component mux_4x2 is
  port( s0,s1,d0,d1,d2,d3: in std_logic;
    y: out std_logic
  );
END component;
  component mux_2x1 IS
  port( d0,d1,s:in std_logic;
    y:out std_logic
  );
  END component;
begin
  utt1: mux_4x2 port map( s(0),s(1),d(0),d(1),d(2),d(3),y(0));
  utt2: mux_4x2 port map( s(0),s(1),d(4),d(5),d(6),d(7),y(1));
  utt3: mux_2x1 port map(y(0),y(1),s(2),y(2));
end logic;
