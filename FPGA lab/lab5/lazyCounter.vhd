library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lazyCounter is
port (clk: in std_logic;
		reset: in std_logic;
		HEX0: out std_logic_vector(6 downto 0));
end entity lazyCounter;

architecture behavior of lazyCounter is

type numbers is (zero, one, two, three, four, five, six, seven,
						eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen);

attribute encoding: string;
attribute encoding of numbers: type is ("0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111");

signal currState: numbers := zero;
signal nextState: numbers;


component hexdecoder is
port (input: in std_logic_vector(3 downto 0); --input binary values for hex
		hex: out std_logic_vector(6 downto 0));
end component hexdecoder;

signal nextVal: std_logic_vector(3 downto 0);

signal clkCount: std_logic_vector(1 downto 0) := "00";

begin

dispOut: hexdecoder port map (input => nextVal, hex => HEX0);

process(clk) is
begin
	if(reset = '0') then
		currState <= zero;
	elsif (rising_edge(clk)) then
		clkCount <= std_logic_vector(unsigned(clkCount) + 1);
		if (clkCount = "11") then
			currState <= nextState;
		end if;
	end if;
end process;

incriment: process(clk) is
begin
	case currState is
		when zero =>
			nextVal <= "0000";
			nextState <= one;
		when one =>
			nextVal <= "0001";
			nextState <= two;
		when two =>
			nextVal <= "0010";
			nextState <= three;
		when three =>
			nextVal <= "0011";
			nextState <= four;
		when four =>
			nextVal <= "0100";
			nextState <= five;
		when five =>
			nextVal <= "0101";
			nextState <= six;
		when six =>
			nextVal <= "0110";
			nextState <= seven;
		when seven =>
			nextVal <= "0111";
			nextState <= eight;
		when eight =>
			nextVal <= "1000";
			nextState <= nine;
		when nine =>
			nextVal <= "1001";
			nextState <= ten;
		when ten =>
			nextVal <= "1010";
			nextState <= eleven;
		when eleven =>
			nextVal <= "1011";
			nextState <= twelve;
		when twelve =>
			nextVal <= "1100";
			nextState <= thirteen;
		when thirteen =>
			nextVal <= "1101";
			nextState <= fourteen;
		when fourteen =>
			nextVal <= "1110";
			nextState <= fifteen;
		when fifteen =>
			nextVal <= "1111";
			nextState <= zero;
	end case;
end process incriment;

end architecture behavior;
