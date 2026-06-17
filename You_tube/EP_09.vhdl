entity EP_09 is
    end entity;
architecture sim of EP_09 is
    signal Countup: integer :=0;
    signal Countdown: integer :=10;
    begin
        process is 
        begin
            Countup<=Countup+1;
            Countdown<=Countdown-1;
            wait for 10 ns;
            end process;
        process is
            begin
                if Countup<Countdown then
                    report "JackPot!!";
                    end if;
                wait on Countup, Countdown;
                end process;
        end architecture;

entity EP_09_02 is
    end entity;
architecture sim of EP_09_02 is
    signal Countup: integer :=0;
    signal Countdown: integer :=10;
    begin
        process is 
        begin
            Countup<=Countup+1;
            Countdown<=Countdown-1;
            wait for 10 ns;
            end process;
        --Sensitivity list will perform same as the above 
        process (Countup, Countdown) is
            begin
                if Countup<Countdown then
                    report "JackPot!!";
                    end if;
                end process;
        end architecture;