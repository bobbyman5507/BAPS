-- Seth Taylor
library ieee;
use ieee.std_logic_1164.all;

entity xor is 
    generic (
        N : integer : 16
    )
    port (a, b: in std_logic_vector(N-1 downto 0);
          y: out std_logic_vector(N-1 downto 0));
end xor;

architecture Behavioral of xor is
begin
    y <= (a and not b) or (not a and b);
end Behavioral; 
