library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity Mux8Way16_tb is
    end entity;

architecture sim of Mux8Way16_tb is
    signal a: std_logic_vector(15 downto 0) :=x"0003";
    signal b: std_logic_vector(15 downto 0) :=x"000f";
    signal c: std_logic_vector(15 downto 0) :=x"003F";
    signal d: std_logic_vector(15 downto 0) :=x"00FF";
    signal e: std_logic_vector(15 downto 0) :=x"03FF";
    signal f: std_logic_vector(15 downto 0) :=x"0FFF";
    signal g: std_logic_vector(15 downto 0) :=x"3FFF";
    signal h: std_logic_vector(15 downto 0) :=x"FFFF";
    signal sel: std_logic_vector(2 downto 0) :="000";
    signal y: std_logic_vector(15 downto 0);
    begin
        mux8way16: entity work.Mux8Way16 port map(
            a => a,
            b => b,
            c => c,
            d => d,
            e => e,
            f => f,
            g => g,
            h => h,
            sel => sel,
            y => y
        );
        process is 
        begin
            wait for 10 ns;
            sel<="001";
            wait for 10 ns;
            sel<="010";
            wait for 10 ns;
            sel<="011";
            wait for 10 ns;
            sel<="100";
            wait for 10 ns;
            sel<="101";
            wait for 10 ns;
            sel<="110";
            wait for 10 ns;
            sel<="111";
            wait for 10 ns;
            sel<="000";
            end process;

        end architecture;