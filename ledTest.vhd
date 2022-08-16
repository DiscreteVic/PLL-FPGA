LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY ledTest IS
    PORT ( 
        testKey : IN STD_LOGIC ;
        testLed : OUT STD_LOGIC );
END ledTest ;

ARCHITECTURE LogicFunction OF ledTest IS
BEGIN 
    testLed <= not testKey;
END LogicFunction ;