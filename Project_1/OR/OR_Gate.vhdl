library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity OR_Gate is
    port(
        a: in std_logic;
        b: in std_logic;
        y: out std_logic

    );
    end entity;
architecture structure of OR_Gate is
    signal a1:std_logic;
    signal b1:std_logic;
    signal y1:std_logic;
    begin
        not_a: entity work.NOT_Gate port map(
            a =>a,
            y =>a1

        );
        not_b: entity work.NOT_Gate(structure) port map(
            a =>b,
            y =>b1

        );
        and_y1: entity work.AND_Gate(structure) port map(
            a =>a1,
            b =>b1,
            y => y1
        );
        not_y1: entity work.NOT_Gate(structure) port map(
            a => y1,
            y => y
        );
        end architecture;