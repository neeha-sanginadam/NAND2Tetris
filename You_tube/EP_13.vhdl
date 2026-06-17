library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity EP_13 is
    end entity;

architecture sim of EP_13 is
    signal unsign: unsigned(5 downto 0) :=(others => '0');
    signal mux1: unsigned(7 downto 0);
    signal mux2: unsigned(7 downto 0);
    signal mux3: unsigned(7 downto 0);
   
    begin
        process is 
        begin

            unsign<=unsign+1;
            wait for 10 ns;
            
            end process;

        --Process for multiplying that by 4
        process is
            begin
                mux1 <= unsign & "00";
                wait on unsign;
                end process;
        
        process(unsign) is
            begin
                mux2 <=unsign & "00";
            end process;
        
        --equivalent process using concurrent statement
        mux3<=unsign & "00";


        end architecture;
