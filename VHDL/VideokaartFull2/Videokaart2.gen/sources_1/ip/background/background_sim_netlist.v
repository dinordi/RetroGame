// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 11 14:12:34 2024
// Host        : Desktop-Joey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/github/RetroGame/VHDL/VideokaartFull2/Videokaart2.gen/sources_1/ip/background/background_sim_netlist.v
// Design      : background
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "background,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module background
   (clka,
    rsta,
    addra,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  output rsta_busy;

  wire [8:0]addra;
  wire clka;
  wire [11:0]douta;
  wire rsta;
  wire rsta_busy;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.5432 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "background.mem" *) 
  (* C_INIT_FILE_NAME = "background.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "480" *) 
  (* C_READ_DEPTH_B = "480" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "SR" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "480" *) 
  (* C_WRITE_DEPTH_B = "480" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  background_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22944)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
