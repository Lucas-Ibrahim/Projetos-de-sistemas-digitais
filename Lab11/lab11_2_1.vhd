library ieee;
use ieee.std_logic_1164.all;
use work.pacoter.all;

entity lab11_2_1 is
	
	port(
		
			D,resetn,clk: in std_logic; -- entradas
		Q, notQ: out std_logic	-- saidas
	);
	
end lab11_2_1;

architecture logica of lab11_2_1 is
begin

	stage0: ffds port map (D,resetn,clk,Q,notQ); -- utiliza o port map do FFD com reset assincrono
	
end logica;
	