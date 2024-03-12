LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all; 


ENTITY two_bit_mult IS
  port( a,b: in std_logic_vector(1 downto 0);
    c: out std_logic_vector(3 downto 0)
  );
END ENTITY two_bit_mult;
architecture logic of two_bit_mult is
    signal g,h: std_logic_vector(2 downto 0);
    component full_adder IS
  port( a,b : in std_logic;
    c: in std_logic:='0';
    sum1,carry1 : out std_logic
      );     
END component;
  signal carry_out_1, carry_out_2 :std_logic;           
begin
  process(a,b)
  begin
  g(0)<=(b(0) and a(0));
  g(1)<=(b(0) and a(1));
  g(2)<='0';
  h(0)<='0';
  h(1)<=(b(1) and a(0));
  h(2)<=(b(1) and a(0));
end process;
 
 utt1: full_adder port map(g(0),h(0),'0',c(0), carry_out_1);
  utt2: full_adder port map(g(1),h(1),carry_out_1,c(1), carry_out_2);
  utt3: full_adder port map(g(2),h(2),carry_out_2,c(2),c(3));
end logic;