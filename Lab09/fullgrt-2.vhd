LIBRARY ieee ;
use ieee.std_logic_1164.all;


ENTITY fullgrt IS

PORT ( 
	
	a,b : IN STD_LOGIC_vector(3 downto 0) ;
	grt,equ,lst : OUT STD_LOGIC
	) ;


END fullgrt ;


ARCHITECTURE LogicFunc OF fullgrt IS
	
	signal i: std_logic_vector(3 downto 0);
	signal j: std_logic_vector(1 downto 0);
	
BEGIN
	
	i(3) <= a(3) xnor b(3);
	i(2) <= a(2) xnor b(2);
	i(1) <= a(1) xnor b(1);
	i(0) <= a(0) xnor b(0);
	
	grt <= ((a(3) and not b(3)) or (i(3) and a(2) and not b(2)) or (i(3) and i(2) and a(1) and not b(1)) or (i(3) and i(2) and i(1) and a(0) and not b(0)));
	
	equ <= i(3) and i(2) and i(1) and i(0);
	
	j(1) <= grt;
	j(0) <= equ;
	
	lst <= j(1) nor j(0);
	
	
END LogicFunc ;