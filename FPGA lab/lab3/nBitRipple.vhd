--N bit ripple carry adder using fullAdder component

library ieee;
use ieee.std_logic_1164.all;

entity nBitRipple is
generic(bitCount: positive);
port (A: in std_logic_vector(bitCount downto 0);--4 bit input A
		B: in std_logic_vector(bitCount downto 0);--4 bit input B
		CIN: in std_logic;
		S: out std_logic_vector(bitCount downto 0);
		COUT: out std_logic);
end entity nBitRipple;

architecture behavior of nBitRipple is

component fullAdder is
port (A, B, CIN: in std_logic;
		SUM, COUT: out std_logic);
end component fullAdder;

signal sumBuff: std_logic_vector(bitCount downto 0); --buffer vector for output sum
signal c: std_logic_vector(bitCount downto 0); --intermediate signals for propagating carry out

begin

nAdders: for i in 0 to bitCount generate
begin
		sum0: if (i = 0) generate
			--make CIN equal the entity's CIN (because there are no adders before this one)
			fa0: fullAdder port map(A => A(i), B => B(i), CIN => CIN, SUM => sumBuff(i), COUT => c(i));
		end generate;
		sumOthers: if (i > 0) generate
			--else make CIN be whatever the previous carry out was
			faOthers: fullAdder port map (A => A(i), B => B(i), CIN => c(i-1), SUM => sumBuff(i), COUT => c(i));
		end generate;
end generate nAdders;

S <= sumBuff;
COUT <= c(bitCount); --the last carry generated is our COUT value
end architecture behavior;