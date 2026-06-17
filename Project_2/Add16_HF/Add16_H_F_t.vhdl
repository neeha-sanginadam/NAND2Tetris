library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Add16_H_F_t is
    end entity;
architecture structure of Add16_H_F_t is
    signal a: std_logic_vector(15 downto 0) :=x"0000";
    signal b: std_logic_vector(15 downto 0) :=x"0001";
    signal add: std_logic_vector(15 downto 0);
    begin
        add_gate: entity work.Add16_H_F port map(
            a => a,
            b => b,
            add => add
        );
        process is
            begin
                wait for 10 ns;
                a <=x"FFFF";
                b <=x"0001";

                wait for 10 ns;
                a <=x"A5A5";
                b <=x"0001";

                wait for 10 ns;
                a <=x"B000";
                b <=x"FFFF";
                end process;
        

        end architecture; 