library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DFF_tb is
    end entity;
architecture structure of DFF_tb is
    signal clk: std_logic := '0';
    signal d: std_logic := '1';
    signal qout: std_logic;
    begin
        dff_gate: entity work.DFF port map(
            clk => clk,
            d => d,
            qout => qout
        );
        process is
            begin
                wait for 10 ns;
                clk <='1';
                wait for 10 ns;
                clk <= '0';
                end process;
        process is
            begin
                wait for 20 ns;
                d<= '0';
                wait for 20 ns;
                d <= '1';
                end process;

        end architecture;