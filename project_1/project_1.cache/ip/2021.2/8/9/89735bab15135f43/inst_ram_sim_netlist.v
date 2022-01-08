// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Jan  2 00:20:34 2022
// Host        : LAPTOP-5SB46T2D running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_ram_sim_netlist.v
// Design      : inst_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "inst_ram.mem" *) 
  (* C_INIT_FILE_NAME = "inst_ram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33232)
`pragma protect data_block
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
OQ==
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
