--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Sun Mar 10 19:59:07 2024
--Host        : Laptop-Ben-T running 64-bit major release  (build 9200)
--Command     : generate_target PmodIPs_wrapper.bd
--Design      : PmodIPs_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PmodIPs_wrapper is
  port (
    ID : in STD_LOGIC_VECTOR ( 8 downto 0 );
    X : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    clk100 : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    dataready : in STD_LOGIC;
    ena : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hpos : in STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    vpos : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end PmodIPs_wrapper;

architecture STRUCTURE of PmodIPs_wrapper is
  component PmodIPs is
  port (
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    ena : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    ID : in STD_LOGIC_VECTOR ( 8 downto 0 );
    X : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dataready : in STD_LOGIC;
    hpos : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vpos : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk_out : out STD_LOGIC;
    clk100 : in STD_LOGIC
  );
  end component PmodIPs;
begin
PmodIPs_i: component PmodIPs
     port map (
      ID(8 downto 0) => ID(8 downto 0),
      X(9 downto 0) => X(9 downto 0),
      Y(8 downto 0) => Y(8 downto 0),
      addr_out(16 downto 0) => addr_out(16 downto 0),
      clk100 => clk100,
      clk_out => clk_out,
      dataready => dataready,
      ena(3 downto 0) => ena(3 downto 0),
      hpos(9 downto 0) => hpos(9 downto 0),
      reset => reset,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      vpos(9 downto 0) => vpos(9 downto 0)
    );
end STRUCTURE;
