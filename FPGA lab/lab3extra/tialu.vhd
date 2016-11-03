-- tialu

--NOTE, uses the following vhd files from lab3 folder:
--halfAdder.vhd
--fullAdder.vhd
--nBitRipple.vhd
--hexdecoder.vhd

library ieee;
use ieee.std_logic_1164.all;

entity tialu is
port (SW: in std_logic_vector(11 downto 0);
		HEX7, HEX5, HEX3: out std_logic_vector(6 downto 0);
		LEDG: out std_logic_vector(1 downto 0);
		sum: out std_logic_vector(3 downto 0));
end entity tialu;

architecture behavior of tialu is

component hexdecoder is
port (input: in std_logic_vector(3 downto 0); --input binary values for hex
		hex: out std_logic_vector(6 downto 0));
end component hexdecoder;

component nBitRipple is
generic(bitCount: positive);
port (A: in std_logic_vector(bitCount downto 0);--4 bit input A
		B: in std_logic_vector(bitCount downto 0);--4 bit input B
		CIN: in std_logic;
		S: out std_logic_vector(bitCount downto 0);
		COUT: out std_logic);
end component nBitRipple;

signal bMaHolder: std_logic_vector(3 downto 0);
signal aMbHolder: std_logic_vector(3 downto 0);
signal aPbHolder: std_logic_vector(3 downto 0);

signal coutHolder: std_logic_vector(2 downto 0);

signal sumHolder: std_logic_vector(3 downto 0);
begin

bMinusA: nBitRipple generic map (bitcount => 3)
							port map (A => not SW(3 downto 0), B => SW(7 downto 4), CIN => SW(11), S =>bMaHolder, COUT => coutHolder(0));

aMinusB: nBitRipple generic map (bitcount => 3)
							port map (A => SW(3 downto 0), B => not SW(7 downto 4), CIN => SW(11), S =>aMbHolder, COUT => coutHolder(1));

aPlusB: nBitRipple generic map (bitcount => 3)
							port map (A => SW(3 downto 0), B => SW(7 downto 4), CIN => SW(11), S =>aPbHolder, COUT => coutHolder(2));

with SW(10 downto 8) select
sumHolder <= x"0" when "000", --clear all bits
					bMaHolder when "001", -- b - a
					aMbHolder when "010", -- a - b
					aPbHolder when "011", -- a + b
					SW(3 downto 0) xor SW(7 downto 4) when "100", -- a xor b
					SW(3 downto 0) or SW(7 downto 4) when "101", -- a or b
 					SW(3 downto 0) and SW(7 downto 4) when "110", -- a and b
					"1111" when "111", --preset all bits
					"UUUU" when others;

--Decoders to display output
displayA: hexdecoder port map (input => SW(3 downto 0), hex => HEX7);
displayB: hexdecoder port map (input => SW(7 downto 4), hex => HEX5);
displaySum: hexdecoder port map (input => sumHolder, hex => HEX3);

with SW(10 downto 8) select
LEDG(0) <= coutHolder(0) when "001", --set cout value to corresponding arithmatic operation
				coutHolder(1) when "010",
				coutHolder(2) when "011",
				'0' when others;

LEDG(1) <= '1' when sumHolder = x"0"
				else '0';
				
end architecture behavior;