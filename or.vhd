libary ieee;
use ieee.std_logic_1164.all;

entity or is
  port(
    A, B : in std_logic;
    Y : out std_logic
  );
end or;

architecture structural of or is

begin

    Y <= A or B;

end structural;