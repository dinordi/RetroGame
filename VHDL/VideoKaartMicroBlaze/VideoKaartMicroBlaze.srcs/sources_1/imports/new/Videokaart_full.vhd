----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2024 11:46:20
-- Design Name: 
-- Module Name: Videokaart_full - Behavioral
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

entity Videokaart_full is
    Port ( R : out STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC_VECTOR (3 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0);
           uarttx : out std_logic;
           uartrx : in std_logic;
           clk100,clkspi,mosi : in STD_LOGIC;
           hsync,vsync,framedone, datareadyout : out STD_LOGIC);
end Videokaart_full;

architecture Behavioral of Videokaart_full is

component threeFlipFlop is
Port (clk100 : in std_logic;
        D : in std_logic;
        Q : out std_logic); 
end component;

component InterfaceController is
    Port ( Mosi : in STD_LOGIC;
           clk100 : in STD_LOGIC;
           clkSpi : in STD_LOGIC;
           --Miso : out STD_LOGIC;
           frameDone : out std_logic;
           dataReady : out STD_LOGIC;
           xpos : out STD_LOGIC_VECTOR (9 downto 0);
           ypos : out STD_LOGIC_VECTOR (8 downto 0);
           ID : out STD_LOGIC_VECTOR (8 downto 0);
           --hpos : in STD_LOGIC_VECTOR (9 downto 0);
           vpos : in STD_LOGIC_VECTOR (9 downto 0));
end component;

component VGA is
    Port ( 	clk25 : in STD_LOGIC;
            red_in, green_in, blue_in : in  STD_LOGIC_vector(3 downto 0);
--            reset : in std_logic;
			red, green, blue : out  STD_LOGIC_vector(3 downto 0);
			addrHout : out STD_LOGIC_vector(9 downto 0);
			addrVout : out STD_LOGIC_vector(9 downto 0);
			hsync, vsync : out  STD_LOGIC);
end component;

component PmodIPs_wrapper is
    port (
    ID : in STD_LOGIC_VECTOR ( 8 downto 0 );
    X : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 8 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    dataready : in STD_LOGIC;
    ena : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hpos : in STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC;
    clk100 : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    vpos : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end component;

component clk_wiz_2
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1          : out    std_logic;
  -- Status and control signals
  clk_in1           : in     std_logic
 );
end component;

component background IS
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    rsta_busy : OUT STD_LOGIC
  );
END component;

component sprite63x63 IS
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    rsta_busy : OUT STD_LOGIC
  );
END component;

component sprite15x15_1 IS
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    rsta_busy : OUT STD_LOGIC
  );
END component;


component sprite31x31_2 IS
  PORT (
    clka : IN STD_LOGIC;
    rsta : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    rsta_busy : OUT STD_LOGIC
  );
END component;
signal ID,ypos: std_logic_vector(8 downto 0);
signal hcount,vcount,xpos : std_logic_vector(9 downto 0);
signal addrout : std_logic_vector(16 downto 0);
signal ena : std_logic_vector(3 downto 0);
signal douta1,douta2,douta3,douta4,douta5 : std_logic_vector(11 downto 0);
signal color : std_logic_vector(11 downto 0);
signal clk25sig,dataready : std_logic;
signal syncClk : std_logic;
signal syncData : std_logic;

begin
color <= douta1 or douta3 or douta4 or douta5; 
ff0 : ThreeFlipFlop port map (clk100 => clk100, D => clkspi, Q => syncClk);
ff1 : ThreeFlipFlop port map (clk100 => clk100, D => mosi, Q => syncData);
--z0 : clk_wiz_2 port map(clk_in1 => clk100, clk_out1 => clk25sig);
z1 : InterfaceController port map(mosi => syncData, clk100 => clk100, clkspi => syncClk, framedone => framedone,
                                  dataready => dataready, xpos => xpos, ypos => ypos, id => id, vpos => vcount);
z2 : PmodIPs_wrapper port map(ID => id, X => xpos, Y => ypos, hpos => hcount, vpos => vcount,
                               dataready => dataready, addr_out => addrout, ena => ena, clk100 => clk100, clk_out => clk25sig, reset => '0', usb_uart_txd => uarttx, usb_uart_rxd => uartrx);
z3: Sprite15x15_1 port map(clka => clk100, rsta => ena(0), addra => addrout(13 downto 0), douta => douta1);
--z4: Sprite31x31_1 port map(clka => clk100, rsta => ena(1), addra => addrout(16 downto 0), douta => douta2);
z5: Sprite31x31_2 port map(clka => clk100, rsta => ena(1), addra => addrout(14 downto 0), douta => douta3);
z6: Sprite63x63 port map(clka => clk100, rsta => ena(2), addra => addrout(15 downto 0), douta => douta4);
z7: background port map(clka => clk100, rsta => ena(3), addra => addrout(8 downto 0), douta => douta5);
z8 : vga port map(clk25 => clk25sig, red_in => color(11 downto 8), green_in => color(7 downto 4), blue_in => color(3 downto 0), 
                  red => r, blue => b, green => g, addrhout => hcount, addrvout => vcount, hsync => hsync, vsync => vsync);

datareadyout <= '1';

end Behavioral;
