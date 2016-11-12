library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity automation_test is
end automation_test;


architecture Behavioral of automation_test is
    
    component trigger_structural
    	Port ( D,C: in std_logic;
           Q: out std_logic);
    end component;
    
    component trigger_behav
    	Port ( D,C: in std_logic;
           Q: out std_logic);
    end component;
    
    signal D,C,Q1,Q2 : std_logic := '0';
begin
    UUT1 : trigger_structural port map (D=>D, C=>C, Q=>Q1);
    UUT2 : trigger_behav port map (D=>D, C=>C, Q=>Q2);
    
    process
    begin
    
    D <= '1';
    C <= '0';
    wait for 50 ns;
    D <= '1';
    C <= '1';
    wait for 50 ns;
    D <= '0';
    C <= '0';
    wait for 50 ns;
    D <= '1';
    C <= '1';
    wait for 50 ns;
    
    end process;
    
end Behavioral;

