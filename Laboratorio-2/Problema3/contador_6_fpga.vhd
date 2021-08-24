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
			hex1, hex2: out std_logic_vector(6 downto 0));

end contador_6_fpga;


-- se define una arquitectura funcional

architecture archContador_6 of contador_6_fpga is
	-- se tiene que hacer un registro de la cuenta
	-- para poder leer lo que contiene y hacer comparaciones
	signal cuenta_reg: std_logic_vector(5 downto 0);
	
	
	--se crean unos cables para conectar la cuenta con el
	-- decodificador de binario a bcd
	signal cuenta_bcd: std_logic_vector(7 downto 0);
	
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
	
	
	--se implementa un decodificador de binario a bcd
	deco : entity work.bin_6_to_bcd port map(cuenta_reg, cuenta_bcd);
	
	
	-- se instancia dos decodificadores para el display de 7 segmentos
	seg1 : entity work.to_7seg port map(cuenta_bcd(3 downto 0), hex1);
	seg2 : entity work.to_7seg port map(cuenta_bcd(7 downto 4), hex2);
	

end archContador_6;