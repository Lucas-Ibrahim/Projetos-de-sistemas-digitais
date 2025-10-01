library ieee;
use ieee.std_logic_1164.all;
use work.pacote.all;

entity lab11_1 is
	
	port(
		
		D,clk: in std_logic;
		Q, notQ: out std_logic_vector(2 downto 0)
		);
	
end lab11_1;

architecture logica of lab11_1 is


begin

	stage0: lat port map (D,clk,Q(0),notQ(0)); -- utiliza o componente do lat if e else
	
	stage1: flipflops port map (D,clk,Q(1),notQ(1)); -- utiliza o componente do flipflop de subida if e else
	
	stage2: flipflopd port map (D,clk,Q(2),notQ(2)); -- utiliza o componente do  flipflop de descidaif e else
	
	


end logica;
