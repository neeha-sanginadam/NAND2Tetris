library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DFF is
    port (
        clk: in std_logic;
        d: in std_logic;
        qout: out std_logic

    );
    end entity;
architecture sim of DFF is
    signal q: std_logic :='0';

    begin
        process(clk) is
            begin
                if rising_edge(clk) then
                    q<=d;
                    end if;

                end process;
        qout<=q;
        end architecture;