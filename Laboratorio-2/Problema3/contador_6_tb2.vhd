---------------------------------------------------
--- Testbench contador parametrizable de 6 bits ---
---------------------------------------------------
------------ Saymon Astúa madrigal ----------------
---------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.all;

entity contador_6_tb2 is
end contador_6_tb2;

architecture arch2 of contador_6_tb2 is
	signal clk: std_logic := '0';
	signal rst: std_logic;
	signal hex1, hex2: std_logic_vector(6 downto 0);
	
begin
	
	clk <= not(clk) after 10 ns;
	rst <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 50 ns;
	
	-- se crea una instancia contador de 2 bits
	-- las entradas del contador son clk, rst y la salida es el display 1 y display 2
	contador: entity work.contador_6_fpga(archContador_6) port map (clk, rst, hex1, hex2);
	
end arch2;