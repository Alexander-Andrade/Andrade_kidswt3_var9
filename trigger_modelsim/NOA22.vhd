library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOA22 is
    Port ( A,B,C,D: in std_logic;
           Y: out std_logic);
end NOA22;

architecture Behavioral of NOA22 is
begin
    Y <= not((A and B) or (C and D)) after 4 ns;
end Behavioral;