library ieee;
use ieee.std_logic_1164.all;

package pacote is
		
			component lat -- componente do lat if e else
			
				port(
						D, Clk : IN STD_LOGIC ;
						Q,notQ : OUT STD_LOGIC
						
					);
			
			end component;

			
			component flipflops -- componente do flipflop de subida if e else
			
				port(
						
						D,clk: in std_logic;
						Q, notQ: out std_logic
					);	
				
			end component;
			
			component flipflopd -- componente do  flipflop de descidaif e else
			
				port(
				
						D,clk: in std_logic;
						Q, notQ: out std_logic
					);
					
			end component;
			
end pacote;
				