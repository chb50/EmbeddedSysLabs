library ieee;
use ieee.std_logic_1164.all;

entity lab1sevenseg is
port (SW: in std_logic_vector(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: out std_logic_vector(6 downto 0));
end entity lab1sevenseg;

architecture behavior of lab1sevenseg is
signal zero: std_logic_vector(6 downto 0):= "1000000";
signal one: std_logic_vector(6 downto 0):= "1111001";
signal two: std_logic_vector(6 downto 0):= "0100100";
signal three: std_logic_vector(6 downto 0):= "0110000";
signal four: std_logic_vector(6 downto 0):= "0011001";
signal five: std_logic_vector(6 downto 0):= "0010010";
signal six: std_logic_vector(6 downto 0):= "0000010";
signal seven: std_logic_vector(6 downto 0):= "1111000";
signal eight: std_logic_vector(6 downto 0):= "0000000";
signal nine: std_logic_vector(6 downto 0):= "0011000";
signal a: std_logic_vector(6 downto 0):= "0001000";
signal b: std_logic_vector(6 downto 0):= "0000011";
signal c: std_logic_vector(6 downto 0):= "0100111";
signal d: std_logic_vector(6 downto 0):= "0100001";
signal e: std_logic_vector(6 downto 0):= "0000110";
signal f: std_logic_vector(6 downto 0):= "0001110";
signal error: std_logic_vector(6 downto 0):= "0111111";

constant gate_delay: time:=5ns;
begin
with SW select
HEX0 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured
			
with SW select
HEX1 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured

with SW select
HEX2 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured

with SW select
HEX3 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured

with SW select
HEX4 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured
			
with SW select
HEX5 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured
			
with SW select
HEX6 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured
			
with SW select
HEX7 <= zero after gate_delay when "0000", --0
			one after gate_delay when "0001", --1
			two after gate_delay when "0010", --2
			three after gate_delay when "0011", --3
			four after gate_delay when "0100", --4
			five after gate_delay when "0101", --5
			six after gate_delay when "0110", --6
			seven after gate_delay when "0111", --7
			eight after gate_delay when "1000", --8
			nine after gate_delay when "1001", --9
			a after gate_delay when "1010", --a
			b after gate_delay when "1011", --b
			c after gate_delay when "1100", --c
			d after gate_delay when "1101", --d
			e after gate_delay when "1110", --e
			f after gate_delay when "1111", --f
			error after gate_delay when others; -- gives a "-" sign when an error has occured
end architecture behavior;
--use the "when" keyword for switch case statement
