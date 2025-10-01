library ieee;
use ieee.std_logic_1164.all;

package pacote is

	component Mux2por1
		port(	
			x : IN STD_LOGIC; 	
			Z : IN STD_LOGIC;	
			y : IN STD_LOGIC;								
			s: OUT STD_LOGIC	
			) ;
	end component;
	
	component ativ1
		port(
			D0, D1, sel, clk: in std_logic;
			Q: out std_logic
			);
	end component;
	
end pacote;