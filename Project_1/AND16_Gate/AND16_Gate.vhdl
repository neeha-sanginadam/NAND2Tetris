library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity AND16_Gate is
    port(
        a:in std_logic_vector (15 downto 0);
        b:in std_logic_vector (15 downto 0);
        y:out std_logic_vector (15 downto 0)
    );
    end entity;
architecture sim of AND16_Gate is
    signal nandout: std_logic_vector (15 downto 0);
    begin
        nandout<= a nand b;
        not_nandout: entity work.NOT16_Gate port map(
            a => nandout,
            y => y
        );
        end architecture;