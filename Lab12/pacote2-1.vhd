library ieee;
use ieee.std_logic_1164.all;

package pacote2 is

	component Mux2por1_2
		port(	
			x : IN STD_LOGIC; 	
			Z : IN STD_LOGIC;	
			y : IN STD_LOGIC;								
			s: OUT STD_LOGIC	
			) ;
	end component;
	
	component ativ1_2
		port(
			D0, D1, sel, clk: in std_logic;
			Q: out std_logic
			);
	end component;
	
	component ativ2
		port(
			R: in std_logic_vector(3 downto 0);
			L,w,clk: in std_logic;
			Q: buffer std_logic_vector(3 downto 0)
			);
	end component;
	
end pacote2;