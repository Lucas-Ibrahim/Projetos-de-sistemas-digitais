library ieee;
use ieee.std_logic_1164.all;
use work.pacote4.all;

entity ativ4 is 
	port(
		r: in integer range 0 to 15;
		clk,resetn,L: in std_logic;
		Q: buffer INTEGER RANGE 0 to 15
		);
end ativ4;

architecture logica of ativ4 is

begin 

	process(clk,resetn)	
	begin
			if resetn ='0'then
				
				Q <= 0;
				
			elsif (clk'event and clk ='1') then 
				
				if L = '1' then 
					
					Q <= r;
				
				else 
					
					Q <= Q +1;
					
				end if;
				
			end if;
	end process;
end logica;

					