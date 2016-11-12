library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity trigger_structural is
    Port ( D,C: in std_logic;
           Q: out std_logic := '0');
end trigger_structural;

architecture Behavioral of trigger_structural is
    component N
	Port ( A: in std_logic;
           Y: out std_logic);
    end component;
    
    component NOA22
    	Port ( A,B,C,D: in std_logic;
           Y: out std_logic);
    end component;
    
    signal x1,x2,x3,x4,x5 : std_logic;
begin
    x_1 : N port map (A=>x4, Y=>x1);
    x_2 : NOA22 port map (A=>x3, B=>x1, C=>D, D=>x4, Y=>x2);
    x_3 : N port map (A=>x2, Y=>x3);
    x_4 : N port map (A=>C, Y=>x4);
    x_5 : N port map (A=>x2, Y=>Q);
end Behavioral;