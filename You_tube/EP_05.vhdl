entity EP_05 is
    end entity;
architecture sim of EP_05 is
    begin
        process is
            variable i : integer := 0;
            
            begin
                while i<10 loop
                    report "Print i:" &integer'image(i) & "at 10 ns";
                    wait for 10 ns;
                    i:= i+1;
                    end loop;
                        wait;
                end process;
    end architecture;

entity EP_05_2 is
    end entity;
architecture sim of EP_05_2 is
    begin
        process is
            variable i: integer:=0;
            begin
                while_like: loop
                    exit when i=5;
                    report "Print _2 i :" & integer'image(i) & " end";
                    i:=i+1;
                    wait for 10 ns;
                end loop;
                wait;
                end process;

    end architecture;