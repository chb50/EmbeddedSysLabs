library ieee;
use ieee.std_logic_1164.all;

entity jk is
port (SW: in std_logic_vector(1 downto 0) := "10"; --SW0 = J; SW1 = K
		KEY: in std_logic_vector(0 downto 0); --Key(0) and Ledg(0) is used for clock indication
		LEDG: out std_logic_vector(0 downto 0);
		LEDR: out std_logic_vector(1 downto 0)); --LEDR1 = Q'; LEDR0 = Q 
end entity jk;

architecture behavior of jk is
signal jqclk, kqclk: std_logic; --intermediate values
--NOTE: had to initalize the input and output values to match a truth table instance of the jk flip flop
--because of this, if the switches on the board are not set to SW1 = 1, SW0 = 0 there is no 
--guarantee it will work on the board
--i did this because if the values are not set, then they are initialized to 'U'. this was an
--issue because the 'U' signal was being propagated through the signal
signal buff0: std_logic := '1';
signal buff1: std_logic := '0';
begin

--issue with this is signal toggles, but is not shown on graph
--also, if we attempt to change input to oposite of output while the current setting is toggle
--then the system failes
jqclk <= not(SW(0) and buff1 and KEY(0));
kqclk <= not(SW(1) and buff0 and KEY(0));

buff0 <= not(jqclk and buff1);
buff1 <= not(kqclk and buff0);

--currently testing with and with out process
--issue with process is led1 changes slower from 1 to 0, but faster from 0 to 1
--process(KEY(0)) is
--begin
--	if (KEY(0) = '1') then
--		jqclk <= not(SW(0) and buff1 and KEY(0));
--		kqclk <= not(SW(1) and buff0 and KEY(0));
--
--		buff0 <= not(jqclk and buff1);
--		buff1 <= not(kqclk and buff0);
--	end if
--end process

LEDG(0) <= KEY(0);
LEDR(0) <= buff0; --there is a timing error on led1 which causes it to change
LEDR(1) <= buff1;
end architecture behavior;