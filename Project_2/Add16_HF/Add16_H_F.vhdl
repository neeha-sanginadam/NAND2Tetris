library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Add16_H_F is
    port (
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        add: out std_logic_vector(15 downto 0)
    );
    end entity;
architecture sim of Add16_H_F is
    signal c: std_logic_vector(15 downto 0);
    begin
        half_adder: entity work.Half_Adder port map(
            a => a(0),
            b => b(0),
            sum => add(0),
            carry => c(0)
        );
        full_adder1: entity work.Full_Adder port map(
            a => a(1),
            b => b(1),
            c => c(0),
            sum => add(1),
            carry => c(1)

        );
        full_adder2: entity work.Full_Adder port map(
            a => a(2),
            b => b(2),
            c => c(1),
            sum => add(2),
            carry => c(2)
        );
        full_adder3: entity work.Full_Adder port map(
            a => a(3),
            b => b(3),
            c => c(2),
            sum => add(3),
            carry => c(3)
        );
        full_adder4: entity work.Full_Adder port map(
            a => a(4),
            b => b(4),
            c => c(3),
            sum => add(4),
            carry => c(4)
        );
        full_adder5: entity work.Full_Adder port map(
            a => a(5),
            b => b(5),
            c => c(4),
            sum => add(5),
            carry => c(5)
        );
        full_adder6: entity work.Full_Adder port map(
            a => a(6),
            b => b(6),
            c => c(5),
            sum => add(6),
            carry => c(6)
        );
        full_adder7: entity work.Full_Adder port map(
            a => a(7),
            b => b(7),
            c => c(6),
            sum => add(7),
            carry => c(7)
        );
        full_adder8: entity work.Full_Adder port map(
            a => a(8),
            b => b(8),
            c => c(7),
            sum => add(8),
            carry => c(8)
        );
        full_adder9: entity work.Full_Adder port map(
            a => a(9),
            b => b(9),
            c => c(8),
            sum => add(9),
            carry => c(9)
        );
        full_adder10: entity work.Full_Adder port map(
            a => a(10),
            b => b(10),
            c => c(9),
            sum => add(10),
            carry => c(10)
        );
        full_adder11: entity work.Full_Adder port map(
            a => a(11),
            b => b(11),
            c => c(10),
            sum => add(11),
            carry => c(11)
        );
        full_adder12: entity work.Full_Adder port map(
            a => a(12),
            b => b(12),
            c => c(11),
            sum => add(12),
            carry => c(12)
        );
        full_adder13: entity work.Full_Adder port map(
            a => a(13),
            b => b(13),
            c => c(12),
            sum => add(13),
            carry => c(13)
        );
        full_adder14: entity work.Full_Adder port map(
            a => a(14),
            b => b(14),
            c => c(13),
            sum => add(14),
            carry => c(14)
        );
        full_adder15: entity work.Full_Adder port map(
            a => a(15),
            b => b(15),
            c => c(14),
            sum => add(15),
            carry => c(15)
        );
        
        end architecture; 