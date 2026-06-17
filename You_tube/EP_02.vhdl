
entity EP_02 is
end entity;
 
architecture sim of EP_02 is
begin
    process is
        begin
            for i in 1 to 5 loop
            report "Episode 2";
            wait for 50 ns;
            end loop;
            wait;
        end process;

end architecture;
