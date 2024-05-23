library ieee;
use ieee.std_logic_1164.all;

entity ConstantSST is
    port (
        sst: out std_logic_vector(3 downto 0)
    );
end;

architecture rtl of ConstantSST is
begin
    sst <= "0011";
end;
