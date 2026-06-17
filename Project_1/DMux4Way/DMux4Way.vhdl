library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity DMux4Way is
    port(
        a: in std_logic;
        sel: in std_logic_vector (1 downto 0);
        y0: out std_logic;
        y1: out std_logic;
        y2: out std_logic;
        y3: out std_logic
    );
    end entity;

architecture sim of DMux4Way is
    signal x1: std_logic;
    signal x2: std_logic;
    begin
        demux_x1: entity work.DEMUX_Gate port map(
            a => a,
            sel => sel(1),
            y0 => x1,
            y1 => x2
        );
        demux_y0_y1: entity work.DEMUX_Gate port map(
            a => x1,
            sel => sel(0),
            y0 => y0,
            y1 => y1
        );
        demux_y2_y3: entity work.DEMUX_Gate port map(
            a => x2,
            sel => sel(0),
            y0 => y2,
            y1 => y3
        );
        end architecture;