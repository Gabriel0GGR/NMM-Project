library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display is
port
(
	clk, avg, dtm: in std_logic;
	act: in unsigned(2 downto 0);
	at, t, mc: in unsigned(9 downto 0);
	DT: in unsigned(15 downto 0);
	M: in unsigned(9 downto 0);
	ds: buffer unsigned(5 downto 0);
	dd: out unsigned(7 downto 0)
);
end entity;

architecture display_arch of display is
	signal n: unsigned(9 downto 0);
	signal nn: unsigned(15 downto 0);
	signal dn, dnn: unsigned(7 downto 0);
begin
process(clk)
begin
	if(clk'event and clk='1') then
		if(ds="000000" or ds="000001") then
			ds<="100000";
		else
			ds<=ds srl 1;
		end if;
	end if;
end process;
process(avg, dtm, act, at, t, mc, DT, M, ds)
begin
	case act is
	when "000"=>
		case ds is
		when "100000"=>
			dd<="10110110";
		when "010000"=>
			dd<="00011110";
		when "001000"=>
			dd<="11111010";
		when "000100"=>
			dd<="00001010";
		when "000010"=>
			dd<="00011110";
		when "000001"=>
			dd<="00000000";
		when others=>
			dd<="00000000";
		end case;
	when "001"=>
		case ds is
		when "100000"=>
			dd<="11111100";
		when "010000"=>
			dd<="00000000";
		when "001000"=>
			dd<="00000000";
		when "000100"=>
			n<=at/100;
			dd<=dn;
		when "000010"=>
			n<=(at mod 100)/10;
			dd<=dn;
		when "000001"=>
			n<=at mod 10;
			dd<=dn;
		when others=>
			dd<="00000000";
		end case;
	when "010"=>
		case ds is
		when "100000"=>
			dd<="01100000";
		when "010000"=>
			dd<="00000000";
		when "001000"=>
			dd<="00000000";
		when "000100"=>
			n<=mc/100;
			dd<=dn;
		when "000010"=>
			n<=(mc mod 100)/10;
			dd<=dn;
		when "000001"=>
			n<=mc mod 10;
			dd<=dn;
		when others=>
			dd<="00000000";
		end case;
	when "011"=>
		case ds is
		when "100000"=>
			dd<="11011010";
		when "010000"=>
			dd<="00000000";
		when "001000"=>
			dd<="00000000";
		when "000100"=>
			if(avg='1') then
				dd<="01110110";
			else
				dd<="00000000";
			end if;
		when "000010"=>
			if(avg='1') then
				dd<="11011110";
			else
				dd<="00101010";
			end if;
		when "000001"=>
			if(avg='1') then
				dd<="10110110";
			else
				dd<="00111010";
			end if;
		when others=>
			dd<="00000000";
		end case;
	when "100"=>
		case ds is
		when "100000"=>
			dd<="11110010";
		when "010000"=>
			dd<="00000000";
		when "001000"=>
			dd<="00011110";
		when "000100"=>
			dd<="00001010";
		when "000010"=>
			dd<="00100000";
		when "000001"=>
			dd<="11110111";
		when others=>
			dd<="00000000";
		end case;
	when "101"=>
		case ds is
		when "100000"=>
			n<=t/100;
			dd<=dn;
		when "010000"=>
			n<=(t mod 100)/10;
			dd<=dn;
		when "001000"=>
			n<=t mod 10;
			dd<=dn+"00000001";
		when "000100"=>
			n<=at/100;
			dd<=dn;
		when "000010"=>
			n<=(at mod 100)/10;
			dd<=dn;
		when "000001"=>
			n<=at mod 10;
			dd<=dn;
		when others=>
			dd<="00000000";
		end case;
	when "110"=>
		if(dtm='1') then
			case ds is
			when "100000"=>
				nn<=DT/10000;
				dd<=dnn;
			when "010000"=>
				nn<=(DT mod 10000)/1000;
				dd<=dnn;
			when "001000"=>
				nn<=(DT mod 1000)/100;
				dd<=dnn;
			when "000100"=>
				nn<=(DT mod 100)/10;
				dd<=dnn;
			when "000010"=>
				nn<=DT mod 10;
				dd<=dnn;
			when "000001"=>
				dd<="00101010";
			when others=>
				dd<="00000000";
			end case;
		else
			case ds is
			when "100000"=>
				dd<="01100110";
			when "010000"=>
				dd<="00000000";
			when "001000"=>
				dd<="00000000";
			when "000100"=>
				n<=M/100;
				dd<=dn;
			when "000010"=>
				n<=(M mod 100)/10;
				dd<=dn+"00000001";
			when "000001"=>
				n<=M mod 10;
				dd<=dn;
			when others=>
				dd<="00000000";
			end case;
		end if;		
	when others=>
		case ds is
		when "100000"=>
			dd<="10011110";
		when "010000"=>
			dd<="00001010";
		when "001000"=>
			dd<="00001010";
		when "000100"=>
			dd<="00111010";
		when "000010"=>
			dd<="00001010";
		when "000001"=>
			dd<="00000000";
		when others=>
			dd<="00000000";
		end case;
	end case;
end process;
process(n)
begin
	case n is
	when "0000000000"=>
		dn<="11111100";
	when "0000000001"=>
		dn<="01100000";
	when "0000000010"=>
		dn<="11011010";
	when "0000000011"=>
		dn<="11110010";
	when "0000000100"=>
		dn<="01100110";
	when "0000000101"=>
		dn<="10110110";
	when "0000000110"=>
		dn<="10111110";
	when "0000000111"=>
		dn<="11100000";
	when "0000001000"=>
		dn<="11111110";
	when "0000001001"=>
		dn<="11110110";
	when others=>
		dn<="00000000";
	end case;
end process;
process(nn)
begin
	case nn is
	when "0000000000000000"=>
		dnn<="11111100";
	when "0000000000000001"=>
		dnn<="01100000";
	when "0000000000000010"=>
		dnn<="11011010";
	when "0000000000000011"=>
		dnn<="11110010";
	when "0000000000000100"=>
		dnn<="01100110";
	when "0000000000000101"=>
		dnn<="10110110";
	when "0000000000000110"=>
		dnn<="10111110";
	when "0000000000000111"=>
		dnn<="11100000";
	when "0000000000001000"=>
		dnn<="11111110";
	when "0000000000001001"=>
		dnn<="11110110";
	when others=>
		dnn<="00000000";
	end case;
end process;
end architecture;