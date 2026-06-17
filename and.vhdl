
library ieee;
use ieee.std_logic_1164.all;

entity and is
    port(
        A : in  std_logic;
        B : in  std_logic;
        Y : out std_logic
    );
end and;

architecture rtl of and is
begin
    Y <= A and B;
end rtl;
