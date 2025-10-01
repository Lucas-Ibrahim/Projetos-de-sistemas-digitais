LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY lat IS
	PORT 
			( D, Clk : IN STD_LOGIC ; -- entradas
			Q,notQ : OUT STD_LOGIC) ; -- saidas
END lat ;


ARCHITECTURE logica OF lat IS -- latD com clock

	BEGIN
			PROCESS (D, Clk )
			
			BEGIN
			
			IF Clk = '1' THEN -- quando clock sobe Q = D
				Q <= D ;
				notQ <= not D;
			END IF ;

			END PROCESS ;

			
	END logica ;