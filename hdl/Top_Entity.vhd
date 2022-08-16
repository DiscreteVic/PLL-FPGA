LIBRARY ieee ;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY Top_Entity IS
    PORT ( 
        ADC_CLK_10 : IN STD_LOGIC ;
        MAX10_CLK1_50 : IN STD_LOGIC ;
        ARDUINO_IO : INOUT STD_LOGIC_VECTOR(15 downto 0) ;
        VGA_R : OUT STD_LOGIC_VECTOR(3 downto 0) ;
        VGA_G : OUT STD_LOGIC_VECTOR(3 downto 0) ;
        VGA_B : OUT STD_LOGIC_VECTOR(3 downto 0) ;
        VGA_HS : OUT STD_LOGIC ;
        VGA_VS : OUT STD_LOGIC ;
        KEY : IN STD_LOGIC_VECTOR(1 downto 0) ;
        LEDR : OUT STD_LOGIC_VECTOR(9 downto 0);
        HEX0 : OUT STD_LOGIC_VECTOR(7 downto 0);
        HEX2 : OUT STD_LOGIC_VECTOR(7 downto 0);
        HEX1 : OUT STD_LOGIC_VECTOR(7 downto 0)) ;
END Top_Entity ;

ARCHITECTURE LogicFunction OF Top_Entity IS

 
--    COMPONENT Prescaler is
--        GENERIC(
--            N : INTEGER);
--        PORT ( 
--            clk_in : IN STD_LOGIC;
--            clk_out : OUT STD_LOGIC) ;
--    END COMPONENT;

    COMPONENT ledTest is
		PORT ( 
			testKey : IN STD_LOGIC ;
			testLed : OUT STD_LOGIC );
    END COMPONENT;


BEGIN
	P1: ledTest port map (KEY(1),LEDR(0));
 
END LogicFunction ;