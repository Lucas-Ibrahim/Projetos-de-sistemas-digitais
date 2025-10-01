library ieee;
use ieee.std_logic_1164.all;

package pacote4 is

	component ativ4
		port(
			r: in integer range 0 to 15;
			clk,resetn,L: in std_logic;
			Q: buffer INTEGER RANGE 0 to 15
			);
	end component;
	
	
end pacote4;