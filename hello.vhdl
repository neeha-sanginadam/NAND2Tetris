entity hello is
end hello;

architecture test of hello is
begin
    process
    begin
        report "GHDL is working!";
        wait;
    end process;
end test;

