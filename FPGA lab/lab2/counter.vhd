--Counter with hex decoder and jk flipflops as components
--NOTE: must set as top level entity by going to Project>Set as Top-level entity

library ieee;
use ieee.std_logic_1164.all;

entity counter is
port (KEY: in std_logic_vector(0 downto 0); --clock
		LEDG: out std_logic_vector(0 downto 0);
		HEX0, HEX1: out std_logic_vector(6 downto 0); --hex displays
		LEDR: out std_logic_vector(7 downto 0)); --need to only represent Q, not Q'
end entity counter;

architecture behavior of counter is

--hex display component
component hexdecoder is
port (input: in std_logic_vector(3 downto 0);
		hex: out std_logic_vector(6 downto 0));
end component hexdecoder;

--jk flipflop component
component jkbit is 
port (input: in std_logic := '1'; 
		clk: in std_logic;
		q: out std_logic);
end component;

signal buffvec: std_logic_vector(7 downto 0) := x"00";

begin

counterBit1to7: for i in  0 to 7 generate
begin
	bit0: if (i = 0) generate
		jk0: jkbit port map(clk => KEY(0), q => buffvec(0));
	end generate bit0;
	upperBits: if (i > 0) generate --connect to buffvec output so that output of first jk can be passed to jk#1, and so on
		jk1: jkbit port map(clk => buffvec(i-1), q => buffvec(i));
	end generate upperBits;
end generate;

--load buffvec to output LEDs
LEDR <= buffvec;

--Display clk value
LEDG(0) <= KEY(0);

--define components (cannot connect components directly, so we use the buffer vector)
--store lower 4 bits to be displayed on decoder 0
dec0: hexdecoder port map(input(0) => buffvec(0), input(1) => buffvec(1), input(2) => buffvec(2), input(3) => buffvec(3), hex => HEX0);

--store lower 4 bits to be displayed on decoder 1
dec1: hexdecoder port map(input(0) => buffvec(4), input(1) => buffvec(5), input(2) => buffvec(6), input(3) => buffvec(7), hex => HEX1);
			
end architecture behavior;

