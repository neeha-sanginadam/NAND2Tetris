library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU_tb is
    end entity;
architecture structure of ALU_tb is
    signal x: std_logic_vector(15 downto 0) :=x"0005";
    signal y: std_logic_vector(15 downto 0) :=x"0003";
    signal zx: std_logic := '1';
    signal nx: std_logic := '0';
    signal zy: std_logic := '1';
    signal ny: std_logic := '0';
    signal f: std_logic := '1';
    signal n0: std_logic := '0';
    signal alu_out: std_logic_vector(15 downto 0);
    signal zr: std_logic;
    signal ng: std_logic;

    begin
        alu_test: entity work.ALU port map(
            x => x,
            y => y,
            zx => zx,
            nx => nx,
            zy => zy,
            ny => ny,
            f => f,
            n0 => n0,
            alu_out => alu_out,
            zr => zr,
            ng =>ng
        );

        process is
            begin
                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='1';
                ny<='1';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='1';
                ny<='0';
                f<='1';
                n0<='0';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='1';
                ny<='1';
                f<='0';
                n0<='0';

                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='0';
                ny<='0';
                f<='0';
                n0<='0';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='1';
                ny<='1';
                f<='0';
                n0<='1';

                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='0';
                ny<='0';
                f<='0';
                n0<='1';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='1';
                ny<='1';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='0';
                ny<='0';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='0';
                nx<='1';
                zy<='1';
                ny<='1';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='0';
                ny<='1';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='1';
                ny<='1';
                f<='1';
                n0<='0';

                wait for 10 ns;
                zx<='1';
                nx<='1';
                zy<='0';
                ny<='0';
                f<='1';
                n0<='0';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='0';
                ny<='0';
                f<='1';
                n0<='0';

                wait for 10 ns;
                zx<='0';
                nx<='1';
                zy<='0';
                ny<='0';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='0';
                ny<='1';
                f<='1';
                n0<='1';

                wait for 10 ns;
                zx<='0';
                nx<='0';
                zy<='0';
                ny<='0';
                f<='0';
                n0<='0';

                wait for 10 ns;
                zx<='0';
                nx<='1';
                zy<='0';
                ny<='1';
                f<='0';
                n0<='1';
                end process;
        end architecture;