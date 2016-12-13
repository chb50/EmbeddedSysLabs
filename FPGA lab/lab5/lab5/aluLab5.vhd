--ALU for lab 5
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aluLab5 is
port (opcode: in std_logic_vector(2 downto 0);
		A, B: in std_logic_vector(7 downto 0);
		aluOut: out std_logic_vector(7 downto 0));
end entity aluLab5;

architecture behavior of aluLab5 is

--Component--
component nBitRipple is
generic(bitCount: positive);
port (A: in std_logic_vector(bitCount downto 0);--4 bit input A
		B: in std_logic_vector(bitCount downto 0);--4 bit input B
		CIN: in std_logic;
		S: out std_logic_vector(bitCount downto 0);
		COUT: out std_logic);
end component nBitRipple;

--signal--
signal addRes: std_logic_vector(7 downto 0);
signal subRes: std_logic_vector(7 downto 0);

begin

adder: nBitRipple generic map(bitCount => 7)
						port map (A => A, B => B, CIN => '0', S => addRes, COUT => open); --leave COUT floating

subtracter: nBitRipple generic map (bitCount => 7) --twos comp subtraction
								port map (A => A, B => not B, CIN => '1', S => subRes, COUT => open);
with opcode select
aluOut <= A and B when "000",
			A or B when "001",
			A nand B when "010",
			A nor B when "011",
			A xor B when "100",
			addRes when "101", --If unsigned type is a problem here, then do a type comversion to signed integers
			subRes when "110",
			to_stdlogicvector(to_bitvector(A) srl to_integer(unsigned(B))) when "111",
			"UUUUUUUU" when others;
end architecture behavior;