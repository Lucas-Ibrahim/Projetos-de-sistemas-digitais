library ieee;
use ieee.std_logic_1164.all;

package pacotew is
		
			component latw -- componente do latch
			
				port(
						D, Clk : IN STD_LOGIC ;
						Q,notQ : OUT STD_LOGIC
						
					);
			
			end component;

			
			component flipflopsw -- componente do flipflop de subida
			
				port(
						
						D,clk: in std_logic;
						Q, notQ: out std_logic
					);	
				
			end component;
			
			component flipflopdw -- componente do flipflop de descida
			
				port(
				
						D,clk: in std_logic;
						Q, notQ: out std_logic
					);
					
			end component;
			
end pacotew;
				