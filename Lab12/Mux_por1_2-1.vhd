LIBRARY ieee ;
USE ieee.std_logic_1164.all;


ENTITY Mux2por1_2 IS	

PORT ( 

    x : IN STD_LOGIC; 	
	 Z : IN STD_LOGIC;	
	 y : IN STD_LOGIC;								
    s: OUT STD_LOGIC	
    ) ;


END Mux2por1_2;


ARCHITECTURE LogicFunc OF Mux2por1_2 IS

BEGIN

    WITH Y SELECT			
		S <= X WHEN '0',	
		     Z WHEN OTHERS;
			
END LogicFunc ;
