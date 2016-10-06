--Counter with hex decoder as component
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

component hexdecoder is
port (input: in std_logic_vector(3 downto 0);
		hex: out std_logic_vector(6 downto 0));
end component hexdecoder;

signal buff0, buff1, buff2, buff3, buff4, buff5, buff6, buff7: std_logic := '0';
signal hexbuff0, hexbuff1: std_logic_vector(3 downto 0); 
begin
--NOTE: you can only drive a single signal from one process
zero: process(KEY(0)) is
begin
	if (rising_edge(KEY(0))) then
		buff0 <= not buff0;
	end if;
end process;

one: process(buff0) is --bit 1 (toggles half as fast as bit 0)
begin
	if (buff0 = '0') then
		buff1 <= not buff1;
	elsif (buff0 = 'Z') then
		buff1 <= 'Z';
	end if;
end process;

two: process(buff1) is -- bit 2
begin
	if (buff1 = '0') then
		buff2 <= not buff2;
	elsif (buff1 = 'Z') then
		buff2 <= 'Z';
	end if;
end process;

three: process(buff2) is --bit 3
begin
	if (buff2 = '0') then
		buff3 <= not buff3;
	elsif (buff2 = 'Z') then
		buff3 <= 'Z';
	end if;
end process;

four: process(buff3) is --bit 4
begin
	if (buff3 = '0') then
		buff4 <= not buff4;
	elsif (buff3 = 'Z') then
		buff4 <= 'Z';
	end if;
end process;

five: process(buff4) is --bit 5
begin
	if (buff4 = '0') then
		buff5 <= not buff5;
	elsif (buff4 = 'Z') then
		buff5 <= 'Z';
	end if;
end process;

six: process(buff5) is --bit 6
begin
	if (buff5 = '0') then
		buff6 <= not buff6;
	elsif (buff5 = 'Z') then
		buff6 <= 'Z';
	end if;
end process;

seven: process(buff6) is --bit 7
begin
	if (buff6 = '0') then
		buff7 <= not buff7;
	elsif (buff6 = 'Z') then
		buff7 <= 'Z';
	end if;
end process;


LEDR(0) <= buff0;
LEDR(1) <= buff1;
LEDR(2) <= buff2;
LEDR(3) <= buff3;
LEDR(4) <= buff4;
LEDR(5) <= buff5;
LEDR(6) <= buff6;
LEDR(7) <= buff7;

LEDG(0) <= KEY(0);

--define components
--store lower 4 bits to be displayed on decoder 0
dec0: hexdecoder port map(input(0) => buff0, input(1) => buff1, input(2) => buff2, input(3) => buff3, hex => HEX0);

--store lower 4 bits to be displayed on decoder 1
dec1: hexdecoder port map(input(0) => buff4, input(1) => buff5, input(2) => buff6, input(3) => buff7, hex => HEX1);
			
end architecture behavior;

