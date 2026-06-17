library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity NOT_Gate_tb is
    end entity;
architecture sim of NOT_Gate_tb is
    signal a: std_logic:='0';
    signal y: std_logic;

    begin
        i_not:entity work.NOT_Gate(structure) port map(
        a=>a,
        y=>y
        );
        process is
            begin
                wait for 10 ns;
                a<='1';
                wait for 10 ns;
                a<='0';
                end process;
        end architecture;