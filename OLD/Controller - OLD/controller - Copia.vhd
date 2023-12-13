library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
port
(
	I: in std_logic_vector(11 downto 0);
	clk, load, b0, b1, b2, b3: in std_logic;
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
signal number: std_logic_vector(1 downto 0):="00";
signal sdc: integer range 0 to 7:=0;
signal cv: integer range 0 to 2:=0;
signal sat: integer range 0 to 999:=0;
signal multiplier: integer range 0 to 999:=0;
signal avg: std_logic:='1';
signal memory_0, memory_1, memory_2, memory_3: integer range 0 to 4095:=0;
signal average: integer range 0 to 4095:=0;
signal delta_t: integer range 0 to 40960:=0;
signal avg_mc: integer range 0 to 4095:=0;

begin
DC<=std_logic_vector(to_unsigned(sdc, DC'length));
AT<=std_logic_vector(to_unsigned(sat, AT'length));
MC<=std_logic_vector(to_unsigned(multiplier, MC'length));
A<=std_logic_vector(to_unsigned(average, A'length));
--T<=std_logic_vector(to_unsigned(delta_t, T'length));
M<=std_logic_vector(to_unsigned(avg_mc, M'length));

process(clk,reset)
begin
if(reset='0') then
	st<=S0;
elsif(clk'event and clk='1') then
	st<=ev;
end if;
end process;

process(clk, ev, b0, b1, b2, b3)
begin
case st is

when S0=>
	sdc<=0;
	if(clk='1' and clk'event) then
		if(b3='1') then
			ev<=S1;
	end if;

when S1=>
	sdc<=1;
	if(b0='1') then
		cv<=cv+1
	end if;
	if(b2='1')

	
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