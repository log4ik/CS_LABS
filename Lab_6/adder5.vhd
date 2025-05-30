library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder5 is
    Port (
        A   : in  STD_LOGIC_VECTOR (4 downto 0);
        B   : in  STD_LOGIC_VECTOR (4 downto 0);
        SUM : out STD_LOGIC_VECTOR (5 downto 0)
    );
end adder5;

architecture Behavioral of adder5 is
begin
    SUM <= ('0' & A) + ('0' & B);
end Behavioral;
