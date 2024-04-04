// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr  3 13:15:12 2024
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
dB1GAvgMGb2eOXsWUG5xHlO6clXF
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
