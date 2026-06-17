library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity EP_14 is
    end entity;

architecture sim of EP_14 is
    signal sim1: unsigned(7 downto 0) := x"AA";
    signal sim2: unsigned(7 downto 0) := x"BB";
    signal sim3: unsigned(7 downto 0) := x"CC";
    signal sim4: unsigned(7 downto 0) := x"DD";

    signal sel: unsigned(1 downto 0) := (others => '0');

    signal output1: unsigned(7 downto 0);
    signal output2: unsigned(7 downto 0);
    begin 
      --Stimulate for the selector signal
       process(sel,sim1,sim2,sim3,sim4) is
        begin
        -- Multiplexer using if-else statements
        if sel="00" then
            output1<=sim1;
        elsif sel="01" then
            output1<=sim2;
        elsif sel="10" then
            output1<=sim3;
        elsif sel="11" then
            output1<=sim4;
        else
           output1<=(others => 'X');
        end if;
        end process;

    --Change selector with time
    process is
        begin
            wait for 10 ns;
            sel<="01";

            wait for 10 ns;
            sel<="10";

            wait for 10 ns;
            sel<="11";
            
            wait for 10 ns;
            sel<="00";
            end process;
    process (sel,sim1,sim2,sim3,sim4) is
        begin
            case sel is
                when "00" =>
                 output2<=sim1;
                when "01" =>
                output2<=sim2;
                when "10" =>
                output2<=sim3;
                when "11" =>
                output2<=sim4;
                when others =>
                output2<=(others => 'X');
            end case;
            end process;
    end architecture;
