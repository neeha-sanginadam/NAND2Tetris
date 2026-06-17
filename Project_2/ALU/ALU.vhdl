library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU is
    port(
        x: in std_logic_vector(15 downto 0);
        y: in std_logic_vector(15 downto 0);

        zx: in std_logic;
        nx: in std_logic;
        zy: in std_logic;
        ny: in std_logic;
        f: in std_logic;
        n0: in std_logic;

        zr: out std_logic;
        ng: out std_logic;
        alu_out: out std_logic_vector(15 downto 0)
    );
    end entity;
architecture sim of ALU is
    signal x1,x2: std_logic_vector(15 downto 0);
    signal not_nx: std_logic_vector(15 downto 0);
    signal y1,y2: std_logic_vector(15 downto 0);
    signal not_ny: std_logic_vector(15 downto 0);

    signal f_and: std_logic_vector(15 downto 0);
    signal f_sum: std_logic_vector(15 downto 0);
    signal f_out: std_logic_vector(15 downto 0);

    signal no_not: std_logic_vector(15 downto 0);

    signal out1: std_logic_vector(15 downto 0);
    
    begin
        x1 <= (others => '0') when zx='1' else x;
        nx_not: entity work.NOT16_Gate port map(
            a => x1,
            y => not_nx

        );
        x2 <= not_nx when nx='1' else x1;

        y1 <= (others => '0') when zy='1' else y;
        ny_not: entity work.NOT16_Gate port map(
            a => y1,
            y => not_ny

        );
        y2 <= not_ny when ny='1' else y1;

        and_f: entity work.AND16_Gate port map(
            a => x2,
            b => y2,
            y => f_and
        );

        f_sum<= std_logic_vector(unsigned(x2)+unsigned(y2));

        f_out<=f_sum when f='1' else f_and;

        not_n0: entity work.NOT16_Gate port map(
            a => f_out,
            y => no_not
        );

        
        out1<=no_not when n0='1' else f_out;

        alu_out<=out1;

        zr<='1' when out1=x"0000" else '0';
        ng<=out1(15); 
      

        end architecture;