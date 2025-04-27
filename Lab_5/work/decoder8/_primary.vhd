library verilog;
use verilog.vl_types.all;
entity decoder8 is
    port(
        A               : in     vl_logic_vector(2 downto 0);
        EN              : in     vl_logic;
        Y               : out    vl_logic_vector(7 downto 0)
    );
end decoder8;
