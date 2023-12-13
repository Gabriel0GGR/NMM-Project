library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity average is
port
(
	I: in std_logic_vector(11 downto 0);
	MC: in std_logic_vector(9 downto 0);
	avg: in std_logic;
	clk: in std_logic;
	A: out std_logic_vector(11 downto 0);
	M: out std_logic_vector(9 downto 0)
);
end entity;

architecture avg_arch of average is
	signal number: std_logic_vector(1 downto 0):="00";
	signal multiplier: integer range 0 to 999:=0;
	signal memory_0, memory_1, memory_2, memory_3: integer range 0 to 4095:=0;
	signal average: integer range 0 to 4095:=0;
	signal avg_mc: integer range 0 to 4095000:=0;
begin
	A<=std_logic_vector(to_unsigned(average, A'length));
	M<=std_logic_vector(to_unsigned(avg_mc, M'length));
process(clk, I, memory_0, memory_1, memory_2, memory_3, number, average)
begin
if(clk'event and clk='1') then
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
			average<=(average+memory_0+memory_1+memory_2+memory_3)/5;
			number<="00";
		end if;
	else
		average<=to_integer(unsigned(I));
	end if;
	multiplier<=to_integer(unsigned(MC));
	avg_mc<=(average*multiplier);
end if;
end process;
end architecture;