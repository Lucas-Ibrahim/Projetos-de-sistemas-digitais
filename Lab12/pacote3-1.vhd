library ieee;
use ieee.std_logic_1164.all;

package pacote3 is

	component ativ3
		port(	
		clk,resetn,e: in std_logic;
		Q: out std_logic_vector(3 downto 0)
		);
	end component;
	
end pacote3;