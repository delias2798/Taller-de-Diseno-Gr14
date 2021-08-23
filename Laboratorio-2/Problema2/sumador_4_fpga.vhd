----------------------------------
--- Sumador completo de 4 bits ---
----------------------------------
----------------------------------
----- Saymon Astua Madrigal ------
----------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity sumador_4_fpga is
	port(a, b: in std_logic_vector(3 downto 0); c_in: in std_logic;
	     c_out: out std_logic; s: out std_logic_vector(6 downto 0));
end sumador_4_fpga;

architecture archSum_4 of sumador_4_fpga is
	-- se tienen que crear una serie de cables internos
	-- para realizar la conexion entre los 4 sumadores de 1 bit
	signal c: std_logic_vector(4 downto 0);
	
	--se agregan cables para conectar el resultado de la suma a un
	-- decodificador de 7segmentos
	signal s2: std_logic_vector(3 downto 0);
begin
	-- se hace una implementacion estructural
	
	-- se agrega el carry de entrada al cable 0
	c(0) <= c_in;
	
	-- se tienen que instanciar 4 sumadores de 1 bit
	-- el sumador 1 tiene los siguientes atributos (a, b, c_in, c_out, s);
	
	sum0: entity work.sumador_1(archSum_1) port map (a(0), b(0), c(0), c(1), s2(0));
	sum1: entity work.sumador_1(archSum_1) port map (a(1), b(1), c(1), c(2), s2(1));
	sum2: entity work.sumador_1(archSum_1) port map (a(2), b(2), c(2), c(3), s2(2));
	sum3: entity work.sumador_1(archSum_1) port map (a(3), b(3), c(3), c(4), s2(3));
	
	-- se conecta el cable 4 con el carry de salida
	c_out <= c(4);
	
	
	--- se implementan decodificadores para la salida
	seg1 : entity work.to_7seg port map(s2(3 downto 0), s);
	
end archSum_4;