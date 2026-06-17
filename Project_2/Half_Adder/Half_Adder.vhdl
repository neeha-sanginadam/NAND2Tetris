library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Half_Adder is
    port (
        a: in std_logic;
        b: in std_logic;
        sum: out std_logic;
        carry: out std_logic
    );
    end entity;
architecture sim of Half_Adder is
    begin
        sum_gate: entity work.XOR_Gate port map(
            a => a,
            b => b,
            y => sum
        );
        carry_gate: entity work.AND_Gate port map(
            a => a,
            b => b,
            y => carry
        );
        end architecture;