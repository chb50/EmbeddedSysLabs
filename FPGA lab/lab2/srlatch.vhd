library ieee;
use ieee.std_logic_1164.all;

entity srlatch is
port (SW: in std_logic_vector(1 downto 0); --sw0 = S; sw1 = R
		KEY: in std_logic_vector(0 downto 0); --acts as clock
		LEDG: out std_logic_vector(0 downto 0);
		LEDR: out std_logic_vector(1 downto 0)); --led0 = Q; led1 = Q'
end entity srlatch;

architecture behavior of srlatch is
signal sclk, rclk : std_logic; --intermediate signals
signal holder0, holder1: std_logic;
attribute v: boolean;
attribute v of sclk, rclk, holder0, holder1: signal is true;
begin


--reg: process (clk)
--begin
--  if (rising_edge(clk)) then
--  q<=d;
--  end if;
--end proces;
--
--q_bar <= not q; 


output: process(KEY(0)) is
begin
	if (KEY(0) = '1') then --doing this on rising edge causes a timing hazard
		rclk <= not (SW(1)); -- so no need to include key in these statements
		sclk <= not (SW(0));--remember: the signal will only change on the NEXT clock cycle, not this one 
									--(this may be the reason why there is a timing hzard between the two outputs)
		
		holder0 <= not (sclk and holder1);
		holder1 <= not (rclk and holder0);
	else
	end if;
end process;
LEDR(0) <= holder0;
LEDR(1) <= holder1;

LEDG(0) <= KEY(0);
end architecture behavior;

--This code currently has the right logic, but timing is iffy
--may want to use a value rather than a signal to represent the intermediate signals 


--need to rewrite code as CSA, internal behavior can be seen through the RTL viewer under Netlist Viewers
--using a clock within an assignment statement is dangerous physically, as it takes time
--for the gate to processes the clock input

--also try pulse rejection to get rid of mechanical bouncing
	