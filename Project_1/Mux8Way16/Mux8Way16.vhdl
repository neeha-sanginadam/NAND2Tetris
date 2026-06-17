library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity Mux8Way16 is
    port (
        a: in std_logic_vector (15 downto 0);
        b: in std_logic_vector (15 downto 0);
        c: in std_logic_vector (15 downto 0);
        d: in std_logic_vector (15 downto 0);
        e: in std_logic_vector (15 downto 0);
        f: in std_logic_vector (15 downto 0);
        g: in std_logic_vector (15 downto 0);
        h: in std_logic_vector (15 downto 0);
        sel: in std_logic_vector (2 downto 0);
        y: out std_logic_vector (15 downto 0)
    );
    end entity;

architecture sim of Mux8Way16 is
    signal y1: std_logic_vector (15 downto 0);
    signal y2: std_logic_vector (15 downto 0);
    begin
        mux4_y1: entity work.MUX4Way16 port map(
            a => a,
            b => b,
            c => c,
            d => d,
            sel => sel(1 downto 0),
            y => y1
        );
        mux4_y2: entity work.MUX4Way16 port map(
            a => e,
            b => f,
            c => g,
            d => h,
            sel => sel(1 downto 0),
            y => y2
        );
        mux4_y: entity work.MUX16_Gate port map(
            a => y1,
            b => y2,
            sel => sel(2),
            y => y
        );
        end architecture;