library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity EP_12 is
    end entity;

architecture sim of EP_12 is
    signal unsign: unsigned(7 downto 0):=(others => '0');
    signal sign: signed(7 downto 0):=(others => '0');

    signal unsign1: unsigned(7 downto 0):=(others => '0');
    signal sign1: signed(7 downto 0):=(others => '0');

    signal unsign4: unsigned(3 downto 0):="1000";
    signal sign4: signed(3 downto 0):="1000";
   
    begin
        process is 
        begin

            
            wait for 10 ns;
            unsign<=unsign+1;
            sign<=sign+1;
            report "Unsigned = " & integer'image(to_integer(unsign)) &
               " | Signed = " & integer'image(to_integer(sign));

            unsign1<=unsign1+unsign4;
            sign1<=sign1+sign4;
            
            end process;

        end architecture;
