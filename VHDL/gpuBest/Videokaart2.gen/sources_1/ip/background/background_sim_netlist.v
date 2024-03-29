// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 29 11:37:06 2024
// Host        : Laptop-Ben-T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Retrogame/RetroGame/VHDL/gpuBest/Videokaart2.gen/sources_1/ip/background/background_sim_netlist.v
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
y34ECM/8ZQaMJPtl1zuF+p+7qp4gVjb1vhBwhFelVRQS4sCOZ2IXJlti6G0+Rqmy73QzFJhS1/4q
MlDy/CTlpj7GI75hHliLtQZE1fwaxUG+PiXSELe/Ce73bKfzu5nMf9B3TbUmpjmqwW/kd1lDfLEK
6T1OQKu1KhnHtMLwtJt4k/Ln9tVvxp1ZYVP6hwZpPT2iKY/S1t3TgEdtIdc5iyztNgDH3tdJbzjq
6OZERthNc0dNIgTmXZ3juIEKV4fsy8zCRDrnJp/bPZnz9a22wiyxAK3RxTAQk10LWahO/OohFstH
doQYwR/JKHk20w9+nHWz5c+SbK1ick39o6A4RNpJ6/Ppsgh0yf/NitrcnTbR3ZAbsMY3PVCefcqH
bWnsToSv6e4qM0QU7Fd21uaD3Y6DJVBvtfbfJrXSON+HTBnrg0rS2/Zpa7nGIMt3+nUhYhG33Fhd
SVYx6FXTIzcVHTqXC3euaB7Yl3Vf+j5S7g+y2HxYXzUbPgIlMqp5Sp9aIJblOEELiXMoXl1zkrjK
G6wYEixLFnRFVJQvOyVfKn4moLg1ZFVG/zNG12Mfcwjdk34kj79Ph4PwwEbMMoVK2hQfwBtKbt7k
SnCvYmb4ci80paM+YZxVarGcmL0a/65ePUs8US9JsJXBVqe9hcXEaJwGaP9dPGG2fTsWpYRvXA5X
Bf2+V3Ohbm5j98mACyvY+3+4RVQTxlUDkOoSilfFoDYf/RutYvNfKceIwT/OcX7f4Kd63p2/F2Yr
uUP/65CzolBN4rn+F2aJ1hMoV8h/DcjfE2o9UHFHbY/jE+zuib2uwiiSFwbLOuYVimRGvKBM0uMX
dAtNUia8dnP1etmaXeHictS40aFW+6m+kZrpizML6S7iPCBdFCev74KURiIgVKjWrgCwLSf1Eoc8
kbhFXSaJstb3Fmk56XL4qzHCDECLlEqCzUqZn0mvZko0G7lsSDQFTRX2lyRPLPdacO01cAUejL3F
YnicPxFZGF4ZXyljHPFq8hYK2jSvqoBC1P7+aMVvvGZWz6iRBGM1XvjetMqFaUHAFNIteJirZrz+
huN0f+0ad4BWv8bqFcNXH+feFd6b7RTKKXXSHsoO2C9874tF4Dtunu9rRkZywjquLzFgH/A90tJM
bqi7IOc+s0mJYHQQFBcjMhplVeRdsDGSeMWrbCMdxiicvYXMhpxhnWzrUxFFD4XToh0SEEwIGjd5
brHFSJDKxozuCvIPv9JLWU/axBCF3SoOz8SEphczwcxEX6fWpMkTCKKRtoH/eJwb9gbcop50nMHb
DE92BvDHhZzm856y0P/goKOpQiyX8eFTQoJHxpNSvco8jvf9aUK7J+M+6heekyJr+G2s20w2Q2mP
CjiXxO9tkdffIa3eR8VfbIP1iWNdz7qMSCEsVdsa0R7bk2XHNFUtl+gbNSOac7MKyUDf1K8vNMvK
EKchwVPbamqcnkH9VGlbzsTzDmFOaTivqIZINhi2NuNc1IzjKv1xasBr+dfwKtUmjkxvltG3DHq3
o0AVQAWClC3N7XaBcg3OJT7KvlKq6w3fZYtmHA5/J/BhPof3FZJkxGw1CjhFVhNibN8opxaczffh
LQdHlnMKGNWu2VDad4EMrpRsprCBiawV+1Me31k12GsWp37ONhVCVByKdhT3eNhmp15f5lZY9a7p
XikMdfOMSZ+LP6Uo06pdMQwpprAUXpnjqTVfWCAUxSxByDY5NB1DhelE3f/mjnPOStZ2Sy7gh5/J
UgW9LLhg+33E9DpGUntASeLR7hEIjzz7cHWYLgVpQagOrjwJieMvh2TBiMCyi/a++XUo4FCjL8W7
/mol2sR7eEN9AbZGtSvhYzjhVh2CiuqKIjhXteON3h1aBzENK6Cc9hnKPP++1S62yFur45rHD2XQ
nfNtvnEIEIxxncAC44SC2p41ISc1pz/fXV31FbeY0qckNGGpLuGE3AqggSz/ETkvxv3TZxQ/wahj
JbuH4XxIPKXB4I6TLOo8bBAQyUpvP2JUYPohRQSIBzPL0FSRTernB9AshW1ZBz2Oyq4e+ReD/OIc
RNe0z4KgGUWhTDi0gefDRRZTVgfFbWzP5S1YuaJ5BENeNY3hAI6eAn6Lszyvjh0UrK9qaFSHCEEL
PO69PT3JDRiU1dKMChN7oHOwol7iNsCv2S/erzqvwEKUtRJNrnNLrzWqDwu1GzdZh5XE6FBZlNIo
QF+D5aOlLM1hwghYA1SW6u3VTVoFK2srRepErKAIsoeE8Q5GtdfirDswzpmMkfCJNSiRGis1tD/z
RGJjWFKeidxWKkBeG2Telk4SmJYNFgqMxC8qOyturu0bVxMTWAz7xJewBNmZ81KAJcaz4IMTlFCX
9o2BdOJbmVri8NLnq5ZdstXy5L3FwiXUXFIb7ijvMJ3uDsrDnDhqPMJj4CJag8LjLLg45xapl+Qq
EpK1o4IS0pYtn5wzcg0+OeGrL8eK4IC/Z6PUK7h72Gl+uPgQ9VM9o1rlzN2DRaDMZ17Y37iiyZjj
1+ouVy1zHXp67239sRQ6EPu7/yDZu05Rne31yryGIFLbijdPeOlkSr+HZNWoafe5ZY9aKYTEt9Fy
vTaElqTd89Win69fta75h01o8Hc4+cFhkm/mHy+1nIj/UPp/AHNx2baBiyhgG9Oc1x09nnnW9vPB
XyaNePnv4ASFUsKWUdtQOTIK3wS9LqMLjwDZSM3k6x0Ri1u2uXVmZuCDPr6RsKQ1V+HZPIfne/y6
65GV17ggp7jcW/c8TuChAwVWb9BgHJ0i8PIfAK/lp6YnrTwhXPr4V0D/esfKuKDoRWBwMfc8BsAu
fshq/5RUETPKO72+fX/G1xoGGIZ71k7P+UrMbVh/tP/jweHxkRbWYS+uG+w2zARMROD+wTgmfLBh
AqGAQA9F3IWAIVCQ1PECOUOriRIaLrKS1ru/CjbpfmTL4V1aTi4i9dHa/9KU7Ag3Ok/ZNTqcqwtq
3gCEXSwlEQrT5wqW6zS8UtwxGyuqxSz8kvQah0H45K54wahqm20lan6hess2X/NgB+pa3HmCj5dw
zpvl9lgzpKTcdSSnRGenHZeBy9urSBZtfUlhl+VYqMLFmJ9N8tRrlC9l9EsyMw8wo0XF3B1JKh/J
8JSaH4PKAZcPkVGkq/IsYxMz/+FbKvKH/x9Ab0rJ1LomSCY1Xjsj4YtK1DumjAFYzFBmw4YO40p0
7DZjUOUuxO195Q15R1o9a1CV1Dz1nUWM/Xv0kCF25bcQ9acW55sPBdZgGr0quWbCxX8XCuran9MZ
Y92+gdJnEa991w0QIsJ9F1lwZcUH90zQh5X6Xc1hlqAonYvAi+KkuL1Gvm7LRJ4EVXhXonnXKzNf
QXKKCX5LY9bf8jMX9w5dm6eXbX1gIuzNPPUx5eIAuI6vHDVrxWt05XEpBYg8l3CLW21ubGyiqFjA
qOvPcthrmDwDe2LwaSmrDXTlMtnFRghiLvQtJo+ome1jK+4DIO9sWPnDFxWD0ztl8hBzgqlYGGvS
scFy1BAPenJwdc6tf7y890W1uuZ79vewZAGdDCqu87zuQZFfuoU/2ZSXhiPSUiU8vC0+gQ+r5CVe
B7anoAc3p2TaxQhI3Ib60eVmDh6VjfTx4YuCATVRFx3dtb+tVRwZHzXmSJQBsHsexw8aXKyILQ4L
/aGY1mgY8n1N8TBnZ04nTULJ0W8HN8MN9d2ozsao8Rg6v1GVwf8t6P8p0BcaIWxUhHwjsKHlnb/L
CHggZptrwTnBPaC61sigStK1D8ONv/Cq8tWJ7u2h/Neee8KKySo1OXd5gJxQ+m76x4xwSMbbykMf
OHrz5zDrZGBQiHAAsfZ/1Bka+cM/gXsPgyqJXKAKwuK+BKndVlZ7wa7YBMWWF6mmuvpBNsawV3qW
GZpX1Aoi7Ud+vy6Sd0fTOtlwkae+bJ8xLIa7W3bpLqZexmjfDQVX+5Nh8Kofc9SXjn/gOqagoKLq
FEMz89zhOZJTGS8yyEJ6ZGq8SfhUVAW1FwMiAbrGCGA0htjDNPxTwR/O3Q0EsDZo/tZ5HP9eG4BN
sm4ZPBN5CmI3C7vSsokTsKuLwBhN63qOl6A++h1Hk/0k7o58TlsMJ2/T3VmyrYaII6LCghLParek
rXf6e5E5XEf8I4tznyLtOHIK7vcBfzZSO0Oe7xJp09ntFas4h8FU7cOCHgxUp5AWQQhQf0g0IrT9
gnNKh/aH5fq6wQhiVcGUBaVNu1xybrw0/oPqkQMaMTM0Ik7+jDViQ4W83a6W7xb8hkgGxHx953fe
hlxnHiBYsin4k7rUpZFLTFxPbH9ix3t/HGIk8q/JgoWiDj3GKbpltduJZbdGWeOs6NonOKJK3NYw
i8SpBIt/GkKRWMN+d0ZktHJTa2lWDTDVGgtCocWLADRSCxN4yN/egx4jicCUo2oYl3BVFQ7gkRW3
Qg/r0o6xfyOtzX7lE/bPfmHxJhvplbF89t3r7V2+k507CQCGrVhhMSmXIVgTQGMqLmgHZ08o6tR6
6bWLUKQEcPl061ja6XrxYWY7ZjLe4Wr0TvNPKXOmPYClCBNtFyuKOihNZyUquNECOZJ/2r8rwl51
mvRrwu/fUkv2UNo5Pq+r71jspA3LImR6/lrPQgublB0uXc4N515rt1whds7YQviRpXxy4g2YIt7a
6Oi9ybSppT+g08TJikddUvlQ0+rXQ/mP44cULTNbvzBhbTs6wpJRrIvPmvdgWShzKIoDStbcWz8A
V0AMfDeX3tlbiGqcOE5Nv3flESFXkykUoDSv9D5rdUMoO42HQxWBoo+TlF+hGeet5dfQYqF3nRsD
NY44zYmUPTVI/HNlMbokwuv+/9BAUor4tz3oTXn6AkI9CWlgo16Id/bB3CiW1vgDu+g7fWzyAmod
FP97Wct+F6scq4urYFRKnZLcf7+Y74FAOD2haGLxKDDOm15H7RJBzlAzj1j/lG/PXpX/n22kxAxU
bfXqA+Dr1dse47NyRkKbcHTL0ywwtu/GY3S/xv0R5DQ/LIMG0zF4v8izmVJiWKfX/XDK37MkOSov
IF2XzfhF2YRLAgZn4RkClafyTICJLP8W8zoBUBv4QJcIdPUVkAjSfdq8Ya99vWVcXhk+4oRI/fhA
FP/J0gmfd8HPuo+PiZ5+W0m2RJzMFKfnp+f9+WJu2o8c5MdGp1zH3Rqj4lT9Ci45ZWFqRATh0vQ0
oLUxYpeEPRcpXXglmvxo5Bo3FcpnjNPsYc5Zj6LoEXZb20z5vUnIEhGWQuoErqr41ganlLT7QU0v
JP/pFe5jGUnoV3balcJCDyANgHmrOFKiZgQArGEHgdNXBDZ6qVgERDwqeCW4amFF4zZc8iSnwnBj
rSTwvJW7pykaO1HuPl+WcPE8dHv5EWxlHshPVBHSPMmLFo4NxRk6+VlIcpdPFk0HkT4nUqOeBUJF
xKH8zSN9cIb4rs76qRKMd/hm66WrHIG20Dd9dpximjlj4dZPgtWIjiyhIeQ3Bm0SkCIYmCutshZ3
+xnlLoAp84yVw45lYYZ8IqkVt0utz6JniDifAQEH7ANt4yk7nEqE4Da887P9pthAWrlT+EOQW8Rc
AxeNgRfMHAG/PhIlmg7XOVOK5gnnUKE1gp20P08yUgM8xQF1jCkl73fQvr7ojSxfW6zSLz+23xig
2mQk2Fp8yvwL/SKHjh9omCl4wOW1W9mIDWqkLURgfZSh8Oqhg48F34rF78D8KxdzjaHP8g66Ah6a
wfdO3zbSgtEiCR+W6kFGLLTPjBz1xuJEuuqHtDyEoe3400/BuEBNoqU2J5cgYsEDYTPPPYfYFUe3
LP+KOK1SqhJL0xt7bIAM/Gzv6HfAOGWsHPSYeqGmCEfgrH50RcBz7bloMWnpUengDI30htk6Wo47
k0yRhVeYw69LsQlj7/j6p+p3izhNEznQsSndK7cx4hayXoXyrcNFCGxwPQCgMkDz/yEgsF+Xrvwq
Dg5ef+9WyW+/qk+gQX6Zs09mpGRjfYHN5GHtwfDn8SYJtc6xob4cqYrHf3aTdetmwd3RY+Hil1P4
8ZNRr1Z6ieuCcT0uBdwF26z6ZjtCt0MOVuEO/l5ZpuoiqD0JH30QSMVL8737FnrFmGI2FPvMcLXq
ZvhNigUiMc3wHVqjuIimbte7zJp7/XAFfC4ADKSzVFqw5rxlHE44CI2rhQDGXvIbNNUIh49ZhqBX
7jjzAI4dSwO/qQK9J1o8dsLp8194FvQvQGqy9JYDvz73ttxXwWV3NskSkljZoVEmr9A3tQ14+8Iu
0g7bdeirUkMgPAjq+2TV79/iTxqqjz86q6CetzJyjHsNZNH5bDgKuZBlTG2p+Dyzq2PDDG1SSmGN
CTrdD07zVERK8LKhxHo2+c8VL8H9jEVRwieMnluaD+6Oe+wofujyFTYhARauwmLKRlBYoK5oOgEi
Ye4gWfa5OlITHgUbxlrnDEAMYMrbXWAONL4bhDLaijM4+InJHMc+758rI7OAoOW6l1wpMGLzashf
lekKbJ/D8h/BebilSF5gi1MFe9NehjLb7T6LyUc05qZ19JTs8/54XR8bh55Q6XIWA5K1WQQbKIhA
1cgiKex2EqkOZ1XD0pAJfWdMXvupHIlpP4b96gcXFyiVeynkLTzRDHIQMK4qa9MHas7zqmDuyxnn
zERQYdylSVC7GyYgEf1emrufkvUcwulyYOYyD3F9OvPbhwYE7YsGAv7RNWkkWVpUy6fRMn76UtgD
NQApQ+ptWKSbQFEwG/iD1hvM3Ic4bRD2kIH6jzUxRXzKE+qSFazUpRiL+Mk1GKmYNL9RN+fXzx4i
GuFFDvE06Z6B4AgT2S3OLQDkUq7ZmJyUhFaJh2jmrW8k0uQBlTA9tOMpU2sPGSEMAzj9xrepQ8M1
QCmATTXj3lROH4KUbqcGRnVGMSxgQxMBWFlJWC6ZbdEVJOEkoiQT8nksShJLWxoGAH6AGLplK0Mq
YxHxEZe/KQM4HcmI+u7jnbf3UU1uvk3gbA8zXBl/IHAFS1t/gRv9htrg8WDYe6SveU2Ag/qwyxiO
jbrY9fzeiGHvDxsOff2vGzxkO6DAMmmHF5WHTsD0dNQUb5uqO2ANGfCV84xRlIzK81n7Se5KJupm
arJqW2uBOYyIH35X/bJhkBcbwG2V6VTKXvXya/KpmwVAWNhzFDwqQvVLnkgRxgdC6D9q6x3Jjpso
A2C6H3qoswZ2h6asXHV9NPPUzmDEEaW0G16cxKPfDWh4mqq2CG6qI1vHysV4NcKgCB3deN42cj0M
OJHf85SEqWXbF6GReUM3D1Be/siikSKdtooFVp/bVZfv/m7ISTUcqJW7uYZ+/C+4dWqkZMtL4PkY
TFVEbfsFSGdVIMfMDN8HIaSswYoBuFXC3H/ZPKV0iZ4kVIEEh5s3w5ZYd8IAWtlaUrSH5EfCOil7
i2rxbvWl9KQJcRBUXtbbdrh5xxKoh2jCyu9/hkp9d0tgJXZIbefiO2YJU1HLA5X97bp4Rk6Cl2Fc
ZA+mx/nmKYE3KrLzxd2YKxGheNfo1IxRxYieag3tdEg/AkLyyZ0ElV6xFRgYVuDWcGmA+aUgh2Ys
clryO3uiHVMfGNLNiHgc9LeJ7KCicLasZBMl39T2a8WOnnfBN5K+Mx+vRppBtVuUT4b6W72J6DLI
mFQrmem/J2s7Lp7XIg7ie+zVdkuvCUa/j7btk9x1fGlEqkiNO+whzCScuGTxL6gEc5dOTO7/u9IM
j9N1MfCXT7EDveQHoMMOHqWsns+KBNRIEYA325afuHhpJXtDaE9c6Mm9oPagvw4i60vk+BUdfaez
fdlUIV0CLOkTmaPbf2iib3na99y6fBwwRCuWSlrHjXluTAXl6//Tbx0g7aDwBuDalCmU1LrVWNWz
4GXeKzHuPJd3KzekeCJIzuqgCeGO4Dgj7xvX9s+oiGOYf/2pmXe9NI//xLxR2pYEtHAiNVh6ya2X
6X59Vk3me403UPeDj/GJn/TK5mwwYY8L7y9JevZioJajEmjOGL1/K3xbwccwn9TMwtVz9fEPIczM
PUE5FqzG8hLv9CI75TkAfLb9noFoPa6L8XrP0v2wV3ENcQ9Tqv9apchaNQUSfiW7BmwmpW/wAT/m
DwS1YN6OXp7BjwdCu7cWhRlxHJrl3OewfRfGJ2zSIldMhiKATxdORx8WXjtGHEBQmaO06D8S1/er
0K8x1QHC75iswqcFRsxhG0t2qDepZ1J/jbt3j6Ge+I4yHMeevU+tSyF6D3tTJO6z42D6PfoRN5Qu
ybVDEysMnXU48EHqCF/s05VrTD5+h3jmcciephX8/4odBGQw3wp6OmjPLkqi4saUlbmsWSebq6fs
Ia0y+bX0Raejghqrh0onjqPyJznqlrGVHTWLOCDYe8KVXdvL8ASzZJR2gqnf6pTtjc7YBjbIHUNd
uW1qUZ6qds2tDwJGUwxzeg1IyMKP3EDy2mu83wFqEP0uFZQ1gpdAiYjm2JqBwYOF9O6vGEz9Cpxk
nyAV5GOt2U1fZYxhuq7D1QVzm+/qIOm7ImEmfwubS2Hv7o3DmjjYxU5RsM5S9FgsLYpZY997h8FU
iShwbuVq6sN4IR4X40cm9F6Q2zZCBBcyqtnUrF/FW5EQMnG5O29ccMCj+SMJBVkdeE/tDvvReEOr
s9+xfaq5HnM1tj/h1SUr21ZUg6z0/ZEiUEzAWfNwoETy7i8OGoQx5n6S7IaRuYpngZZJ7EqFbZFb
jZlbN2DkHKwMPzWBQvlFs2Q9YpnWlp7tUnTXL9vfpup4HZGQp5sAQjuslaj8/Oxs0r0qvV70Ukti
Ioy/mqRpaeAXLLeOsFHzl5tZhwi0YPQUKXsX/XXQqRU1csa9k3d9xYDlNKPovlqpjgvpxsQGgWAZ
MmBe9IDBOqLW5b+qeejrMDtxi3j+VAy7IfDS50Rn1jZgQyR/+2jJtw4knhH1CJSOXKvu544+2BKQ
rruOK3Yum1qBrOTopIrk/ykQ/VfWf9W/xatWSZNg5PH1bLNZ+HOMH03dsPeprh5VsJYY0JOJPuTS
qd6lBTjPcUTf09u57dxLtb7SSxN90BJ7qLQuLC+ZE8jBQKIV/xd4ILD3AXHqEZg1/aqLved8z3hp
vtQ5QRvrUvspk822isSzjq2H2mZmfHifbpDY8aCA3eTRIuAyRyVoLUIBz5zeDhZXuG5QYFpHuPps
irsnskWCrSvtzLCGhQ5qYI3Bst6mOisht8Fuj7kUeeJ/G6APcWKXy3/kWzp+92FdDGp/jpJNcfuJ
t4lqOj87ViRlf+rNdlqr3LcO6zV/CMzJp9oflvWBYqWiiihbdvifnqFHqRf376x8ewEqEhmOfKWd
4FbA8qROWm70G6l0Sjnvhw0blMwreXYPVJ5uWRtSHUzq+u1CA5YEpJlykEz2zYqP4CJTYWjGn+Tr
98e5FQd+6V4spHHiaIW6FbRv/R83+aoNh7QFgD4v9j64wXjJhIe0k4R8LOwd4aIOVhxWGAjww0lY
IO2XKeFCbr69HvGCm2oaULO9h+MRwKa3aukQzxkxDfz2M2hLV/yQc5MF0oVfDiw8OFPbl+znFx7I
ipOF3TZyg1yQZ/nqlrNxYXUqYZVC5ae7TVO3CLzMBrnnaatGNkWMsazLYrch/I3z0wzsm7qQklED
BzaKKi/KC1FvRLLRAraXc8cJZLTEikb7nlJCE2PVp8JYOXOacxUehD9eKXvC/Tmp55rU3OtMQtxd
qa1886P0XvrzRoSvMdLpxM3jGK+WjJgjfcBue1HBsI3U8rhHNBU8os3FUiDAQHF4OG7BOnA2+h0r
y9KsQeJU/pMf1+1k+XF7ef7ayFwgXuGbduqXywpZZnReeBPSk/9zsDm4+90keFyPdiVpTzj+CTqs
6nJMjcX1y8ZoaXDFN65N9ihXkbtZeHhDMXRcMMJwuAiQebSCZeq3zivzkc0E/JB3mv+SaElX/BgS
VV4/9dgQ6b8uc3cVh228VqKXt8lNmqtnDkN+I8pAYGPJRWIFczgV5nPqsoKZwgzKVdymGr+W/hFL
TnL5nyeOq+DbQuj6U/tErHuDD3nMrw3mzZAb/n6YbuIOcgbKAKXVr6NM31BDyd7BYQaEKHLcvfdL
J22IbdWTeim/LYgktRBK72oKfU9HOMRLfmr665q7jMT4TW8NNYFOuSmh5+49vVGcyZkLbh7E024y
jQDjf/1aYzp7h0ZwbeN7C70Febj+4XlZa/QhtJwjTLtlTeQhsd6YsRQn+8k5ZWJtNmAgVT38QzOk
GI6Y1Fr7C5IouVnUoaMPe2SDXbzFiNTTF6cN/6WQD93OnB5Z7QhpcVTR7OgoGiNtsvkQZNcfnb/H
edDklzp02e1908L/SrVtsNZ8WwAcV2xAwS7Yktok0e/umjSvmyRGMrXkQ5eGmxmylEbNt/K7/TTA
+hbP0Bl0GRNO7+zn30/t1vXiPGr9t8QU4adRuV7qeSfCDKSftqdTRz8gdq378l1y56J/suJ4ve1R
oeCx3sUYpMMCjJecNyFx3Ax9CxkCsNqlLBeaz3Vp2GWrxR9XJ2SNHuwJsqzXwxNiAFJhdUkfAZSB
kU8OI7IOI2iNCXyHopTGltIJb1BWEWkO2n+tlLYTnOdMzmS4DQukeyfd6pVArgS1Y8eXsci2uDG7
+ro9biUBOKMWZSpv8zswAWZp4m1v3j8BKrwhnGrtCfjLLyjbYSslDx0KJm9oxgBJ5HNI2cT6idkj
x+9nCU/vSF57E7SZtAr6F12M5znJlMGab46SQvhBxN525LxhdtcL/1gmJh/MX9oRrh0Yv1atJ7Tb
gFsXMF5ut8dZh6u2SJSNTFjARi3iTmSKYtTZ9jQURvBZfa7nAmAdfPRZ2oSOdMQC4snm6u54S655
IDxOpzkWNT7vNcXwWNArUtCRy9jow5d1jobZIlhlnYQKoV65lrWIuL5vWguk6OfPdXC8R1OgWho4
uso3Dswbf43kuiAJTV1Pi5UjEuxrE/o8TVrvxmfwDffRwSeWJ8c37PHYA+suSD/gaSiVgx1yuC2H
dtJROnafSJkGVu2x8y++4JHL0qsCPs2m6gMH0a1c0VEzNJbET3EKyAf+JiugsLsfx7zh6HEkAjcq
96xf8u1+edpMYbWgMM6dFyo2IE+VQ/c+7jKKnUpYhnsMNYcPeKL8C0l+rGvLlc1wayZkEXIPOTmD
GkQsKozL2/n+9tE9xooy16CaImnsQV7n6xf8ViStZuC3IzRWbifEOPQGCptB2bzqs7HniBu7IuWM
pJMCzHW+sEi7XPRr0W6xyxMq7vofE13tVE9XuhTDPawxmzVfJlsJdZC4JZWSYiGA01qzj1OP3pmm
hMfN+5aOcqBaQzGi1B1y6uiUhwHiDDl05cZ2AM2/VtO0vrb9XeLLjPCw25n/erM2ydFzbv15JJoG
P96C35zlqP1Ihuv695j8mTevk/3IPIXGXO+Hwwe9NJMq1ZnWlkpe1Eozxh9tKCRT18hC2cRfLSJx
CV8DxlvOjL77dl2Xv6sfSHW2jwnRr7EJuQkP+efloI+iS1nF0Nwb3giEF+YFjKVzoH3rYDDF0Fs6
15fvlmgd2DcReJuvxvKGsv+NL8tJ0Dk0HJZZ05gGkzZJDiTunMSVSPbeXrx8C70Yu/PpH1JtLdhr
Rb5JbGJsb0Dhb9Ig1lGdkkshU62569sIsAVK9tho8C/us8CYsyqQeK6D/9bEE6K15YdFKaDAmzDV
paCCAFadSYzl3/PJODXDZyyvKr6yRh+EQEW12jsLsxUmkL4D43v5rJIfBNp8SYcfMYc26vP1f+Nj
v/30gcg/MmP1RolgRJIZA8V6UNEc/tdn08LN4gWEe/Djs2cGMW3rBuCCF/FsVy5/hVIv4DWhb1If
bx2rjvY+dW36eFckrt+Ub0KwjnRTNuQTKEWOdWrbWNd7+BqvQEBOoav6znfq2hMe3MLbfXi5SRWB
HblyBwyTP2NIWUMxnyyAJZCxmVtHc+j4SwkQZPw5bR2FPjb1SmGvkhCWj9A/iszgP4u90iSRPEic
xJn2BvXR7kAJHs0gznucrHrm2MDcA/PWXEbwLB66OHYyiEdCQijf6aVLxgo2LO3YbqXgj3wEPGb8
3nvJNo7LIypvZS46/wgqvmW0IHQRaUpEh6zaCeadyWErjiP5hMLdi3YouSGFpAEroCf9gN5jSbu6
cJtYf0hipMOGCerVxITN5eZONBkmFaEjiGWe4Fx9yPQqLpbbd/PntdQZszZ69yiop2S3Wc0xiGWH
gN4dP7kjxlbEXDgcFcmRwhX8kuIsBUy2WvGiMTkZg3U6qZfGPqeRnmk96Z4NCLoLFW/vu2zSMl6T
10n5BmxqcLg4/DfC7ViZZt+TrgiidwMiJsjxokP5d+Ini5Su0VTazVHWN+sbj9xP/MkPIC98NSX/
9F3y3oSxZGvDRvrcbHONFZkyjd1Sf57rKr3fpUxTjseCuUGi+DHelz2KIdCFz0VoU6XW/TONOTdB
TwXtETs1SuexAyeXV78tR5LKBEesNOZtmkOGRcgQthp6vq7MPc28ywF4pkD/w6uJT2vzWjuXVhTo
Zk3bq6/o92y1YBYKr9Dsy40jbcBhLcwZDzrjY6AbSRBoTa81mInlLJxK70F+AOiqMnavC2DE679z
hgr/mdVJtTbP1/MuhX7z/Pd2qZHZAnMj+SBN2porT/hEonHLa+iz5F0y1W3QeDA5qd4doMtRP4rs
jUlqymZepYq8uuhq++bwoTmsRYCAm4eBRR12wL1cedyaDf/yrJ/mI73AK0TgKwhxs7htvTAuxHt+
WSncTN5l/EPRIMLx/9vSLVtPtFnh/FInsyl5E5Qpi9de84SLMCh0SrraETx8Vqpd+W/buG/J5yYu
m8RdlopxBgIMuvY5GLQPw03GEZMDVrREtIctfOnfLlOP8EzP77zGwPCUIjV+NYVIOhCJyTL83VWx
HlvHfT9Mpq8uEPADXluq3Nwte7JHIzEasV2E+RfljcAOOpG+G25G/O6q2Kb/K8jdoJoIzGVOv8OU
4fGM9ZuFk+5FNvwBvP5z2ddLvIH8KAN3dUSpH9AFmEdQBMEK7zL9553atv5h0EdH72DXFvZMiAWN
eeTa9u4pDbvA2j2zziqjijYhsLJn+H5KpUSrWCMDg7NHjnjANM2VgeElyQTFUDC9LagaKJuoIsuk
/dUXwHgoR7p0pOOlCspyh+yMWqXe4/fZPiaUzfVWF+IMzJgq35YP5qY56emYyCYvKsvMwWQ4ZuWe
YkdwSlb3XmRH9kbmEeA1a4GbiLOQcKUhEcjrJbW/GDarwUQ/BurcEoya9QxYHZhDOVCnkArdoMad
/mvL0HPErqmw6kTmoXvaCjerYAEkLU4l7hfLITQLMl9udCd2g4b3rplLDDZ4jYPC+5JYRzYaQAZF
3ouVIKuPTK74C08iezGT9i/5DzHNV+7tqDDXNoJiXg48DanlSxdQ6HiFveemYaPtwQ9AWRDOTmhr
ZwjnRGX3mKLps2lijv2TAaLmsTmtcO/zmRanz4H/6512y7F2fvL8U/FrT/9eRyAk84Hy2wE6Gyzn
JPopj86bI0orXlJJpKPtp/g+oSkx0yCl/RZOghb4bYMGIYzxK3l3iFAsAGysC950V39ojk8BLCrx
WCTPGbphcAJEKl+pNWGjYjXW774c+twwpp5znY6VIWz9giKrRy59Ytz9Z06klp8LH06wzujfCQGj
3mHXj/OtlWE6mc8Se4GZ41UHoHksHNkh/rFvwEdYu0MrVJ0EoyvlPDE7cRQ0f5L0vJYgjeHt9nyZ
G4L1hTyFAK9j+7uXk6KmckzYPwcNV6Vq1PxHrrK8cN8d4qtTzqGXQ9NSCZuSWQbVwVIFtM6Dm6G+
jwkXezevZJUY4DSWxG/l8HBQg86/uLQl7Z0johpoEvI1z2BxRQK2dSs70vUGyD60rH9fyS3LIflU
pjAnkUPXKdrO+jwJcWkwQnUBtaK42lGXFOpeZuRrH/6bOjCb60vJfWDV2uJRbMQHXRTh2Y+cj4IM
aQzKdAagJZbiv0kje8eOct0Sc6BZ8DWHFWnlYPaiwdLqBK9faw5P9ggRKyQra7F5vWXv5oIwFnCk
j0qEnklmNMf5ax03eTKaf4prkcNxmqIaLWGmvpPragLnfjcoaLCyp7JxLamugj2mWPYhMw2T4xNO
5A399JVrswRS3J+XvkKZ6GH897QtyOFLZgqDoTAeXu8U4f3B7n0UMyzNaditsk1IaO6YYBz6u6u4
1nkGpjP3mhJMFOvJIKMssblCC0abbfZV9o2NbkzvOmTYRR0VEVVUdkLtQWAnLvb4gyKJWbUsf4KA
idtfaQnLLPbktl4ku3AzgwwE09ZPlHMAJXuk0dG19YwMYdT4w0hnW6CO6ZuK63OusZ0hmSt/OpKo
Y7gbGEbLeMVGvxO7Hgm9GGbckBZ4Ek7I3JSlEa9R/eym5J25Jq9xlVmMtlM9BktmfOeUyqV4HBxr
m7LumlRmLnndeuSnwjF89ajjCobYEjufbFWx7SPxpOIOOkTMJphNPdQ9lHn0zGXBw3rVLUiCc5uf
ZdR9iFk0Nat5nC1VrlFzOXZ8qfu4elcDvj++Oeu8+fN5+n1MvnM85JgsiUDDnhD8WD2KzPdUAzjO
Xfk6gatiAAhevJLuoLxDCJyVLQHW6fGK7PYq+hVEltIIbUJQOjz1QXgFx35voy5IW3750W7uqATz
gd4PDOihTQsBabTkq2+9lDIXo6XVFbrZAnxY0KGeOEmhkSjTZWd/9ucl923hUuqLwkMQC6nQ/V7m
jgMd9iRX804fTe1LTMIX6S6wlrTVZenLxEdqDbOetREXydRdc1/wddWNSM/iImsl9cqiGeVSYjkd
yHnrwU5vwecPlQezEMIkhAYTeU7goTyRlt/ubrp06epGCdpriAqESXBWoSEypZYjbEXBOyfvDPoe
MldvgjNxqXjZh2f6FzH/o4jZp07U79ro1qlNMnJFXLFV0oaGbl4YmRUHuou5Mb7LrMBvoqJpj1qG
tUXHPlQ6Pye6tOd9vn4KTumpw4BE5jzFFGTapxM2Zr8ssWtN45mK5vUCcAOjLM0EXL8uxlH8um46
U06wLDULvl8AoRlEn419SI2JiTebkj7LJzKZDWG9Q22JCDRuZHiY3bRm8rEDRTfq0pDT91QJYynq
YUZhmWXIMwfMrgmonemLYM7xj4BnzT/OGAE1loWiBeFuWXwueqvto+C5EjzzBR8unjtSKLcapWUS
x1vofZ51ujZlF6hm3L/BkLhn+wAvS0QeuwV2sg7b30mJUHWFtin1HefRGRxGzCMZ8tpBxD0ioeal
oTnHP6Oh/4rJrDfqfDds1pJbcXgF+nyhlQ/En7RwjsOUKMjBnT7HaojsEnsTc8GM2OK7dMmvQp6k
8IGR1wZU1YCpmNL+NA5mRE0MYzlic2Mj+eadL5e84VfrhZkRTUJZWB3qzW43+L4O/NXtEj+UUkaT
lFpESnu2e/xzTvJlJsI7ujAPAAvTbzvfS9akZu/RpZmz7w8hJFG+43HCpCUC2IlkD4XYdvLwPewa
OAS6FHm9x7da/zFC6/gLb+MlQcrMMgf50WtAhf1daiLXQG1I8uP46PMQQYdUD+CSDPd7kYoJfS3r
jh+Ee+sQmKv9JtRGOwapGqF4JHvFGtkcXeVZ0/GBCOsJI5KG5z179cUcnx84rdSzaunPWwHheGMn
pHBSCfIXdm1ifvikB0NEihOspSGaVqeBCY4Eqv3o6A3FRGyqKHrtLnVWGm10TOViKfWldn+keKC4
3cZuIng2MTS9vTvrVbFi+FZ5l2ranoRFK5wZ08yC+RhXM5KWq1+dJs2iJefDnXrcBqzcRu+vc5bM
Bk+6pKDRhKM9gCUaW86LniDkATtZynaadvFAL4uaOIOptf6R4nexezWy1dX7KSsPG0f6vmv94Mbb
IOQXfpKtQp0QzPEb6CbQqUHo4Qm+86yDwOJgnhSplHNbr0UKxjPgkGeW5GF2AqwgeXrvxs9Aqfz0
y1qex95vAApceD6cEru+v657Q5x+3/AL2WPk1eRZ8ftpiUGGD0idfIAsrMPIOBmGr1x6BlwtsQ3z
ynfQiZJb2pkGRJTcLAmCimVjrC5dx8CmV2qS0GAoHGVIdfz1lRs/ToT1e0Ct0Z2WY04O4RtD6TRo
WS21kZaSwStshYKIK21dLhDbEuRVfRu9Y2z3vbRvV7RC8fAzpYFOe6WdzR8jTqC2higekLDFfC2t
VB8eyVpVnbUaUr/HuqKFDgW/NaKgw4I22sxl5JGwWLO4dacccbaf8EWlzaAoacMDZjuJC1W1R6t2
E6P4cDt6YrkvF+CqHDAS8HRT5D2KRuvJ4tvHQJ0Sgc9D42W9U/4+7dtJU+x59l8RODkyfxAiS7ED
BT/3JfzMUSmMczgqMNhMJR0pj0SKzSJIJJ9PMcLk8+FAuOC1UoTmLjnsrC7heOxGM6pjeMlDPa5k
9p6NGv7eUAR52n35w7e8MpNmjbtlMeGL+isbX0eaHVaO0Gapd/sux2BKnkO5MWLyK63H/Tv0XVja
gLd+EG+vDbHqbqdzs1k4eyne1RzUQ5jlF0oVVzjY0Ewuo3A/qA4D1D3BNcix+/0Sdao5HL1oQf1r
KFzdccDgSEu4iqJZL0qsF4VPklf9WKHvqVkCA+quOP1hExyechzzFOl+ynVEGcMaOonyVEzm/Oqo
RGPQEgHoIqEmQyFVoqdpVRneEPbqV3dZyDtz6XcuUCpuLfi5iOtSWDYfRFGrtlW/HznXWjKZGb/c
/S/hIrt6GySJITZEIT9xb5+rVZ1LGTCEMhzoUe+u6y4Ax9ltUf/7Zr5paSUwI8AkgjThaGUl1SU3
RH3luvN7b6SiqX/Cl6+8yf7n2MBu/1+Epya2hUCm5mpJFo+L4YqV6ARXlwe6Cjr2oyDoYwl9b/QA
tpNovEgXSdPMH2GLTjXRFyYW3sC71CaLwzMVyTWf515GBcnFQtj7IryjKT3SfuleRKg/7+38rqdo
BJbBR9CGOYvJMGXCFmwGfEhzd11ZJZAEGHyZ+0B8Ys2AljwEnSTgKAhE8L+GEq1fCbObbHvMHjjr
KR75lw078Kv/xqM9L5D9N4DWKgCE+qch0HlOUBKoZP41fzrS6lCLv+AOZzv19Xzfa03MYQhZAEHZ
CUlQJwD0cW12sp4UYmnY+gDEIgPhiwadIFXXHB3dyq/gEyGJ/8din9hIJNSAn88ZJnQvEANLzTZC
4L3ot1Ms4c8vwRLQ/3PYrvzAPHHBSKRFsUc9uk3yWX5A/fmzQDLPeGIn9ojnxjXJO+DIsPAVe1UF
x1TgZym8zVrtOHM6BS4ccc3MD1mjUPRuHhwJ+Fi7rtUWjRJSLUiAco8Vd/7L7P+0B/qV+FvcNu9g
W0DHiwnOTWYlvuc+XbMpW41hpmcfVATyzAAsfSdwvTOAbo/ky93xXHjCmbTtxfxIu3SuJODiaVCD
y1J6ubmX0plsCxKqTtgc+bVilNwtnb+Xz9Spm7OlEi5LstjaOfGcB4Raiv1cRGZkaL6/x+84CKOI
8spAoO3USbyIp7VGqqdJWfIbt3iU1q6rlfBjx36ltUgPhBkOutz11OA8oR5zuvKG8AuH2ON6MJIz
VQ7hxlkhzYoeeXXOFxw+ko3HfzE8kRyxmcunISX9NhnkBk/iCQrTJizoh8mBVOcpR/qSNJco/mLI
Nrp5t+KGPuApiS6tngLeAAWZbFW63BrLGeJYyh+Dq+uzzLk/xJLhU8zhC7PyE/ILeoAYXzwvVmp4
zMELFOJlNIGLX5C/pWo3ROEs4vwhoxkEnAoIirarh5TCZLM7Vp/1Ou+/dOJYW6l8xbnKjvSN/Q1I
4OqT8kU2BxuSDvV+OjlvdmXlqGM6kBYklrV4MddPJ4kNyr6OZFmI+XD34AJ6fS7gDPsmbHcZWuHZ
QFw7we1pR+U0Bl8FDFITowK3uvM07W3oxAhax+1FjOhfehJjZOvas4j4ryItCKL3IABzp6KPX9IO
/tF1pvzC64+zA0c4G5M/rDuSbz/VGAf0LvT1+P0QIZ52Mdloqp7jtVec7mMK6CnxV4+pHLGLkkEk
uibGiWEjWlSVPqEThk94T6ouQX2aZF5Ksouszjmj1Ltv5LukJzHXvgIKUlrHUVgqEza5QT9/JJcy
FyZIV3cR0PWaVp1LxG0EGMjJvsX3q5D1shHoap1fjg4vBySD6vp3ALgBQB/hR927fIZGnLvfPrap
kHEyNCaqIOFESyzaCXzFv6Oo5MxLd4+CvGwIllSWrwuUHSx9KfYtrj4BKJt7sYL9CQXYWNrcWyW0
yzLdEMNWcZML0IuDdgOfuX7STFRfRAasR6j149xDYuHwnn3e6R8FzRp5n4E0EDJhYjinftsZTcrc
vl7M2xJKJF11nzFsDNqzhzCfDHlBE3Px8MbXkyfOlBD8aoezoArO2FqMq0o5QkE0G83Tcngu6CLC
HlEC9Jti7XDCKTVwIMDoCIEfPZv4jLOluDZtMAi/AGG2FgGg2H+9WlBR4ZdwvycuOSPZXkU04ot8
LzMQO0aX/WcKhrRdykBvrsCSFSdOtZaCa04xu0s/1IK+E5vyGNSzwLfUS5dNLSUFKg4yVB482xrw
w1Oh1jdfM475r2vsHfPx95kpBc3hDsN0NmGOADODRc+IjyvxNf4KxnRyYp7lxR0qK76pE+k9YNul
8Hx6hbI+rx/dE/66KCL6uzOiGVfzR93HdeID5hS++lBs/sZolvskrRrfPxdWjPoV5/yCwrtSuO4w
98NKApZk/Zqr56BXkMF7oDik6rkF+DZfpuqYYu4gw6IFSjwuuc4h0ZkBnT3oByVTDQGRwQIsW8Jg
Ff3pPH8hd9GJ7AT+Ym2Qxzk0dHYnIoSCEQjazY4eZVkYr9a1eoYSc+bJhnQk7hWdguh+rZ8zTyLi
wHj/Pf8vmTzhR21O9/wHGrAvUNN8G2DXIGncxjYjt6Lg1VTgU4XXHNENb7nCeQikCnPcOAeMSWx3
0+zxMHg606CfCEi0kx/hdis0HItXw34SbpvgFLEBacfCCe1zIqW1VWEnBMj0rqYwcKL9bMuWZsNb
lpeI9URrFa1OkRNPZ2CXRwiR7Y1r8qgiVPguKcCNONueuDHGrAR55sqSZhCT7Wx2aj94OE5lVYH5
6rUpP+wiM9L5wdlTUVxI7iGuXb0iAaAfVk8jRihztZbQ6PbbioscID50vdXAzOzRUcoTGO6nvIcD
1z29Ij9kZCoBZeGgO4fHL9nPumcc6jeOrP+IRcYpBftEKF7CFeKLSUysjousopNaT48NKcc3+C2C
OPSXuZJGS9DWPEMhe1xlXsCMZ0c7KzntkbrKODPL4baG4mKaN9jMDq3ZNjdE+4CGQ9VeZVxpOVMj
EIwM/k+aTP5FN7whGlL0qS5kqC9bJ6HyQ+GvYqYgW111BvvSU9ZTgGJeg5wYsFQZ1Kym+r7TSK4A
SDNZU55YYcpc/9aqM/htPgCYRWTqGzDn8zYuYUu42+sv6KfCRKHYqo8OhWoiD9aqC1FRfoljePXb
e0PQ3/+yk2veV+r6O5EdUqQq0kUYkLmF1btbq9mpATKoKM40LqeIuCOBoS9XGkjOByHeZlevBLJK
JNdcksJZMKqHJlHaS8kSqmYG67gqiE8BZXxBRoqyV9hHBEjRJyk/OqPbk3Rpngs679freqfy1sxL
5cT/ZUy9LR82pP1PCkh+995pJAH/mxZL5whjCPlr55I9ZlrSgUNTNjUThyxrF39b4HaBoMmo8/Y8
EoxbhacBQJewEi3z1pPO2n9CdXqDwNv+OGRlAwTdbmp/XXYgWcYpLsB2iMNfwszBmQTt8oFlcXyA
oSKpRIYlllWJ5emJu7oQiTwhqiB1n3jlERm8UEIVCDf3vrpn45K1fzYDb7C64IlyTiee+oBClBkS
GDhmCFiY+cADwjrl8/HKctgwHsT4BVgsbh9rolM537X+uXlVmevv1+QslajYLhi4wia7k2ZB2cTd
RJxY5qC4SapP7xKaPoTcLGo+pmhONa+MMU65O1iITcMJYzJuMIXaWvYU2ljCkjnslZsBFIXLDAqq
LYkFUsXWOuGELw0eYteZkxmbYo035mlbtozCLbxIT+S9xJ+gviBBoD/t9vhRfDWehH2srPJKzJeE
KYvO6A9WBK818m7cf4EBqg4qIk5+kublQpiVj/gWkh9Z8SuWDw1VxiKhpXfS6WNJ1p4WflAnNFzu
bTM+9SXHa3B/1jEBBB4/Rqc+2aGv4VpiXDyzo9IpWoHMB+YJ1y8iedGnOSkrePwq62Fy1FqCtv6N
BsWmkoRqj2K4pZv5+9+58L0AMht/4OqJYujHKeCCqnsaUTtG+T/C94Ke1ENqHUGU6lRWPLONYdDO
5iEDj/4UbmIVUZl3sJDw/RPVDkJGVGQ6k3FqO/jPaTrICCu+vR5w0TSZ1XhZnW7cPIcRJBA2841d
DPYmV9xtSYIJ654G/TanKIxn3PAokAxXaVrAROKwCHciOq4QC3a6fsn3IROIltRaBo09J/14lBPk
0djDoaRVx0f18wGOFj3pThUIp/OgaHOrmkhAGTPCTvRO2to0Fw0a3rSVdT3kMmrHNj0IlXX6enFl
+7O/XlrwSyX6zgEE0u/LM1zvlyM7cJzv9D3AlHKyRlYYYk0Mm4EpcfKQYA97RPZ66Tnl6LkALotN
eQ+sotvBMnxfpXBCMyqatnQYk49SMVcf57jutNz8ONPiat8LUC41ns+X+FC4AYNryMo/+37vXbir
2ivojCccu0J1LOhIC7fZ+40xbBLxpl3TgJPUZfTs7Ue0ntYMvqVQtJ5jcxm9iR42opW0JN20HTVT
Tz3t/iRSx5bcN98js+QJFEf/PrfGbz39bAledwRwWDU4l9gMg8MPf3//+02nEbBLWC88o/h2/lgw
1jxkazHoy4HtzFiID9PSTrtyh7EXGeo8137DkliuP2uLbd9yla/b1aOytGtqG6gVTgWXqbzeXTfe
uidDL4OSBGaH9nC3n84w2OR7Do+DrwquwSpPBymKU3sCfChanidKE833CNqDEq+CdV8YdHKlEVRt
xohInsyB9EZr2LjF6Hx1qoBGPjAjas5vEuikF/EYiirKFOpehf6TiElUUKZ8gPDLsctrrAyTxgzV
DhjSRWc3g+aO0p2XctnSoSIYJpig0YoEyrgSN6FHfnor1rGoP5mO/2Rh68KtDZKO21M5XClakHI5
xS8JSEqVXH/pkCenXqBtsbvazzVOkuztnJ/joENbK9OyIF5d8dAzb25llJ4NqzjE401th+/rtm1j
e/sz1ei/jjDfD1rq6UPyrJmZtGM7bmMZODlY6INgsAYksiAxA/xlq53EORXCR2dEMAOUVgxwt6W7
sANGnI2ZTW0MTlPRsyBJ2g6sk5hqr0PzAmXXKs3IzuG3VJJ+OMxmZ0LQad/hnmV6t9m1Qb2Hf4C7
vFwommyC0ZoX0bQjinSvKJN0JxAJnFIrLaAjXLXJLPrAwOqWqSgOZMeAYiyUGxAnYvCK2is8MEwC
xN52R1sUu3JXxYAE32PGmrOXtQ6nszcJa5xV8i6jDADrxw+OZgiW6qzUojMnjuVUIb01T4AwWzFR
+nK2O8k1NUQP5yzdIPRav2A1IMEYagmfLBsTBPIbja4tPSCy5eWMJM9PS51nAQe58ddT/bKROEb7
8f1v5UpFBVo4gSSveS+s0oP25R+0NaDouMYDqxUFqvVVh2BeL2jxpLNAoVQ0AHTU8P45DTdNIjmk
7ZMZm9RGMrJ/QVHZyJ5ShXwUjte1GiylbCs66C/WR8N5VU9gr2OYyihAQI+j1QXV7t338daVIXpa
SG7Z1lFfo60JGSunic3t72ftK3Li/a9LZH7yPenHCNYGO+DasFnTceXl4ZpfHEwPXlNyVVOCq9uw
chCQtfQpqhvyXQiUJfQS9O8E6uWXERo2V51+56A+wktn8IeEsNkke0kTDwlDB235x3Moa5usDgXD
OIu2tpRKOAXrE3qYhif35v4piCWTt6uvdGmwlPemHP7K+li4skSQmV/U6DHpd22uobtcTNadrb+f
lHdYB9OIRb/1srL3Ag19iwxkXsGaJylp//ZtZzB+tyTwrl0xIFS0zmwneUTgj1viLX+f+cXnkjUT
p8Jkx7ywzd0WBnO8+Y6F9gFx/CNgJpgfpHomfYsrRHjb8mgvldFzOuBDCP98ZodNQRBMWNzBanOI
2DcexrUQuiGIGCAL5y6iP1e2NbCDuJkQWsR7qB0lTltQKJQUb0UCcsKOjfUhW4LAzTgNafaU2ui+
eDOAyL4rwVl9rg/XJMaAd8Nc8nLHtMrn2dvyBhiTjj+gy9X6oe0AV8/VAzS1fsBEb+eKmA4Pfc+P
TeSRwJ5mXNF+wFEmy6+BtTxvnwmnd9I4gdzI+2O4dqQ/xMcZ5wqEhRjt4ZrYjUAW7HDbPbO6tgMo
0Qo0spCuMzdqWkDfeJyAhufJmYBRTkoLC0Y7krf9aMUL9Oxu5Si9K/iRBtcCQ+6YgTarg0099ppT
9DlDUCwHuqTD6u2pqe+CxCdIkVxxkMYcH8MjSRjpzfqzvL+hR9rQpEuDqjN0FUpbQHxO1YiLFBxh
3hR0R92j5dmm7kQtwP2QTveJPjgdojtwMn/Qe11vPAxSo10BHlBWaVrAPTh80ZBJxvUYQcXEy0bW
lG4oB683ayIZAFlSxEtxBlGRaGS9r0U0Hj9P05irzFHYOoRLOcESQOyR0/lZ4DHvk2oMNWDGTq0x
CSl8R9NVuKgG0cMwZ9BIv1Rt8QqqgrblzQlExMRIhP1PmOOiVj+cPFSFsCyQ7PFBMMrSO6frOmI0
jjhXPwLVxP0U98Xm+r2Cgkw6bDwI2WXeqBeTgIZeMqFhXBe2JJpetWwImFvDT6loqw4oi+Ydn6IK
i/o5s3PCq3zqm5Ts/FNIhnAHPDczs1Qkr+RNEFD3aQBIp7Jo8cdx1cXJwrX2Z+jS2v4JzrGHQLc/
yKOC9xR2iQF7+Y8gvVNJtNQJsiAhx0BRgkZL4SjxPcRCWD9DTNpzKgfWHxN2h46qPudQ+ez9Cjmo
tO6YBbVymCzMzR3ZkfPzKXvwrwXypa2ia3lB2TMjB3PdqKWoTFXZY5PIkpjK7qun2uUqenMsieF2
/5611i0+E2Ew5BKIpBNc+fy/s2jPb9R1XOpcZ6jx6/6uuE8OyR4sLW6qBgiVWxcoOhRwmVCk3RCU
1mbMZPjR1T7Jl5lMkr/QZsgtoJxhyEUcNIbFx3/+0WMIb0g9WNBB9QSGTlMHqzmLVUKa35WsIGdn
NI9lVa3d/97O8GqGTYsu0TfQup17wkqjVk6y5bb2sEEQvaHIQVU7MXe1Yth5zlQbbbiNY4gc+HjM
NR9Eve+7+lm5o8y28ykl996FcnynWoKGRvdYoNJKMSfc6IKMcmW2/63zdaZCH3gFvbktxL5o2uOu
bKJYcdSVthwuIuNxgACE27aDq/4MPbMdR76atXuji9U2Zqwl7KCIP1IwFYxJmr4DzVRvML6lzj9D
4syABu32cuibDceAQ0R+kIF23rpUED0UNmfbbaHafb9xphQgO3AFu7DGNgbPfSGHS5Fv58UD2F51
ay6XcLo47hiSgIPATFH0OWR2kG03ch07BUE0CIaGHbd7Rg+HvafBFrFcAAX6CETBcgUm08j3rezc
+uiEmJTd8AZevoFS5ox3PVx2neWAOV+JWH/pCtcYAMnSPhPEi1FTlajIDJI8DZ7iFTa0H4IMJmEQ
SmX/RIO0R/LtBRmVP0R5ryYF/2Xw4AaZBCAeVRHa3G1MApKQrz3fG5frQU7pqhq6lrrg5zyu7n5I
7y5iM1gsBWSRpACCNRlrmrkDrP+8UnS4dJBD/dbywT7loMoQN/Z0lgb7q3+TZkId2nv82OQtmDD0
iLrrRJVx1VlMKfdp019ne5v2tIu+M3id7Y6Z4+Ytp1JFG2iv0xkd4BrSihaJUzV7rzDmWc4qYGF2
Y1a61YJkw0mz/J4rsdnrUd7pUmYLOsnHdTgfrmvSJqrJmYIIGXOcTVdtT3ZpdPdP5RCCmOAgx62J
FOANWv1HWx8nXshx56yizlKzkDGhNP4lPl8MpuUI6ZIFMNsUeWvsslzy7Xh8/RQ+8QsXQjEq5NuP
oJ51PWYmyWDOq9YSQ64jM1M8Rfs1MjNGoWT+edQl2vSMecN8CZXjHFDWFDaDfs7qjhvoXcBmVn4l
rCe3T/kixuPUQ3+IMiKCo081+qKUQZZvpm5CS3ZcryVmpcDFUxE7Fvug0yOaluJE1c6op8JfIPmD
T1zsSp2r/xFrRsn7c5TnfvicFco8TTiZEvZnzDJyqg6gKbnPwftaGzENC5d3czPeHWXGacx6ANOK
dm/9ecm+3o0W+kcYi4wwCsvRIeLAnU6VwYarlNl72DLon2oBBX2ELrN91hJdY/ZF7Sx8uRSqhN8r
XOLd2u8ljLUA6HslunqQStLBtJPRUYt2kcikgqS4QLcsR6L81nnOQZWhIFrpGocI/r6fEDMZwHw/
Ui/PujykFO+QSXxwcBCbzViG0OQJk2wiV7HmbTu41e7ieo7oVhXEIyL0C6x/4cWZRdBvv8SuqRDP
ZL4sfsjMOZ73gKhCY57mwJs5BTMuARJEMZzX8SNzmMyWVaq4yYtv8R5yvNDytm5IFul1RL5jQT94
RYapQHUcxPsR+Tz9+3QkxHSTiSHgYn/C0du06YiJzTn3sXfCnGDmRSG2aatCETjVhos+NWyppyl1
40ewaBf2s6JvLx6H02TYP1lJvKwpvupUxC5Qw7Bbpy4waXUKKzqCO9jMBdme3860EIDC7VMIwZWy
3kC7l1/XYgxN3rfrNjvaeF0FETK/+KEWKh8WAL2tehvE/P33t6PEZpVYlmrGYZyN0DA0/o5iKSmN
BqUzu+UMtwEkrj3xeJ70e4JzM5ZTHHKuHtLC73/rHeBVWT0F7fOQ5zLV9ZZL5GJwFN4a0I3RUchs
BXt5Xm6OkXoOMhQxiVT3gB+HamxRmTUhHOygbyPu1nE/3q+NTKtHUM+AVHLudqu8xQ2sDt/DcfUs
gjLWW8F2HBNFSUlbJHMBK0QJ9R5cazPwM1pAZ40o/szsiDOvshTIWk9awi7oYIyLtKlReurKH+OS
jfkXejn8Vp9cJflM2zvvfUv2hoVm55si4538aswF7Y+DNzobvrw6S0rBpmDPtOG0OnuVq5cg9zvd
30dxMYRzLOOXn42MmdRqFi8PQIEH6DZ2WlOgTE3OaPQtW1UqVEYJ4PyQLcn9MwSVsh20T+DIctnz
//EgGOW+nggd9seTcnrh1V5RrqpqapnhXBSF2VBDo3/1bZDIupghQ2l39DO/Ls7/36fJk5C6sV64
5JRBJ/dheooOxIm8bbxMRtbldddAX+9vMWvPrTmmn3NinNLdg9LMM6fPvv1DsDjuOpxT5zibtPZo
uJ5BAmMKu1Dww26X75sjeIvJn6xa2qVBIcuq0UYTFZjsWauoeUG92HKH69Uncf55n1VydgCTiYTH
wHIjcou0BP0wYE9RJGJx6gDnTFRCJEFfiMM/AZA0OFzETgFwUZ6GmQORjmzWoR/OnE33qS9SZsfQ
TJdYvJd/hoYn6cTgaJxKXNkOGEshi2Awo7Oy8Ih0gJoxaSF9ewZR4WsmvsAuA4qttEItcHqceTmX
T75ihA0TL83SU+OHgCDEgTax0Moo7uKGTqbtV8ZB3wWQd7vHYtbuoK6E8YPvgYVR5p3NnafLA3ip
5kb/lJM6/eWwnDyi6Q4z/g05gtz/letfDsktcUvHl/C2jQj3yTsiGBKgRApl/m4aKpNXe0OucWnl
8Sh3wHLvhwwSPno7jW94Q9BddstDbmV/7Idu2FY9tDpOw8hHUftpi8PfZWz+WGpgRwRyPvaHOVjt
x4EutKTRlDdbJ81yOQ3GpW1+KNFRt8dAY/PnuH1+PLLX0XBChl9Ooe+wnY8NjBA8j/l4pyBG+OJ3
jGlG/I72LWDgpr2WSCD9nvg21+AhNYWrPZCToO9KVRhVU6fu0OopffhhJH74xXbW5mWH5Z1fpl4j
PN5GyZbYEvaPunpnmMO2nsqJKd6M/Bn85s4XSUaoTvfK5O9VC9LfJoBgSqUB1K3LywN+bVTM7l4J
maVkICG6l4cMNdcgQp+IdQniBp1VsdMk7l7a2tLHCyqjxU1fNvoVyDL4Z7gn2+NXcY24m+j+Xset
epXmsvCM1ojTM4eXN93pMxX5NevozbxOJ6WdnJ2nxAGcIaaVG9sJ0huqm5wVAI7vBdbm5eujcmao
yGEVrJWll2V6p67lSmvNN6+gte0aZjbgFLi7xI52efT4ICR5vZiGrxhPHfaec1zNZUtkaQrRnYwg
jfMdJv/UpR6rbb/XUaI4d8Dga1u50fRVdF9bYHIBgzpzbSnVK1air2HmJObFpxk1JG0RNv/g6lIK
rNVK1vxEJRl/rrUDHmn56o+vXZTx8UyQidmi2xb7pE6SQfkXKYsX1A0Hhg2F9cNndtK9gHgGziL9
vnCxBm/CDmaHkJpN7kUDNb7QlcjptlhgT1q0ekacoJUESHl8cii7axfveQ1wwNURjV6uzeT92p7r
VrLJE31Vtc0AldSFJYIo/yr6+wQBLA9ggiLiWMUcWQrQAhYLP6UOsM8QkOYtsLLQMO9FASZWfARg
r8pYqrrA3qULpVfwJG6QQRRYcw+5tuct1JrowX7nNNlenCmwu3hQ+wvcEyeESeEaVh9LGqKhKJoc
zkavGwcJLBm+tnXFluMw21hF5dvXdmRsLDLY6PoANkEAJukS1Hp3VuDMR/90AdLIVxPrVWR9VclM
49wUDF3mNQn3bijIH9oem64MGR5Tn3ZoFgIBXohBb/VUIwokyGt6CIYQipFzs0A/Xcuzm8ji3uqo
TL1E9TqLy8nfSuL5yBhy7zjFood8T8cSDQ4HBJBhBCtJbtR36OHp6x0N3u41did0ca/nB5/v9mD1
2C7aY2gXZNeNKG0aXgrOtbDIA5j8VmgSvbwIvMENvXU7a2ual0qres6AoJnetiJSctC/dm5PZZsu
Vh2YUGGqJ4ugZhEyBkx7LthXFDe7YKVygg2o+8WDfnwrSEgkpHlBZUO2cj7SWbi7zluHp5kH61LA
NGDxACRHDBo0yKQ8HfYeIII0TsYhglczCH8+kWIUMsglV2nynjiKhW1vlYzUGB1edyTJx54TF7ih
TzrEcy6GzJNUR/BIt1Dnrkl6h0e8Nsg2KKDMHTu7VxG9QreBy9+6xHAF56WPjsjAa5xkTkolu6K7
rm0TesJplx1AIs2hKPSe8/HGnxbGL69H3A7/3Sk5nIiNaNTr78iKG9OW5y+xdSJlq+nb18x6bznj
+M177S8bPAdSadrpzk92b2b//tTcAxAdiG4XzHIrqOHhSE8H4UjMZrjPhod1ucoWSANlrp09QcGC
Rj9p0aCYgsOhIix7J4BzLQ5DEKhyYzcssRCBIgIK7/dQ20P6IP446ykqHcMC775GT2Xmif7UpgVG
HK7zCM2UEdKvGDiGnwue7xGwBvvv7zVgL0Po+8/tXTYTFSc4sBaO8ZyqK41+vs7hoaUSl0/07YJJ
zepz2rtyQDjrnp/Np52IbTc+Tflj8WzEZKCqwRv9SQ6gLXIr4Xfz366aEDDyOh0H+4hA66vmQZ0i
U8/ma5PXjRN+Y4WBReiGj/zzNMxzdcVpd8g793Ruscr3cqIWSDls1Z0pvDKOzSNERnN44Ci01n3M
nQzY/37zMBeh2zSo8b78iOLbFWzfof5OilvH0t05x056YbHXFzRS0oup9LugIVSgdh+EMwF7JLMd
wmey3u8mIbdZcD+1OyMocV/stZ+i0KfQ7GVfWPgoH9N0w5IJZrYxRBlMh8EKv6OhAK7Bv9W/EFSg
ojc/SUtgOFc+vD7vU15h5JQ8nR425Wtj7CMC/00vfXQdDhCizCNTNzd+f+UoH69fvImVSt1JAg2G
3ZcPYF/i3h/oU9q9+HM7f0HfFOKZoOt2y6l8fMNWN2L2suYKSCiZHke9VzMAEJoSHuw7tkQqcQio
ccGfh9MddJnTC45yC5MDGJatWrpnT44Qa/jhF2/Eg8k1vyEL9kAV9F6BT3SoNFyEwpHWn/zNHzGz
u6lM/zKAP+00g8//MPZ3MzpYrNP2vD6z1mbZZOqNEcI80uKL5xhMRXzNF1Wx3cHTHLwLS50BKctt
UJSdNwnlMPuPSjNupgao6HlOKbuAmJGJWW7rTjOYdNtVNIywpP2CPCVM8XAJ+Vj+4tg1QHESzTOu
EuAPtnHL4o+GVKuUT4H3OyVNQ6vDoB34vZKlCX6vbp636OFR81j6AasHugI1PD/PtZl3K1nEqdQa
H9ehhp6UOYFIalXuan6KfHB/9W0eiUtQ14GpSt7HSiKrWEYlN4IyrWDb9Z58OFdNSXml0RAljWuN
LWwu1+QsL8o/XMatoYJj7kxj5XlLqWJrYmBFRXHNIEn/tsfs1LpzEqUb5iZFfW7zSSNHLz6fEMxT
9vkO5cwno0ZYdQLA5HysYdQ/w4UCVyOmwC7T2XA1t3q/3z8TIfPRBP8gfEeC7Lf53EwHpg0j+EVL
aPq3m/DC+ESjfn+0m+r+vGnF5ydiwZjgG61JyLJGe1ua+zT+fQ0mNHh3M4WUa8dCgg1/lbFF8/MR
E5ZtuPAZVfCEMujz/V1AqqwItf/+1yZiQZKdhEclxn0AMGwLSILz3u12vAcPMi0W1G28TJWfpfZj
5e/YunX8Q8Y2aAA1w0ffZuUsc9Th6mNYNCBmpEAzunDmgPfk/2sfFa2G1Jef4capncvR0xYDz9w0
/3Yc4vXPrC+GHmXTH3HPZp3WIndSDAFPcwdlltq+o6baA36AyXx0DEJ8DFZGaMdfrXTUg7QyJwI2
/szQGVzjr0q2NRLQeCSV2+2SiaEbjTCY/Ofj1FiXOVys0o+UAhvzHnZRDS+2KehjgKBT6dq048/E
lkpwS6SWBJKZjRte904Ax86WDXBQmNz90UVDt8QIpDuksRa6PhMDmHjGE6sH8VJ670P+WYB+crLN
fWgSdigZw1wdfB3w1IT3XvKTvNH8aCXlepTGZoCxv1Hewq5oKcMIh2JknHrbZQs74rMfJ2Nb0rXQ
i0BMIc0QfddUyWhWa+bQNoLhXq6oRklBkg6feMfNuUr0+gtqr4ccOCPhdk34YGBCneG4m4NZOtZQ
83bef4el5mfzcBmYeRthOH+sWcLNkBWpucXInN98nGXeEgkwE0e/c15Ym/NaTfc/pELKhx1/u68u
VQkZ8FZ7SUDB14EHCBnu+/dTdSxruovK9D2B2whRhH5LCe6k2ejNUk0VJJEBrjsC5r6JgUSYVxXd
rNqsPQrQdxbrVTTn/YYRdsMWeSNjyKSb1zjp6nJJbxuD4Ugylp4EbqPptuXbFH3bCXT3MjSpYyjF
AZ49y/4iwR7E4EZv5AXw7igBhIYk5hFjbZ3RSCJPv09bWpudVoR61aAT/+uOY3a0PupRAydvzfoW
/9qmrzO74kspb8x1BDC3td9wtThnduaLC5EPjSqf4CP40yx2U4R/gQtzO3dHpP/1hTQj71pFvTQr
x191UtPZRGRTL8vQOfNJbD5ZsjyWEhO7ZBoL/AjsSweOA2t8llyaTxLeRyLmrtNVxNKBL6OHpr7g
BlsHIDoon4p3OLaT09gGV2R9X8N8cUJIuxLNiqP3nR4uBHRSGPnRfdMnCuVeeZbMWYMZ7bFpQK3u
prAZXmTD3VERW+BUSGcokqnZ6byZciqWIWrIZy9EzaKRoIDJ9Z813yOtsJem9xNPS81Xia26vTXR
71X3Q0F6nHSdSCUu/QCv2T8ONPVh+x8Q9SlySMyepNQCUuoBQGE/OI1AZU40smHqMRGNnWW8VuYB
7u2aRV+WK8T0/yj8aXWmyWSRs2WSD4zqKyze3Ewgt0u/hMchs559s2elbX6MQPY9dNvaB6LkKh+A
E23i6EfPeKov5E+9zPC1gvvmNlOBl2GfE4em8lGmvsocwLoLe5u/HqTT3MR5Yq16bpaTgaMKI7mo
WZdzhi4IyzDbVke9WXi471sTZn7ajHhnnrxB6VEnXS6YmzgnMiSCEHFJLtP0j03cSGJdmQxkUTl1
qZS4FyOQZzLUVuHI6E/GOdp/A22Fyc5yAbCq4fTT9m/ZkikKVsB7CZPJL3T6Al7m7ZkfyHsuVaK1
bQe0QudYeeB7uECHE6pNlcMjjMJtzo1RRqtSvzAJd1NE84qwJmtAZc+ANyswxYOUn9Lo7rlco1ME
U82PzeEnct55QuVF9qKdVxjlJaEStU4TFbd0rw63kBQr5X1/zmRKIrza4nN+gErHhk4XCQqZpMrW
x+1o70Qpf9cUgr+0AIozc2nybL/KFETwBIE3PhSxsuspEuSlzQ5kO8jQeXBKRKj7Mkar3lL4TIUp
7mhbmtglWGFM05vkH0MSYAcVe/AHEsyg6E58MQ9+pTeupvX81oeR4q73jDO0JU1p4zRpIW632H4+
9juTw38hQxPoNrW8YZBpdU6hoHb7uV9JojNH7TJfEgaYobk5Demk3JHt5HlLc3O1KesIUHYVoBoM
87gX4EP07hdwobdoGBy/8Ze9qWht+S8OBqYgvcjkxaWUDaW+L5N37is6jac4DTFAJKF+Ew/aLHcW
FikEUwfG1jK6IXwsaJcH258Ra2yufvcE4N4ax9ROHmpY6JXRmhLdVKXqN7NT4tAzLauaLL4R4BWG
z5QJUfGmovEN5+/iVzsWG59xw3UTEDxFjRL2Wphzdz4zp7xXXVKrle1QNFkLevNLeGHJDNxG1gCe
hlLf+GavzpUkxoBb0i0UMHUycf77tkj/M5aUGmJ2
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
