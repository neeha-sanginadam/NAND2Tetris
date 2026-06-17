entity EP_08 is
    end entity;
architecture sim of EP_08 is
    signal Countup: integer :=0;
    signal Countdown: integer :=10;
    begin
        process is 
        begin
            loop
                Countup<=Countup +1;
                Countdown <= Countdown-1;
                report "CountUp:" & integer'image(Countup) & " CountDown:" &integer'image(Countdown);
                if Countup>CountDown then
                    report "Countup is larger";
                elsif Countup<CountDown then
                    report "Countup is smaller";
                else
                   report "Countup is Same exit";
                   
                end if;
                wait for 10 ns;
                end loop;
            wait;

        end process;
    end architecture;