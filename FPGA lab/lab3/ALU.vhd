--TOP LEVEL DESIGN
--4 bit alu

--NEED TO WRITE A TESTBENCH FOR THIS
--NOT TESTED ON HARDWARE YET

library ieee;
use ieee.std_logic_1164.all;

--NOTE: the ALU must be N-bit as well

entity ALU is
--for SW: 0 to 3 is bits A, 4 to 7 is bits B, mux A select is 8 and 9, mux B select is 10 and 11, carry on 12
port (SW: in std_logic_vector(12 downto 0);
		--HEX 7 displays number A, HEX 5 displays number B, HEX 3 displays SUM
		HEX7, HEX5, HEX3: out std_logic_vector(6 downto 0);
		--ledg1 means sum is 0, led0 is on when cout = 1
		LEDG: out std_logic_vector(1 downto 0));
end entity ALU;

architecture behavior of ALU is

component nBitRipple is
generic(bitCount: positive);
port(A, B: in std_logic_vector(bitCount downto 0);
		CIN: in std_logic;
		S: out std_logic_vector(bitCount downto 0);
		COUT: out std_logic);
end component nBitRipple;

component hexdecoder is
port(input: in std_logic_vector(3 downto 0); --input binary values for hex
		hex: out std_logic_vector(6 downto 0));
end component hexdecoder;

component mux is
port (SEL: in std_logic_vector(1 downto 0);
		D0, D1, D2, D3: in std_logic;
		Y: out std_logic);
end component mux;

signal muxToAdderA: std_logic_vector(3 downto 0); --used to pass signal from mux to adder
signal muxToAdderB: std_logic_vector(3 downto 0);

signal adderOutput: std_logic_vector(3 downto 0); --used to pass adder result to output
signal coutHolder: std_logic; --used to pass the cout value to one of the green leds

signal valA: std_logic_vector(3 downto 0); --used for when we need to invert the input numbers
signal valB: std_logic_vector(3 downto 0);

signal notValA: std_logic_vector(3 downto 0); --cant assign the negation of a aignal to be connected to input of a component.
signal notValB: std_logic_vector(3 downto 0); --so i needed to make seperate signals for the negation of the inputs.

begin

--remember: these signals are ran concurrently
valA <= SW(3 downto 0);
valB <= SW(7 downto 4);

notValA <= not valA;
notValB <= not valB;

--generate mux that connect to adder
muxGenerateA: for i in 0 to 3 generate --2 mux per adder
	--input connected to valA because valA changes depending on select lines, unlike the input itself
	muxArrayA: mux port map (SEL(0) => SW(8), SEL(1) => SW(9), D0 => valA(i), D1 => notValA(i),
										D2 => '0', D3 => 'X', Y => muxToAdderA(i));
end generate muxGenerateA;

muxGenerateB: for i in 0 to 3 generate
	muxArrayB: mux port map (SEL(0) => SW(10), SEL(1) => SW(11), D0 => valB(i), D1 => notValB(i),
										D2 => '0', D3 => 'X', Y => muxToAdderB(i)); --connect to upper half of muxToAdder
end generate muxGenerateB;

--generate adder
fourBitAdder: nBitRipple generic map (bitCount => 3) --create 4 full adders
									--NOTE: ports must be in the order that they are defined. 
									--If they are not in the correct order, Quartus will still compile but not modelsim
									port map (A(0) => muxToAdderA(0), A(1) => muxToAdderA(1), A(2) => muxToAdderA(2), A(3) => muxToAdderA(3), 
													B(0) => muxToAdderB(0), B(1) => muxToAdderB(1), B(2) => muxToAdderB(2), B(3) => muxToAdderB(3),
													CIN => SW(12), S => adderOutput, COUT => coutHolder);

--cout value
LEDG(0) <= coutHolder;
--equals 0 value
LEDG(1) <= '1' when adderOutput = x"0"
				else '0';
			
--Decoders to display output
displayA: hexdecoder port map (input => SW(3 downto 0), hex => HEX7);
displayB: hexdecoder port map (input => SW(7 downto 4), hex => HEX5);
displaySum: hexdecoder port map (input => adderOutput, hex => HEX3);

end architecture behavior;