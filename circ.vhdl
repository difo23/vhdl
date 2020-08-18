library ieee;
use ieee.std_logic_1164.all;

entity circ is
port
    (
	   entrada1: in std_logic;
	   entrada2: in std_logic;
	   salida: out std_logic
	   
	);
end circ;

architecture comportamiento of circ is
begin
  salida <= entrada1 and entrada2;
 
 end comportamiento;
 

