architecture test of circ_tb is
    component circ
        port
        (
	        entrada1: in std_logic;
	        entrada2: in std_logic;
	       salida: out std_logic
	   
	    );
	end component;
	
	signal entrada1, entrada2,salida: std_logic;
begin
    rudy:circ port map (entrada1 => entrada1, entrada2 => entrada2,salida=>salida);
	
	process begin 
	    entrada1<='0';
	    entrada2<='0';
	    wait for 1 ns;
		
		entrada1<='0';
	    entrada2<='1';
	    wait for 1 ns;
		
		entrada1<='1';
	    entrada2<='0';
        wait for 1 ns;
		
		entrada1<='1';
	    entrada2<='1';
        wait for 1 ns;
		
		assert false report "reached end of test";
		
	end process;
end test;