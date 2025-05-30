library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_adder5 is
end tb_adder5;

architecture behavior of tb_adder5 is

    signal A       : STD_LOGIC_VECTOR(4 downto 0);
    signal B       : STD_LOGIC_VECTOR(4 downto 0);
    signal SUM     : STD_LOGIC_VECTOR(5 downto 0);
    signal SUM_REF : STD_LOGIC_VECTOR(5 downto 0);

    component adder5
        Port (
            A   : in  STD_LOGIC_VECTOR(4 downto 0);
            B   : in  STD_LOGIC_VECTOR(4 downto 0);
            SUM : out STD_LOGIC_VECTOR(5 downto 0)
        );
    end component;

begin

    uut: adder5 port map(
        A => A,
        B => B,
        SUM => SUM
    );

    process(A, B)
    begin
        SUM_REF <= ('0' & A) + ('0' & B);
    end process;

    stimulus: process
    begin
        A <= "00001"; B <= "00001"; wait for 20 ns;
        A <= "11111"; B <= "00001"; wait for 20 ns;
        A <= "10101"; B <= "01010"; wait for 20 ns;
        A <= "00000"; B <= "00000"; wait for 20 ns;
        A <= "01111"; B <= "01111"; wait for 20 ns;
        wait;
    end process;

end behavior;
