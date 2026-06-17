library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity NOT16_Gate is
    port (
        a: in std_logic_vector (15 downto 0);
        y: out std_logic_vector (15 downto 0)
    );
    end entity;

architecture sim of NOT16_Gate is

    begin
        y <= not a;

        end architecture;