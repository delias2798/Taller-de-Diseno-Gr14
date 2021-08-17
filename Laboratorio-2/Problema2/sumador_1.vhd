
---------------------------------
--- Sumador completo de 1 bit ---
---------------------------------
---------------------------------
----- Saymon Astua Madrigal -----
---------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity sumador_1 is
	port (a, b, c_in: in std_logic; 
			c_out, s: out std_logic);
end sumador_1;

architecture archSum_1 of sumador_1 is
begin
	-- se hace una implementacion de comportamiento
	s <= ((not a) and (not b) and c_in) or
			((not a) and b and (not c_in)) or
			(a and b and c_in) or
			(a and (not b) and (not c_in));
	
	c_out <= (a and b) or
				(a and c_in) or
				(b and c_in);
	
	
end archSum_1;
