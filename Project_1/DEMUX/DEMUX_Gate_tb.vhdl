library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity DEMUX_Gate_tb is
    end entity;

architecture structure of DEMUX_Gate_tb is
    signal a : std_logic:='1';
    signal sel: std_logic:='0';
    signal y0: std_logic;
    signal y1: std_logic;
    begin
        gate_demux: entity work.DEMUX_Gate port map(
            a => a,
            sel => sel,
            y0 => y0,
            y1 => y1
        );
        process is
            begin
                wait for 10 ns;
                sel<='1';
                wait for 10 ns;
                sel<='0';

                end process;

        end architecture;