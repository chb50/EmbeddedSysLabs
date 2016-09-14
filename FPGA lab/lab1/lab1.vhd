library ieee;
use ieee.std_logic_1164.all;

--MAKE SURE TO ADD TIMINGS

--Begin entity

entity lab1 is
port (sw: in std_logic_vector(2 downto 1);
		  LEDR: out std_logic_vector(0 downto 0));
end entity lab1;

--begin behavior
architecture behavior of lab1 is
--member variable
signal sig1, sig2: std_logic;
constant gate_delay: time:= 5ns;
--not assigning gate delays yet
--begin function
begin
	sig1 <= (not (sw(1) or not sw(2))) after gate_delay;
	sig2 <= (not sw(1) and sw(2)) after gate_delay;
	LEDR(0) <= (not (sig1 and sig2)) after gate_delay;
end architecture behavior;