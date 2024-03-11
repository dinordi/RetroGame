----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2024 17:10:35
-- Design Name: 
-- Module Name: InterfaceController - Behavioral
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

entity InterfaceController is
    Port ( Mosi : in STD_LOGIC;
           clk100 : in STD_LOGIC;
           clkSpi : in STD_LOGIC;
           
           frameDone : out std_logic;
           dataReady : out STD_LOGIC;
           xpos : out STD_LOGIC_VECTOR (9 downto 0);
           ypos : out STD_LOGIC_VECTOR (8 downto 0);
           ID : out STD_LOGIC_VECTOR (8 downto 0);
           
           vpos : in STD_LOGIC_VECTOR (9 downto 0));
end InterfaceController;

architecture Behavioral of InterfaceController is
signal data : std_logic_vector(15 downto 0) := (others => '1');
signal lastClk : std_logic;
signal counter : integer range 0 to 2 := 0;
begin
process(clk100)
begin 
if rising_edge(clk100) then
    if unsigned(vpos) < 33 or unsigned(vpos) > 513 then 
        framedone <= '1';
        if(data(15) = '0') then		       --check if startbit is 0 and the stopbit is 1
            case counter is
                when 0 =>
                    ID <= data(8 downto 0);    
                    counter <= counter + 1;      --put the data on the output
                      dataReady <= '0'; 
                when 1 =>
                    xpos <= data(9 downto 0);    --put the data on the output
                    counter <= counter + 1;
                      dataReady <= '0'; 
                when others =>
                    ypos <= data(8 downto 0);  -- Default case
                    counter <= 0;
                    dataReady <= '1';           --turn on the ready flag so the next component there is valid data now
            end case;
            data <= (others => '1');				          --change the data to all ones, reset data                 
       else
            if lastClk = '0' and clkspi = '1' then		    --detect falling edge of the keyboard clock
                data <= data(14 downto 0) & mosi;	   --clock in a databit
            end if;
            dataReady <= '0';				                   --turn off the ready flag
        end if;
        lastClk <= clkspi;					               --register the current clkspi value for falling edge detection
    else
        framedone <= '0';
        data <= (others => '1');
        dataready <= '1';
    end if;
end if;

end process;
end Behavioral;