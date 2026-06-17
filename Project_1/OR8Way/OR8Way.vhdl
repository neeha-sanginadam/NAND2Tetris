library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity OR8Way is
    port(
        a: in std_logic_vector(7 downto 0);
        y: out std_logic
    );
    end entity;

architecture sim of OR8Way is
    signal y1: std_logic;
    signal y2: std_logic;
    signal y3: std_logic;
    signal y4: std_logic;
    signal y5: std_logic;
    signal y6: std_logic;
    
    begin
        or_y1: entity work.OR_Gate port map(
            a => a(0),
            b => a(1),
            y => y1
        );
        or_y2: entity work.OR_Gate port map(
            a => a(2),
            b => a(3),
            y => y2
        );
        or_y3: entity work.OR_Gate port map(
            a => a(4),
            b => a(5),
            y => y3
        );
        or_y4: entity work.OR_Gate port map(
            a => a(6),
            b => a(7),
            y => y4
        );
        or_y5: entity work.OR_Gate port map(
            a => y1,
            b => y2,
            y => y5
        );
        or_y6: entity work.OR_Gate port map(
            a => y3,
            b => y4,
            y => y6
        );
        or_y: entity work.OR_Gate port map(
            a => y5,
            b => y6,
            y => y
        );
        
        end architecture;