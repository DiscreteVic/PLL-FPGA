LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use IEEE.NUMERIC_STD.ALL ;

ENTITY Prescaler IS
    GENERIC(
        N : INTEGER);
    PORT ( 
        clk_in : IN STD_LOGIC;
        clk_out : OUT STD_LOGIC) ;
END Prescaler ;

ARCHITECTURE LogicFunction OF Prescaler IS
BEGIN


    incReg : PROCESS (clk_in)  
        variable reg : STD_LOGIC_VECTOR(N - 1 downto 0);
    BEGIN
        IF rising_edge (clk_in) THEN
            reg := STD_LOGIC_VECTOR(UNSIGNED(reg) + 1);
        END IF ;
        clk_out <= reg(N - 1);
    END PROCESS incReg;


END LogicFunction ;