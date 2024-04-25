library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity swled_tb is
end swled_tb;

architecture Test of swled_tb is
COMPONENT tp1_top is
    Port ( sw_i : in STD_LOGIC_VECTOR (15 downto 0);
           led_o : out STD_LOGIC_VECTOR (15 downto 0));
end component;
    signal sw, led : STD_LOGIC_VECTOR (15 downto 0):= (others => '0');

begin
Test: entity work.interrupteur(Behavioral)
port map(sw_i=>sw,led_o=>led);

-- Test avec quelques valeurs
STIMULUS: process
begin
    sw(0) <= '1';sw(1)<='1';sw(2)<='0';
    wait for 10 ns;
    sw(0) <= '0';sw(1)<='1';sw(2)<='0';
    wait for 10 ns;
    sw(0) <= '0';sw(1)<='0';sw(2)<='0';
    wait for 10 ns;
    sw(0) <= '0';sw(1)<='0';sw(2)<='1';
    wait for 10 ns;
    sw(0) <= '1';sw(1)<='1';sw(2)<='1';
    wait for 10 ns;
end process STIMULUS;
end Test;

