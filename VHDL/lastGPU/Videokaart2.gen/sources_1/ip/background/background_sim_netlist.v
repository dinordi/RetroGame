// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Mar 30 14:23:18 2024
// Host        : Laptop-Ben-T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/bentu/Downloads/Videokaart2.cache/Videokaart2.gen/sources_1/ip/background/background_sim_netlist.v
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
