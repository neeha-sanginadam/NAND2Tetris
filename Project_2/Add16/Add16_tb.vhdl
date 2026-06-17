library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Add16_tb is
    end entity;
architecture structure of Add16_tb is
    signal a: std_logic_vector(15 downto 0):=x"A5A5";
    signal b: std_logic_vector(15 downto 0):=x"FFFF";
    signal add: std_logic_vector(15 downto 0);
    begin
        add16: entity work.Add16 port map(
            a => a,
            b => b,
            add => add
        );
        process is
            begin
                wait for 10 ns;
                a <=x"0005";
                b <=x"0003";

                wait for 10 ns;
                a <= x"000F";
                b <= x"0001";

                wait for 10 ns;
                a <= x"0064";
                b <= x"00C8";
                end process;
        end architecture;
