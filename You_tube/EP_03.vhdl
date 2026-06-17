entity EP_03 is
    end entity;

architecture sim of EP_03 is
    begin
        process is
            variable count: integer :=0;
            begin
                report "Before Loop";
                loop
                    report "In LOOP";
                    wait for 10 ns;
                    count:=count+1;
                    exit when count = 5;
                    end loop;
                        wait;
                end process;
        end architecture;