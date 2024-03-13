// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar 12 23:02:52 2024
// Host        : Desktop-Joey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/progh/gpuBest/Videokaart2.gen/sources_1/ip/background/background_sim_netlist.v
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
