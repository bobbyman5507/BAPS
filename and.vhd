libary ieee;
use ieee.std_logic_1164.all;

entity and is
  generic(
    N : integer : 16;
  )
  port(
    A, B : in std_logic_vector(N-1 downto 0);
    Y : out std_logic_vector(N-1 downto 0)
  );
end and;

architecture structural of and is

begin

    Y <= A and B;

end structural;