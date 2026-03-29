library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
    port 
    (
        clk   : in  std_logic;
        rst   : in  std_logic;                            
        load  : in  std_logic;                            
        din   : in  std_logic_vector(7 downto 0);         
        sin   : in  std_logic;                            
        dout  : out std_logic_vector(7 downto 0);         
        sout  : out std_logic                             
    );
end entity;

architecture Behavioral of shift_reg is
    signal r : std_logic_vector(7 downto 0);
begin
    

   

end architecture;