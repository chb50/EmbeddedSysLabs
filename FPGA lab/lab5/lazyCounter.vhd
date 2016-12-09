library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lazyCounter is
port (clk: in std_logic;
		trigger: in std_logic;
		reset: in std_logic;
		nextVal: out std_logic_vector(3 downto 0));
end entity lazyCounter;

architecture behavior of lazyCounter is

type numbers is (zero, one, two, three, four, five, six, seven,
						eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen);

attribute encoding: string;
attribute encoding of numbers: type is ("0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111");

signal currState: numbers := zero;
signal nextState: numbers;

begin

process(clk) is
begin
	if(rising_edge(clk)) then
		if(reset = '1') then
			currState <= zero;
		elsif (trigger = '1') then
			currState <= nextState;
		end if;
	end if;
end process;

incriment: process(trigger) is
begin
	case currState is
		when zero =>
			nextVal <= "0001";
		when one =>
			nextVal <= "0010";
		when two =>
			nextVal <= "0011";
		when three =>
			nextVal <= "0100";
		when four =>
			nextVal <= "0101";
		when five =>
			nextVal <= "0110";
		when six =>
			nextVal <= "0111";
		when seven =>
			nextVal <= "1000";
		when eight =>
			nextVal <= "1001";
		when nine =>
			nextVal <= "1010";
		when ten =>
			nextVal <= "1011";
		when eleven =>
			nextVal <= "1100";
		when twelve =>
			nextVal <= "1101";
		when thirteen =>
			nextVal <= "1110";
		when fourteen =>
			nextVal <= "1111";
		when fifteen =>
			nextVal <= "0000";
	end case;
end process incriment;

end architecture behavior;
