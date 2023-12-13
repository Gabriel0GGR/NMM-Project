library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
port
(
	clk, b0, b1, b2, b3, reset: in std_logic;
	act: out unsigned(2 downto 0);
	at, t, mc: buffer unsigned(9 downto 0);
	trg, avg, dtm: buffer std_logic
);
end entity;

architecture ctrl_arch of controller is
	type state is(S0,S1,S2,S3,S4,S5,S6,S7);
	signal as, ns:state;
	signal bx: std_logic;
	signal av0, av1: unsigned(1 downto 0);
begin
process(b3, b2, b1, b0, reset)
begin
	if(reset='0') then
		as<=S0;
	elsif(b3'event and b3='0') then
		as<=ns;
	end if;
end process;
bx<=b0 and b1 and b2;
process(clk, trg)
	variable clk_div: integer range 0 to 50000000;
begin
	if(trg='0') then
		if(clk'event and clk='1') then
			clk_div:=clk_div+1;
			if(clk_div=50000000) then
				clk_div:=0;
				t<=t+"0000000001";
			end if;
		end if;
	end if;
end process;
process(as)
begin
	case as is
	when S0=>
		act<="000";
		ns<=S1;
	when S1=>
		act<="001";
		if(bx'event and bx='0') then
			if(b0='0') then
				if(av0="00") then
					av0<="01";
				elsif(av0="01") then
					av0<="10";
				elsif(av0="10") then
					av0<="00";
				end if;
			end if;
			if(b1='0') then
				if(av0="00") then
					if(at>="1111100111") then
						at<="0000000001";
					else
						at<=at+"0000000001";
					end if;
				end if;
				if(av0="01") then
					if(at>="1111011110") then
						at<="0000000001";
					else
						at<=at+"0000001010";
					end if;
				end if;
				if(av0="10") then
					if(at>="1110000100") then
						at<="0000000001";
					else
						at<=at+"0001100100";
					end if;
				end if;
			end if;
			if(b2='0') then
				if(av0="00") then
					if("0000000001">=at) then
						at<="0000000001";
					else
						at<=at-"0000000001";
					end if;
				end if;
				if(av0="01") then
					if("0000001010">=at) then
						at<="0000000001";
					else
						at<=at-"0000001010";
					end if;
				end if;
				if(av0="10") then
					if("0001100100">=at) then
						--at<="0000000001";
					else
						at<=at-"0001100100";
					end if;
				end if;
			end if;
		end if;
		ns<=S2;			
	when S2=>
		act<="010";
		if(bx'event and bx='0') then
			if(b0='0') then
				if(av1="00") then
					av1<="01";
				elsif(av1="01") then
					av1<="10";
				elsif(av1="10") then
					av1<="00";
				end if;
			end if;
			if(b1='0') then
				if(av1="00") then
					if(mc>="1111100111") then
						mc<="0000000001";
					else
						mc<=mc+"0000000001";
					end if;
				end if;
				if(av1="01") then
					if(mc>="1111011110") then
						mc<="0000000001";
					else
						mc<=mc+"0000001010";
					end if;
				end if;
				if(av1="10") then
					if(mc>="1110000100") then
						mc<="0000000001";
					else
						mc<=mc+"0001100100";
					end if;
				end if;
			end if;
			if(b2='0') then
				if(av1="00") then
					if("0000000001">=mc) then
						mc<="0000000001";
					else
						mc<=mc-"0000000001";
					end if;
				end if;
				if(av1="01") then
					if("0000001010">=mc) then
						mc<="0000000001";
					else
						mc<=mc-"0000001010";
					end if;
				end if;
				if(av1="10") then
					if("0001100100">=mc) then
						--mc<="0000000001";
					else
						mc<=mc-"0001100100";
					end if;
				end if;
			end if;
		end if;
		ns<=S3;
	when S3=>
		act<="011";
		if(bx'event and bx='0') then
			if(b0='0') then
				if(avg='0') then
					avg<='1';
				else
					avg<='0';
				end if;
			end if;
			if(b1='0') then
				avg<='0';
			end if;
			if(b2='0') then
				avg<='1';
			end if;
		end if;
		ns<=S4;
	when S4=>
		act<="100";
		ns<=S5;
	when S5=>
		act<="101";
		trg<='1';
		if(at>=t) then
			trg<='0';
		end if;
		ns<=S6;
	when S6=>
		act<="110";
		if(bx'event and bx='0') then
			if(b0='0') then
				if(dtm='0') then
					dtm<='1';
				else
					dtm<='0';
				end if;
			end if;
			if(b1='0') then
				dtm<='0';
			end if;
			if(b2='0') then
				dtm<='1';
			end if;
		end if;
	when others=>
		act<="111";
		ns<=S0;
	end case;
end process;
end architecture;