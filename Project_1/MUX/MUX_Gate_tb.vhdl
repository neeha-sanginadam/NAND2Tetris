library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity MUX_Gate_tb is
    end entity;

architecture structure of MUX_Gate_tb is
    signal a: std_logic:='0';
    signal b: std_logic:='0';
    signal sel: std_logic:='0';
    signal y:std_logic;
    begin
        gate_mux: entity work.MUX_Gate port map(
            a => a,
            b => b,
            sel => sel,
            y => y
        );
        process is
            begin
                wait for 10 ns;
                a<='0';
                b<='1';
                sel<='0';
                wait for 10 ns;
                a<='1';
                b<='0';
                sel<='0';
                wait for 10 ns;
                a<='1';
                b<='1';
                sel<='0';
                wait for 10 ns;
                a<='0';
                b<='0';
                sel<='1';
                wait for 10 ns;
                a<='0';
                b<='1';
                sel<='1';
                wait for 10 ns;
                a<='1';
                b<='0';
                sel<='1';
                wait for 10 ns;
                a<='1';
                b<='1';
                sel<='1';
                wait for 10 ns;
                a<='0';
                b<='0';
                sel<='0';

            end process;
        end architecture;