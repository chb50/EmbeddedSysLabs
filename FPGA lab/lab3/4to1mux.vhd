--multiplexer component for alu

library ieee;
use ieee.std_logic_1164.all;

entity mux is
port (SEL: in std_logic_vector(1 downto 0);
		D0, D1, D2, D3: in std_logic;
		Y: out std_logic);
end entity mux;

architecture behavior of mux is
begin

with SEL select
Y <= D0 when "00",
		D1 when "01",
		D2 when "10",
		D3 when "11",
		'U' when others;

end architecture behavior;
