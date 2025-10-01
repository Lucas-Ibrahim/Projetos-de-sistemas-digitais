library ieee;
use ieee.std_logic_1164.all;
use work.pacote2.all;

entity ativ1_2 is

	port(
		
		D0, D1, sel, clk: in std_logic;
		Q: out std_logic
	
	
	);
	
end ativ1_2;

architecture logica of ativ1_2 is
	
	signal r: std_logic;
	
	begin
	
		stage0: Mux2por1_2 PORT MAP (D0,D1,sel,r);
		
		process
		begin
		
				wait until rising_edge(clk);
				
				Q <= r;
				
		end process;
end logica;
				
			