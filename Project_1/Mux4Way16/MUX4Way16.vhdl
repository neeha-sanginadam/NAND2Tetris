library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MUX4Way16 is
    port (
        a: in std_logic_vector (15 downto 0);
        b: in std_logic_vector (15 downto 0);
        c: in std_logic_vector (15 downto 0);
        d: in std_logic_vector (15 downto 0);
        sel: in std_logic_vector (1 downto 0);
        y: out std_logic_vector (15 downto 0)
        

    );
    end entity;

architecture structure of MUX4Way16 is
    signal y1: std_logic_vector (15 downto 0);
    signal y2: std_logic_vector (15 downto 0);

    begin
        mux16_y1: entity work.MUX16_Gate port map(
            a => a,
            b => b,
            sel => sel(0),
            y => y1
        );
        mux16_y2: entity work.MUX16_Gate port map(
            a => c,
            b => d,
            sel => sel(0),
            y => y2
        );
        mux16_y: entity work.MUX16_Gate port map(
            a => y1,
            b => y2,
            sel => sel(1),
            y => y
        );

        end architecture;