// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Mar 10 14:22:52 2024
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
kJJu0jybnNyU40QbXbcazQcP0OaJ
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
