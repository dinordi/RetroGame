// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar  5 14:25:21 2024
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
XLDKs5VVGsLYTrz2tH7zLycqLbLu
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
