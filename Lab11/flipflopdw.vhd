library ieee;
use ieee.std_logic_1164.all;

entity flipflopdw is

	port(
		
		D,clk: in std_logic; -- entradas
		Q, notQ: out std_logic -- saidas
		);
		
end flipflopdw;

architecture logica of flipflopdw is -- flipfloop sensivel a descida do clock
begin

	process
	begin
	
		wait until clk'event and clk ='0'; -- quando clock desce de 1 para 0 Q = D
		Q <= D;
		notQ <= not D;
	end process;

	end logica;