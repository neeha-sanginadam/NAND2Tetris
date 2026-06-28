library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Register16 is
    port (
        a: in std_logic_vector(15 downto 0);
        s: in std_logic;
        clk: in std_logic;
        rout: out std_logic_vector(15 downto 0)
    );
    end entity;

architecture sim of Register16 is
    begin
        register_bits: for i in 15 downto 0 generate
            gate: entity work.Bit port map(
                a => a(i),
                s => s,
                clk => clk,
                bout => rout(i)
            );
            end generate;
        end architecture;