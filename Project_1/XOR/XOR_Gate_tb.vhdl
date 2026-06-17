library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity XOR_Gate_tb is
    end entity;
architecture structure of XOR_Gate_tb is
    signal a: std_logic:='0';
    signal b: std_logic:='0';
    signal y: std_logic;
    begin
        gate_xor: entity work.XOR_Gate port map(
            a =>a,
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