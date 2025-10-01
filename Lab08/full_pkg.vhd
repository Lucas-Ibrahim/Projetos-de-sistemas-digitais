library ieee;
use ieee.std_logic_1164.all;

package full_pkg is
	component fulladd
	port ( 
	
		cin,x,y: in std_logic;
		s,cout: out std_logic
		);
	end component;
end full_pkg;
	