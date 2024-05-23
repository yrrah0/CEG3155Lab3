library ieee;
use ieee.std_logic_1164.all;

entity binarydecoder is
    port (
        bin: in std_logic_vector(3 downto 0);
        bcd1, bcd0: out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of binarydecoder is
begin
    bcd1(3 downto 1) <= "000";
    bcd1(0) <= (bin(3) and bin(1)) or (bin(3) and bin(2));
    
    bcd0(3) <= bin(3) and not bin(2) and not bin(1);
    bcd0(2) <= bin(2) and (not bin(3) or bin(1));
    bcd0(1) <= (not bin(3) and bin(1)) or (bin(3) and bin(2) and not bin(1));
    bcd0(0) <= bin(0);
end;
