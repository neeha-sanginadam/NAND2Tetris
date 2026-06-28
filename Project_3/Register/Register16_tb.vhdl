library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Register16_tb is
    end entity;

architecture structure of Register16_tb is
    signal a: std_logic_vector (15 downto 0) := (others=>'1');
    signal s: std_logic := '0';
    signal clk: std_logic := '0';
    signal rout: std_logic_vector(15 downto 0);
    begin
        register16_gate: entity work.Register16 port map(
            a => a,
            s => s,
            clk => clk,
            rout => rout
        );
        process is
            begin
                while true loop
                wait for 10 ns;
                clk <= '1';
                wait for 10 ns;
                clk <= '0';
                end loop;
                end process;
        process is
            begin
                wait for 20 ns;
                a<=x"FFFF";
                s<='1';
                wait for 20 ns;
                a <= x"0000";
                s<='0';
                wait for 20 ns;
                a<=x"0000";
                s <= '1';
                wait for 20 ns;
                a<=x"AAAA";
                s <= '0';
                end process;
        end architecture;