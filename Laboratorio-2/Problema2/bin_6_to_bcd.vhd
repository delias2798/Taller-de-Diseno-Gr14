----------------------------------
--- Sumador completo de 4 bits ---
----------------------------------
----------------------------------
----- Saymon Astua Madrigal ------
----------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity bin_6_to_bcd is
	port(entrada: in std_logic_vector(5 downto 0); --entrada de 6 bits
	     salida: out std_logic_vector(7 downto 0)); -- salida de 8 bits en bcd
end bin_6_to_bcd;

architecture funcional of bin_6_to_bcd is
begin

	process (entrada)
BEGIN
    case entrada is
        when "000000"=> salida <="00000000";  -- '0'
        when "000001"=> salida <="00000001";  -- '1'
        when "000010"=> salida <="00000010";  -- '2'
        when "000011"=> salida <="00000011";  -- '3'
        when "000100"=> salida <="00000100";  -- '4' 
        when "000101"=> salida <="00000101";  -- '5'
        when "000110"=> salida <="00000110";  -- '6'
        when "000111"=> salida <="00000111";  -- '7'
        when "001000"=> salida <="00001000";  -- '8'
        when "001001"=> salida <="00001001";  -- '9'
        when "001010"=> salida <="00010000";  -- '10'
        when "001011"=> salida <="00010001";  -- '11'
        when "001100"=> salida <="00010010";  -- '12'
        when "001101"=> salida <="00010011";  -- '13'
        when "001110"=> salida <="00010100";  -- '14'
        when "001111"=> salida <="00010101";  -- '15'
		  when "010000"=> salida <="00010110";  -- '16'
		  when "010001"=> salida <="00010111";  -- '17'
		  when "010010"=> salida <="00011000";  -- '18'
		  when "010011"=> salida <="00011001";  -- '19'
		  when "010100"=> salida <="00100000";  -- '20'
		  when "010101"=> salida <="00100001";  -- '21'
		  when "010110"=> salida <="00100010";  -- '22'
		  when "010111"=> salida <="00100011";  -- '23'
		  when "011000"=> salida <="00100100";  -- '24'
		  when "011001"=> salida <="00100101";  -- '25'
		  when "011010"=> salida <="00100110";  -- '26'
		  when "011011"=> salida <="00100111";  -- '27'
		  when "011100"=> salida <="00101000";  -- '28'
		  when "011101"=> salida <="00101001";  -- '29'
		  when "011110"=> salida <="00110000";  -- '30'
		  when "011111"=> salida <="00110001";  -- '31'
		  
		  ------------------------------------------------
		  when "100000"=> salida <="00110010";  -- '32'
        when "100001"=> salida <="00110011";  -- '33'
        when "100010"=> salida <="00110100";  -- '34'
        when "100011"=> salida <="00110101";  -- '35'
        when "100100"=> salida <="00110110";  -- '36' 
        when "100101"=> salida <="00110111";  -- '37'
        when "100110"=> salida <="00111000";  -- '38'
        when "100111"=> salida <="00111001";  -- '39'
        when "101000"=> salida <="01000000";  -- '40'
        when "101001"=> salida <="01000001";  -- '41'
        when "101010"=> salida <="01000010";  -- '42'
        when "101011"=> salida <="01000011";  -- '43'
        when "101100"=> salida <="01000100";  -- '44'
        when "101101"=> salida <="01000101";  -- '45'
        when "101110"=> salida <="01000110";  -- '46'
        when "101111"=> salida <="01000111";  -- '47'
		  when "110000"=> salida <="01001000";  -- '48'
		  when "110001"=> salida <="01001001";  -- '49'
		  when "110010"=> salida <="01010000";  -- '50'
		  when "110011"=> salida <="01010001";  -- '51'
		  when "110100"=> salida <="01010010";  -- '52'
		  when "110101"=> salida <="01010011";  -- '53'
		  when "110110"=> salida <="01010100";  -- '54'
		  when "110111"=> salida <="01010101";  -- '55'
		  when "111000"=> salida <="01010110";  -- '56'
		  when "111001"=> salida <="01010111";  -- '57'
		  when "111010"=> salida <="01011000";  -- '58'
		  when "111011"=> salida <="01011001";  -- '59'
		  when "111100"=> salida <="01100000";  -- '60'
		  when "111101"=> salida <="01100001";  -- '61'
		  when "111110"=> salida <="01100010";  -- '62'
		  when "111111"=> salida <="01100011";  -- '63'
		  
        when others =>  NULL;
    end case;
end process;
end funcional;