library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity NOT16_Gate_tb is
    end entity;
architecture structure of NOT16_Gate_tb is
    signal a: std_logic_vector (15 downto 0) := (others => '0');
    signal y: std_logic_vector (15 downto 0);
    begin
        gate_not16: entity work.NOT16_Gate port map(
            a => a,
            y => y
        );
        process is
            begin
                wait for 10 ns;
                a<=(others => '1');
                wait for 10 ns;
                a<="1010101010101010";
                wait for 10 ns;
                a<="0000000011111111";
                wait for 10 ns;
                a<="1111111100000000";
                end process;
        end architecture;