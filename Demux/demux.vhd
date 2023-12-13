library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demux is
port
(
	clk:in std_logic;
	ds: in unsigned(5 downto 0);
	dd: in unsigned(7 downto 0);
	dd0:out unsigned(7 downto 0);
	dd1:out unsigned(7 downto 0);
	dd2:out unsigned(7 downto 0);
	dd3:out unsigned(7 downto 0);
	dd4:out unsigned(7 downto 0);
	dd5:out unsigned(7 downto 0)
);
end entity;

architecture demux_arch of demux is
begin
process(clk)
begin
	if(clk'event and clk='1') then
		if(ds="000001") then
			dd0<=not dd;
		end if;
		if(ds="000010") then
			dd1<=not dd;
		end if;
		if(ds="000100") then
			dd2<=not dd;
		end if;
		if(ds="001000") then
			dd3<=not dd;
		end if;
		if(ds="010000") then
			dd4<=not dd;
		end if;
		if(ds="100000") then
			dd5<=not dd;
		end if;
	end if;
end process;
end architecture;