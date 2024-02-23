----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.02.2024 14:44:01
-- Design Name: 
-- Module Name: Sprite_controller - Behavioral
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
entity spriteController is
    Port ( ID : in STD_LOGIC_VECTOR (8 downto 0);
           clk : in std_logic;
           x_pos : in STD_LOGIC_VECTOR (9 downto 0);
           y_pos : in STD_LOGIC_VECTOR (8 downto 0);
           hpos :  in std_logic_vector (9 downto 0);
           vpos :  in std_logic_vector (8 downto 0);
           Dataready : in std_logic;
           done : in std_logic;
           addrout : out STD_LOGIC_VECTOR (14 downto 0);
           ena : out STD_LOGIC_VECTOR (3 downto 0));
end spriteController;
architecture Behavioral of spriteController is
type spriteLocation is record
        ID : STD_LOGIC_VECTOR(8 downto 0);
        x_pos : STD_LOGIC_VECTOR(9 downto 0);
        y_pos : STD_LOGIC_VECTOR(8 downto 0);
    end record;
type Data is array (integer range <>) of spriteLocation;
signal DataArray1 : Data(0 to 149);
signal DataArray2 : Data(0 to 149);
signal arraysw : std_logic;
signal DataCount1 : integer;
signal DataCount2 : integer;
 
begin
process(clk)
variable offset : integer := 2;
begin
    if rising_edge(clk) then
        if arraysw = '1' then
            if Dataready = '1' then
                DataArray1(DataCount1) <= (ID,x_pos,y_pos);
                DataCount1 <= DataCount1 + 1;   
                ena <= "0001";   
            else
            DataArray1(DataCount1) <= ((others => '0'),(others => '0'),(others => '0'));
            DataCount1 <= DataCount1; 
            end if;
        else
            if Dataready = '1' then
                DataArray2(DataCount2) <= (ID,x_pos,y_pos);
                DataCount2 <= DataCount2 + 1;    
                ena <= "1000";
            else
            DataArray2(DataCount2) <= ((others => '0'),(others => '0'),(others => '0'));
            DataCount2 <= DataCount2;              
            end if;
        end if;
    end if;
end process;
end Behavioral;