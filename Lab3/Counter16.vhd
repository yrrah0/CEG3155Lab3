library ieee;
library altera;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use altera.altera_primitives_components.all;

entity Counter16 is
	port(
	clk,resetn,en,load: in std_logic;
	input: in std_logic_vector(3 downto 0);
	expire: out std_logic;
	value: out std_logic_vector(3 downto 0)
	);
end;

architecture rtl of Counter16 is
	component enARdFF_2 is
		port(
		i_resetBar: in std_logic;
      i_d: in std_logic;
      i_enable: in std_logic;
      i_clock: in std_logic;
      o_q, o_qBar: out std_logic
		);
	end component;
	
	signal signalNext,signalD,signalQ: std_logic_vector(3 downto 0);
begin
	generateDFF: for i in 3 downto 0 generate
        dffInst: enARdFF_2
            port map (
            i_resetBar => resetn,
            i_d => signalD(i),
            i_enable => '1',
            i_clock => clk,
            o_q => signalQ(i)
            );
   end generate;
	signalNext(3) <= signalQ(3) and (signalQ(2) or signalQ(1) or signalQ(0) or not EN);
   signalNext(2) <= (signalQ(2) and (signalQ(1) or signalQ(0) or not EN))
                    or (signalQ(3) and not signalQ(2) and not signalQ(1) and not signalQ(0) and EN);
   signalNext(1) <= (signalQ(1) and (signalQ(0) or not EN))
                    or (not signalQ(1) and not signalQ(0) and EN and (signalQ(3) or signalQ(2)));
   signalNext(0) <= (signalQ(0) and not EN)
                    or (not signalQ(0) and EN and (signalQ(3) or signalQ(2) or signalQ(1)));
	
	signalD <= signalNext when (load = '0') else
				  input when (load = '1');
	
	expire <= not or_reduce(signalQ);
	value <= signalQ;
end;
                    
    