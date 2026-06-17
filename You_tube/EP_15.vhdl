library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity EP_15 is
    port(
        --inputs
        sim1: in unsigned(7 downto 0);
        sim2: in unsigned(7 downto 0);
        sim3: in unsigned(7 downto 0);
        sim4: in unsigned(7 downto 0);

        --selection 
        sel: in unsigned(1 downto 0);

        --outputs
        output1:out unsigned(7 downto 0)
    );
    end entity;

architecture structure of EP_15 is

    begin
        process(sim1,sim2,sim3,sim4,sel) is
            begin
                case sel is
                    when "00" =>
                    output1<=sim1;
                    when "01" =>
                    output1<=sim2;
                    when "10" =>
                    output1<=sim3;
                    when "11" =>
                    output1<=sim4;
                    when others=>
                    output1<=(others => 'X');
                end case;
            end process;


        end architecture;