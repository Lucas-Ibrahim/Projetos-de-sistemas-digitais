library ieee;
use ieee.std_logic_1164.all;

entity flipflops is

	port(
		
		D,clk: in std_logic; -- entradas
		Q, notQ: out std_logic -- saidas
		);
		
end flipflops;

architecture logica of flipflops is -- flipflop sensivel a subida
begin

	process(clk)
	begin
	
		if clk'event and clk ='1' then -- quando clock sobe Q = D
		Q <= D;
		notQ <= not D;
		end if;
	end process;

	end logica;