--sram memory controller

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sram is
port (clock: in std_logic;
		address: out std_logic_vector(19 downto 0);
		data: inout std_logic_vector(15 downto 0);
		enable: buffer std_logic;
		readEn: buffer std_logic;
		writeEn: buffer std_logic;
		lowBitS: buffer std_logic;
		highBitS: buffer std_logic);
end entity sram;

architecture behavior of sram is
begin
end architecture behavior;