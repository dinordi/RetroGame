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
    Port ( 
           clk : in std_logic;
           ID : in STD_LOGIC_VECTOR (8 downto 0);
           x_pos : in STD_LOGIC_VECTOR (9 downto 0);
           y_pos : in STD_LOGIC_VECTOR (8 downto 0);
           hpos :  in std_logic_vector (9 downto 0);
           vpos :  in std_logic_vector (9 downto 0);
           Dataready : in std_logic;
           addrout : out STD_LOGIC_VECTOR (16 downto 0);
           ena : out STD_LOGIC_VECTOR (3 downto 0));
end spriteController;
architecture Behavioral of spriteController is
type spriteLocation is record
        ID : unsigned (8 downto 0);
        x_pos : unsigned (9 downto 0);
        y_pos : unsigned (8 downto 0);
    end record;
type Data is array (integer range <>) of spriteLocation;
type grootte is array (integer range<>) of integer;
signal DataArray : Data(0 to 29);
signal DataCount : integer := 0;
signal sizes : grootte(0 to 3) := (15, 31, 63, 63);
signal lastdataready : std_logic;
begin
process(clk)
variable LowestId : unsigned(8 downto 0) := (others => '1');
variable PrintIndex : integer := 151;
variable offset : integer := 2;
variable varHPos : unsigned(9 downto 0);
variable varVPos : unsigned(9 downto 0);
variable sprRange : unsigned(5 downto 0); 
variable varEna : STD_LOGIC_VECTOR (3 downto 0) := (others => '0') ;
begin
    varHPos := unsigned(hPos) + offset;
    varVPos := unsigned(vPos); 
if rising_edge(clk) then
    if varVPos = 510 and varhPos = 795 then
        datacount <= 0;
    end if;
        if(varVPos >= 31) and (varVPos < 511) then
            PrintIndex := 151;
            for i in 0 to 29 loop
                if i < dataCount then                                             --current id in loop is lower than lowest id in the loop must be on the foreground
                    sprRange := TO_UNSIGNED(sizes(TO_INTEGER(DataArray(i).ID) / 100)/2,6);     --range divided by 2, 15X15 means plus 7 and minus 7 from input co rdinate sent by mc                   
                    if (DataArray(i).ID < lowestID) and
                        (DataArray(i).x_pos + 144 - sprRange <= varHpos) and
                        (DataArray(i).x_pos + 144 + sprRange >= varHpos) and
                        (DataArray(i).y_pos + 31 - sprRange <= varVpos) and
                        (DataArray(i).y_pos + 31 + sprRange >= varVpos) then                        
                        LowestId := DataArray(i).ID;                                           --when this sprite must be printed it becomes the lowest id in the loop from now on
                        PrintIndex := i;                                                        -- keep track which sprint has the highest priority (lowest ID)
                    end if;
                end if;
            end loop;
            if  PrintIndex = 151 then
                addrout <= std_logic_vector(resize(varVPos - 31,17));
                ena <=  not "1000";
              else
                sprRange := TO_UNSIGNED(sizes(TO_INTEGER(DataArray(PrintIndex).ID) / 100)/2,6);
                addrout <= std_logic_vector(resize(varHPos - (DataArray(PrintIndex).x_pos + 144 - sprRange) + ((varVPos - (DataArray(PrintIndex).Y_pos + 31 - sprRange)) * sprRange * 2) + ((DataArray(PrintIndex).ID MOD 100) * (sprRange * 2) * (sprRange * 2)),17));
                varEna := (others => '0');
                varEna(TO_INTEGER(DataArray(PrintIndex).ID) / 100) := '1'; -- klopt denk ik niet 0000 1000 1100
                ena <= not varEna;
                LowestId := (others => '1');
              end if;
        else
            if Dataready = '1' and lastdataready = '0' then                                                         -- valid data is ready to be read
                    DataArray(DataCount) <= (unsigned(ID),unsigned(x_pos),unsigned(y_pos));   -- insert data into array
                    DataCount <= DataCount + 1;                                               -- keep track of how many data recieved
                else
                    DataArray(DataCount) <= ((others => '0'),(others => '0'),(others => '0')); -- no valid data, put in 0 for all values
                    DataCount <= DataCount;                                                    -- keep datacount the same when no valid data is available
                end if;
            end if;
            lastdataready <= dataready;
        end if;
end process;
end Behavioral;