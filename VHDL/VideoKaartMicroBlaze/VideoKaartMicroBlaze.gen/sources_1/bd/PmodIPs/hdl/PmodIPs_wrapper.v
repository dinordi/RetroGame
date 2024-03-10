//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Mar 10 14:00:24 2024
//Host        : Desktop-Joey running 64-bit major release  (build 9200)
//Command     : generate_target PmodIPs_wrapper.bd
//Design      : PmodIPs_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PmodIPs_wrapper
   (MOSI,
    SPICLK_PORT,
    blue,
    frameDone,
    green,
    hsync,
    red,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd,
    vsync);
  input MOSI;
  input SPICLK_PORT;
  output [3:0]blue;
  output frameDone;
  output [3:0]green;
  output hsync;
  output [3:0]red;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;
  output vsync;

  wire MOSI;
  wire SPICLK_PORT;
  wire [3:0]blue;
  wire frameDone;
  wire [3:0]green;
  wire hsync;
  wire [3:0]red;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire vsync;

  PmodIPs PmodIPs_i
       (.MOSI(MOSI),
        .SPICLK_PORT(SPICLK_PORT),
        .blue(blue),
        .frameDone(frameDone),
        .green(green),
        .hsync(hsync),
        .red(red),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd),
        .vsync(vsync));
endmodule
