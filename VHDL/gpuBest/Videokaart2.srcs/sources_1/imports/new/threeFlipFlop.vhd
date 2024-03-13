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

entity threeFlipFlop is
Port (clk100 : in std_logic;
        D : in std_logic;
        Q : out std_logic); 
end threeFlipFlop;

architecture Behavioral of threeFlipFlop is
component Dflipflop is 
   port(
      Q : out std_logic;    
      Clk :in std_logic;   
      D :in  std_logic    
   );
end component;
signal ffs: std_logic_vector(1 downto 0);
begin
FF0 : Dflipflop port map (clk => clk100, D => D, Q => ffs(0));
FF1 : Dflipflop port map (clk => clk100, D => ffs(0), Q => ffs(1));
FF2 : Dflipflop port map (clk => clk100, D => ffs(1), Q => Q);

end Behavioral;
