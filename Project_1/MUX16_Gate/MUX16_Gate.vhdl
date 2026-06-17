library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity MUX16_Gate is
    port(
        a:in std_logic_vector (15 downto 0);
        b:in std_logic_vector (15 downto 0);
        sel:in std_logic ;
        y:out std_logic_vector (15 downto 0)
    );
    end entity;
architecture sim of MUX16_Gate is
    signal sel0: std_logic_vector (15 downto 0); 
    signal sel1: std_logic_vector (15 downto 0);
    signal y1: std_logic_vector (15 downto 0);
    signal y2: std_logic_vector (15 downto 0);

    begin
        sel0<=(others => sel);
        not_sel: entity work.NOT16_Gate port map(
            a => sel0,
            y => sel1
        );
        and_y1: entity work.AND16_Gate port map(
            a => a,
            b => sel1,
            y => y1
        );
        and_y2: entity work.AND16_Gate port map(
            a => b,
            b => sel0,
            y => y2
        );
        or_y: entity work.OR16_Gate port map(
            a=> y1,
            b=>y2,
            y => y
        );
        end architecture;