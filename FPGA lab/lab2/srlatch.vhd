library ieee;
use ieee.std_logic_1164.all;

entity srlatch is
port (SW: in std_logic_vector(1 downto 0); --sw1 = S; sw0 = R
		CLK: in std_logic;
		LEDR: out std_logic_vector(1 downto 0)); --led1 = Q; led0 = Q'
end entity srlatch;

architecture behavior of srlatch is
signal sclk, rclk : std_logic; --intermediate signals
signal holder0, holder1: std_logic;
begin

output: process(CLK) is
begin
	if (CLK = '1') then
		rclk <= not (SW(0) and CLK);
		sclk <= not (SW(1) and CLK);--remember: the signal will only change on the NEXT clock cycle, not this one
		
		holder0 <= not (rclk or holder1);
		holder1 <= not (sclk or holder0);
	end if;
end process;
LEDR(0) <= holder0;
LEDR(1) <= holder1;
end architecture behavior;

--This code currently has the right logic, but timing is iffy
--may want to use a value rather than a signal to represent the intermediate signals 
		
	