library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity EP_11 is
    end entity;

architecture sim of EP_11 is
    signal signal1: std_logic_vector(7 downto 0):= "01010101";
    signal signal2: std_logic_vector(7 downto 0):= "10101010";
    signal signal3: std_logic_vector(7 downto 0):= (others => '0');
    signal signal4: std_logic_vector(7 downto 0):= x"FF";
    signal signal5: std_logic_vector(7 downto 0):= "00000001";
    begin
        process is 
        begin

            
            wait for 10 ns;
            if signal1="01010101" then
            signal1<="10101010";
            signal2<="01010101";
            signal3<=x"FF";
            signal4<=(others => '0');
            else
            signal1<="01010101";
            signal2<="10101010";
            signal4<=x"FF";
            signal3<=(others => '0');
            end if;
            for i in  signal5'left downto signal5'right+1 loop
                signal5(i)<=signal5(i-1);
                end loop;
            signal5(signal5'right)<=signal5(signal5'left);
            end process;

        end architecture;
