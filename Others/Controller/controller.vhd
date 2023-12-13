library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
port
(
	clk, b0, b1, b2, b3, reset: in std_logic;
	A: in unsigned(11 downto 0);
	act: out unsigned(2 downto 0);
	at, t, mc: buffer unsigned(9 downto 0);
	avg: out std_logic
);
end entity;

architecture ctrl_arch of controller is
	type state is(S0,S1,S2,S3,S4,S5,S6,S7);
	signal as, ns:state;
	signal cv: unsigned(1 downto 0);
	signal sat: integer range 0 to 999:=1;
begin
	at<=to_unsigned(sat, at'length);
process(b3, reset)
begin
	if(reset='0') then
		as<=S0;
	elsif(b3'event and b3='1') then
		as<=ns;
	end if;
end process;
process(as, b0, b1, b2)
begin
	case as is
	when S0=>
		act<="000";
		ns<=S1;
		sat<=1;
	when S1=>
		act<="001";
		ns<=S2;
		if(b0='1') then
			if(cv="00") then
				cv<="01";
			end if;
			if(cv="01") then
				cv<="10";
			end if;
			if(cv="10") then
				cv<="00";
			end if;
		end if;
		if(b1='1') then
			sat<=to_integer(at);
			if(cv="00") then
				sat<=sat+1;
			end if;
			if(cv="01") then
				sat<=sat+10;
			end if;
			if(cv="10") then
				sat<=sat+100;
			end if;
		end if;
		if(b2='1') then
			sat<=to_integer(at);
			if(cv="00") then
				sat<=sat-1;
			end if;
			if(cv="01") then
				sat<=sat-10;
			end if;
			if(cv="10") then
				sat<=sat-100;
			end if;
		end if;
	when S2=>
		act<="010";
		ns<=S3;
	when S3=>
		act<="011";
		ns<=S4;
	when S4=>
		act<="100";
		ns<=S5;
	when S5=>
		act<="101";
		ns<=S6;
	when S6=>
		act<="110";
		ns<=S0;
	when others=>
		act<="111";
		ns<=S0;
	end case;
end process;
end architecture;