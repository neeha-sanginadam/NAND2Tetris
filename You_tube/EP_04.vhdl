entity EP_04 is
end entity;
architecture sim of EP_04 is
begin
    process is 
    begin
        report "Befor Loop";
        for i in 1 to 10 loop
            report "Print i:" & integer'image(i);
        end loop;
            wait;
        end process;
    end architecture;