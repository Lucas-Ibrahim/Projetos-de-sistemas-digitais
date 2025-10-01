LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY latw IS
	PORT 
			( D, Clk : IN STD_LOGIC ; -- entradas
			Q,notQ : OUT STD_LOGIC) ; -- saidas
END latw ;


ARCHITECTURE logica OF latw IS

	BEGIN
			PROCESS
			
			BEGIN
			
			wait until clk='1'; -- quando clock sobe Q = D
				Q <= D ;
				notQ <= not D;
			END PROCESS ;

			
	END logica ;