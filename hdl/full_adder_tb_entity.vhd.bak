--
-- VHDL Entity my_project1_lib.full_adder_tb.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 16:36:44 04-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
LIBRARY my_project1_lib;
USE my_project1_lib.ALL;

ENTITY full_adder_tb IS
END full_adder_tb;
architecture logic of full_adder_tb is 
component full_adder is
  PORT (
      a     : IN     std_logic;
      b     : IN     std_logic;
      c     : IN     std_logic;
      carry : OUT    std_logic;
      sum   : OUT    std_logic
   );
end component;
signal a,b,c,sum,carry : std_logic;
begin
  uut: full_adder port map(
    a=>a,
    b=>b,
    c=>c,
    sum=>sum,
    carry=>carry
  );
simul : process
begin 
  a<='0';b<='1';c<='0';wait for 100ns;
  a<='1';b<='0';c<='0';wait for 100ns;
  a<='0';b<='1';c<='0';wait for 100ns;
  a<='1';b<='0';c<='0';wait for 100ns;
  a<='0';b<='1';c<='1';wait for 100ns;
  a<='1';b<='0';c<='1';wait for 100ns;
  a<='0';b<='1';c<='1';wait for 100ns;
  a<='1';b<='0';c<='1';wait for 100ns;
  wait;
end process;
end logic;

  

