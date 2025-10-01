library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all ;
use work.pacote3.all;

entity ativ3 is
	PORT(
		clk,resetn,e: in std_logic;
		Q: out std_logic_vector(3 downto 0)
		);
end ativ3;

architecture logica of ativ3 is

	signal count: std_logic_vector(3 downto 0);
	
begin  

	process(clk,resetn)
	begin
		
		if resetn = '0' then 
		
			count <= "0000";
			
		elsif (clk'event and clk = '1') then
		
			if e = '1' then 
				
				count <= count + 1;
				
			else 
			
				count <= count;
			
			end if;
			end if;
			
		end process;
		
		Q <= count;
		
end logica;