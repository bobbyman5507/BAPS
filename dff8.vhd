library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dff8 is
    port 
    (
        D : in std_logic_vector(7 downto 0);
        clk : in std_logic;
        Qs : out std_logic_vector(7 downto 0);
    );
end dff8;


architecture Behavioral of dff8 is

    signal Data : std_logic_vector(7 downto 0);

begin

    process(clk)
    begin
        if rising_edge(clk) then
            Data <= D;
        end if;
    end process;

    Qs <= Data;

end Behavioral;