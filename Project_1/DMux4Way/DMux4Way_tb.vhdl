library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity DMux4Way_tb is
    end entity;

architecture sim of DMux4Way_tb is
    signal a: std_logic:='1';
    signal sel: std_logic_vector(1 downto 0):="00";
    signal y0: std_logic;
    signal y1: std_logic;
    signal y2: std_logic;
    signal y3: std_logic;

    begin
        demux4:entity work.DMux4Way port map(
            a => a,
            sel => sel,
            y0 => y0,
            y1 => y1,
            y2 => y2,
            y3 => y3
        );
        process is
            begin
                wait for 10 ns;
                sel<="01";
                wait for 10 ns;
                sel<="10";
                wait for 10 ns;
                sel<="11";
                wait for 10 ns;
                sel<="00";
                end process;

        end architecture;