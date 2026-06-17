library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DMux8Way is
    port(
        a: in std_logic;
        sel: in std_logic_vector (2 downto 0);
        y0: out std_logic;
        y1: out std_logic;
        y2: out std_logic;
        y3: out std_logic;
        y4: out std_logic;
        y5: out std_logic;
        y6: out std_logic;
        y7: out std_logic
    );
    end entity;
architecture sim of DMux8Way is
    signal x1: std_logic;
    signal x2: std_logic;
    begin
        demux2_x1_x2: entity work.DEMUX_Gate port map(
            a => a,
            sel => sel(2),
            y0 => x1,
            y1 => x2
        );
        demux_y_0_3: entity work.DMux4Way port map(
            a => x1,
            sel => sel(1 downto 0),
            y0 => y0,
            y1 => y1,
            y2 => y2,
            y3 => y3
        );
        demux_y_4_7: entity work.DMux4Way port map(
            a => x2,
            sel => sel(1 downto 0),
            y0 => y4,
            y1 => y5,
            y2 => y6,
            y3 => y7
        );
        end architecture;