---------------------------------------------------
--- Testbench contador parametrizable de 2 bits ---
---------------------------------------------------
------------ Saymon Astúa madrigal ----------------
---------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_2_tb is
end contador_2_tb;

architecture arch of contador_2_tb is
	constant ancho: integer := 2;
	signal clk: std_logic := '0';
	signal rst: std_logic;
	signal cuenta: std_logic_vector(ancho-1 downto 0);
	
begin
	
	clk <= not(clk) after 10 ns;
	rst <= '1', '0' after 10 ns;
	
	-- se crea una instancia contador de 2 bits
	-- las entradas del contador son clk, rst y la salida es cuenta
	contador: entity work.contador_n(archContador) generic map(ancho) port map (clk, rst, cuenta);
	
end arch;