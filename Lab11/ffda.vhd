library ieee;
use ieee.std_logic_1164.all;

entity ffda is

	port(
		
		D,resetn,clk: in std_logic; -- entradas
		Q, notQ: out std_logic -- saidas
	);
	
end ffda;

architecture logica of ffda is
begin
	
		process
		begin
			
			wait until clk'event and clk ='1'; -- quando ocorre uma subida no clock ( = 1)
			if resetn ='0' then -- se o reset for 0 que é zerado
				Q <= '0';
				notQ <= '1';
			else 				-- se o reset for um ele ira salvar o valor de D em Q
				Q <= D;
				notQ <= not D;
			end if;
			
		end process	;
		
end logica;