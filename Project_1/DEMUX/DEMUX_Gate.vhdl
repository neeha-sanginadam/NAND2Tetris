library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity DEMUX_Gate is
    port (
        a: in std_logic;
        sel: in std_logic;
        y0: out std_logic;
        y1: out std_logic
    );
    end entity;

architecture sim of DEMUX_Gate is
    signal sel1: std_logic;
    begin
        not_sel: entity work.NOT_Gate port map(
            a => sel,
            y => sel1
        );
        and_x1: entity work.AND_Gate port map(
            a => a,
            b => sel1,
            y => y0
        );
        and_x2: entity work.AND_Gate port map(
            a => a,
            b => sel,
            y => y1
        );

        end architecture;