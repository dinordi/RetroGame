----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.02.2024 22:52:19
-- Design Name: 
-- Module Name: dataProcessTb - Behavioral
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
 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
 
entity Interface_tb is
end Interface_tb;
architecture Behavioral of Interface_tb is
   component InterfaceController is
    Port ( Mosi : in STD_LOGIC;
           clk100 : in STD_LOGIC;
           clkSpi : in STD_LOGIC;
           frameDone : out std_logic;
           dataReady : out STD_LOGIC;
           xpos : out STD_LOGIC_VECTOR (9 downto 0);
           ypos : out STD_LOGIC_VECTOR (8 downto 0);
           ID : out STD_LOGIC_VECTOR (8 downto 0);
           vpos : in STD_LOGIC_VECTOR (9 downto 0));
end component;
    signal Mosi : std_logic;
    signal clk100 : std_logic := '1';
    signal clkSpi : std_logic;
    signal frameDone : std_logic;
    signal dataReady : STD_LOGIC := '0';
    signal xpos : STD_LOGIC_VECTOR (9 downto 0);
    signal ypos : STD_LOGIC_VECTOR (8 downto 0);
    signal ID : STD_LOGIC_VECTOR (8 downto 0);
    signal vpos : std_logic_vector(9 downto 0) := (others => '0');
    signal data1 : std_logic_vector(15 downto 0) := "0000000001011100";
    signal data2 : std_logic_vector(15 downto 0) := "0000000000100100";
    Signal Test_case: STD_LOGIC_VECTOR (7 downto 0):= (others =>'0');
	signal OK: boolean := true;  
	signal vcount : unsigned(9 downto 0) := (others => '0');
	
begin
    uut: InterfaceController PORT MAP(
                    Mosi => Mosi,
                    clk100 => clk100,
                    clkSpi => clkSpi,
                    dataready => dataready,
                    frameDone => frameDone,
                    xpos => xpos,
                    ypos => ypos,
                    ID => ID,
                    vpos => vpos);
PROCESS
  BEGIN
    WAIT FOR 5 NS;  -- Initial wait before the clock starts toggling
    LOOP
      WAIT FOR 16000 NS;  -- Half of the clock period
      vcount <= vcount + 1;
      vpos <= std_logic_vector(vcount);
      WAIT FOR 16000 NS;  
      if vcount = 521 then
      vpos <= (others => '0');
      end if;
    END LOOP;
  END PROCESS;
  
  PROCESS
  BEGIN
    WAIT FOR 5 NS;  -- Initial wait before the clock starts toggling
    LOOP
      WAIT FOR 2.5 NS;  -- Half of the clock period
      clk100 <= NOT clk100;
      WAIT FOR 2.5 NS;  -- Remaining half of the clock period
    END LOOP;
  END PROCESS;
   tb : process
   begin
for j in 400 downto 0 loop
if unsigned(vpos) < 33 or unsigned(vpos) > 513 then
    for i in 15 downto 0 loop
        clkspi <= '0';
        mosi <= data1(i);
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
        clkspi <= '1';
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
    end loop;
    for i in 15 downto 0 loop
        clkspi <= '0';
        mosi <= data1(i);
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
        clkspi <= '1';
         WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
    end loop;
    for i in 15 downto 0 loop
        clkspi <= '0';
        mosi <= data1(i);
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
        clkspi <= '1';
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
    end loop;
    for i in 15 downto 0 loop
        clkspi <= '0';
        mosi <= data2(i);
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
        clkspi <= '1';
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
    end loop;
    for i in 15 downto 0 loop
        clkspi <= '0';
        mosi <= data2(i);
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
        clkspi <= '1';
         WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
    end loop;
    for i in 15 downto 0 loop
        clkspi <= '0';
        mosi <= data2(i);
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
        clkspi <= '1';
        WAIT FOR 50 NS; -- Adjust the wait time based on your requirements
    end loop;
    end if;
   end loop;
end process;
end Behavioral;