library ieee;
use ieee.std_logic_1164.all;

entity flipflopsw is

	port(
		
		D,clk: in std_logic; -- entradas
		Q, notQ: out std_logic -- subidas
		);
		
end flipflopsw;

architecture logica of flipflopsw is -- flipflop sensivel a subida
begin

	process
	begin
	
		wait until clk'event and clk ='1'; -- quando clock vai de 0 a 1 Q = D
		Q <= D;
		notQ <= not D;
	end process;

	end logica;