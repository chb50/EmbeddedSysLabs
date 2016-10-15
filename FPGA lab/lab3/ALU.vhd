--TOP LEVEL DESIGN
library ieee;
use ieee.std_logic_1164.all;

entity ALU is
port (A, B: in std_logic;
		SUM, COUT: out std_logic);
end entity ALU;

architecture behavior of ALU is
--copy this component into the full adder component
--component halfAdder is
--port (A, B: in std_logic;
--		SUM, COUT: out std_logic);
--end component;

begin

--ha0: halfAdder port map(A => A, B => B, SUM => SUM, COUT => COUT);
end architecture behavior;

