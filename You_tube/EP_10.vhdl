library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity EP_10 is
    end entity;
architecture sim of EP_10 is
    signal signal1: std_logic :='0';
    signal signal2: std_logic;
    signal signal3: std_logic;
    begin
        process is 
        begin
            
            wait for 10 ns;
            signal1<=not signal1;
            end process;
        process is 
        begin
            signal2<='Z';
            signal3<='0';
            wait;
            end process;
        process(signal1) is 
        begin
            if signal1='0' then
                signal2<='Z';
                signal3<='Z';
            else
                signal2<='1';
                signal3<='1';
            end if;
            end process;
    
        end architecture;

