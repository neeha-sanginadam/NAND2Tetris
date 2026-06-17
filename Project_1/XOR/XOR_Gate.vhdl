library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity XOR_Gate is
    port(
        a: in std_logic;
        b: in std_logic;
        y: out std_logic

    );
    end entity;

architecture sim of XOR_Gate is
    signal a1: std_logic;
    signal b1: std_logic;
    signal y1: std_logic;
    signal y2: std_logic;
    begin
        not_a1: entity work.NOT_Gate port map(
            a =>a,
            y => a1
        );
        not_b1: entity work.NOT_Gate port map(
            a =>b,
            y => b1
        );
        and_y1: entity work.AND_Gate port map(
            a =>a,
            b =>b1,
            y => y1
        );
        and_y2: entity work.AND_Gate port map(
            a =>a1,
            b =>b,
            y => y2
        );
        or_y: entity work.OR_Gate port map(
            a =>y1,
            b =>y2,
            y => y
        );

        end architecture;