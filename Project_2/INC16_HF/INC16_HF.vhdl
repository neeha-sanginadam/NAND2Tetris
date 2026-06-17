library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity INC16_HF is
    port(
        a:in std_logic_vector(15 downto 0);
        inc: out std_logic_vector(15 downto 0)
    );
    end entity;
architecture sim of INC16_HF is
    signal c: std_logic_vector(15 downto 0);
    begin
        half_adder: entity work.Half_Adder port map(
            a => a(0),
            b => '1',
            sum => inc(0),
            carry => c(0)
        );
        full_adder1: entity work.Full_Adder port map(
            a => a(1),
            b => '0',
            c => c(0),
            sum => inc(1),
            carry => c(1)
        );
        full_adder2: entity work.Full_Adder port map(
            a => a(2),
            b => '0',
            c => c(1),
            sum => inc(2),
            carry => c(2)
        );
        full_adder3: entity work.Full_Adder port map(
            a => a(3),
            b => '0',
            c => c(2),
            sum => inc(3),
            carry => c(3)
        );
        full_adder4: entity work.Full_Adder port map(
            a => a(4),
            b => '0',
            c => c(3),
            sum => inc(4),
            carry => c(4)
        );
        full_adder5: entity work.Full_Adder port map(
            a => a(5),
            b => '0',
            c => c(4),
            sum => inc(5),
            carry => c(5)
        );
        full_adder6: entity work.Full_Adder port map(
            a => a(6),
            b => '0',
            c => c(5),
            sum => inc(6),
            carry => c(6)
        );
        full_adder7: entity work.Full_Adder port map(
            a => a(7),
            b => '0',
            c => c(6),
            sum => inc(7),
            carry => c(7)
        );
        full_adder8: entity work.Full_Adder port map(
            a => a(8),
            b => '0',
            c => c(7),
            sum => inc(8),
            carry => c(8)
        );
        full_adder9: entity work.Full_Adder port map(
            a => a(9),
            b => '0',
            c => c(8),
            sum => inc(9),
            carry => c(9)
        );
        full_adder10: entity work.Full_Adder port map(
            a => a(10),
            b => '0',
            c => c(9),
            sum => inc(10),
            carry => c(10)
        );
        full_adder11: entity work.Full_Adder port map(
            a => a(11),
            b => '0',
            c => c(10),
            sum => inc(11),
            carry => c(11)
        );
        full_adder12: entity work.Full_Adder port map(
            a => a(12),
            b => '0',
            c => c(11),
            sum => inc(12),
            carry => c(12)
        );
        full_adder13: entity work.Full_Adder port map(
            a => a(13),
            b => '0',
            c => c(12),
            sum => inc(13),
            carry => c(13)
        );
        full_adder14: entity work.Full_Adder port map(
            a => a(14),
            b => '0',
            c => c(13),
            sum => inc(14),
            carry => c(14)
        );
        full_adder15: entity work.Full_Adder port map(
            a => a(15),
            b => '0',
            c => c(14),
            sum => inc(15),
            carry => c(15)
        );

        end architecture;