library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MUX4Way16_tb is
    end entity;

architecture structure of MUX4Way16_tb is
    signal a: std_logic_vector (15 downto 0):=(others => '1');
    signal b: std_logic_vector (15 downto 0):=(others => '0');
    signal c: std_logic_vector (15 downto 0):=x"AAAA";
    signal d: std_logic_vector (15 downto 0):=x"5555";
    signal sel: std_logic_vector (1 downto 0):=(others => '0');
    signal y: std_logic_vector (15 downto 0);
    begin
        mux4way16_gate: entity work.MUX4Way16 port map(
            a => a,
            b => b,
            c => c,
            d => d,
            sel => sel,
            y => y
        );

        process is 
        begin
            wait for 10 ns;
            sel<="01";
            wait for 10 ns;
            sel<="10";
            wait for 10 ns;
            sel<="11";
            wait for 10 ns;
            sel<="00";
            end process;
        end architecture;