library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lazyCounter is
port (currVal: in std_logic_vector(3 downto 0);
		nextVal: out std_logic_vector(3 downto 0);