// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 29 11:37:04 2024
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
KMVLCCVnHlClzZHRqBoTFcvkVGvJ
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
