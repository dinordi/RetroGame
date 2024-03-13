// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar 12 23:02:51 2024
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
WBLbrBvpG1LCsnTph6LP5AAZLlf3
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
