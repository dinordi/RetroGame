// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 11 14:12:34 2024
// Host        : Desktop-Joey running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ background_sim_netlist.v
// Design      : background
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "background,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22992)
`pragma protect data_block
+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
/kPAdTpGegaRsk9qqaftozpGDdCD
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
