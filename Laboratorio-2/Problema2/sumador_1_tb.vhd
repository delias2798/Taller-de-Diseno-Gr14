
-----------------------------------------------
--- Testbench del Sumador completo de 1 bit ---
-----------------------------------------------
-----------------------------------------------
---------- Saymon Astua Madrigal --------------
-----------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity sumador_1_tb is
end sumador_1_tb;

architecture arch of sumador_1_tb is
	signal a, b, c_in: std_logic;
	signal c_out, s: std_logic;
begin
	sum1: entity work.sumador_1(archSum_1) port map (a, b, c_in, c_out, s);
	
	a <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
	b <= '0', '1' after 40 ns;	
	
	c_in <= '0';

end arch;
