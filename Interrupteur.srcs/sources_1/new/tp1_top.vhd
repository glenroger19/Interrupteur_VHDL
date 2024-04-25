library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity interrupteur is
    Port ( sw_i : in STD_LOGIC_VECTOR (15 downto 0);
           led_o : out STD_LOGIC_VECTOR (15 downto 0));
end interrupteur;

architecture Behavioral of interrupteur is

begin
-- Connecter les switchs au leds
led_o <= sw_i;
--led_o(0) <= sw_i(0);
--led_o(15 downto 0) <= sw_i(15 downto 0);
end Behavioral;
