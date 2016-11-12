library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity trigger_behav is
    Port ( D,C: in std_logic;
           Q: out std_logic:= '0');
end trigger_behav;

architecture Behavioral of trigger_behav is
 
begin
	process(D,C)
	begin

	if C = '0' then
		Q <= D;
	end if; 
	
	end process;
end Behavioral;