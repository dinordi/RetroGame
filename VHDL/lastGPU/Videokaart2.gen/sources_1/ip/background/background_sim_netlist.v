// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr  3 13:15:13 2024
// Host        : Desktop-Joey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/github/RetroGame/VHDL/lastGPU/Videokaart2.gen/sources_1/ip/background/background_sim_netlist.v
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
