library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Add16 is
    port(
        a: in std_logic_vector(15 downto 0);
        b: in std_logic_vector(15 downto 0);
        add: out std_logic_vector(15 downto 0)
    );
    end entity;
architecture structure of Add16 is
    begin
        add <= std_logic_vector(unsigned(a)+unsigned(b));
        end architecture;
