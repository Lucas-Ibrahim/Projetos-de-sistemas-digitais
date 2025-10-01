library ieee;
use ieee.std_logic_1164.all;
use work.pacote.all;

entity map1 is

	port(
		
		SW: in std_logic_vector(2 downto 0);
		LEDR: out std_logic_vector(2 downto 0);
		KEY: in std_logic_vector(0 downto 0)
	
	
	);
	
end map1;

architecture logica of map1 is
	
	
	
	begin
		
	
		stage0: ativ1 PORT MAP(SW(0),SW(1),SW(2),KEY(0),LEDR(0));
		
		
		LEDR(1) <= SW(1);
		LEDR(2) <= SW(2);
		
end logica;
				
				