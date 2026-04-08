library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sll is
    generic (
        N : integer := 16;
        M : integer := 4
    );
    port (
        A     : in  std_logic_vector(N-1 downto 0);
        shiftamt : in  std_logic_vector(M-1 downto 0);
        Y     : out std_logic_vector(N-1 downto 0)
    );
end sll;

architecture Behavioral of sll is
begin
    Y <= std_logic_vector(shift_left(unsigned(A), to_integer(unsigned(shiftamt))));
end Behavioral;