library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity NOT_Gate is
    port(
        a: in std_logic;
        y: out std_logic


    );
    end entity;
architecture structure of NOT_Gate is
    signal y1: std_logic;
    
    begin
        process(a) is
            begin
        y<=not a;
        
        end process;

        process(a) is
            begin
        y1<=a nand a;
        
        end process;

        end architecture;