library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity OR_Gate_tb is
    end entity;
architecture sim of OR_Gate_tb is
    signal a: std_logic:='0';
    signal b: std_logic:='0';
    signal y: std_logic;
    begin
        or_gate: entity work.OR_Gate(structure) port map(
            a => a,
            b => b,
            y => y
        );
        process is
            begin
                wait for 10 ns;
                a<='0';
                b<='1';
                wait for 10 ns;
                a<='1';
                b<='0';
                wait for 10 ns;
                a<='1';
                b<='1';
                wait for 10 ns;
                a<='0';
                b<='0';
                end process;
        end architecture;