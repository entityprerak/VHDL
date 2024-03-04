--
-- VHDL Entity my_project1_lib.half_adder1_tb.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 14:20:22 04-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY my_project1_lib;
USE my_project1_lib.ALL;
ENTITY half_adder1_tb IS
END ENTITY half_adder1_tb;
architecture logic of half_adder1_tb is 
COMPONENT half_adder is 
  port( a: in std_logic;
        b: in std_logic;
        sum: out std_logic;
        carry: out std_logic
      );
end component;
signal a,b,sum,carry : std_logic;
begin
  uut : half_adder port map(
    a => a,
    b => b,
    sum => sum,
  carry=>carry);
stimul : process
begin
  a<='0';b<='0'; wait for 100ns;
  a<='0';b<='1'; wait for 100ns;
  a<='1';b<='0'; wait for 100ns;
  a<='1';b<='1'; wait for 100ns;
  wait;
end process;
end logic;  