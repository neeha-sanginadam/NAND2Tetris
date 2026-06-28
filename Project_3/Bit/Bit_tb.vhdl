library IEEE;
use IEEE.std_logic_1164.all;

entity Bit_tb is
    end entity;

architecture structure of Bit_tb is
    signal a : std_logic :='0';
    signal s : std_logic :='0';
    signal clk : std_logic := '0';
    signal bout: std_logic;
    begin
        bit_gate: entity work.Bit port map(
            a => a,
            s => s,
            clk => clk,
            bout => bout
        );
        process is
            begin
                while true loop
                wait for 10 ns;
                clk <= '1';
                wait for 10 ns;
                clk <='0';
                end loop;
                end process;
        process is
            begin
                wait for 20 ns; --Load 1
                a <='1';
                s <= '1';
                wait for 20 ns; --Hold 1
                a <= '0';
                s <= '0';
                wait for 20 ns; --Load 0
                a <= '0';
                s <= '1';
                wait for 20 ns; --Hold 0
                a <= '1';
                s <= '0';

                end process;
        end architecture;
