libary ieee;
use ieee.std_logic_1164.all;

entity and is
  port(
    A, B : in std_logic;
    Y : out std_logic
  );
end and;

architecture structural of and is

begin

    Y <= A and B;

end structural;