--processor controller
--may not be able to have one state machine in another, have a top level that
--lets both machines communicate with eachother

--TODO: program counter not working. that is all

--NOTE to protect data in ram, default mode will be READ

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processor is
port (KEY: in std_logic_vector(1 downto 0);
		--some output signals to display
		SW: in std_logic_vector(17 downto 0); --controls the instruction that is excuted next
		CLOCK_50: in std_logic;
		LEDG: out std_logic_vector(3 downto 0); --displays states
		HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX0: out std_logic_vector(6 downto 0));
end entity processor;

architecture behavior of processor is

--state stuff

type states is (FETCH, DECODE, EXECUTE, MEM_WRITE); --IDLE used to hold at end of program till KEY(1) is pressed
 
attribute encoding: string;
attribute encoding of states: type is "000 001 010 011";

signal currState: states := FETCH;
signal nextState: states;

--Components--

component aluLab5 is
port (opcode: in std_logic_vector(2 downto 0);
		A, B: in std_logic_vector(7 downto 0); --will read from SRAM eventually, reads from regFile for now
		aluOut: out std_logic_vector(7 downto 0));
end component aluLab5;

component hexdecoder is
port (input: in std_logic_vector(3 downto 0);
		hex: out std_logic_vector(6 downto 0));
end component hexdecoder;

component regFileLab5 is
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
end component regFileLab5;

component lazyCounter is
port (clk: in std_logic;
		trigger: in std_logic;
		reset: in std_logic;
		nextVal: out std_logic_vector(3 downto 0));
end component lazyCounter;

--signals--

--sram signals

signal sramEnable: std_logic := '0';
signal rw: std_logic;
signal srcSelect: std_logic;
signal sramReset: std_logic;
signal sramDataReadOne: std_logic_vector(15 downto 0);
signal sramDataReadTwo: std_logic_vector(15 downto 0);
signal sramDataWrite: std_logic_vector(15 downto 0) := x"0000";

--program counter
signal pcTrigger: std_logic:= '0';
signal pcReset: std_logic;
signal pcVal: std_logic_vector(3 downto 0):= x"0";

--control signals

signal opcode: std_logic_vector(2 downto 0) := SW(17 downto 15);
signal sAddr1: std_logic_vector(4 downto 0):= SW(9 downto 5);
signal sAddr2: std_logic_vector(4 downto 0):= SW(4 downto 0);
signal dAddr: std_logic_vector(4 downto 0):= SW(14 downto 10);

--register signals
signal sData1: std_logic_vector(7 downto 0);
signal sData2: std_logic_vector(7 downto 0);
signal dData: std_logic_vector(7 downto 0);

--hex input signals
signal hexIn0: std_logic_vector(3 downto 0);
signal hexIn2: std_logic_vector(3 downto 0);
signal hexIn3: std_logic_vector(3 downto 0);
signal hexIn4: std_logic_vector(3 downto 0);
signal hexIn5: std_logic_vector(3 downto 0);
signal hexIn6: std_logic_vector(3 downto 0);
signal hexIn7: std_logic_vector(3 downto 0);

signal hexOut0: std_logic_vector(6 downto 0); --having these signals frees up output signals to take different values (no multiple drivers)
signal hexOut2: std_logic_vector(6 downto 0);
signal hexOut3: std_logic_vector(6 downto 0);
signal hexOut4: std_logic_vector(6 downto 0);
signal hexOut5: std_logic_vector(6 downto 0);
signal hexOut6: std_logic_vector(6 downto 0);
signal hexOut7: std_logic_vector(6 downto 0);

begin
							
alu: aluLab5 port map (opcode => opcode, A => sData1, B => sData2, aluOut => dData);

hexComp0: hexdecoder port map (input => hexIn0, hex => hexOut0);
hexComp2: hexdecoder port map (input => hexIn2, hex => hexOut2);
hexComp3: hexdecoder port map (input => hexIn3, hex => hexOut3);
hexComp4: hexdecoder port map (input => hexIn4, hex => hexOut4);
hexComp5: hexdecoder port map (input => hexIn5, hex => hexOut5);
hexComp6: hexdecoder port map (input => hexIn6, hex => hexOut6);
hexComp7: hexdecoder port map (input => hexIn7, hex => hexOut7);

sram: regFileLab5 port map (clk => CLOCK_50, enable => sramEnable, rw => rw, resetData => sramReset,
										addrOne => sAddr1, addrTwo => sAddr2, dAddr => dAddr, dataReadOne => sramDataReadOne,
										dataReadTwo => sramDataReadTwo, dataWrite => sramDataWrite);

