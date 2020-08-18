library ieee;
use ieee.std_logic_1164.all;

entity sumadorMedio_tb is 
end sumadorMedio_tb;

architecture test of sumadorMedio_tb is
    component sumadorMedio
        port (
                a: in std_logic;
                b: in std_logic;
                salida: out std_logic;
                acarreo: out std_logic
        );
    end component;

    signal a, b, salida, acarreo: std_ulogic;

    begin
         sumador_medio: sumadorMedio port map (a => a, b => b, salida => salida, acarreo => acarreo);

         process begin

            a <= 'X';
            b <= 'X';
            wait for 1 ns;

            a <= '0';
            b <= '0';
            wait for 1 ns;

            a <= '0';
            b <= '1';
            wait for 1 ns;
entity ent is
  port (
    clock
  ) ;
end ent;
            a <= '1';
            b <= '0';
            wait for 1 ns;

            a <= '1';
            b <= '1';
            wait for 1 ns;

            assert false report "Test sumador Medio";
            wait;
        end process;

end test;
