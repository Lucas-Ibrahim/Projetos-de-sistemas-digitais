library ieee;
use ieee.std_logic_1164.all;
use work.pacote4.all;
use ieee.numeric_std.all;

entity map4 is

	port(
		
		SW: in std_logic_vector(3 downto 0);
		HEX0: out std_logic_vector(0 to 6);
		KEY: in std_logic_vector(2 downto 0)
	);
	
end map4;

architecture logica of map4 is
	
	signal r: integer range 0 to 15;
	signal Q1: INTEGER RANGE 0 to 15;
	signal Q2: std_logic_vector(3 downto 0);
	
	
	begin
		
		r <= to_integer(unsigned(SW(3 downto 0)));
	
		stage0: ativ4 PORT MAP(r,KEY(0),KEY(1),KEY(2),Q1);
		
		Q2 <=  std_logic_vector(to_unsigned(Q1,4));
		
				
with Q2 select			


    HEX0 <=     "0000001" when "0000",
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