--half adder to be used in full adder
--LOGICALLY CORRECT, NOT TESTED ON HARDWARE

library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is
port (A, B: in std_logic;
		SUM, COUT: out std_logic);
end entity halfAdder;

architecture behaviour of halfAdder is
begin
	SUM <= A xor B;
	COUT <= A and B;
end architecture behaviour;