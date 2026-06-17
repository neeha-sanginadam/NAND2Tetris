library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity INC16_tb is
    end entity;
architecture structure of INC16_tb is
    signal a: std_logic_vector(15 downto 0) := x"00FF";
    signal inc: std_logic_vector(15 downto 0);

    begin
        inc16: entity work.INC16 port map(
            a => a,
            inc => inc
        );
        process is
            begin
                wait for 10 ns;
                a <= x"A5A5";

                wait for 10 ns;
                a <= x"0000";

                end process;
        end architecture;