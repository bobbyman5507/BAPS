--Seth Taylor
library ieee;
use ieee.std_logic_1164.all;
entity addSub is 
    port (a, b: in std_logic;
          sel: in std_logic; -- 0 for add, 1 for sub
          y: out std_logic);
end addSub;

architecture Behavioral of addSub is
    signal b_sub: std_logic;
begin
    b_sub <= b xor sel; -- Invert B for Subtraction 
    y <= (a and not b_sub) or (not a and b_sub); 