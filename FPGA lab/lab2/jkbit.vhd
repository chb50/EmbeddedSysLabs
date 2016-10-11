--jk flip flop component used for counter

library ieee;
use ieee.std_logic_1164.all;

entity jkbit is
port (input: in std_logic := '1'; -- for toggle
		clk: in std_logic; --q values of previous jk flipflops are fed into clk
		q: out std_logic);
end entity jkbit;

architecture behavior of jkbit is
signal qbuff: std_logic:= '0';
begin
process(clk) is
begin
	--remember, every previous q acts as clk for next q. therefore if we want to count up
	--then we incriment next 1 if previous q is 0 on current clock cycle
	--(this ment that previous q was 1 on previous clock cycle)
	--thats why we test if clk = 0
	if (clk = '0') then
		qbuff <= not qbuff;
	end if;
end process;
q <= qbuff;
end architecture behavior;
	
