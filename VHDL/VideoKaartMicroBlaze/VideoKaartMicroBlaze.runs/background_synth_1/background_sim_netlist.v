// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Mar 10 23:40:24 2024
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
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
8uBmyPUvXig2kONesVLiofsrclKn
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
