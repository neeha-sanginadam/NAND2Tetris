library IEEE;
use IEEE.std_logic_1164.all;

entity Bit is
    port(
        a: in std_logic;
        s: in std_logic;
        clk: in std_logic;
        bout: out std_logic

    );
    end entity;

architecture sim of Bit is
    signal d: std_logic;
    signal b: std_logic := '0';
    begin
        mux_gate: entity work.MUX_Gate port map(
            a => b,
            b => a,
            sel => s,
            y => d
        );
        dff_gate: entity work.DFF port map(
            clk => clk,
            d => d,
            qout => b
        );
        bout <= b;

        end architecture;
