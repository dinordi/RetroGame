// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar  5 16:25:00 2024
// Host        : Laptop-Ben-T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top background -prefix
//               background_ background_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22656)
`pragma protect data_block
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
IxwJ8CYNOm2p8qgx9aNyN5kiP0coc69HU/Fp
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
