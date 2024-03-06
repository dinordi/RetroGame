// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar  5 16:25:02 2024
// Host        : Laptop-Ben-T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Progh/Videokaart2/Videokaart2.gen/sources_1/ip/background/background_sim_netlist.v
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
