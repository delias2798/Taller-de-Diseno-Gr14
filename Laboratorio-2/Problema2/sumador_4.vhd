----------------------------------
--- Sumador completo de 4 bits ---
----------------------------------
----------------------------------
----- Saymon Astua Madrigal ------
----------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity sumador_4 is
	port(a, b: in std_logic_vector(3 downto 0); c_in: in std_logic;
	     c_out: out std_logic; s: out std_logic_vector(3 downto 0));
end sumador_4;

architecture archSum_4 of sumador_4 is
	-- se tienen que crear una serie de cables internos
	-- para realizar la conexion entre los 4 sumadores de 1 bit
	signal c: std_logic_vector(4 downto 0);
begin
	-- se hace una implementacion estructural
	
	-- se agrega el carry de entrada al cable 0
	c(0) <= c_in;
	
	-- se tienen que instanciar 4 sumadores de 1 bit
	-- el sumador 1 tiene los siguientes atributos (a, b, c_in, c_out, s);
	
	sum0: entity work.sumador_1(archSum_1) port map (a(0), b(0), c(0), c(1), s(0));
	sum1: entity work.sumador_1(archSum_1) port map (a(1), b(1), c(1), c(2), s(1));
	sum2: entity work.sumador_1(archSum_1) port map (a(2), b(2), c(2), c(3), s(2));
	sum3: entity work.sumador_1(archSum_1) port map (a(3), b(3), c(3), c(4), s(3));
	
	-- se conecta el cable 4 con el carry de salida
	c_out <= c(4);
	
end archSum_4;