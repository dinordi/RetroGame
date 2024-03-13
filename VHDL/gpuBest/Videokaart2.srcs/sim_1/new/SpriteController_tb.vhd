----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.02.2024 21:17:13
-- Design Name: 
-- Module Name: spriteControllerTest - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
 
entity spritecontroller_tb is
end spritecontroller_tb;
 
architecture Behavioral of spritecontroller_tb is
component spriteController is
    Port ( 
           clk : in std_logic;
           ID : in STD_LOGIC_VECTOR (7 downto 0);
           x_pos : in STD_LOGIC_VECTOR (9 downto 0);
           y_pos : in STD_LOGIC_VECTOR (8 downto 0);
           hpos :  in std_logic_vector (9 downto 0);
           vpos :  in std_logic_vector (9 downto 0);
           Dataready : in std_logic;
           addrout : out STD_LOGIC_VECTOR (16 downto 0);
           ena : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal x_pos, hpos, vpos : std_logic_vector(9 downto 0);
signal y_pos : std_logic_vector(8 downto 0);
signal ID: std_logic_vector(7 downto 0);
signal clk, Dataready : std_logic;
signal addrout : STD_LOGIC_VECTOR (16 downto 0);
signal ena : STD_LOGIC_VECTOR (15 downto 0);
begin
uut: spriteController port map(
    ID => ID,
    clk => clk,
    x_pos => x_pos,
    y_pos => y_pos,
    hpos => hpos,
    vpos => vpos,
    Dataready => Dataready,
    addrout => addrout,
    ena => ena);
tb : process
 
begin
ID <= "00000001";
x_pos <= "0000011111";
y_pos <= "000011111";

for v in 0 to 640 loop
    for h in 0 to 800 loop
        clk <= '0';
        hpos <= std_logic_vector(to_unsigned(h,10));
        vpos <= std_logic_vector(to_unsigned(v,10));
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
        Dataready <= '0';
    end loop;
end loop;
 
wait for 1000 ns;
for v in 0 to 640 loop
    for h in 0 to 800 loop
        clk <= '0';
        hpos <= std_logic_vector(to_unsigned(h,10));
        vpos <= std_logic_vector(to_unsigned(v,10));
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
        Dataready <= '0';
    end loop;
end loop;
 
 
end process;
end Behavioral;