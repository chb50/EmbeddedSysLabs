library ieee;
use ieee.std_logic_1164.all;

entity jk is
port (SW: in std_logic_vector(1 downto 0); --SW1 = J; SW2 = K
		CLK: in std_logic;
		LEDR: out std_logic_vector(1 downto 0)); --LEDR1 = Q; LEDR0 = Q' 
end entity jk;

architecture behavior of jk is
signal jqclk, kqclk: std_logic; --intermediate values
signal buff0, buff1: std_logic;
begin
output: process(CLK) is
begin
	if (rising_edge(CLK)) then
		if (SW = "00") then
		elsif (SW = "01") then -- if J = 0; K = 1
			buff0 <= '1'; --set Q' to 1
			buff1 <= '0'; --set Q to 0
		elsif (SW = "10") then
			buff0 <= '0'; --set Q' to 0
			buff1 <= '1'; --set Q to 1
		elsif (SW = "11") then
			buff0 <= not buff0;
			buff1 <= not buff1;
		else --remember: std_logic can have 9 values in total
			buff0 <= '0'; --00 will entail an error
			buff1 <= '0';
		end if;
	end if;
end process;
LEDR(0) <= buff0;
LEDR(1) <= buff1;
end architecture behavior;