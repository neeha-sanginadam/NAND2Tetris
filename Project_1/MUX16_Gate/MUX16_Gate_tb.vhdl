library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity MUX16_Gate_tb is
    end entity;
architecture structure of MUX16_Gate_tb is
    signal a: std_logic_vector (15 downto 0):= (others => '1');
    signal b: std_logic_vector (15 downto 0):= (others => '0');
    signal sel: std_logic :='0';
    signal y: std_logic_vector (15 downto 0);
    begin
        gate_mux16: entity work.MUX16_Gate port map(
            a => a,
            b => b,
            sel => sel,
            y => y
        );
        process is 
        begin
            wait for 10 ns;
            sel<='1';
            wait for 10 ns;
            a <= x"AAAA";
            b <= x"5555";
            sel <= '0';
            end process;

        end architecture;