library ieee;
use ieee.std_logic_1164.all;


entity sumadorMedio is 
   port (
            a: in std_logic;
            b: in std_logic;
            salida: out std_logic;
            acarreo: out std_logic
    );
end sumadorMedio;

architecture suma of sumadorMedio is
begin
   salida <= a xor b;
   acarreo <= a and b; 

end suma ; -- suma