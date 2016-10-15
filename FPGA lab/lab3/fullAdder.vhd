--full adder created by 2 half adders
--SIMULATED, NOT TESTED

library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is
port (A, B, CIN: in std_logic;
		SUM, COUT: out std_logic);
end entity fullAdder;

architecture behavior of fullAdder is
--half adder componenet
component halfAdder is
port (A, B: in std_logic;
		SUM, COUT: out std_logic);
end component;

--used to connect halfAdder 1 with halfAdder 2
signal firstSum: std_logic;
--used to buffer the output sum
signal lastSum: std_logic;
--used to connect carry outs to or gate
signal c1: std_logic;
signal c2: std_logic;

begin
ha0: halfAdder port map (A => A, B => B, SUM => firstSum, COUT => c1); --cout will be connected to an or gate
ha1: halfAdder port map (A => firstSum, B => CIN, SUM => lastSum, COUT => c2);

SUM <= lastSum;
COUT <= c1 or c2;

end architecture behavior;

