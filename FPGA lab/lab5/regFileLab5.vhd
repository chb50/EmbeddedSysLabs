--register file for lab 5

--here, we are gunna pass in mem addresses and then have storage @ each mem address
--we can do this as a case statement, with values being accessed based on mem address

--these registers hold 18 bit data
--up to 2^memSize registers addressable for this register file
--in our case it will be 2^5

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regFileLab5 is
port (clk: in std_logic; --tells file when to perform an action (called clk, but doesnt have to be a clock)
		enable: in std_logic;
		rw: in std_logic; --states if we read or write (write = 1)
		resetData: in std_logic; --used to repopulate regfile with static data
		addrOne: in std_logic_vector(4 downto 0);
		addrTwo: in std_logic_vector(4 downto 0);
		dAddr: in std_logic_vector(4 downto 0);
		dataReadOne: out std_logic_vector(15 downto 0);
		dataReadTwo: out std_logic_vector(15 downto 0);
		dataWrite: in std_logic_vector(15 downto 0));
end entity regFileLab5;

architecture behavior of regFileLab5 is

type regType is array (31 downto 0) of std_logic_vector(15 downto 0);

--signals--
signal dataBuff: std_logic_vector(17 downto 0);
--reverse vals from address (ie 0x0 = 31, 0x1 = 30,...)
signal addresses: regType := (x"0000", x"0001", x"0002", x"0003", x"0004", x"0005", x"0006", x"0007",
										x"0008", x"0009", x"000a", x"000b", x"000c", x"000d", x"000e", x"000f",
										x"0010", x"0011", x"0012", x"0013", x"0014", x"0015", x"0016", x"0017",
										x"0018", x"0019", x"001a", x"001b", x"001c", x"001d", x"001e", x"001f");
										
--convert address to integer for processing
signal addrIntOne: integer range 0 to 31 := to_integer(unsigned(addrOne));
signal addrIntTwo: integer range 0 to 31 := to_integer(unsigned(addrTwo));
signal dAddrInt: integer range 0 to 31 := to_integer(unsigned(dAddr));



begin


accessFile: process(clk, resetData) is --asynchronous reset data
begin
	if (resetData = '1') then
		addresses <= (x"0000", x"0001", x"0002", x"0003", x"0004", x"0005", x"0006", x"0007",
							x"0008", x"0009", x"000a", x"000b", x"000c", x"000d", x"000e", x"000f",
							x"0010", x"0011", x"0012", x"0013", x"0014", x"0015", x"0016", x"0017",
							x"0018", x"0019", x"001a", x"001b", x"001c", x"001d", x"001e", x"001f");
	elsif (rising_edge(clk) and enable = '1') then
		case rw is
			when '0' => --read
				dataReadOne <= addresses(addrIntOne);
				dataReadTwo <= addresses(addrIntTwo);
			when '1' => --write
				addresses(dAddrInt) <= dataWrite;
		end case;
	else
	end if;
end process accessFile;

end architecture behavior;