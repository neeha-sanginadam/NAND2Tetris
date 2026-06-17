library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Full_Adder is
    port (
        a: in std_logic;
        b: in std_logic;
        c: in std_logic;
        sum: out std_logic;
        carry: out std_logic

    );
    end entity;
architecture sim of Full_Adder is
    signal sum1: std_logic;
    signal carry1: std_logic;
    signal carry2: std_logic;
    begin
        first_half: entity work.Half_Adder port map(
            a => a,
            b => b,
            sum => sum1,
            carry => carry1
        );
        second_half: entity work.Half_Adder port map(
            a => sum1,
            b => c,
            sum => sum,
            carry => carry2
        );
        carry_full: entity work.OR_Gate port map(
            a => carry1,
            b => carry2,
            y => carry
        );
        end architecture;