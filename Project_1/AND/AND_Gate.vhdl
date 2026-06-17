library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AND_Gate is
    port (
        a:in std_logic;
        b:in std_logic;
        y:out std_logic
    );
    end entity;

architecture structure of AND_Gate is
    signal nand_out: std_logic;
    begin
        
        process(a,b) is
            begin
            nand_out<=a nand b;
            
            end process;
        and_not: entity work.NOT_Gate port map(
            a => nand_out,
            y =>y

            );
        end architecture;