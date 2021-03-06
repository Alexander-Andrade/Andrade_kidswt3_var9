library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity N is
    Port ( A: in std_logic;
           Y: out std_logic);
end N;

architecture Behavioral of N is
begin
    Y <= (not A) after 2 ns;
end Behavioral;