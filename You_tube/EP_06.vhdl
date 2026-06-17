entity EP_06 is
    end entity;
architecture sim of EP_06 is
    -- To have global variable initilize in architecture
    signal j: integer :=0;
    begin
        process is
            variable i: integer :=0;
            begin
                while i<5 loop
                    report "Print :" & integer'image(j);
                    i:=i+1;
                    j<=j+5;
                    wait for 10 ns;
                    end loop;
                    wait;

                end process;

    end architecture;