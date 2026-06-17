entity EP_07 is
    end entity;
architecture sim of EP_07 is
    signal Countup: integer :=0;
    signal Countdown: integer :=10;
    begin
        process is
            begin
                loop
                Countup <= Countup +1;
                Countdown <= Countdown -1;
                wait for 10 ns;
                exit when Countup = Countdown;
                end loop;

                end process;
        process is
            begin
                wait on Countup, Countdown;
                report "CountUp:" & integer'image(Countup) & " CountDown:" &integer'image(Countdown);
                end process;
        process is
            begin
                wait until Countup=Countdown;
                report "Endeddddd.......";
                wait;
                end process;
                
        end architecture;

entity EP_07_2 is
    end entity;
architecture sim of EP_07_2 is
    signal Countup: integer :=0;
    signal Countdown: integer :=10;
    begin
        process is 
        begin
            loop
                Countup<=Countup +1;
                Countdown <= Countdown-1;
                report "CountUp:" & integer'image(Countup) & " CountDown:" &integer'image(Countdown);
                exit when Countup=Countdown;
                wait for 10 ns;
                end loop;
            wait;

        end process;
    end architecture;