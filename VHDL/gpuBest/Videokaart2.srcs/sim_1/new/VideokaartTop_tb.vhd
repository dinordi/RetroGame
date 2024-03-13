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
 
entity VideokaartTop_tb is
end VideokaartTop_tb;
architecture Behavioral of VideokaartTop_tb is
   component Videokaart_full is
    Port ( R : out STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0);
           clk100,clkspi,mosi : in STD_LOGIC;
           hsync,vsync,framedone : out STD_LOGIC);
end component;
    signal Mosi : std_logic;
    signal clk100 : std_logic := '1';
    signal clkSpi : std_logic;
    signal data1 : std_logic_vector(15 downto 0) := "0000000001011100";
     signal data2 : std_logic_vector(15 downto 0) := "0000000000001100";
    signal framedone : std_logic;
    
begin
    uut: Videokaart_full PORT MAP(
                    Mosi => Mosi,
                    clk100 => clk100,
                    framedone => framedone,
                    clkSpi => clkSpi);
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
for j in 0 to 50 loop
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
    wait for 17 ms;
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
wait for 17 ms;
end loop;
end process;
end Behavioral;