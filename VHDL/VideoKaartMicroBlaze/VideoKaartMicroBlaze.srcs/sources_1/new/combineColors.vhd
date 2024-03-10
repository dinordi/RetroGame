----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.02.2024 12:21:53
-- Design Name: 
-- Module Name: threeFlipFlop - Behavioral
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

entity combineColors is
Port (clk100 : in std_logic;
        bm_1 : in std_logic_vector(11 downto 0);
        bm_2 : in std_logic_vector(11 downto 0);
        bm_3 : in std_logic_vector(11 downto 0);
        bm_4 : in std_logic_vector(11 downto 0);
        R : out std_logic_vector(3 downto 0); 
        G : out std_logic_vector(3 downto 0);
        B : out std_logic_vector(3 downto 0));
end combineColors;

architecture Behavioral of combineColors is
    signal combined : std_logic_vector(11 downto 0);
begin
    combined <= bm_1 or bm_2 or bm_3 or bm_4;
    R <= combined(11 downto 8);
    G <= combined(7 downto 4);
    B <= combined(3 downto 0);

end Behavioral;
