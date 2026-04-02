-- Seth Taylor
library ieee;
use ieee.std_logic_1164.all;
entity notN is 
    port (a: in std_logic;
          y: out std_logic);
end notN;
architecture Behavioral of notN is
begin
    y <= not a;
end Behavioral;
