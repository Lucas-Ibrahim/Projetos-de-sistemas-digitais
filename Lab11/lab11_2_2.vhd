library ieee;
use ieee.std_logic_1164.all;
use work.pacotea.all;

entity lab11_2_2 is
	
	port(
		
			D,resetn,clk: in std_logic; -- entradas
		Q, notQ: out std_logic	-- saidas
	);
	
end lab11_2_2;

architecture logica of lab11_2_2 is
begin

	stage0: ffda port map (D,resetn,clk,Q,notQ); -- utiliza o port map do componente FFD com reset sincrono
	
end logica;
	