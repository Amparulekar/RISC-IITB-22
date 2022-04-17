----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 08:53:48 PM
-- Design Name: 
-- Module Name: demux1to2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity demux1to3 is
    Port ( Demux3to1in: in STD_LOGIC_VECTOR(15 downto 0);
           Demux3to1out1: out STD_lOGIC_VECTOR(15 downto 0);
           Demux3to1out2: out STD_LOGIC_VECTOR(15 downto 0);
           Demux3to1out3: out STD_LOGIC_VECTOR(15 downto 0);
           Demux3to1select: in STD_LOGIC_VECTOR(1 downto 0));
end demux1to3;

architecture Behavioral of demux1to3 is

begin
process(Demux3to1Select, Demux3to1in)
    begin
    if demux3to1select = "00" then
        demux3to1out1 <= demux3to1in;
    elsif demux3to1select = "01" then
        demux3to1out2 <= demux3to1in;
    elsif demux3to1select = "10" then
        demux3to1out3 <= demux3to1in;
    end if;        
end process;
end Behavioral;
