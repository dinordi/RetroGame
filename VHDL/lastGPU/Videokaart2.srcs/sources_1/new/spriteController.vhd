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
           ID : in STD_LOGIC_VECTOR (9 downto 0);
           x_pos : in STD_LOGIC_VECTOR (9 downto 0);
           y_pos : in STD_LOGIC_VECTOR (8 downto 0);
           hpos :  in std_logic_vector (9 downto 0);
           vpos :  in std_logic_vector (9 downto 0);
           Dataready : in std_logic;
           addrout : out STD_LOGIC_VECTOR (16 downto 0);
           ena : out STD_LOGIC_VECTOR (15 downto 0));
end spriteController;
architecture Behavioral of spriteController is
type spriteLocation is record
        ID : unsigned (9 downto 0);
        x_pos : unsigned (9 downto 0);
        y_pos : unsigned (8 downto 0);
    end record;
type Data is array (integer range <>) of spriteLocation;
type grootte is array (integer range<>) of unsigned (5 downto 0);
signal DataArray : Data(0 to 135);
signal DataCount : integer := 0;
signal sizes : grootte(0 to 3) := ("000111", "001111", "011111", "011111");
signal lastdataready : std_logic;
signal state : unsigned(1 downto 0) := "00";
signal Diff1sig : unsigned(9 downto 0);
signal Mult1sig : unsigned(21 downto 0);
signal mult2sig : unsigned(41 downto 0);
signal PrintIndex : integer := 151;
begin
process(clk)
variable LowestId : unsigned(9 downto 0) := (others => '1');
variable offset : integer := 2;
variable varHPos : unsigned(9 downto 0);
variable varVPos : unsigned(9 downto 0);
variable sprRange : unsigned(5 downto 0); 
variable varEna : STD_LOGIC_VECTOR (15 downto 0) := (others => '0') ;
variable Diff1 : unsigned(9 downto 0);
variable Mult1 : unsigned(21 downto 0);
variable Mult2 : unsigned(41 downto 0);
begin
    varHPos := unsigned(hPos) + offset;
    varVPos := unsigned(vPos); 
    mult2sig <= mult2;
    mult1sig <= mult1;
    diff1sig <= diff1;
if rising_edge(clk) then
    if varVPos = 510 and varhPos = 795 then
        datacount <= 0;
    end if;
        if(varVPos >= 31) and (varVPos < 511) then
            case state is
            when "00" =>
                PrintIndex <= 151;
                state <= "01";
            when "01" =>
            for i in 0 to 135 loop                                      
                sprRange := sizes(TO_INTEGER(DataArray(i).ID(8 downto 0)) / 100);     --range divided by 2, 15X15 means plus 7 and minus 7 from input co rdinate sent by mc                   
                if i < dataCount and
                    (DataArray(i).x_pos - sprRange <= varHpos) and --1111 1111
                    (DataArray(i).x_pos + sprRange >= varHpos) and
                    (DataArray(i).y_pos + 31 - sprRange <= varVpos) and
                    (DataArray(i).y_pos + 31 + sprRange >= varVpos) then                                                                                  
                    PrintIndex <= i;                                                        -- keep track which sprint has the highest priority (lowest ID)
                end if;
            end loop;
            state <= "10";
            when "10" =>
                state <= "11";
            when "11" =>
            if  PrintIndex = 151 then
                addrout <= (others => '0');
                ena <=  not x"0001";
            else
                sprRange := sizes(TO_INTEGER(DataArray(PrintIndex).ID(8 downto 0)) / 100);
                if DataArray(PrintIndex).ID(9) = '0' then
                    Diff1 := varHPos - (DataArray(PrintIndex).x_pos - sprRange);
                else
                    Diff1 := (DataArray(PrintIndex).x_pos + sprRange) - varHPos;
                end if;
                Mult1 := (varVPos - (DataArray(PrintIndex).Y_pos + 31 - sprRange)) * (sprRange * 2) +  (varVPos - (DataArray(PrintIndex).Y_pos + 31 - sprRange));
                Mult2 := (DataArray(PrintIndex).ID(8 downto 0) - 100 * (DataArray(PrintIndex).ID(8 downto 0) / 100)) * ((sprRange * 2 + 1) * (sprRange * 2 + 1));
                addrout <= std_logic_vector(resize(Diff1 + Mult1 + Mult2,17));
                varEna := (others => '0');
                varEna(TO_INTEGER(resize(DataArray(PrintIndex).ID(8 downto 0) / 100,16))) := '1'; -- klopt denk ik niet 0000 1000 1100 -- sizes(TO_INTEGER(shift_right((DataArray(i).ID & "11110000"),4))); 
                ena <= not varEna;
              end if;
              state <= "00";
             when others =>
                state <= "00";
             end case;
        else
            if Dataready = '1' and lastdataready = '0' and datacount < 135 then                                                         -- valid data is ready to be read
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