library ieee;
use ieee.std_logic_1164.all;
use work.pacote2.all;

entity ativ2 is
	port(
		
		R: in std_logic_vector(3 downto 0);
		L,w,clk: in std_logic;
		Q: buffer std_logic_vector(3 downto 0)
		);
end ativ2;

architecture logica of ativ2 is

	begin
		
			stage3: ativ1_2 PORT MAP (w,R(3),L,clk,Q(3));
			stage2: ativ1_2 PORT MAP (Q(3),R(2),L,clk,Q(2));
			stage1: ativ1_2 PORT MAP (Q(2),R(1),L,clk,Q(1));
			stage0: ativ1_2 PORT MAP (Q(1),R(0),L,clk,Q(0));
			
end logica;