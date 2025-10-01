library ieee;
use ieee.std_logic_1164.all;

entity ffds is

	port(
		
		D,resetn,clk: in std_logic; -- entradas
		Q, notQ: out std_logic -- saidas
	);
	
end ffds;

architecture logica of ffds is
begin
	
		process(resetn,clk) -- irá ocorrer quando ocrrer mudanca o clock ou no reset
		begin
			
			if resetn ='0' then -- se reset for 0, Q sera zero
				
				Q <= '0';
				notQ <= '1';
			
			elsif clk'event and clk ='1' then -- se clock subir Q = D
				
				Q <= D;
				notQ <= not D;
			
			end if;
			
		end process	;
		
end logica;