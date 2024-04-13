// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Mar 30 14:23:16 2024
// Host        : Laptop-Ben-T running 64-bit major release  (build 9200)
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
uvGJnQaawv+x5e4V4rSX5lO0jbi1
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
