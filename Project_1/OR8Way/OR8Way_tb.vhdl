library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity OR8Way_tb is
    end entity;

architecture structure of OR8Way_tb is
    signal a: std_logic_vector (7 downto 0):= "00000001";
    signal y: std_logic;
    begin
        gate_or8way: entity work.OR8Way port map(
            a => a,
            y =>y
        );

        process is
            begin
                
                for i in 1 to 7 loop
                    wait for 10 ns; 
                    a<=std_logic_vector(shift_left(unsigned(a),1));
                     
                    end loop;   
                    
                wait for 10 ns;
                a<="00000000";
                end process;

                
        
        end architecture;