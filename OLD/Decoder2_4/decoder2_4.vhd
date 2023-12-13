library ieee;
use ieee.std_logic_1164.all;

entity decoder2_4 is
port
(
	LR:in std_logic_vector(1 downto 0);
	LO:out std_logic_vector(3 downto 0)
);
end entity;

architecture decoder_arch of decoder2_4 is
begin
	LO<="0001" when LR="00" else
	"0010" when LR="01" else
	"0100" when LR="10" else
	"1000" when LR="11";
end architecture;