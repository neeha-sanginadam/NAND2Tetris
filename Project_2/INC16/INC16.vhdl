library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity INC16 is
    port(
        a: in std_logic_vector(15 downto 0);
        inc: out std_logic_vector(15 downto 0)

    );
    end entity;
architecture sim of INC16 is
    begin
        inc <= std_logic_vector(unsigned(a)+1);
        end architecture;