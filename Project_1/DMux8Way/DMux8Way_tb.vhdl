library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DMux8Way_tb is
    end entity;
architecture structure of DMux8Way_tb is
    signal a: std_logic:='1';
    signal sel: std_logic_vector(2 downto 0):="000";
    signal y0: std_logic;
    signal y1: std_logic;
    signal y2: std_logic;
    signal y3: std_logic;
    signal y4: std_logic;
    signal y5: std_logic;
    signal y6: std_logic;
    signal y7: std_logic;
    begin
        dmux8way: entity work.DMux8Way port map(
            a => a,
            sel => sel,
            y0 => y0,
            y1 => y1,
            y2 => y2,
            y3 => y3,
            y4 => y4,
            y5 => y5,
            y6 => y6,
            y7 => y7
        );
        process is 
        begin
            wait for 10 ns;
            sel<="001";
            wait for 10 ns;
            sel<="010";
            wait for 10 ns;
            sel<="011";
            wait for 10 ns;
            sel<="100";
            wait for 10 ns;
            sel<="101";
            wait for 10 ns;
            sel<="110";
            wait for 10 ns;
            sel<="111";
            wait for 10 ns;
            sel<="000";

            end process;
        end architecture;