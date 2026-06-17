library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity EP_15_tb is
    end entity;

architecture sim of EP_15_tb is
    signal sim1: unsigned(7 downto 0):= x"AA";
    signal sim2: unsigned(7 downto 0):= x"BB";
    signal sim3: unsigned(7 downto 0):= x"CC";
    signal sim4: unsigned(7 downto 0):= x"DD";

    signal sel: unsigned(1 downto 0):=(others => '0');

    signal output1: unsigned(7 downto 0);

    begin
        --an instance of TX_MUX with architecture
        i_mux: entity work.EP_15(structure) port map(
            sel => sel,
            sim1 => sim1,
            sim2 => sim2,
            sim3 => sim3,
            sim4 => sim4,
            output1 => output1
        );

        --techbench proces
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