-----------------------------------------
--- Contador parametrizable de n bits ---
-----------------------------------------
------- Saymon Astúa madrigal -----------
-----------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity contador_6_fpga is
	port (clk, rst: in std_logic;
			cuenta: out std_logic_vector(13 downto 0));

end contador_6_fpga;


-- se define una arquitectura funcional

architecture archContador_6 of contador_6_fpga is
	-- se tiene que hacer un registro de la cuenta
	-- para poder leer lo que contiene y hacer comparaciones
	signal cuenta_reg: std_logic_vector(5 downto 0);
begin
	process(clk, rst)
	begin
		if(rst = '1') then
			cuenta_reg <= (others => '0');
		elsif (clk'event and clk = '1') then
		
			if(cuenta_reg /= "111111") then
				cuenta_reg <= cuenta_reg + 1;
			else
				cuenta_reg <= (others => '0');
			end if;
			
		end if;	
			
	end process;
	
	-- se instancia dos decodificadores para el display de 7 segmentos
	seg1 : entity work.to_7seg port map(cuenta_reg(3 downto 0), cuenta(6 downto 0));
	seg2 : entity work.to_7seg port map("00" & cuenta_reg(5 downto 4), cuenta(13 downto 7));
	

end archContador_6;