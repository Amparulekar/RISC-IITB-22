library ieee;
use ieee.std_logic_1164.all;
entity SE_9_16 is
    port(
            in_SE_9_16: in std_logic_vector(8 downto 0);
            out_SE_9_16: out std_logic_vector(15 downto 0)
    );
end entity SE_9_16;

architecture padder of SE_9_16 is
begin
    out_SE_9_16 (15 downto 9)<= "0000000";
    out_SE_9_16 (8 downto 0) <= in_SE_9_16;
end architecture padder;

