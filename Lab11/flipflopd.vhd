library ieee;
use ieee.std_logic_1164.all;

entity flipflopd is

	port(
		
		D,clk: in std_logic; -- entradas 
		Q, notQ: out std_logic -- saidas
		);
		
end flipflopd;

architecture logica of flipflopd is -- flipflop de descida usando if e else
begin

	process(clk)
	begin
	
		if clk'event and clk ='0' then -- quando clock desce Q = D
		Q <= D;
		notQ <= not D;
		end if;
	end process;

	end logica;