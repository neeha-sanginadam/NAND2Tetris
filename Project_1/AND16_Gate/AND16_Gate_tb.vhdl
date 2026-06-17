library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity AND16_Gate_tb is
    end entity;
architecture sim of AND16_Gate_tb is
    signal a: std_logic_vector (15 downto 0):= "1111111100000000";
    signal b: std_logic_vector (15 downto 0):= "0000000011111111";
    signal y: std_logic_vector (15 downto 0);
    begin
        gate_and16: entity work.AND16_Gate port map(
            a =>a,
            b => b,
            y => y
        );
        process is
            begin
                wait for 10 ns;
                a<="1111111111111111";
                b<="1111111111111111";
                wait for 10 ns;
                a<=x"AA55";
                b<=(others => '0');
                wait for 10 ns;
                a<=x"FF00";
                b<=x"00FF";

                end process;
        end architecture;