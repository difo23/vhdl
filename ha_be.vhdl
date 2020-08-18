library ieee;
use ieee.std_logic_1164.all;

entity ha_be is 
end ha_be;

architecture str of ha_be is
    component ha
      port 
     ( a: in std_ulogic;
       b: in std_ulogic;
       o: out std_ulogic;
       c: out std_ulogic
     ); 
   end component;

   signal a, b, o, c : std_ulogic;
begin
     half_adder: ha port map (a => a, b => b, o => o, c => c);

   process begin
       a <= 'X';
       b <= 'X';
       wait for 1 ns;

       a <= '0';
       b <= '0';
       wait for 1 ns;

       a <= '0';
       b <= '1';
       wait for  1 ns;

       a <= '1';
       b <= '0';
       wait for 1 ns;

       a <= '1';
       a <= '1';
       wait for 1 ns;

       assert false report "reached en of test";
       wait;
   
    end process;                   

end architecture str;

