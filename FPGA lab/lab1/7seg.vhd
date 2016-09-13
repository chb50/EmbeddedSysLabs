library ieee;
use ieee.std_logic_1164.all;

entity seg is
port (SW: in std_logic_vector(3 downto 0);
		HEX0: out std_logic_vector(6 downto 0));
end entity seg;

architecture behavior of seg is
constant gate_delay: time:=5ns;
begin
with sw select
HEX0 <= "0111111" after gate_delay when "0000", --0
			"0000110" after gate_delay when "0001", --1
			"1011011" after gate_delay when "0010", --2
			"1001111" after gate_delay when "0011", --3
			"1100110" after gate_delay when "0100", --4
			"1101101" after gate_delay when "0101", --5
			"1111101" after gate_delay when "0110", --6
			"0000111" after gate_delay when "0111", --7
			"1111111" after gate_delay when "1000", --8
			"1100111" after gate_delay when "1001", --9
			"1110111" after gate_delay when "1010", --a
			"1111100" after gate_delay when "1011", --b
			"1011000" after gate_delay when "1100", --c
			"1011110" after gate_delay when "1101", --d
			"1111001" after gate_delay when "1110", --e
			"1110001" after gate_delay when "1111", --f
			"1000000" after gate_delay when others; -- gives a "-" sign when an error has occured
end architecture behavior;
--use the "when" keyword for switch case statement
