--
-- VHDL Entity my_project_2_lib.array_op.arch_name
--
-- Created:
--          by - Techlabs.UNKNOWN (DESKTOP-D382P7A)
--          at - 14:44:39 07-03-2024
--
-- using Mentor Graphics HDL Designer(TM) 2023.3 Built on 9 Jul 2023 at 00:00:47
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY array_op IS
  port(
    b,a: in std_logic_vector( 3 downto 0 );
    c: out std_logic_vector( 7 downto 0)
  );
END ENTITY array_op;
architecture logic of array_op is
begin
  process(a,b)
  begin c<= a&b;
  end process;
end logic;
