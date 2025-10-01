library ieee;
use ieee.std_logic_1164.all;
use work.pacotew.all;

entity lab11_2 is
	
	port(
		
		D,clk: in std_logic; -- entradas
		Q, notQ: out std_logic_vector(2 downto 0) -- saidas
		);
	
end lab11_2;

architecture logica of lab11_2 is


begin

	stage0: latw port map (D,clk,Q(0),notQ(0)); -- utiliza o portmap do componente do latch
	
	stage1: flipflopsw port map (D,clk,Q(1),notQ(1)); -- utiliza o portmap do componente do flipflop de subida
	
	stage2: flipflopdw port map (D,clk,Q(2),notQ(2)); -- utiliza o portmap do componente do flipflop de descida
	
	


end logica;
