library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all ;

package full_pkg1 is
	component fullgrt
	port ( 
		
		a,b: in std_logic_vector(3 downto 0);
		grt: out std_logic
		);
	end component;
end full_pkg1;
