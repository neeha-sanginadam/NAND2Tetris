library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity INC16_HF_t is
    end entity;
architecture structure of INC16_HF_t is
    signal a: std_logic_vector(15 downto 0) :=x"0000";
    signal inc: std_logic_vector(15 downto 0);
    begin
        INC16_HF: entity work.INC16_HF port map(
            a => a,
            inc => inc
        );
        process is
            begin
                wait for 10 ns;
                a <=x"FFFF";
                

                wait for 10 ns;
                a <=x"A5A5";

                wait for 10 ns;
                a <=x"B000";

                end process;
        end architecture;