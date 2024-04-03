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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 
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
    component background IS
      PORT (
        clka : IN STD_LOGIC;
        rsta : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        rsta_busy : OUT STD_LOGIC
      );
    END component;
  signal hcount: STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
  signal vcount: STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
  signal backaddr : std_logic_vector(8 downto 0);
  signal backclr : STD_LOGIC_VECTOR(11 DOWNTO 0);
begin
addrvout <= vcount;
addrhout <= hcount;
process (clk25) 
begin
    if rising_edge(clk25) then -- elke opgaande flank een pixel schrijven, binnen het beeld
	   if (hcount >= 144) and (hcount < 784) and (vcount >= 31) and (vcount < 511) then
	       if(red_in = x"0" and green_in = x"f" and blue_in = x"f") then
	           red <= backclr(11 downto 8);
	           green <= backclr(7 downto 4);
	           blue <= backclr(3 downto 0);
	       else
                red <= red_in;
                green <= green_in;
                blue <= blue_in;
            end if;
      else -- buiten scherm geen waardes schrijven
        red <= (others => '0');
        green <= (others => '0');
        blue <= (others => '0');
      end if;
	  if (vcount >= 31) and (vcount < 511) then
	       backaddr <= std_logic_vector(resize(unsigned(vcount) - 31, 9));
	  else
	       backaddr <= (others => '0');
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
z0: background port map(clka => clk25, rsta => '0', addra => backaddr, douta => backclr);
end Behavioral;