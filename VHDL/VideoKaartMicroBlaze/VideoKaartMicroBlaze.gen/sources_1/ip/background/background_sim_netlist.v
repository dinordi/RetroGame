// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Mar 10 23:40:25 2024
// Host        : Desktop-Joey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Joey/Downloads/VideoKaartMicroBlaze_third_special_editon/VideoKaartMicroBlaze/VideoKaartMicroBlaze.gen/sources_1/ip/background/background_sim_netlist.v
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
