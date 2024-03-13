// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Mar  5 16:25:00 2024
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
9JmctCPOi+Vz2b3D7fC2gFCfceYP
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
