-----------------------------------------------
--- Testbench del Sumador completo de 4 bit ---
-----------------------------------------------
-----------------------------------------------
---------- Saymon Astua Madrigal --------------
-----------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sumador_4_tb is
end sumador_4_tb;

architecture arch of sumador_4_tb is
	signal a, b, s: std_logic_vector(3 downto 0);
	signal c_in, c_out: std_logic;
begin
	sum: entity work.sumador_4(archSum_4) port map (a, b, c_in, c_out, s);
	
	c_in <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
	
	a <= conv_std_logic_vector(10, 4), conv_std_logic_vector(7, 4) after 20 ns,
		  conv_std_logic_vector(9, 4) after 40 ns, conv_std_logic_vector(5, 4) after 60 ns,
		  conv_std_logic_vector(3, 4) after 80 ns, conv_std_logic_vector(15, 4) after 100 ns,
		  conv_std_logic_vector(14, 4) after 120 ns, conv_std_logic_vector(8, 4) after 140 ns;
	
	b <= conv_std_logic_vector(2, 4), conv_std_logic_vector(13, 4) after 20 ns,
		  conv_std_logic_vector(6, 4) after 40 ns, conv_std_logic_vector(15, 4) after 60 ns,
		  conv_std_logic_vector(2, 4) after 80 ns, conv_std_logic_vector(15, 4) after 100 ns,
		  conv_std_logic_vector(7, 4) after 120 ns, conv_std_logic_vector(8, 4) after 140 ns;

end arch;