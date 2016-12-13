--top level entity

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu is 
port (KEY: in std_logic_vector(1 downto 0);
		--some output signals to display
		SW: in std_logic_vector(17 downto 0); --controls the instruction that is excuted next
		CLOCK_50: in std_logic;
		LEDG: out std_logic_vector(3 downto 0); --displays states
		HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX0: out std_logic_vector(6 downto 0));
end entity cpu;

architecture behavior of cpu is

component processor is
port (KEY: in std_logic_vector(1 downto 0);
		--some output signals to display
		SW: in std_logic_vector(17 downto 0); --controls the instruction that is excuted next
		pcVal: in std_logic_vector(3 downto 0);
		CLOCK_50: in std_logic;
		LEDG: out std_logic_vector(3 downto 0); --displays states
		HEX7, HEX6, HEX5, HEX4, HEX3, HEX2: out std_logic_vector(6 downto 0));
end component processor;

component lazyCounter is
port (clk: in std_logic;
		reset: in std_logic;
		HEX0: out std_logic_vector(6 downto 0));
end component lazyCounter;

signal pcOut: std_logic_vector(3 downto 0);
 
begin

proc: processor port map (KEY => KEY, SW => SW, pcVal => pcOut, CLOCK_50 => CLOCK_50, LEDG => LEDG,
									HEX7 => HEX7, HEX6 => HEX6, HEX5 => HEX5, HEX4 => HEX4, HEX3 => HEX3, HEX2 => HEX2);

pc:lazyCounter port map (clk => KEY(0), reset => KEY(1), HEX0 => HEX0);
end architecture behavior;