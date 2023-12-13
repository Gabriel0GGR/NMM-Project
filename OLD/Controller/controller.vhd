library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
port
(
	I: in std_logic_vector(11 downto 0);
	clk: in std_logic;
	btn: in std_logic;
	load: in std_logic;
	CR: in std_logic_vector(3 downto 0);
	LR: in std_logic_vector(1 downto 0);
	DC: out std_logic_vector(3 downto 0);
	AT: out std_logic_vector(9 downto 0);
	MC: out std_logic_vector(9 downto 0);
	A: out std_logic_vector(11 downto 0);
	T: out std_logic_vector(15 downto 0);
	M: out std_logic_vector(9 downto 0)
);
end entity;

architecture ctrl_arch of controller is
type state is(S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15);
signal st, ev:state;
signal reset: std_logic:='1';
signal blk: std_logic:='0';
signal number: std_logic_vector(1 downto 0):="00";
signal sdc: integer range 0 to 7:=0;
signal scr: std_logic_vector(3 downto 0):="0000";
signal slr: std_logic_vector(1 downto 0):="00";
signal cv: integer range 0 to 100:=0;
signal sat: integer range 0 to 999:=0;
signal multiplier: integer range 0 to 999:=0;
signal avg: std_logic:='1';
signal memory_0, memory_1, memory_2, memory_3: integer range 0 to 4095:=0;
signal average: integer range 0 to 4095:=0;
signal delta_t: integer range 0 to 40960:=0;
signal avg_mc: integer range 0 to 4095:=0;

begin
scr<=CR;
slr<=LR;
DC<=std_logic_vector(to_unsigned(sdc, DC'length));
AT<=std_logic_vector(to_unsigned(sat, AT'length));
MC<=std_logic_vector(to_unsigned(multiplier, MC'length));
A<=std_logic_vector(to_unsigned(average, A'length));
--T<=std_logic_vector(to_unsigned(delta_t, T'length));
M<=std_logic_vector(to_unsigned(avg_mc, M'length));

process(clk,reset)
		begin
			if(reset='0')
				then st<=S0;
			elsif(clk'event and clk='1')
				then st<=ev;
			end if;
	end process;
process(clk, ev, scr)
	begin
		case st is
			when S0=>
				sdc<=0;
				if(blk='0') then
					if(scr="0001" and slr="00") then
						ev<=S1;
						blk<='1';
					end if;
				end if;
				if(btn='0') then
					blk<='0';
				end if;
			when S1=>
				sdc<=1;
				if(blk='0') then
				if(cv<1) then
					cv<=100;
				end if;
				if(scr="1000" and slr="00") then
					sat<=sat+(1*cv);
					cv<=cv/10;
				end if;
				if(scr="0100" and slr="00") then
					sat<=sat+(2*cv);
					cv<=cv/10;
				end if;
				if(scr="0010" and slr="00") then
					sat<=sat+(3*cv);
					cv<=cv/10;
				end if;
				if(scr="0001" and slr="00") then
					if(0<sat) then
						ev<=S2;
					end if;
				end if;
				if(scr="1000" and slr="01") then
					sat<=sat+(4*cv);
					cv<=cv/10;
				end if;
				if(scr="0100" and slr="01") then
					sat<=sat+(5*cv);
					cv<=cv/10;
				end if;
				if(scr="0010" and slr="01") then
					sat<=sat+(6*cv);
					cv<=cv/10;
				end if;
				if(scr="0001" and slr="01") then
					sat<=0;
				end if;
				if(scr="1000" and slr="10") then
					sat<=sat+(7*cv);
					cv<=cv/10;
				end if;
				if(scr="0100" and slr="10") then
					sat<=sat+(8*cv);
					cv<=cv/10;
				end if;
				if(scr="0010" and slr="10") then
					sat<=sat+(9*cv);
					cv<=cv/10;
				end if;
				if(scr="0001" and slr="10") then
					ev<=S0;
				end if;
				if(scr="1000" and slr="11") then
					if(1000>sat) then
						sat<=sat+1;
					end if;
				end if;
				if(scr="0100" and slr="11") then
					sat<=sat+(0*cv);
					cv<=cv/10;
				end if;
				if(scr="0010" and slr="11") then
					if(0<sat) then
						sat<=sat-1;
					end if;
				end if;
			if(scr="0001" and slr="11") then
				ev<=S1;
			end if;
			end if;
			if(btn='0') then
				blk<='0';
			end if;
		when others=>
			sdc<=0;
	end case;
end process;

process(load, I, multiplier, memory_0, memory_1, memory_2, memory_3, number, average)
begin
if(load'event and load='1') then
	if(avg='1') then
		if(number="00") then
			memory_0<=to_integer(unsigned(I));
			number<="01";
		end if;
		if(number="01") then
			memory_1<=to_integer(unsigned(I));
			number<="10";
		end if;
		if(number="10") then
			memory_2<=to_integer(unsigned(I));
			number<="11";
		end if;
		if(number="11") then
			memory_3<=to_integer(unsigned(I));
			number<="00";
			if(average=0) then
				average<=(memory_0+memory_1+memory_2+memory_3)/4;
			else
				average<=(average+memory_0+memory_1+memory_2+memory_3)/5;
			end if;
		end if;
	end if;
	if(avg='0') then
		average<=to_integer(unsigned(I));
	end if;
	delta_t<=to_integer(unsigned(I));
	avg_mc<=(average*multiplier)/1000;
end if;
end process;
end architecture;