programCounter: lazyCounter port map (clk => KEY(0), trigger => pcTrigger, reset => pcReset, nextVal => pcVal);


--TODO: finish the state machine
transition: process(KEY(0)) is
begin
	if(rising_edge(KEY(0))) then
		currState <= nextState;
	end if;
end process transition;

processing: process(KEY(0), SW) is
begin
	if(KEY(1) = '0') then --KEY(1) button pressed
		nextState <= FETCH;
		sramReset <= '1';
		pcReset <= '1';
	else
		sramReset <= '0';
		pcReset <= '0';
		case currState is
			when FETCH =>
				LEDG <= "1000";
				--set to dashes
				HEX0 <= "0111111";
				HEX2 <= "0111111";
				HEX3 <= "0111111";
				HEX4 <= "0111111";
				HEX5 <= "0111111";
				HEX6 <= "0111111";
				HEX7 <= "0111111";
				
				
				if (KEY(0) = '0') then
					sramEnable <= '1';
					srcSelect <= '0';
					rw <= '0';
					nextState <= DECODE;
				else
					nextState <= FETCH;
				end if;
				
			when DECODE =>
				LEDG <= "0100";
				--source1 address
				hexIn7 <= "000" & sAddr1(4);
				hexIn6 <= sAddr1(3 downto 0);
				--source2 address
				hexIn5 <= "000" & sAddr2(4);
				hexIn4 <= sAddr2(3 downto 0);
				--aluOut
				hexIn3 <= x"0";
				hexIn2 <= '0' & opcode;
				
				HEX0 <= hexOut0;
				HEX2 <= hexOut2;
				HEX3 <= hexOut3;
				HEX4 <= hexOut4;
				HEX5 <= hexOut5;
				HEX6 <= hexOut6;
				HEX7 <= hexOut7;
				--program counter
				hexIn0 <= pcVal;
				
				
				
				sData1 <= sramDataReadOne(7 downto 0);
				sData2 <= sramDataReadTwo(7 downto 0);
				
				
				if (KEY(0) = '0') then
					srcSelect <= '1';
					nextState <= EXECUTE;
				else
					nextState <= DECODE;
				end if;
				
			when EXECUTE =>
				LEDG <= "0010";
				--source1 value
				hexIn7 <= sData1(7 downto 4);
				hexIn6 <= sData1(3 downto 0);
				--source2 value
				hexIn5 <= sData2(7 downto 4);
				hexIn4 <= sData2(3 downto 0);
				--destination value
				hexIn3 <= dData(7 downto 4);
				hexIn2 <= dData(3 downto 0);
				
				HEX0 <= hexOut0;
				HEX2 <= hexOut2;
				HEX3 <= hexOut3;
				HEX4 <= hexOut4;
				HEX5 <= hexOut5;
				HEX6 <= hexOut6;
				HEX7 <= hexOut7;
				--program counter
				hexIn0 <= pcVal;
				
				--execute done by alu component
				
				
				
				if (KEY(0) = '0') then
					rw <= '1';
					pcTrigger <= '1';
					nextState <= MEM_WRITE;
				else
					nextState <= EXECUTE;
				end if;
				
			when MEM_WRITE =>
				LEDG <= "0001";
				--destination value
				hexIn7 <= "000" & dAddr(4);
				hexIn6 <= dAddr(3 downto 0);
				--source2
				hexIn5 <= "UUUU";
				hexIn4 <= "UUUU";
				--destination address
				hexIn3 <= dData(7 downto 4);
				hexIn2 <= dData(3 downto 0);
				
				--program counter
				hexIn0 <= pcVal;
				
				HEX0 <= hexOut0;
				HEX2 <= hexOut2;
				HEX3 <= hexOut3;
				HEX4 <= "0111111";
				HEX5 <= "0111111";
				HEX6 <= hexOut6;
				HEX7 <= hexOut7;
				
				sramDataWrite(7 downto 0) <= dData;
				
				
				if (KEY(0) = '0') then
					pcTrigger <= '0';
					sramEnable <= '0';
					nextState <= FETCH;
				else
					nextState <= MEM_WRITE;
				end if;
				
		end case;
	end if;
			
		--incriment SRAM_ADDR at end of MEM_WRITE state
end process processing;
			

end architecture behavior;
