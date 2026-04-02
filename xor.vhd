-- Seth Taylor
library ieee;
use ieee.std_logic_1164.all;

entity xor is 
    port (a, b: in std_logic;
          y: out std_logic);
end xor;

architecture Behavioral of xor is
begin
    y <= (a and not b) or (not a and b);
end Behavioral; 
