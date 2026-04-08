library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegisterFile is
    port 
    (
        regDest : in std_logic_vector(2 downto 0);

        regX : in std_logic_vector(2 downto 0);
        regY : in std_logic_vector(2 downto 0);
        WriteEn : in std_logic;
        WriteData : in std_logic_vector(15 downto 0);

        ReadRegX : out std_logic_vector(15 downto 0);
        ReadRegY : out std_logic_vector(15 downto 0)       
    );
end RegisterFile;


