library ieee;
use ieee.std_logic_1164.all;

package pacotea is

		component ffda -- componente FFD com reset sincrono
		
			port(
			
					D,resetn,clk: in std_logic;
					Q, notQ: out std_logic
				);
		
		end component;
		
end pacotea;