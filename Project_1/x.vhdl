library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity x is
    port(
        a: in std_logic;
        y: out std_logic

    );
    end entity;
architecture structure of x is
    begin
        y<=not a;
        end architecture;