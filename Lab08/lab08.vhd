library ieee;
use ieee.std_logic_1164.all;
use work.full_pkg.all;

entity lab08 is


port ( 

	SW: in std_logic_vector(3 downto 0);
	HEX7: out std_logic_vector(0 to 6);
	HEX5: out std_logic_vector(0 to 6);
	HEX3: out std_logic_vector(0 to 6)
	) ;
	
	
end lab08;

architecture logica of lab08 is

	signal m,q: std_logic_vector (1 downto 0);
	signal prod: std_logic_vector (3 downto 0);
	signal carry: std_logic;
	signal conta: std_logic_vector (2 downto 0);
	
begin

	m <= SW(3 downto 2);
	q <= SW(1 downto 0);
	
	
	prod(0) <= SW(0) AND SW(2);
	
	conta(0) <= SW(0) AND SW(3);
	conta(1) <= SW(1) AND SW(2);
	
	stage0: fulladd PORT MAP ('0', conta(0) , conta(1), prod(1),carry);
	
	conta(2) <= SW(1) AND SW(3);
	
	stage1: fulladd PORT MAP (carry, conta(2), '0' ,prod(2),prod(3));
	

	

	
with q select 	

	HEX3 <= "0000001" when "00",
			  "1001111" when "01",
			  "0010010" when "10",
			  "0000110" when "11",
			  "1111111" when others;
			  
with m select

	HEX5 <= "0000001" when "00",
			  "1001111" when "01",
			  "0010010" when "10",
			  "0000110" when "11",
			  "1111111" when others;
			  
with prod select

	HEX7 <= "0000001" when "0000",
			  "1001111" when "0001",
			  "0010010" when "0010",
			  "0000110" when "0011",
			  "1001100" when "0100",
			  "0100100" when "0101",
			  "0100000" when "0110",
			  "0001111" when "0111",
			  "0000000" when "1000",
			  "0001100" when "1001",
			  "0001000" when "1010",
			  "1100000" when "1011",
			  "0110001" when "1100",
			  "1000010" when "1101",
			  "0110000" when "1110",
			  "0111000" when "1111",
			  "1111111" when others;
			  
end logica;

	
	