----------------------------------------------------------------------------------
-- Company:        Avans 
-- Engineer:       J.vd.Heuvel
-- 
-- Create Date:    14:13:20 04/11/2009 
-- Module Name:    VGA - Behavioral 
-- Target Devices: Xilinx Artix 7
-- Description: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGA is
    Port ( 	clk25 : in STD_LOGIC;
            red_in, green_in, blue_in : in  STD_LOGIC_vector(3 downto 0);
--            reset : in std_logic;
			red, green, blue : out  STD_LOGIC_vector(3 downto 0);
			addrHout : out STD_LOGIC_vector(9 downto 0);
			addrVout : out STD_LOGIC_vector(9 downto 0);
			hsync, vsync : out  STD_LOGIC);
end VGA;

architecture Behavioral of VGA is
  signal hcount: STD_LOGIC_VECTOR(9 downto 0);
  signal vcount: STD_LOGIC_VECTOR(9 downto 0);
begin
addrvout <= vcount;
addrhout <= hcount;
process (clk25) 
begin
--    if reset = '1' then -- reset
--        hcount <= (others => '0');
--        vcount <= (others => '0');
--        hsync <= '0';
--        vsync <= '0';
    if rising_edge(clk25) then -- elke opgaande flank een pixel schrijven, binnen het beeld
	   if (hcount >= 144) and (hcount < 784) and (vcount >= 31) and (vcount < 511) then
        red <= red_in;
        green <= green_in;
        blue <= blue_in;
      else -- buiten schern geen waardes schrijven
        red <= (others => '0');
        green <= (others => '0');
        blue <= (others => '0');
      end if;
	 
      if hcount < 97 then
        hsync <= '0';
      else
        hsync <= '1';
      end if;

      if vcount < 3 then
        vsync <= '0';
      else
        vsync <= '1';
      end if;
	 
      hcount <= hcount + 1;
	 
      if hcount = 800 then -- als horizontale lijn is geschreven naar volgende lijn en vooraan beginnen
        vcount <= vcount + 1;
        hcount <= (others => '0');
      end if;
	 
      if vcount = 521 then		 -- als volldedige beeld is geschreven weer terug naar 0   
        vcount <= (others => '0');
      end if;
	 end if;
end process;

end Behavioral;

