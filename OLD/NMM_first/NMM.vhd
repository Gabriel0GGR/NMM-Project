library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nmm is
port
(
	sqr_in, sqr_out, clk: in std_logic;
	number: buffer integer;
	a: out std_logic_vector (31 downto 0)
);
end nmm;

architecture nmm_arch of nmm is
	--signal number: integer;
	--signal act: std_logic;
begin
	a<=std_logic_vector(to_unsigned(number, a'length));
	process(clk, sqr_in, sqr_out)
		begin
			if clk'event and clk='1' and sqr_in='1' and sqr_out='0' then
				number<=number+1;
			end if;
	end process;
end nmm_arch;