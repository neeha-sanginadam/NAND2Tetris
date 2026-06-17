library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity MUX_Gate is
    port(
        a: in std_logic;
        b: in std_logic;
        sel: in std_logic;
        y: out std_logic

    );
    end entity;
architecture sim of MUX_Gate is
    signal sel1: std_logic;
    signal y1: std_logic;
    signal y2: std_logic;
    begin
        not_sel: entity work.NOT_Gate port map(
            a => sel,
            y => sel1
        );
        and_y1: entity work.AND_Gate port map(
            a => a,
            b => sel1,
            y => y1

        );
        and_y2: entity work.AND_Gate port map(
            a => sel,
            b => b,
            y => y2

        );
        or_y: entity work.OR_Gate port map(
            a => y1,
            b => y2,
            y => y

        );

        end architecture;