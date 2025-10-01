library ieee;
use ieee.std_logic_1164.all;

package pacoter is

		component ffds -- componente do FFD com reset assincrono
		
			port(
			
					D,resetn,clk: in std_logic;
					Q, notQ: out std_logic
				);
		
		end component;
		
end pacoter;