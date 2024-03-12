--
-- VHDL Entity my_project_2_lib.demux_3x8.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 18:12:50 06-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY demux_3x8 IS
  port( y: in std_logic;
    s: in std_logic_vector(2 downto 0);
    d: out std_logic_vector(7 downto 0)
    );
    
END ENTITY demux_3x8;

