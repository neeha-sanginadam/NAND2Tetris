library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Full_Adder_tb is
    end entity;
architecture structure of Full_Adder_tb is
    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal c: std_logic := '0';
    signal sum: std_logic;
    signal carry: std_logic;
    begin
        full_adder: entity work.Full_Adder port map(
            a => a,
            b => b,
            c => c,
            sum => sum,
            carry => carry
        );
        process is
            begin
                wait for 10 ns;
                a <='0';
                b <='0';
                c <='1';
                wait for 10 ns;
                a <='0';
                b <='1';
                c <='0';
                wait for 10 ns;
                a <='0';
                b <='1';
                c <='1';
                wait for 10 ns;
                a <='1';
                b <='0';
                c <='0';
                wait for 10 ns;
                a <='1';
                b <='0';
                c <='1';
                wait for 10 ns;
                a <='1';
                b <='1';
                c <='0';
                wait for 10 ns;
                a <='1';
                b <='1';
                c <='1';
                wait for 10 ns;
                a <='0';
                b <='0';
                c <='0';
                end process;
        end architecture;