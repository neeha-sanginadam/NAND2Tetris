library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity OR16_Gate is
    port(
        a:in std_logic_vector (15 downto 0);
        b:in std_logic_vector (15 downto 0);
        y:out std_logic_vector (15 downto 0)
    );
    end entity;
architecture sim of OR16_Gate is
    signal a1: std_logic_vector (15 downto 0);
    signal b1: std_logic_vector (15 downto 0);
    signal y1: std_logic_vector (15 downto 0);
    begin
        not_a: entity work.NOT16_Gate port map(
            a => a,
            y => a1
        );
        not_b: entity work.NOT16_Gate port map(
            a => b,
            y => b1
        );
        and_y1: entity work.AND16_Gate port map(
            a => a1,
            b => b1,
            y => y1
        );
        not_y1: entity work.NOT16_Gate port map(
            a => y1,
            y => y
        );
        end architecture;