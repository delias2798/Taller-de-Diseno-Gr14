-----------------------------------------
--- Contador parametrizable de n bits ---
-----------------------------------------
------- Saymon Astúa madrigal -----------
-----------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity contador_n is
	generic(n: integer);
	port (clk, rst: in std_logic;
			cuenta: out std_logic_vector(n-1 downto 0));

end contador_n;


-- se define una arquitectura funcional

architecture archContador of contador_n is
	-- se tiene que hacer un registro de la cuenta
	-- para poder leer lo que contiene y hacer comparaciones
	signal cuenta_reg: std_logic_vector(n-1 downto 0);
begin
	process(clk, rst)
	begin
		if(rst = '1') then
			cuenta_reg <= (others => '0');
		elsif (clk'event and clk = '1') then
		
			if(cuenta_reg /= conv_std_logic_vector(2**n - 1, n)) then
				cuenta_reg <= cuenta_reg + 1;
			else
				cuenta_reg <= (others => '0');
			end if;
			
		end if;	
			
	end process;
	
	cuenta <= cuenta_reg;

end archContador;