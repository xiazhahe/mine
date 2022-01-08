// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec 30 14:46:14 2021
// Host        : DELL-G7-KNO3 running 64-bit major release  (build 9200)
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
+3LEJ4/bOo7MY9a2jbtFDpsImRHldiz2Ij/50f1kQ73IEX+kymdMaeZbLSvy2re31Yq0ae96XZB6
cnLKD2GStEQ3iWB21CBh38OddIYiPCHP6lDxYcrVfxuS4he+m7JiktXfoESMXHmzHOA+34Dn8vmJ
aLzAf0ftFFWG0OUiMDxsHtS4wQO19UNjTiaYGjo+P4wpSlfh+qsFiVo8Usd84x4NChuLRKmxfdek
a8gRIdfIiX8zPqotDAY+bMoupeTZ2AW+nvGEg5Nd8jhRYExSkkCDBcoZdEC84grxx/LKKI/q/Jm/
/55XLdSwDvHkKYYoHkQkwJEZsloEVwlGftOVkmve+O9MRHK4jjVphqMQiiakm+wKHeea+5naGgjD
VhUfediF4FmBLWl4hhceZTvLK6n3hSrWJt/rIBKvXrpuReywe/5Gg/8o7+Sl8BU7Gappk05y47JG
SiQkOrdu/pSh2GK76GjsVTSY8W9AMfZ4byFC43Y1Cf/4YcQ10pW+A2tHP7MqbO5ny/VVkccrskve
w3ycmBklFrTJf6fLqCmjXw2CCNcOTk4TNFOvvK3BZKyYOMSB9nuSIeUHC8tpS6PIkonS+ETEaNpx
pb/CSD1/fp7A5w1d62JrXhTcKULN+kkZZgCEJbxfmB1BQWXQHFcIqNnB+IyX5xK90rWiBzV7BMdv
FVWZTa9JU4JfXk3PlI+SRBuC2INI7ox7UTIUi0wE2CWjkcV2/XefYfqSLDJstHc2AXYjdx9+xoF4
ZXeAqmVArxlcBQoknZgWpgY0n+lkMnLLgzRd4KjO9oZPBSAEv4jz2SUT8xfQgUFwKDMAJ+kOsKhu
4pOcHF2q2rTfT+JmxCIpdTLwd6RQswdQxyydl9aFWVGTEkfawplIl+gcFkrc6XFXgWbvjB18XbWY
zh+DvQWK3IMxfkj29oab88kQgsqqK5fsmKe5uV6kvs8KmYjoGCXL2GfUkd5+JH5oE5z9VHdjzBVx
EgHul5WdIysNFWk5X4Yb2QCSvW/SwvRFUcaaxH6sW8/gWSJeBEWDdrJnIXp98Z6/WbHLxFipex6W
atFZJDnXqB/bAAantPbOh8ulHhfHXa2GPkjIkveFMqngBUeWo/SFcNu332/KakcE3EIJAC4+2TV3
D1WOIJJc2rn0ri9F24a3uYnGCAna72JGb1RWtJkAl/eY7vdFogAqyHIMQ+MPgNNk5vaDZZyU1PLx
J66iyapJdff6x6aREUWULQfLR6a9ZLzcvqMwDQCv6a+eUvrS6PFz7ISivb309BYrLd53aFvbvRYa
su38IcIPXSXl6rXhntyWTmuDwDwcdKrNx8FjIqPhHNpSgcS1ZAX7j0wlFqDHG4CTXRzqHWsAu/4W
dSsueEUOpMJo+2N89pQOqOmOPrOHayzbjDKHUVbBlKsyn3/bmRNU3pBJgh5J+SJsEjrbnEZwgYdg
57MxARjenRsRW3TE1mMVAUMKLjRND5azzYxo8WQ7nJpQ/eC5KEi05SLpK8ERiDd3FB5Z97xnsZ8I
nlEgkt81OQJ6DaucgA8IZuzSOSUP8Q+cm0SsFwKeVgOwOKy8YsSilFzR9LUJn/E71g3O5d/rlXxw
+fyMTkPHzUqHw9W9kcJbBbDqDDaJNqnniCB6cr/eJYErzUGUOMv9KIOgOE95Lx/YbcXkQQBOLoI7
CGK65N7bNrogN8dHLULEJyxV0/wE8AvCKfS4Aie6F7Sjqpu9Tjve1xSpgfrpn8ymmXehqiaVrQqN
CGpVISLdNcMB5ZZyoyZZw6cI1hhRIhOReqYR1kqGBhXYwSF4fBCruY0ivATyyeNTmj2oJV4efLf1
o0R+1QKzxljhrIbDX9w9GwQ0Tg1IktX18g9WF7uHzDvrm5ue8hqeqvrVbpUmEsEQRVOCBFTQ9TS3
6KXQRMGkb19hulPsziLj9h2kZ5iFqEbNGHusI6LrIPngk1f11R8pvA4Nk2ht0l8tZIHb3bPCD+NX
H/hh8imlcxixuX3D9D3TZgzaokTxZzsGrH03gA31BeCnsY9hlUV3bW+OygQXzYuquawh4oOS/Pos
X5Tm38dFri/jg8R8a+yL5uPZQkrjDiMo1xwdAhTCPZl6niAH0VcqriyqatEtdE135nX2DHtEo34Z
RmJz+Zngcg9gG9k9XvtjsDNwzaUCg+MBNT6u48G1jJPD1QxwetCReGAdY1LmJ7Fh7x/jJ9+rjLWK
wXdxDwQTlRLLw7vC1c5QUPPf0VW6BHx0OP9xuzJhEr3oJPMj9jYxMgdFoMkcJ5hlHRg/3H6vZjmD
cvek0D6FxPx2Hh2HICd+TirBPpM2IODFVjVkshWvnPbp7B/6oOVAqzupy08IrXB+3lvjbJn/KtG5
1gIb7f8nutVSWzyCrGcxpvhJWeanXJHqBosafQIiyImHLbkju6yMUXssexm57u/mTiI5TyEHXQ/P
UDNIDZSiHXXzUxx5qQGiZLeXGknsf8mx6zrUbxgierRE8qtsZZGjREDABX5p7zme709Qq0Nl49ko
hJukio4gKeP2J/F/pw8cEWw27j0Gwbhni3Fjio96EfcaUaJxAYsNcptopzQTK2x5AwPbg2qmKJTA
A+dckKKhBUmUdnh+tdOoHNYnbOuwaF0VaOn27nHX9EQpDbAi4TjeUo2yL2wC9FCzaqXFdr/BtWyj
BGAuIWID2tFH7QFxAI8pTGWJpR+KBZ93+kvDOwivVe4tFX03gvRr8WRyyMUKUe8l7TGnaPytc1+W
WNlk+uv7iarqeLOdOZo4ayRBfaYjr5gUciN5ntK4UTfuDEYoWy++Vl/H+2f08oHPHyjGuxP7RoCw
tFd4V6Wym/t+0q6Czm1tm73yaRvNG4IeG+fufLdCEwHhYu8rceQ2FTqc1Ce35WPyiK8gr5xuBQXi
d2ESwZcK3+IpPPlJaMrc+/dHoFh0KVhtu/FHRq2gd3d+A9N7aOGYHEy16VNIK4tShvJPS8jykINj
mdQ9ihyExPAWBilbBAr93LQY0mGS4VtZOeDIAHFjajJcFVAw4Ccruq/+Yi510xufAlHTqlHqFoU1
9pSom8KlfA2iib/E0oAuPAlC8aRVFb69hN8AVhcm+gaovvb8Iwn9cUXr1QxFhh8FvNibqKxDDhGI
vDfSDrzpRzO5yHGCYArS9D2mwh84vEycYztKlXBfWGPR81nJ3RDqxSFGmVj64vpLmqrJqcUaPCif
fAgel3pzO9J6ZxPsCDAo5mPHtwdGJIZGLQcCjOm2hozZbayPl8UD99SiNyaNo3Ry2E5t3+rylx8M
GEhKpTjynHk5AwsXxM7x1YpiAtYZnT+7jLGvwr6yYWmKpH+pW3hXP7KDm9Ay75L8qgG9OnUrcJb1
22TEjzuMviUluMJbR2yXekzklZWg4Jfz1KGVBWeusy9Lf0l981BZD64mooS/LcGBC5J7v/A54n3T
u7Hmo7MzXMXHGwQr8cBY/X/bdOUq2iHXycWTzrkDED8kONoM46HBDST1HVWa2Jdbjj12OHGlsrML
flN5t+cNhOJ+z1VIydw7LfMyaMAJKTkLZnjaZlBGS/U9RVQLcGqwuBXy/tnCQsZpcvJfcY+4zL1H
6r3OyUOFhnZyKdkk4ne/UU4yV1rLilcg2aI2NwRTtACDdbeDWseiaUOauHrnNfF1tlftyXW0Hfyo
r15WtH1v09tlxujjRC8SI8FfGS6WIsrIsNByTvvvYVLjtTAn/bMQaRitwK4pWAPbSJKyMgTt+PZY
3777Uk87xgGbR1iNzGnF7URXBsPkFsyk0DDsBYdGUIBGE0Logc7+O5zHGGfr9w6qAAlKUpGhb/vg
voCIs1AydtsxzDR02dYg/VCeRvnHgt9p7SYx8rDpjDJ2vG/uHQgeCweErB6y8sDHq6tlzAEXstOq
fGTRKzeAzQt+UjWtxylDnCCFJIy5gVJ6zza31aoDIFJeDAyLLSmycutlyWwZ91Kxnhbk3sxcg2rv
e12b1vi5cyCL7OCO844begwthMF5gLv8VTKbs6MpxBqWiR3xZhKR+c9KdhN249tF1HFWqfriKMv1
ynv4k9FZDdW3tr14md5f8PvUBQqgcHG4RZ96Ozk1xGBpXW24utUDVaPDNiorE3zutzYo/Y8DbTkW
lWK/LwfDqir5nHg1fqcowLu+5E4dA68riTH0CjNEUWR1TaaG1MI4Y5E6rTU5UUocW8wwqBJLHBDN
QUC2l4RyTUeV6a8zTX+aOBlQ5MhOoZPQF5g0Gj8U/dPGfdbAA0TaOGBKkaRLHDOvqsvWg0qalgx6
0bXohbX/xQknKnYlVdkS/GzcG9olhcc+wDie6mbr491T9AfO/25fcSGARcf753pF5sFKHDnlSTzG
Gac8AjbUigjUOJqHT34FP0ps2oJr1v/RoKTdjB4ypQFEp14A6+5JCeXQuWZyqq+USfe6HtnrA7oS
aghUhMIX1Yp2ptmZYxEwwoiJ3vgJgU2/oRgS2q0snNyhonHQzmbmqFWKvOUgF1nW8z8l8RJ4avvR
fUIPuUpbrgBngtuj8YSEnVX/yUAXCg/TMhZChsqMIzY5nd2dFdUA7f3izBagR0oi9dl8Qu5bn2ey
rl0ouRsP85Y8hhPRefOGsiLcnqVkn8atGnzJwGjqTqTjHLI5//uOUK9sBVqkc5dHChpZSaweJq+u
U5uI46NyUv/V8VfMqOnssdHYWjEl5Mq+OzXbPZC6QQ8JxZRBYSvQJHnMEVUx2xx3rlezZuEkPqow
w/o5vry5dPLgDdhW7uprryES7psTCNQwY2qzWV5ELBAws2JnYDQEn0Y7NFGqNj8kVmEb/OXlML6U
LBqqaYvEYwK0PwLo8CsS1QszGcwTzhICvRp2vc9W2oSb9fF3ukevvGqffNCwHkw0nAYEKabKPRRH
kTZM1Xuqpp/JgM4bafYu5Hh52PNgC9rnUvAWSz9UU9t4Xv7IqKVgzG+SBNDB2OHRgyv2yEmoyIa4
wn9QaYuU3mIfPSlI2v062veUMLkcYeYkxo5iRRNoCeJMDo2ZrciCxR7PLipB/WbthNm7N+D0T7R3
UUQ7iAJTxCCy4gIbNvL1pZ6u6/CWIonI5krglsTUfaS2t6xXuapbil74bl28wzYxgtJBYOHxeeSC
RCOB30FRkI75Uc4Wufq6cMSBAAIxAMShRY7XQXKtNUpeJ1Z9n0Xn4fjI7JIjpKckYZ+p7EbvjcR0
kxOXIfQibJcPYewx4AtrIqPps1anKlJszYZy+EHEqkrAiEXIE98UKgzzx3fZkv1Z3Irf6JRKwhxH
YKemo2o//iJpLCB5+uycvoPe4PzqZYT4ZakejiPi3ZTCKVnWP3U9eJVBLtsqbDYitGJKJTMcN1BM
czbSwj0h4Di8BDHL7vUFewm5YL1rDNOA0JvZMoE7Edvqw3IxAmDJXXZfY7L7vr79m1hMoF6AO603
Gyj6C4ami/07zF8GgZovekHWD9v+7bxRLZWsYzutxVq+9VI+zTfX6FWW7ynR4kx1Q/+4dz+T9t/7
1T7dykbLilrKEh6Is6RlOWhyUNwtFevRFLEP+7WYcZ7k6kKmUdeLEnPdu7I7zLrlV3NuiLzbwshz
YuGmCH0zYMEOjRnK9PJuussT9of1n15nirHjzwwRNoJbiBReC2eigb1JByxzq/pflIMPO2GZ7Flj
BHQSH82EL0CHip2MlRUkQ6WKTSWczb9DhA3pTiYhmTZIXbkaCJUr4Rrb4dwUzGwZMyiBo7SqEoLh
PfPZnBI4/enMzbGOriR8FboW7M2hdNMeA6jLlnQHRMjQ29YV1aLBCYe+4uhN4DKsiTnTtWiekW8n
9oWZIB8JFbrfn9jjjh3zekBvdb28VjIrO2RpzsJtkxlAUqoczVNsKZLMjW22QovLWGeFz8pjx8KK
5dFSbuPLY1DOMXbJA53jpRWvxa/zEBTQNjbudnTxNz8SK+NqKPAUWZxizsbtlbcHeJ+L4JEHRPHN
dt4Vk1cjTyTrJT481dsan9h4eb0qxABRO8/RoHkkCUkfwL+vjO8LO3oz0Y1C42PmoaOL+ZfWIEaP
/dvIgWXwepqkI5Apvs1xzXPjcm97yDgX1sMKt3appPnpAmUF4/6Tjh6hZj4yZfsLISB617OInYZD
odLEbo05PwOxDqRQjNvaPPTwv/MMkkDmxv5SCV/VRi/wpfB66h+eEY5aG57VT4iUf3+i1ON1p0+b
YbGesY31Ir5wqCsRRoRz8zU8qgcWTdoGrUMn75UTiLZAy24/qvFX/iXU0ggKZq6bI2l6igP28SRJ
l8KtY3Ly8M5Oyv3OzO9CKE+MT75n5Vd/OxQ4LgyMzD7Tvgga0606Cw9STXyFxrEfc/0MYpfTtKCj
KtlSZGumcgVW7P5eCBlm5sSmW5cnxXin0CjVVWb6cEWB56l1RReuxNb0B+MC0s2PCtxTSb9eJyR/
qY2DwZJFJlGLIL9iAPhF5YdPGsLNSOEnfz0TVLDSfZyCZFxmWb2zEioa+4yCC+0eCr3zYnpGXLFX
ypzHfBV+Zci1yZ2xL/dCBvuhphYXq808z5anJHBNRvLSMGph0oQBAPzQ3UmjrozFz08LGzKyxmUt
rwEAXhmH39QiMUlCT4+3gGS6WlLBjaIBO8ggxztK32lk0tKvT1x1xVUaE2IXCmsALRsVPGQYdkSl
oMNlckURJIyvEHdfw8zahWoD3iEt5ssGrFJtk+ylLUDVdPzzNjsSwxqXr4mJFDX3y+ZbdL3eJfzy
jsdtCL5vBaqRZ/zv20z5whFHU4AEnfbv1LPFHrU3Ux1n/dwfst+MA9VSQHcMDiupNrOyQqNgqOJQ
JouM52LY0W5hpcwlGWYOk41S529/OzoiGKGC9U/nzxt+pcFx8oCYxZYOzVi8eIL0LHREm+yYRmoo
5eYDRndmJFa0LCAslXx2W91sf2J0YI4cj62Kgv0hit4qAvwyyKKcRkROhUkzxPYzjjKTla/LjC6M
oNWRnVJ+Xg/HW9mSbgN9bT54FRxiwrqrZNX42J0Aubtd3GK+zBmrvJwM4KwFDicufe6itE2PVtKV
O71rKu/4GjqLpVqtRD8FoN/4+3JZWYTV4QZ0Sf1Qfa5RjSKky0ljhv90AnClw0F0qAhZ5Z9x3cEF
x2PSr1/NjZNy6zAvWKanN/i85Ta+gHkcE1DmrMIXlEx53OzXYAEL6iStAwuYyNIOx3FzwLq80lIg
7jj/KJZ+n7eS8bZT4MMQ/IPIFo74fpNEB/UwTzQRv0PJZdIkBCdWumSmLgfs9RFQAK1zDXjPXUKQ
9h4Mk6j64fg8j3g48q67/WOAHIKiG41fYVmgW4xouI/ssSwm0/E4AbWIzySPPv/PI687+/9wFeBL
37MS3law/AzonDAKt09XIrC2VyNN6iQoD8IncmFi9ZwDzofMbVOMo3DCLjD6OAHofqLKzASOO0bU
EV5heh5giyD4lerCuyqbDT2yIkPT1G+VOylABVyNQpGlqgqLKhIoHmNUUkQA93Xv3KjI197llAkZ
Q6oZvGpFos+IbgtYbNxxZgcAxcOTqNOQZezoxi7eOJanfMu1E5vPh4SGe8eKWZ+u2gJQD425K8nr
nVy/8IVCn2Je4eUzvJMO5s0QrhQVonGH8Lp301NEjTSZVNUqKwg30uURLzhRz3RoediF3R4jWJuh
ozvzo2HNOBDPAy6KqVp5IwJtKCrKrI4x1lO1sJgNEj6qn0UOCscM3ilWfEiKWyGtyy7WQ0p9U8eZ
ae8bdixgmEZJAKOr6UWiR+h8CKKMSqisbkbpEm+mVN+qvdvSl1r2S6cQfNHJFOLG6W2lbA22ij8m
KRs+26UfqJGMT1DxlBd6284YT4vdp8hisy59gIFnXZn8OUgYIuPK7/1FzPddTDqpmahbLQV0aHth
JBEwiASGjDpr+tacXEemI4IXYw9SM2XTF/d1fLZIAIEh5YEd0XUf8FDD7zlAQNXOmvNGboTcCo+0
FftbEIYtnU4qZEePt2GNftIC65NTWVB7Pdj0DxTlBhAWAhXY14yp8NV0/scMsqNEhSnWicgIbKpx
KsMVmPv/68/qDjYGyPqNRDN3404iLxL4Q4TnEG/M2AqMZGIEG5PjAMk47OExv8/18f/P40Ft8OwX
iMS2WWuH+cbEQjWaACqvr9hobzhQMb/KtbuBBSxPMrZZefm5WFMFAQCQSG1bb/qH2EVVal1zHtKM
Xt8yD51/EBTaI7mEOQM3+tgnybwiixzXUjxK8c7Ifb2bfYChBWk6wICWmLsZX3xxzCDDmZFj3C/p
r9NGJO4ZkcDw9+GxihpM1Ik0b1jr6vvc/M67DtVtuT5/hpZyf1Sn9AsNWmv2KUqTmmB3siOouUNC
ERKkptt6aG1t8YeSv2mIDaS61xJyW0ZnVxTKp5lQRDy+0rKT41dbH+tAnR6Es+8ebwUOYTLqbM3G
zUsxN74/7uxieczrvonvmevXqrbtA4+47jnnXWIGptsWQ1oez1iXhOEdqi+khmAR2X0wohoDaeXm
oEFCBOJbOrhgb09SajRy4iMbj7kvcURGPQ9l8kdmCnZF2gzaV+L57U4MOeU+qs0QD4MAUk+Wi5IC
M15ApFRQZDRWXo4hrjp/ZdavV6u2EFMEL0BnD3NgJ9ifDCusNovXm8qf6ZbpIeoSgNNGoBb0jvib
2MF252xoXVSFl1LIIYJ+eyKymeN2xQ0M1jPZSDpai/qi8VB/UUwnYq58Rx/aZIc0xReCaEfm1w7l
NYw9oOTVyr7Ga8htC5BAIox8QTU1ybxV/rItB9llir8p8oZHz+dA+v9yQp87xzIlycUheysRAX+Z
+vT5E/Qu0l4b/AolWZWSRKXxw0llN7svvrG3zzzL7E6qgWEFjS4jcCbxgMPVGpDzoWfpK4vGzEPK
maGWkG4T4rNecLpnRRM41xOdG1VBqKa46Elo6SBLEPhmszdEgbR7dvGcPmX4FYCDau0IyY5bEGML
f7saM8W/iHP6c7plZiObQQjio9+vWD8I1oXsc8g59+EFsSLkrG8eHBqAk2e7dCnJwKvHdG+KbxoK
1XMfPhuzOC07GPmWpCyn6kc9IM/GU73H+CxENKO/LyS1xC1qH1ipDu+JfSIT1oXDISuoIUjVZpus
auEvgMMqd0IIBLdoFQ/KPizrOwhTWKEl3/w2OL0Pmggpb4VdI6Z9HlFPh8Xfy1AEoWLkqn51dtNJ
9878CZA5Y32ZkVXKiTWXZwdeZ8BZL76rCBEvMYVoh7xTEJ3slo1KSFH3ndNyQT6lrv/aC1OuwSGg
cgQ8hpCJTGE8dBbyJDaezsMDB+p9H8kgWIl2E65FyXLiP/MPjzrY4KLfJdJM5x76ZyOWL04yDxbk
f1I7h2cwEwRns/xRZBHJzVVQ3VLKVtcqYQUpwD/P1Nqup9pFWz8fhfmkjRTT6ISU/GI4BH3PUKwO
jl7AySALrjzasqF9nHbyEZhqucR0VtpNdSgrF8/rH756YeUbX/zWUU01x0tX1HozoKWQlnh5E/uT
crytW4AurDPeUHoGbJV309uiR7WHhGDT/1ZeUI62HNQ++SfHOoxhHcdMmGxOxbBPUEAy95gSKo09
EUcrbiGmlNwVgsuG0wLSDQaaxzbJT12Sc1JCUUD5xLsnPuwLg9xBj9RqQO8lVXwA6UprMb8m/Bjo
MUqyV9XI8H/Tu8mGQyDi/i+HN3WdTh08EUZTatnVH+zfALd/nHIQ2m6me3XRhZYqBf93s7J7OnJK
xSuwY9D0875Gzoyxh/pV5wz/+6hcVx34QzbjYucYkIr13KOWWcvn4hX2RjF30MJY3swHBfJSAqag
QwQAbbWAdkoJmDYaBFfs7CPIcE1LgujLLmCvzcpLAal337XSm3e8kyZlnXsa5+d0AzDCxVjHGw2g
WihurTfR2trdJv274TOiOB+jWqqnm6IIsBEAvmBX4TbAr+GBnqMNSbsEhh4/rN3IcqKnQr7yrG5j
T8dBdrWBlvOYpL+cqmTNzuP1M6bzyfwaccBJwEpXzWj+XNm6L5ZRa1hsuRyW7T/+IJGmXQ9Lepjp
rzRaY0ZMObf6wZQqZV/zYD1ui01GHLQdiLw0Nj7cbpzmYyGXQxHJJrOCKVlntbDsULIlsKSVotR+
/WjkHzPfgepAVguAskgZu8ImPy5MYLIiFbFwdig7sY4BQtZpDdhcktBn8mm5hg9385KtdGggAUxg
RrNXiV0pDCucYug9M7hL/vt/lfMkBc8hzcBXEHXWgP02yraNxgWDp7ggfrq9nm/WLY3JsMoUXHBo
qy0tLbpYw+Wqq0DA18WhOH6mIshyZ9cz5I9Uvu+ycG/cQz8111am2IzjqBjaNkI6R8uIAG6rHjtI
I9ZNGvojRvCwXWHrglytkNviZyl/L7LcDiEUPEmtPnrZGjsFAjnS4SCAlN7oHgqZxAtKFnqM3Lzq
RndkPgeCjdGlDrNerLOoAMKHpqdLr1XIYuxlmYE7L7jOj6X9SdrcUOB7ghTi+orPiEIlYM42XFdJ
DzNe0NsHpuwv9jKRwQreu18US+zH4lvBvdDXridBcbvKNqNJ2E/dufASyk1vtLvCgYedl4HbCh7F
DaI7dv+41FX2a8prUwHC48+wmj4yUAHeA6q3/Vnf4brdhHZgEVEXwuJ6RTC532ATtnSRosdM+cCQ
17uFO2hPpPpS0fb6CYfvI0gTznydUN2uD5u0vpQ/yoiDsmXJCbTvI5lMG79+eMLzxVks6bXSyUM8
FqiIIKGvKJv4Y8aNQAHt9ad2FWhcvoEg58IJTSDHjiN8GXwgNzmFfeUqlLFpd6zqO6Q2YnYmv4T2
tqQyKMThzdIHZlk8PYufE3Gy/wxCWQzFiIZJxapkfdH7+gv+vXXjXo+hKtcsxztGoFmtwS5Iv3W3
plt29CLzMbaWpLndeRqc7KSqYw+LQmQq+OT/4yLn7vY+zksNBKan5SmnRhuK9L4aUAzu0yO+g6jf
mLlfD9ZKHmhOtTB2horcRcYJf8SnLza8m14YdPrr9430OpPSOrm5sAzt4Qd5XU/shXLew+YnLHaE
graEysUwqmocAXMmYvFMSU+KuDh6cOgS4hvxrIQI653PXtaS2yztbYPiQyoY4pTGakCqRodiyumB
7KOYsL0BJ0TGZ82N3G/s84hiS55oLm+AHpUh9gjxnB+c06PuAZU2bb2n+WotjuxCMA4w/ldSBCBA
XdlRZyQLYPMQZNtLIccGHmUBuzUpYyz/nNmLwMUn04xINqc8OH6VpyGaTRtVxaF5FGBLvgctRGNN
04LzgtCouWyZaV6buK30p6peo5hxU/TgoVKxwCT9XuVGHDWoAnzXkbsl69DF1yELvBRAPFiTRg4y
k/SGJXZFmxRU/xosnxBLNQN0WFrcQzkYine6GbkxRmWUix1kxiqygAQL1k55U1GfkF20nbVaWWGS
2xUhSrxXDxEykpNxS8BVmS0SsjgQhA3tPkdmtR/mC+yYNPP3ACqC/OHbUqvtyJ01ducZujgE0ngA
3vucgb4ySQ/AoZdgYsZU1oLhWOlx30eJsVUY5iGG+e62CzZpL8D+fdJ8+T+ruLaf6WCrh+NXFhk0
HwaA7rzmRmbEUngGPH6Y1vS5flm5cvRAohUFjKXk2/RpDGvRCZwTh79tnLwAsresPG4kya3oEdbo
+wFCXNYaNquiBm/c+9T8Gnw3ugnceFpgmfaVvGq0L+kOUV1TSpeGSlbGg8cLdEbV4tk11JnZIZ33
GFO1wul/+kQBSSKHC/1vBey6pKKpqp2DA6ND8vXJXJV2bWmjtNWnx9/QVZM+M0UsB6yzftBl9mRO
L1995Kx3VCCcb4lO8HHrSZBpQrXHn6j0bHphBYt9fqKjDL8Io1grRfb6Otmno70m6cseP8ZvKgv9
6xoUEKNvCvp2qEZRalr+oA9VI5+Oce5uFdQ8lPZQ5PpFm8q3xg3Jx/J9OaDXz8cwoHABU9WZJ6L8
obAKgvSflJkQbg3He/xZwlJpCDh4fJX9LPQgEjWicHY2pqu9+xyHXrQ1BH8YV+8eGNMWiHl/o3Pt
0ZsmnhPY1fpGmTKIWG6ItesssXsakRI0YRQbnl8cOS1Nu52KGaZ4Gu7nJgQvqREMOv916KATDmfY
uhdmDjOsFu+6VY324bYplOh4FrzssjMXYOsxoYsmaB6QzQrmMZLYX5+7GHRihqTNLRaFDBIngxn2
mNr5DAD5CJIV8Nb+dF4GoqvfZFbU0eR0zXgARSfk6pKvydPni2CRtUsFCBwh9PfjNusKOwK1tEa+
Gw3PVoIou9iW6JY7fi9WoI0E1kqKhUzkXwA78EUI7x35hK+VbfOsSot8axvgpYfyt+xMyp9fErGu
qc7bM+K8mFhwO6jOqRa2Oz1Jv9Il80HHDuCCSIDM43Eiq+pU0jEVhCA6r60tciSnKsonj/Vi9RRU
JJisGyvVzCxhXGKUd/eoayIcmJydTonASDh3nYtgUyrjYxsn/yqEpb/Esw7HixoChnt8b6PC3ybD
xnwfngvvvBWyAv8EItT/VkzoxoK+MGn67Jlo/n3umDgSnORdD9cjGjwHsYhLUfjAJ2Wn87ijt7G8
tVGs/ub+3NFc+eNhZqfMeEjUBzTranU82/4ld7RTi4xLln7RaoOVlkpxHK8dncUGgRKxYpsKBFOE
9Q7spACAme/TCBX+mLOft5dc1TyFKeMaQt2rjetb7FL16C0at+tG5COpxDk1DAsqaxSlHEKk0E9/
uwX+XK60ru1Nx4UD/d2/4ZO8w5y3Fr59Ih9YG6XGs3aRfB29OaS2hGGI6pK95o7tn8t5FZ4NkFu9
2xPXj2O68Ac5HwlwHQFw7PUUIHvO1WWdVb0gXpRuRf5SLCeFdILDN0mbI8KyLvWLEgBC+gvBskzs
sBixAXePpcppLc5Vd4KVZotVikdwPVJ3LZLASTtZDI/fwHxZ2SBdIEanrEoibB+ApKr4KwvIDqn/
uc2MdvfwUqOHESU5EXq7kh4Wb5+A3Fcic3KmrbcrLxLG/yacqDeiHH9a5SVGGIzu0G7/WmmbzqOM
ZF0MxMA+R3Vc/uBRg5HqD9uFhgiXhxGlN/MKCHemz9WSx3Tmri67a5j+rY9t7XcJ86BTNVTtMaTp
LvGGHqSxFOsCMY1j1zAbtWUfLPNVxcovARaEXh0+uEp59icl7w8ux2XqSqWhGPxHeu1RtZWRd4YD
ZgXHNY/oELu+B4GsBqcS2RNyrABdrUk/NMrPXXeBtiJlBZHNm4g7X/K8UXzu4dCIz9MIC6J6jvug
nOL5YAF270sivXt3uKwu293rtKp5ez9wdZ5MaTqhb/op9+sU0e5fLa5PcnaTAmx9TDZTmgUmCyhF
vxocZHvOVh8BDtUUDJdPRHVeNeGdFHnCMPBfZ4Ur1pMpjPUW6fCaADivbILzBSeGLNjWqv3R4xo5
ynwAs6NAhMYhEu68ULEBaFWmioKB4DUjgwbQMJCJZbTnh6g6Agb4fV6ki1+l9Nc7M7W2rqfIg47R
KCffTgY/62l6LuZHKp3Jw1Ul327UobBoBA+KFi5w/TX+jUaj7sBV9C5JL5y1Ezf9AN/HMwv2yTqZ
pP0/vTgbY7MQ30Phrib30uE+GSlJeglUAw8682CZd9OYB9LzprDB+1/sJ3gdtA8YjR6T8YJ68kts
osg+6IZEU+kYi8+gWCQ/dT20TbRLPZZu46dbfXqXPnQ8GGK1VrwcT6kkg3DBLxILc9LmRb2JIqE9
eIUY6n0AJqUyNTtRs4fInn+9eIdyd3oDnk0uTRYoOJD1saxYuYKbcg9OhPf3jThIQcXYfLDBZIf+
NMcee5MGLOyckxj6tNIrxfRJJZBvkE/hFPZ6Qx2kxcKwTS12x5ZvM5qmjaOc0VzR32MJ3wgh2Oe8
y145s//0ymX29wE/YfU8TkqDHxLaCRbOXrh5OViz/YW5F8cI4pHsw92m6LMQxP5zP+yh1lJ8+D9R
RR/7PVliCBROc9YIXv3p9w5sFRUq1PtU2sTEeGMG6KYUKT4pv5hStLfLuaFifdYjZ6Lt7cJSeL9c
CK3Ok3wUc2SrLDgPJbcRNxm6ewMc62LCUNr6X62Gni2ciVyEiGRwYF70jisGQkPkIxy1XNNp+oSc
cAmgBnLOadoLgqKt/Zoq8wORBdtGIrufRPJUW0vrewKBnOjKCMokWuMoEPR5bLyCRGUorMStIDbo
CA1ahM+iY33iXYhSHqD8O91WupP2Kmq7J7p27cWZxKyE85Ft1xUf5ipMrdAR3N7pVgKGEkV4K9qA
9flAjS4c1W3j7biJcR7nxu4dXr1f4T0/adN8XFK6c2sIpCyVeFEKb1lXCiDMQ/RIhksiDC0awVeC
keOzrDXUL2cAKbEpF3Z5+SY9CudTYkFsWXreeD1p3lf8qHHurC/we+s2YMz/mdqW7iTE36i1Dakb
ognz2mHsEuOxGXhmiuwHRbIzBf0lwot4AoAtJ5IXaTCuKrnXGWJq84DXjcf0VXdsEXoBBKr9Y5Y/
w7UbiIWnOXPRvO58zO0Q8I9CM0a9LTDOByormGl2cAwzJ3L2q4Q8BOnGJx0wSKbWNw6M9GAghYro
fS8oEyq9jLe9DRapbwnV2Z1mQ6ZCCtg+5PPdARg9oT46TifT3bdcPTzvln93hG84h+YEYPYiT191
ATqRVTT5blfJo0Ky3Nu5FMfXyfV3nExZusiSgtlnU5BOSjl9OXx4cr70s0kK6YwJa8ein7zgXOXi
TQT9DpnFmTgVhHdXqvEDoP0piKaygM/P4jC0aL/yIOxK6xrnl84a2GzZ4n6n1pbd5HvL1G31SM9H
ghTUA9ynSfPy33YMWTWCOuGyblJ3pJ+lmv/Dn/7Sqzkx+YoBVpwC87TFbT0PEHktnQi1+xdnvV+j
l2JmLU2oBxTjgErwr2aNM2YrsYd8BTTFABDl6E0ffvbeSMaKgK0tQrjlH08/D1X3RoPUsskLR2wg
j9pczoZ9OImApG+ysAMTCpShMHJWVrbt/+ppGrn+svUTw0Y4/0SX1igBoWVUI1QX/SA5siOKj3Fm
nA2nLYleBREvvUuky41J6jfs0JeYYLbJEBe6VoqbnTMQuwuji4IRvk9VAb7sdkRjClVuWOq6oUrW
urLjyz+FF3IWmFfWfgiD+aojkVywZy/CyOPoL6xDPVhHhyJJuFU7B3JFWGgdfVztM5NBp40qm1aY
AQ7dpzVI7GRKpU5tvww4RYUTKPAR7N5MP2di7cB5ktNEg/Y1n4/htshUtZ9EPmqK6cXtbzNlbva/
eNFi70ndHm+lGXkCH/pOmcDArv8R0AnJrnKCQ1gvDzmmL9zuGgtjU1eczk1KIK0F+g2PdTS1LjOt
+g9EvWtg/WvF92VgiqI1BQgN1gqL/cKMSniHBd5g8d7/p3sa2Rc8Sn0QCGBIfsxiBCYXYO91eomh
wX5YwDcF2FdCThDdgHSppHv2Vr0RO5tEBt5L1A3tk32fcc7Xj4wheabSpwpe2YwRZlspWf4Wi+eg
/wPdn/pyAtq4NlK2bYyfMF4zP9ZS7erF1xtbTrwtzS097YunqAPww4GSyXJFilHZAsN5ZW65XaBj
NIzZW9HEeE8O3Y0q2xbv0eJBhoHq9/t7FkUTvur1RJLbg3VQKFZWRRUugR1UpJ8XIeoqEYZxoMKy
nN5DW5RthnnqBaohY0HZIco52uuSzV5byzY3XHwcJmdV65FzB67Cvwa+JhZ+qBs1Upre+OmUs7mZ
eNgrMFcj2EpKffusAfCNfOK5FfICRdw1BjPEmaKdCMOpG7gT1XC0HOaYj/o+bBXrLTk2BXR6C+k0
lTXpjN+eI/s+tXRxeWA9fNWE1JF8uVqLKdhYMmIplUQtN9x8b5wQ0UljqBxEG2GcPE7fUNpGQYzC
1p9xo22qkLdLDveEmFVvJtKz0+7kiV/iZz0Woa6OIrBDl8Es2qpcX5yHypBxBeDzeCT2j2HYi80s
d6xm3s/HOBkG2ucfZUuShJaMDQFGqUyk//aXyGYzHrqY1ZV+hG7+TxtnmKy/Broh2OTOybHgdcsJ
YOCq4e1EDf6K9VM1YEWtHoSuqP7qWVx134i4Vp2JSLLrA23wSNpiMun/g2tgTK+nhI3eCSMHxf+n
3+uYArc70dnTR+0qd0hfOfmpj9GwPa3Y7L026RRKXrD8GYdDGLmhYRWHd2Bg3zjycF9Sk9iu2Nwv
tNp5rkt2CVKb667uUDiZZbphG2EbqnzljIfooadiNG11sMIdVAE6ueHi/bFBc8qdhlJgji5K8PfQ
32xon+mbGCEZ6kiLowk8bnzddFlqM69NdJLeSj3S6cTZOPKBFe9vI1Yv6zy+J/ce/M4blt9+SDdL
gt7Yoy6L1FLct48n/WSyqs9egTIUaXmx6WnUMV3xkcxHSqXPXYlXRFSOzITk3b7yeKRMic/iVGUe
sRWjQKBcwFDX5BPuHnSN0UJ9cxxET1ajj9tDmM2nTiu/39NR5/QhzkA0yDVzIOgFC/mxYDsL5t6N
XiE9ns8QPVca8Pykoe0j1NsLEgnLsYCgQbKq0q0eT/4k18CoBl7lhsqwyc1uS7FF83gEyrG11gM+
BMJNsUaW3rh4QwRm7IOqgsy89j4geXfjsaGDgegQjYQ3VqG6bHImGhV7pZrNOUDG8nqDMcnnJkPr
xkEPQ4kLOEDsOMfeXcayToUjFjie3t9BLyuv7rh3Xr9Du6UHreza1Zl8+atJTB+dc3dAXYAFCoMF
S6/Yk4DARB/dlVm0DdIPl6FZknDYQDEI/mFJ4a9Ar856ALM5oT6yDSRsrMrrYoEU69624UlikBE/
1m79DqHRg41KI5B4QClrOsmMCce8tOr3rHAwjJZHNaH/GzuX4uxMeG1Ec9+9O2E/jLwAqPABXi1T
q1wesaJb7xiepPNMGDIfDSTDwvlmv4W4q7Ha8Yti862+SVetOIEidMM5uTqmcrRN/40LGTgpG9xF
Kv//s9Gz08oUTkKDbOb5zLlfZ1usSy4/Un3gdUXlKzUZ8MgrS5G14sKcY9kamOFvj8kzFlskkbse
cX1s4eEyazWgcVrgUAa7QNZ3to4RhnTpuqr3YQizizXPu2BoXwyIQ6vsGyHKFjFHVfmeBvNuTTds
hlvFBno+2bkVVKPuBy3PcHeBDVDhmjQeCVsnmzNIdDugt+UijSAjXG+ELgkdW1Mib8H9f2B/6R0i
z+ctIooH65EYlZfaAzsRWho0bPog503+QP8UzZhmaYGvrt+oIMvh2sHxPC3k/3YVmmh8ffpJawx4
nmcWwMbKRyGyjHetJV3IrGW2WpfZhFPJs3WoVpiuM4UD3eH3CAknLxBBQDRxJ4DBY+0Cts4aHyFe
t3Ml99gIUI8aQKXqdG0c0yEufSUNGc5r+Zk7tolXEvLKtIKAVkCXDA1+HBGn9i1UhBRT2LDrIq7o
NuC/kpE6wfVc4OTyugmquSDAjcS5we9EIqFPG/8UqZbH2U6/vUnyiK9coIIUgslpOw7ojN1k39+C
wVDdncs0YsEKA2/uFV8eIvof/xAaKoYOEDAd879c7qGOv1YaS5JQoc+DLaTthw1eXFxP5YYtlxxS
cjQEnGZ867wrILdp5+nHm84iPqtgEyKCoBtnhft0Ikm2k6QLeElxqiVC+2GPVqg18c18o5X13wYc
loCDqhcuKch6uod/UWX++1AgROjsOiQemKABEWVTMksRdKGPYXzCB7eedGSjEefJCWS6eBpZo40z
WmclCVQmeQK4kdVFCj4jCEc4b89JBYeyFHhAu9n/F5sEEI//smteYxv9n19oSX0U78w0CcmLnS5y
yJfoyqpvekKCzTcoxHqWFw2F+fy7KlUiZyIYIRtMbFd/RtZviSOdXCyx1L9lqPPoymMo5vih10KW
1XAz0qnfoZIUfwwDFZlFq+XfIdENoHB7e5QD3ddbCv8RILRpWTkVSvDVuMjVRk4xhuwCEpmAhZwL
HULfDG3OBkQl1R4xSlrNcsi5FOgPrGZXmGq9CBvJYQzVn09nQzhx4AxYpd+bPHHGxrsnnclAanmL
M0YoaMNK8kQYgCpQBKdv1DHLWm/LwbxTSciYON+F8NE5WRVjF53D2Ci5Vx0ssEuZP+Z+Vfg8IaCx
1HIgw4yNl/BtAIDLK20agWDBE49bSnttzgw7c4fcyfHUDaDqpwq34vv4nqV5z6/4ODO71VK3G+5x
c4bdka6Qt3RZiEThaPJoS2TNinVX6aOgyl70AiOX0lO1cyaWw6n5cVyGa3FX+SQTWXa3OjOoESHW
rAL7yb9QZ5FRgLXdgI4FjJnM6jJOtQWdriOUikf4Fm/ETHMjX/sCZVZrZnRjbTbRbxwrlRSDaQ0S
7QRXYJ/YUdyOePJFCjshCpXO11S2N2Xfe72YD7yiJhMaXte+iHQAfWCV6fE86Y+BgWjQg2pFE1zv
IjAbsi6wWY42UPRGSxy9MYvtJe8v+XfYMdiTG8QlTotkLe17XTBz+/zMMK/UXkvP6XQBms8FC2T+
cquhvUKqEcy3DNrH9xLuqrHFZVmNE3zn0XqMHcpRKrQEGpIl4gY1G1axhu+yDTNtGE0aM343Egja
/WTG4lVtescmebIsnSqpHj4PiU/Gx+CDkPdRxjs/8fVAUD1A74a/bTANwsykyP8sIFu+oL6RZ99E
2noGSKoYf0/aGv+i7Ktx8gywx7CIEze+Mxfj9tcfMQjUp1shpTOi+7MRjxXm9OtJMCwYLXZ8R+CN
FxNy8q4T5K8z0G618WqsHVL3LTIH3+9Ir4yVfm5Q/Zta0aBFsGK4i/lsImDiqZOxF0KIz3tNjEgF
ERzrvsdtbTbDiClphtGy6bZTHJJGIma9gzHo5oP6WxrMPseArLNjfMAnJZegSH9tSNFs51Jry7pF
S6nxUmFfwgYN2bruDOEbPo3cP+FagMD0t6H5bZMIjAOs8inM8kWcR/77H4rtw5NZMkbYhIgoOjRb
i15fG5ohHLp1oQgCkdC9QBf00eiFGL6VQi+z5P8dSViJSroNsBM/meH2R15mZSPOSWpWZiRPcmDg
erU9AT1N9ZigK62gz61VFRN6D56RtRTtKP9PUpFZi9K4B7xGwC+IhzrKiBIKEK4GPU1Tic7bOnOP
pmU/NDp5ZdwCEqqnLcZ+Pp7FphSfQIWafHHlvifm17ztuNoHuhEXYm5OXV6KBRIKsdXq7ERrxWs0
4Ht5Keu77dG3CY7cvpTaEatWHaSSW328FTWS0mDicLkTVmaLQvdXvM+CywxddU1W9YKfBDTi10mz
dOmnQwMI5XuH8rtY01ixYHuIXNNenS884cS03zi/hB4k65WI5LEB0l4x64YBcX+lYdfYP4DMjlGy
2K5b2ijDBVaJv8BDsFRvxVOMxfAMVSM/PKRc+Pea38zFYbh9hXTxdCqwg6zNNJo3c1OOA0VXSpi7
RMTzvNcecEedbEfL3EXZcVx+1d69poq3w2dwPmkmaUc2O8P8Nh2qfIC1gH4CCi/+3ymihbiPXnPx
VKb/b8xolftDy01cFES9jpk6d3nceDy0lJr+swKNRhq1pR7BFpu/LamgLpPmv8B8PZlEggewCXHw
REqArCSjSos8WChk2ezoiA4RYn55lQokvyiiyNcdYlj2l8ahcQCOmunp0A0W98PtIFIlarq8QHY4
rdwO/jX2NQRhhgAogPamyRmBN8VRoNLm1LNppvn6oL2K7e+cGdl+Ge/VTON0Ilm7X8tt4frnZpQZ
c87wRsu3JfGqkYZZBJcWxC6RP0M91zmlNNhcUCiGsbv/0gqjWRXPAMRVChyMzgysd2jOTuH+C9Op
p9XPNPuyFl68OknvJ3CzvX8qw1Z7O370XIAprhi4alZlYkL88n6IHF/Slb8YnFmsftEwxi1LENER
7f4oQ0j92iDR2eX7EU87Qfi3oWf6sdzH/wn/I3B4FazS6Q8TLAvjzap4+VhoUgj+CKLYkz2CmvEj
MoS1tm3VuebnM94YmyhHT6ElFI/sGRFTzejfyTnki+MWQsQgO8vhq5S1irssV+FIzM2BDSeMwW6L
ayu8wrk/tLEihYZOKBEm95n1J63xLxq8mvCbSJQUKKa9xRnyspPfNExQxmSshuV3X3lNuvhOeT9h
ZcvWKI+k+ZPodyP8WFDRSBcO7WoQDoMR6/WvLYSWkbLe0icRlQf/x01v2K3WQA7BToYZpsC1APk5
+UBjPgxTFPjyIo0C1KzieHMjh1ofyuGmFFEKJYqmhgKY3mdOLeTfPWgDmP6oO1ZA/8HoZcF+zfYw
So5w6/s/v/uf7vqMibc9HPGeBXiKPvGHYLhW1YUd4vNoGNna8bqT9WNGQ27sUK+84alRRSnNuV7i
sncVa/is4jjI+bLLaBdgcej9Tt315U5YSis2DQMu+FLBrFpIj8loghk9M6W5pxu0olimSn8Ot/Rc
ll02OvkaGjujCWjV7qrCEs3vGNI0BDFGAe1NBF+iyTueHVpCai7ayKzN66lM3k044e0aA/iP8H8a
L2l2xDpJjnhexqzK0WaifornkRFddZ/sR6smx0GIgaE4g4FWX+tpzpk3RB6WVR22bpxcJwh6ew+Q
Gd1Cpborf7mCC2wuFNpxpgiD48McwIzTWHjeS+RdvpbP/i3jp4T/vp0Zj9R5BThqf79+a55ZAhQH
+0KQwtdl8i4GN66OzqNRNppHI9LHycJRLuslnk+LBkJ5jfODRGzSUjee+J4t1uryJSHrt60lvF4O
XKP7FcYQscYHtk52e4VQJIP6lMQGM4stBApAzizwwv8y3DVhEhjIv8ZAMelW/ZnG+CyNEBFa9B8N
BUt6rrixCmvBaT11wTUKut/RPjFBvOOf3KAytIzkmQSuX9mO5ANDkatm8sugvMIzuzcCzPV+dS9x
jTTzAKWJZFd3LJcA/WpADk0C84ELW7YPGb+oa9HeU48QJPpT7pYkIh7pFKhxtaZO5YiL+V96mT+m
zSdmp8O1A7hdzVrjgFVhXy+EkWBSmGmhQ7tDp/JCdhy8YNFDDYKR1EJV03tIoLztG0gPHCuLUkyX
/v0QARBC1jWuhKJrWOaW/ofXstyoNW8bmpZg3rreUnQSM0Z/XcANLH1bUv4vEhtBmSJEOZDYlftB
ch/edJ6IIs5A1BohYkk3Xp41ixeqs+65267d45l0GU6ah4NVnozFERLMOvmmn25RfOtPI5TaOkYp
RD1PWJ9jn3zSL1prfssK6BM1ZPQ8eoFT7ZzDgUhYFzUhY1gp2mFlp7a1vMW2SMCETeBWJO2bDzCN
Lfmood4WIX9QAEms8+nrq4h0TzINNtZ9jqdnxgq4KvukWMGZFjzEHRuzRKIfCDMTxbl8M6Kl8Rlx
M5C94E2jbQdMpRjHn86tEe4Ocdo/CrKgiH99qMURCSmhZVN+tCwM/u5fx4O+W1D7xSsEChZyLEf3
17bT/ggXzI8XWroLrX/dUEXOuxgSx/xLFgQtrYzPF65zZKCVtwDHbRnPdYJO+O7sYkQ8k9dbC7Pi
zMtF7Rkbubpk4XaT0xLxG2dBZ603RgU0w1fdBXyLYcYh3CWXbe9kk0mTFtKwyEXwSRV1tXHZiUGA
n4jLZSHOBXVIJ+TlveucTO9Z4GE8T7rCmh9bTjfxo1bW8GPg0ymYCBlH1em1eMoU+a3CRRYMV4ye
FDsODhrQHiO/kKRVs0/dskMFpF61PNLyV2JW//yQ29JTwI7LQq3aqSlUq6X+MTYtG62Hdy/2fcR3
5BfW4KwEbkPzgexZx1biSDDJ7I0yV+zsa3agRh8TUxkfSghrK55su204Fa5vyT2Qrpv+ouRai6oA
+SnUex5r5ISZlAST80BrKErl/AmiQrw5OwYK4YAKzCYGHRrppZ309HIYRylDzdHP/46ey5lsCrMe
Box2WAoPzpOHCA0+Tf3DMHfUxwE+1LO3uoZ6jw343uh1v5ihEjTjIk/dCAbCXyVU6SNpnPrZnmg0
Mo4WE+8j57kFaLax8FlXTqa7HKe/pjTkBouZ3L0/Bkc7j99Vo7F9sm9/yHsMFLOIkzZS+mAtbSFS
gn9OLHeX0+L+jDM0ty69Dj1Y7WLjehr+3qSAjQTrSJVJPK2nc7NVjByiiPpjVn9h78DGUIXSQ2ED
bj2vMMoQwCLpwAtmbX3WCUiMIPR1tY9dNRkn20PU49NY2SKtDcxN0uhnQSTCfrMlykE3FTjzAv3U
wKEvW5UTPVJYySVpc7Mkbj9My/nCUok2fwYmHDn7kTUzDULo3yxoCWXMqAHUWzxZ5qlaZ78oCFjX
xEKJxs/waN3PaAQTXOu91/DmmXKqJyVrVGx2WGFDfSdlUD9ZhuF/+IZiWpX5TP9WibJU99R60cSI
XIY90oK/kjPc0pqacu9cml3HRkSKGf2VljbyzxSPki34okcxHbwXL7oMvuX4cJ1PAOLdaAboRPIU
qZhk+iOrlLzqDoxTchJ/7+h/wyEfKqVQH9iMwLVIjAe5Z9yScsVCMet+RHMtV9bwlm6q9wZzun3L
4cyFCKovZ1GN2V5xeyeySVYyOx3jSHzcaHccx3b3CEZeQapvIkXIwqWYqt9zA18q52Z026A42DqK
wFUNXGTx06YAtxQ8XRY7H1jq+c/yLHhSGyHAzJgiFqQyv4RrOwGmo7HyHoXEe8wdZyqeW6lh/xy+
exyikkiI31RfrqJRSrZkKpUlVzmPk9T3qlsNaIM/S39ywzC2P+D8g3kA1ItsYkfrx2Jt2SBOiL7A
zwrvr9mcvekQFBFAMriqlg/5sTHVqWhJdi0dBRhYRLklqTIQuBp1u7n3I3AHPtDWgi91+ITEHv1T
1GV9Fv9KdUG2uNHsRWVRDT/1w7zo1axCLAyqWiR+CHZLlcBTDBLm6QDkOZjhz39hCPjJYv8klUbp
BfnT3Vt2DBMN+hzyQBT0fr7Y91QuB5YB/yFs+bwkr2GgKJYrUw1PaNNpM77Oxe4XYg9xWfarXlgQ
3Y1HKBjoZTFc8fr6WmWrSKAZmmcvDyGF5Pn4hFVR9LICzQtb+HKlJCkVCZ9AVgHnO8murF0rGM1H
WZMFYhkiS86mTnp97AmDJZFfa5Gjfc5sovnxl0XM9wKOxBymhyobB/vaNKboDnoP8JtUK3wKCDx1
q8KfOdlYRTpnH0BZCBYa0J7jCvKs6iupNrvhvfxQ7oa5ZMiyr5F8DQrZhLkOOnTrwbbWNF6rK897
VB7jJ9Lh4dX1G5a6uHfbMeToebz4N48SfSjZMrtkckkLv1QUt1gY3NHn43/+/Ndg8ixuYMH30EDA
Y5y1FNMEqKFLKecSdMsvM0tqznht0In3K4f293JnL0TjHk/9wjXBnFglSipZu4NqLsAGxKCxgmXz
PWwXRN0vItKGtU4KgXJiHLeRj0mqzzSRbKYkcMB7s5DAMLaDG72NQQSrHf9qaRRAgRWp8q4gwYfY
lE6FokSXG1cc13k9QLl5r55aprXbt3AOyPLdrPSGDB3DNwJ163HOrXJXPEk+qo44JYSjYXQUbh4h
YKjuVmauFUWakxccpREZxG8df/3teacJoywkPTHm3wxHueD3JX+unZ2qkot5XsJ3+PV3H0FDFHvI
sLoA/ylFq8PN8gttgLkA8eBfSJhwIUpBKevkTyJN09BCfOeS8iIdmLwpj0neU6V9snvv9xqjFal9
SB50BaluHDSC2BZVEwnOgZNHW5EwELlL33q4tA1Yjqc3kJf+U1BxdAv0whv+QUQ5WGS3nkCjFMLO
SgPW8j+Lf8EuekQUd/XorZVC39DfwjByjPA9a++YfDKdpO9adZmUpzA5KEq3EC5U+4/fcS9eB8c7
iej4QJIk1e4MF6zog5wEbGfGE6SkWq9FAPUIbsvr+Eab+FM6mG11Jiv3Ylw1hA7v9MKify5mzrYS
BqR8QEF4K6GC0y1ZatwFGc80h6nQbb6J2cx1SZS0CWw3lkAL/7kqmQQ+a6FXPwEzpPoty1mnbfIv
f7rbjBVw1WYLmtkod8GFfYkxL0RSn+7Q10JdoXl3MxCn63knMyRVTsWB7WqPzdlrCVy1yPoCxZwP
yWTOL9fSvZUXQU8m6iqnmf5OziBlXndsBnLuON++696SCCuuKEt3qcD6cwvKu//y4caikCslwMg4
cMeAk0GeHuEG0BGV3273XqykIY9sNb59yISWjj8eUNfcDoe9vA2UD3qp73ipFZGBADAyqUgOF8YZ
P7NqFE2ZMScOTaAgrBwfET1DSbbQrYSaXW2xX3inRckbCQBChGxBgRUAw/HzUXNyRYvQNmCaQcoI
rQgCeBHuiyFFuhJLC7gqJOkcUDncUmJjRgPPoGkUPD0tl1T/szRXGSY9LHLFkOcJYBhS+QAe6cDw
QPpwhn/CGu/1oCPwhGSGqu18DeHv9LeXJWfr/XnDW00NhsUTF90LKrhvJrL/venVFRgqRSLD1LGA
ijVNIk8i6KcbhTKBDeQcwAziVx8ChHjaN7DnbKyGfj8NYiHGxSb3o/3K4S8jfBwsGEUyOrNClmkV
UULM5mlYbKvDjWKXTvEzF0jUUWOOtPnAuPY0J2l5WXBVMEuks20Cx6rsW48lkGytWR04unh9s/hv
c8RNELMobUfWL6hfuEwEHaVlhxxmH1AKJgA9O7WwitPRSNk4yMOSuC4rxeU5nCqxvNxv2JajpBxO
h8hewsFGBy/QAuxFS6Gok+YvmlF4ZyZeVj1Zr+oKzFrbuiLmf6C9Z3tXK21Y8A9DYT2m5jKHxKdY
HNX26SE50y1nfCltzBiF40ISpCxHRYN+w4zsRu4NS11PMyzCokj+N7hMiYjlVHP3P54mzwp394c6
MOh+3orLVC4Qbn6dxaHb3ujzkwDGJWv+Eah65z+sk366vcdXWZwBJl3qaJ5nW/4eiMBtZAOu+zo5
oVUDe12TeucpKzVzgtycrktNL15FlniYNAQHnpE160uHxsf+sOU8MJGKIR5H/gn318qxddL8J+EN
7TBU5A/smaPZtfLjyvV2HACY/uMaY8WrC8CTRNS73noVhGsXtiQ+Fq9PDf9oo2nz3a4uPPanxnAo
3WsSAmCIFVfHFcsE0r59H7VL8Qsvw+XXE4Fm2Y3RZIcIecZEXJeB3u9UgnWlLF61nFW2fj6xR2rU
Ww+3mnoZCaQX7h3mfYUGDu519Ayr4GhW0HyprcC4GODUEiL8KI3UIqieNJx1OJ8Ws1OdkE8jiqFh
8zJSyHE/uiw/Xe6qdlNhjiGTC548LDzVB7TikdukorTEn0vTGlj80+MTXG1ku/xrQdvmPz/MEiGH
lRI09W5YEf9QxdXoxVeJYcs1Z4XinVwCSPxz2MZHNe9b2Y+gOO+9HX4MhrwUc0bhV7ATDblU0CYJ
xtaocyHgiSlfGSDa6L6ppDPFGJl8T+kzFuFTmL3bhAyS51fI78fn0dL7z/eofhQxgnuepSAn3/Kl
AjgLMDZsfQCtEhE6WxVe6HlVSImXOl6iYaeBja3knYCAw1Bq0zw0RiveQLkj/hH0UqTFtKf5xzUH
/oI/cEJeMZGOImnYqL5chEEgHOnpi9/DzrEhnOAAzWtVVFQIAqgadwfNVZU15ciEMV+nRfLDAd8N
FjHJ//BJw1H1XNbrfj6E1jd2MIfwAO8oBkpEgVgKcolb0ML84dtL4DrUWMEzmL82I8Y4hFJUx1HF
0GeImtK3av6dMriQpykIKb9mgzqzUTfe98Dddg1QK+zdyY7nLS764fFtBpfj/t1UzeXF8xNn7Pqq
NQUT8e3kKfiJccjcaC7flb89FTlm4juRNlflVfbDqWrlO8zsIKTuGYmIZFwmG2l451dvy6nKL63X
BJdjAuVoL4m0tN0SEuo1xhOorGGrN71J9qVpLsW9HsLWe6cJwkR8YxPcA2GtPJiUrDJuSz+cV7Rs
gyaRSG0u9BQdXFrt0/qYZ6kWZUBriBBoyFjAjSvQWCOoH/KK+diN7sgj0Sqt3dLn6wvFFfzN6Tbz
CvG0V6kIOaG2GvahkkIVOj6JgborVajtGd8MClPSL1CmNrr292MLP+EESmVCoSpokwv8B14VbJ9d
vL9I0A3XjidkRvDJNwS+l174yhowGVqRw8hZPk8UeZsJdmD8Bz7P0lhg920fFd0RBQoD8JgF/k5M
+ZeH3W3UZS29mc4bi58VQwIhGaPC0caFCKL9yl5gyLHo27kmzhBqMH3ENvsxwKLlQ3tLPYEZbWH/
9cC3aNF3los40iziY5VQILBb0WrSjAtMIys2i05ZPX4gDsGKpbTElaN9TeKDYike9Qym41LdVs5x
2miXPaIHCHXWucn52c4uMV5U6nHINz/LJq5mZCt5PE7VCmY5opH5d9nLdaEPSeEnevCa5OwrEIW7
h2CCaY9coxps1JmV0/I5LyyZa3ZjnzACydRyTmhhp28B5Xmq+L4mOaiwZt21zI4LhZVOfwh+VMu3
WfwO5wUX0ExlJylcg8RiYD0fNlbsliCJ4qhcMoVfSA8to+qPQs0SHs5qbKyvJg2dX8NIp+0L47LO
/nzUgF/JVNQZhHDaoHHFG56uqAA41eOkOekHhagqc3VV1RB2RBpNUMao9tNyxtU+imrb2Ph8v3tI
DQA2fu5suqbZgUBl35hjRQeF1BDViz/LGF62QLJhgy3vd/njOTjpqMwTqDV16VtKE459uKp/E2k2
2D9OCiSvESNRvEyiy2INd37QOIBZTZ2IuNkLEN/oN7qN5oaFIJhKQUMFTDajpeGCBc1nFjz1tJvR
zMUeetyilcgqnTnZ4iWzyNb/XqRGvkOBfd/Oxbv+ZWc0QEaak22xx2rABLLAIXF1JzYTYI+HEOJn
WXA2iKDPfxy4OBVrepjwJa6jrRWd9Mc5WcB5qo9dwTspi+tEj3eAGv8o3MZQz/RDXKKdEVhXvAKH
T82vvP0kc7FwZk4KowNNbcRs8Gp9gfUypsU+E2bj8jDi+Rn8FOeWBXVOxExVCt/eIOhhP97GVP5w
+wiL9Epb7ZDfLDXW7CIol+B6wY2Lycur84vXBAmeGtSWk3G0BowRVEkihxgNV1QUc7fHOkR/pm9U
M+5J7yM8L5+EsQljWArqjgDruRmOGkTXpdJ8YN/Hy1Jnte7DwHoyS9iynv8XhdsCPrQJ06DVWpmw
/3y9i4yZqbeS+ChcdSZWARr+Q8V9xbmRkSolpTcq9HfFBtMvpywZc57ZbS5UthTNtub32E9jRD6Y
V6rySf/yI85rFSSZAtimlrGTQ5FEgv3yOG4gf/lvZlESxjJr7Oqxzr4Ot8NgWVxHjz3iMWmFojDX
XQqZVRz7dc5eHXfhJYjXYTpRbE0AeoNcb9WmGoFy+a2EeWUHzVCGAnsC8qaC+mrmlQqPjrQh4MhE
dQ5tDX3fYILOe+AXmWhLFKBOnjJMKSieZO80rgfE4kxCBqp7sWq+OZ4fzSAa41t4XPaC14RwgQ0h
4DIrsAl4eKIqX4j2jfC57ZCjnxPiKgri87i16io8OjYyFbLmzeFrZihogQIM/tyd11IyRih0fhH2
fxVm/xHhEvsxzok8fzHRtzSQGniLuUjWLFOMDd2SQRzQD8MtU8Nua4PIkViaTyn3Rhp9vPOGisee
+quaoGI43sylxJQWzx5Q6bBt8I6fRebZxGkW6SqILGQI07zlQokrA1NPKa+iBVtVMBbwnYr1Zwkf
dDZayhbwuzbmf5Qz5ZVm//qNrefBrTEUnQUjNQVRKW6HOtdao52MmK5fLaOqFgzxB0E9KziCsKC2
qPYm3Wz8x5rPuWGAQSBERGQWZQm2Zr3SbFnuQo7BFKYQALWEcxRCdWnT+HyC29+Qi/UFgYGJqjcR
NkyYwgxiEVC3i4QidybM9gvCTNrDATTbOiVzBHNTHbyFinJhxZGsAAuEtMijtVYst4pCHTGfApzL
wvzp4lOV4qy2TeZHleohDbatI/NyhUYmECHHODbj+BwZT2tTrzgo7LvlZE6IH/OcQnEDq02k18oU
1i5Q3wCVIdycygubV+VTXRk+9RoVZjE8E9eY41mWgyjHHNgwnhYp+EBA3Je5WC/eYAxRebIICgc2
ak8fXyP0WU3jpF2Y9/U4CMXThUW8ie19F1wgXduqnclYlSWivBLqWvf7DH77Fnp7CXQEgFEMRTBR
AFCAEyfNsdU0/OWZGgTuzBvIZAZ5za0SxJ1nAf8UXZB3WvaS0ZNkJPQnhip6z5AreLHMISMk6/Wc
hGyno9jEWJd1KFOqQGVdeisyzQjLSsNaqY/EW6+i0qPPOBmseE5R2bu65HnK+ysSjcrY5vu1LA4a
FcMVeMZOk+oYe0xxqQnSeSnGn0q6PwOcpwU6LWn8IEVq0YLH5jqzGKgTByN35vUf6lmmnksubxDM
f18jUnCDthyFjclV1GKoaKjlSuDRQbqF89hW0T7gfAMKQYP5QIp/j+Ori9m5KynFMXSxA1Y5GzmQ
W3AmzAdRgW9RzF8t+0uImQFiVyLz/dnL/PAT4vos1i3YRBJ+YTudAcDdniTECRWwMmW+UIzpKH3b
U1m1QsmVw+9eexW80y4ktsRQJEquKq0aNYHnX/lyPcDx/tcnTCu61Qv0a5Lf6B9pcWj7fbhn0LIb
hJp56dACN/M+K6zheQcXvePgsS+BBgWgHqKv7RPqWpu23GOQ72ByuQbo8qDVV6EeR7UPAQczS4g5
8HZkaz2dgyTMpCPqUh8WlLXvYhsKokrZu0IFWix2QUmNiw6hdy5JwReVRcMIkl3KRyO7nfitGeDb
NNbaAOlGJOGk6wOgM/vg+s7TjrAHmOJrnxb9vx4PSSdIlfxRbJgnUcqVivrWIixqyPRwjCL4OhwO
185a1hOiic+LbV4+knyIAA5nWpANmrMQtyYwAl1YvfKYJkd6EQVThS/r6KD7QoqZnNJPm+JmYYdq
WEQ6W7RTglExsQewJqJcYAH63pk9RYUKk+hYG6RyhF3OzfiEee1CQBHoREcGwdeUWH57uWR4CTZi
JsWVfx1VxSigD5pX11ENqlkF66C1WrqBHnRbWZwuvsDjbPDMejKl1D8+0k0lr8zNYojq12dt9xWw
cnDpFBHNrhoaQL3UNYkqzT9H3YetAJmuQZwj1x7TdhlNi2BIl+Z4UsTTkNo+R438KxU046oojcyu
qqWGl/27QYYT2V+3BzOB9Dn4moLKr3jrU/AUKHVP3pgJS/1CPFhy+2Ro4z9H6ClscecRxhEkOdWS
qXOHGgbW7n99XuHOJizM4bkoAsrKi775hlXe0kPgMMwdMOjQlsYDMGzFZe4kBM2K4Bg9y9tT+eN9
kTQLWhQ8yI3/GfkN71+YU30jjna9vB8NfsFNa5VT8NvcRpoXXXbnS4bnjrCKeDZs9iM6ON4EOzM+
sAjHUVOaJQg1FvxWCG8Ib0vCGOQ/XRhcQ4wx7CnvAU8O/zgyWOSCrYMYFgyvQ29W8lHK/DHtl/IV
yzwMsEbLF7MtklFw+DrzC3PfhnUQT8w+KZpYla1Dzzt0i7NR9iTvQI3e6EeRqvTwR22Z9gaeabMx
P92cJQuA1MPmEndG5dn5NlG+fKAJNuDx3n1MDsEShwcnM5ycxt2Pbp3CWU93ed2AKGeZp82JP28q
aXMEq4WkEzyWLrAIRyr6S6fspIVjuow128V9jUHwflGerhOjxavf0LgkGvdQQKcWxeEhez2/KB7d
TP9ygGsuE3xSp12IchOWZ+H/aQxRxdSrskmehVUsJk3b+SnS3cTq7YyLFmqJeKFR6AtjQPeJDLUW
CkP4fiv/6vZEDT2HljKwDXpDTiGFihbuYjUrLXKZTqPgUDlQLSsNBKAiCJo6eNwldlm3hA9f76mN
2Xq7yVyHqQsNklWY0m9hgY3y/NwnOoP8SAewixhVmuGXMyfUhiVHiRwBHrIN+1BqVKENe5759iYo
yl+TQUjWzB4qCZM1L83jeeso0W5lngdDM9utBVQViahmzYoi/H7+HgFEFRjzGbLrYihOm3tIXSpL
CGs/nvQ6zS4KpWVe+vR2dEFqLGnn4ZpcHh7eqRL0XbgaiRWxjDATnK3T9Ca20r7gj+mfjPU1VHw1
6qhfJtJSTTktpQoiMuFL8oQJqFlXLoqmgG4kLvSAcpGu3d4pQS27qCOWF0tuxd7jqTUdq5XXyHvi
l3aVOx2rCMuAhQXFjeiRu08d6a9vPbVB+Mjt/+bwo/OXfbeXR4JXZmYt4mcMHBDCiJRtqUlFO9/r
6F9/QiyznmNNHEc3QTWTSKuCQBwNppq3m4b4RyyuEvNhwtxKMCJhQwD5oALBBEFM51Yulqo/Ci0S
9fO05Q7K/Dg4e+eyBxKCT+zSR/MYTzaVrn9c9fGUSzMBiepKcceAU8VQn4tZkYBGh9sx3b5VXVSa
ShOdwUoQ6Tz/evWQ8QfFHEUQjd8p2xm8RfiIME6HKI8P+SjeaKhgU/scKX+VWBdlt5B7Z8qA5+VZ
M2xUy9tb+4IyK8/Fyn/B4DWJOpDSGWxyVZqflmu9y17kcSl+qoNnaw/lZ+PPAJo+Pz8OIOI/d5cd
2ek440iank/b/Lg/XvvxHP6jk2QqA4LzG0pOF2MHlnJzLnaGumCvdjlNRX5Tz9o7313s3cKcD/q5
AwjtikIBy8SToWWNzEcD0mTK3QXEWIle33AFw5vsfVvGC8Hgops+4O/j6Ssy/kR//l2glL3nZh2Q
JdMVJu2yOlqtF2ERT2nX3kXMenLRkaoywtCFQFB6AIlgGDn7aSbOb6AKc2qVZmcutSQeCsRGH4aU
pYOFXzbfcVeFLrYXL6Jt0qkgJY8xJUDaQVYGkmvdk9a4AkvJBDkwTsxCtOFz3/odQ2TrALIiIy+H
aOluJsNO6MsjXCT0EQxI+HSw0p2ze5DoOilKcPLe2JWEwHUMXBaTnDXpUqMFc/Tg8h65vLgPd5kD
11sqS/IPvE8RKhAIGERBL933IIg5qzc/O/TwGimOD0SkSthH2pvb+dUFHmP3dtaL8CscU/XVwtsn
ADgkPkylSpSA9NdZq6q4xKzTbFkL4u8PRYpNsD8QpLr/frlT+tzanVy1H88b61w1hChM+7zO6Gal
2xAGI0aTnpYjAc03oVslWjauBDXxnvfV6PwGDUUSvXXRSxaTd8wYFtYwVBdMT8pnugCmBRAtwmYq
jUjSNXQBb6SelmXvCndU8s1iWtdnackE8wAJ+0CNYYPb0viOeO3X6s3q9RBhjtjcWRvYrltydMv8
s71r3eoSOurPnmNZNN/mUustrbSehjacEBn6ibn6MUG7hG9mgx6iELjDPTQE3y4cHg/+ScDz8Y41
XTiimBrjo+wAKIbWpyCZyBtLjOZwWMcggIpfjlfrB6mfY+6iDootlowE7HyxzXzkM54qI2Baj/Vk
PLWpIYjlIvhLrlmcB8PXB25mo6HxcYkyDl4su/wDlMvmg8ykZbnH5btxpGdPoigWl+8BIPt+5VOo
6j8OaAgF/ndGRHNyzCZUsrI5tkFQqGtj/QPWnlGkRn8+9HfFmy7tSNkFquaw/IM2dDcZqSagAv9B
2uDvApGYg1SgeE0HbA1/ldTrUB5CupAj7SRTzO/dudu8+UwUTTYl9So2Nk8ocfZJkIXHuyzHYMAl
fXX/wGuTxlmMwzC+xK/4xA8C6kKVrICBQH5kgzGVaYrfzIG0opCrBD8Q9/VH4dFXS9uI36QyjqbQ
Ih/sSrEwKjUhgSwegDsu9xzG1YcvJz/+TM9nNMOfXbtRogZd0nDgXNdiwE7UJU5NFUPeReh9Y+wk
g5gURr0gGySlUBCF752E80WEpC0MNT6IbmcNp+VLqnSLw0Ow31VO6/x40KvtTBnNGM17o/DOioj8
sqsyNoJNaDG5UQYDExkC3na+j9LfDOBK1Ui43uqm6fdIzr6kh9jroJnmovkW/Ziv3HJJIyRtuB0b
xlf7Wp9DirA4cMaWH5Hy1t0Jc9dm+tSEM+ICgLi4e9uT05oFyB70YwtygZ9ItXyvlJafXRBY1VD8
XHQVGXNULkGIuM1XRhKhTdEabo8hx/DbDj8KQ2etHlcy1kIkpyih9haSZkoWxsVFrXFHjOWnwKom
SPjIHlb1Y9eD2WM2aKXc9ioSGCyhdUo/OhoBk4qbpj2mjkmoGYUQRsrrgUnaxF7E3YHjcLVnYSe1
mgS8azG5Df3C8FheR2D6mAeyf9gQIfB7s0UPVJWgtAs9l/9tKj74fury0lXyRUCQWnxLtWnavgzU
RepdR+ZzmWnZH9kjFr/1RQ09ymze6S9zrJ3lWAfAR5VDHgTrzIFeXx0hxoibVEOdrnWWWv4YExGH
79huxxxXrJoVVBg3U0RQF03uSF3cnWERV5G8FCDUYcNubdBx4leXaL2NrTdHZnq9ShWnIJ6YuZ9r
xk4bu5HXwj+4IZTokrV82oswiCQJKCob+zvy7mQNlgs9dq8b5uBRNS9y7hVJWhCQxWZgbp3tB/cy
5QavM5J+YXHCaQPUZ1bSs4IwFwDrmK6PWm0w1RcdRJDpJj9lDYJQAKEcHT6zPUJ/CL1giPYgHTqr
ZK/asgJLb3+zDouQpycf/F7SoTEN9Wv/i1w93BdXfpe0IFJ4BMb9Ixjj2Cv6WYgDr7WMnMt0qWRN
WwjAoN8c47fSXoOjCdG4sYJrUP0PQTQGoRuXwSvqRaeGVbCA/XDx6vg1/Vdwi47VluAw32rrC6h9
X5xWmCQ4YgQsWjch7OshXYBT1fospHNl0O29xx4Fs7Zu06KJFWFzC3AB2px3L/m1bhXIyg+NNazw
CyV7EPPVbJ+bXPvw9IF9uDvDelI6czVYs9eAhoWxGDeNMGkrveCGxnXeoVughsU4E2Qh3P9Jyaqh
RZUp5OIWOW4w2baRt7ITNhR4TqL/DfVMIbNotOlmCS3Ww8S+W984YPdyaPQ91f8VqPuvmVkXv9IZ
lf/4fst6rqKGbmgIGbM5W1RcIIGJ7pDyQgqHax9RwKbT5zWjenwDpz1RJh+AJxiZijMxttxMghND
LZ7U4dGBhWfiYIjdQ17/LadXr63MtdNZDdTfHEoeyf1ooOKYs/9Gy7b2m4U84YqOW3Lf34S173Cs
VqGhViXAiKiY9301Hw2dDDaAWm944QT181u4BlLYdTcnEjVmF9cE+hQg6DRxfFGb5ppju6Zz1I6G
aCe3S9fPHI8/lbL8+GB4cYt+Z1izzVQr2m9qzmYsaudl2nGaLiMODIEYg/BZWdlbKgmCR5nkofW4
QIX81PlRdPcR+uXwjfGzlfqIaZ0mvyUfc5BSHhy/jjggdiqC6JS7MkeQy/VwjT9yoEYICvWSQ0rZ
k/Egoe8aPDxnljJcXMVsrLEDpD8Z4yuu9wZjXWYlbhERRDuQi+dS/r8+SqsgIDpAZ0sFqLvVtKWX
MD0gjGyq5il4Okxg+OQpjT5JMp6JA+cn9qztWtDw7sbT5zAwDQIG/R4jdFzN4rz7eyYF0/Z10z4+
1Qp6chCmpgLkkS2kfIDM/8Cf+COwwdL/6ur05yDQB+NNfS6mL+i+n5opq5k8u7/8xjtd9fENV3n5
aIOwUAGKH5TP+PCbs13diCYZE1BrclQy2K2zGYi0ffwzg8c3gQUV7YLm41UQ9o93hvJ2wz4pNUny
qaTyD0jC+7uIXXeEN3DLRnDJR9DL1KpWIPshaiqqhsANmIdN2FGY0NWJ/Mgo/Ntz2/FJSZPVMXMM
JGSiMIj5VsDo6WHT3wHXOEuSSAmBnrQLlveClo0VS6iuNn8vkZDJonxcpB7jnlBry2Pdb/q2ONsR
+3yceDKWwhTJbJwXStdd5YuIzyAfVhX9mCTXNLg2zK/Q5OYbGfIGGG0JdG/pkOi7JiF5A91ONLyk
8ywSZjO/GJDi2l2PvM2kGhr+4Eyvrn64LNAJuA55JXrcH7jVf7VXnAwuuIOWwEwA/Vas+Hirj2iP
b+0C4xcOd6qJ9lPfZXSo62ne2Rhv9Te0g8WZFRpkoVC/i0HmPL0iR+1nX2rXddczIUWDwuz/6IeH
CNeAYMO2CNnFB8gC/6PgsSquCOKpcP+ScCbGpwvJjY3UFPNKJN/8NtcNCrNEchn8zYoGyx6TIiWP
DHpkwZw9Xd7KUX0Io/h1DnGumvUwtbISePV98X0+mMubqaIecwmTgSRkpNTxIgi1n0uyOqkg4R59
XDCCco9F68a64qZZjGHJWLHSL+kK6evLmpAf1OGGBk8P05JzTHUVh2+odtRxJ9CZpgIsX6byAgvS
iIwtjguW9rKaQBXvOAaklnNZMXlG0HX029Yz+zfHlF9V1LOaMuoMhdLuiQenIzuJCu611xx5SyaM
KP3jLSnAXPhvoMBMf4bag4nd5rdD5ZVUiwNEHMTBvCgk4jWZMtHqGoLNJbZ2dEsTg8LSn/ePke5d
rK+DOq99zeuQGHVJIDCkfXWOqMezt20m8vXXtKxRw2HAUtq2ZZq5FMbLZ9WL+qQyP9A7nmjdYX4W
KO5dGIOjNAeQTwXSVWDlPqksPmhQNat6Zv0aPXm8DCKnPijsHkc8BVBOsNauZqaTFn7rfjX2JLha
vSZeQD9LheXLqlBpw49VRZ4I+3hGEVjBvtli/d/UlsELb9Hb6D2in2KJy1NDwfp1coxyF+InSqEj
ndfuMOpBff2e6326mgun5zJG7rDVKmhMKljB2nYIM10hW5+LKx1377lj0vLpN6mrNCy9wmIU4EQC
9Fo4rLUjryIAiTxXpyjFs+bezCkXyolFfnmFLEP3i1FLKrFfIjtfitya/s8nMKqIra28luiquH8B
qjRNBMhqlNeAXMRjcfpESzK9UBXXBDPsG6PlmvhvUs1m5CpW1CwhrD+dcQBhWow6TlWzltLWywn2
3bGwFZRRWbJHpRy6XrMFsFbdFJBgQLLb9M7kBfKjRVCog+NaB/FPfv+gi5esaxIDuIF5rDtEYDBg
8xJUTwkpbR0JodHxJU6fvRH9lF6diAZTpxNNVC3MXiOEEnqT0V3/juZ9m7cNfEcH348GkcmNZd3R
Dgc6HNoJMT0pJxpFw79k2AipT28gFiQ3Qq2p/eiEJujxP/PvsmE/Si97N+dNNjcU4jcU2AcHTXCR
iG/JHcteyycg9GkwdpeERJv4PbH+Fpq1gQloZDhZondbdOoDdZggGSZgu+8qyQiGIdy/2W03w1bd
kCtK42rCWmkQHyTR0iSgUIsbGQnLpZP/K7OVIDsu03PDBDbU7lPxo8sY6zkNuN93Jb08/PhJEPlt
U1aljwnZcyugYWWtzh4gfAVK4ptZIgVh/vMfxMbbQHMsJvv36Y1VtpVJ7qd/PQtggZiGgNDPJHfn
mcLJHTXmtjPuf+YliGHqJCIRpbrDwmlU7sHwV6uNZniJ7f/qK0F++kG/+Jf0x+rwXHpbP8KDdzax
kcF//1y3kUMGWCavQJKJZmgMPQ5H16xYhv94Dl6yy6u+C78YtocGI76ioWwnhMwdTIsz3nGyWSob
W24aMuXcseb98oyR7l8E6bk5kDlpqf+vRcyHC9CmgxN/bXNruBsXGYKDpYN3hUpmQS9niKk0sfZx
9TcG4b4UZ+W2Id6Tvsk07J20PdtMYMO5w8wlzHgV6YbcaBnNZWUwai9CduepoF3Q+cHLASMFyseN
cN0Tte2XZaSB19a1f1Ip63QIVEVSAV9ecgTXp9Xb7jNpF0xpo2K4jzo8YCX91UFWh9hPpRdI8xQn
CUYFUFV1aR1Hj+9Qe8QlV1Sphrvdqrm+lG5cEGH8i/vD7XF2ZBWgYORL99mvXjAk1fNkXCYgUs/6
VcLGbupWVOPvhB1lmNonNKWch4SpePvEdx5kEEkCMRK745wD7ywbyuplefKKnFl5J6zuiJbur1fF
tzBhruB6R0x643y+ozBPx/BdFgoNrUQX808vWMMdT0+O7ehIRGt95Z9+749fnEntZxHSxbvsZd4Q
/FIIrWlsA7dJgbm768Yv+/xXWXmAncey3UtcO5+qjR0UnkqeDqL9q7kpa7vg2ju18oB1RrieNz+e
mT2Qrmv1Dwd9lkQizg3x2ccrFDtKIRymI2EgrNI4VYTBUC2Bt0U3q5Icnf/hBQNmeVJTR6n8obG6
d9FhyNDMF4+mXY+YMgCH+txKxiLWVz2w1EI2ZvsySOLrpNRU5hn45jmmfpTM8W9zlUppMVV63fhl
OD8GQamxjFOvDeFAjt3MVgoj6bK9QFPO+6gSM2kAhZUoIwI0jByMbjFsdyKagnB/+JlpfOS6NCaL
sTpdmA/QC5J3iX23lVG59KZhJ1CKQvXt3YFdG4lm5C1Go1AuHdN/Sd40c5ZGfKyKvJ1qkigY/Wjk
w3vW5fZEz/Tctl8vJXxdOhCHBT0mIDehlZjBTvUDxGXQjnGyQHRDZx3W5DHtZQI6aW5+dmmIByBu
jqtxL8mYBaOI/hGgXtUSFg8xYETze2Jg3+ta1Xdf2m4Pv/iBCSEmgjpmaRH1obJNLCxd92lzMKGn
jWJzWApdcIHVQY20rYy8pNDjfq9JieQUmSCOql+lerwelrBeGxQLAKVcl9AYI5Kt8gYOLytyQlO6
H3aYBBgxCPUSiVR3xUmDZo4yFmf/hYJIuqVOn7caJ2RDA3ls0Zq8Vx+cUH+3aGKTpteXbtWRFvja
EkjxmpubKh2nZyZYM3Arc+yd5gn8Zquvtv1Xj+cgOJcLFFaxNhUuX+k2KoD44ImCeT+XmYEYdZF9
fLOeZxW7i+CaqQ51agkSx2FAC9VVTE0xqmbZy34vhNVCxEY2i34NqxgMgOn1BKwXcPvOzNvrnR54
b5ilZ7ynlsfG33OVvZMOYykBM+Irip8I5iZJPyn+F+Qujj9/6rObYgOlVOSJmOMl64eE2FxNYa0X
SqW2XPBvqHzh67TO+Ha/ugzEMATUkboF/q8Aeq233KzwFbwLLPyMPNWVHM/DFywt4kNjy0Nj1e4e
y65Zm4KCiblnVbjxUJBtvYr+mhcW5lslWQ7dhDGa1rZj9GXEVV22JgYnRrwBC+qIgYpydyKSZaM5
0WLmz+hFVfBnCnRy/fgjfcVb6Nt+iBOyAlRxBLN4bC/fDaYD1BbkGaaq7q1c6FahqZ9EsfU6pljW
hhvbsh1ZlCNT1zG5GkL0oBH6Ieae/LbUbRpjqf6Q9WlANQwyTKaPRyDVki3Si2FFmHOxDsyZjfZa
0+FNY+j33PD6zaJ7liGyhewQhsLzc14QtcTJkCHkUu6NuPMsok1Qx/owjblvuNr0BO8S9A+7euHD
n72cjQo4RZnqtC3JUUwLyW/gKNRLkqNCstu6+Y8XVGTtLgw6BI35rXDn1GhOwDTTqUPCY70vQJqr
iJy9OjU0tG+xjYE67k3oLJquv9OJx4bmOGcTMBrnxJ6w6ehcxA75HCgmCd6YlECwts1VKV/kf3vV
0zg5OOp7k6y+fTmWF2vSaFx1ysDuvbMN7Bb3tlYsadWvqxg+eWkz/gYA0YyRAuBUgdhOZm9vF3JQ
8eJ6hEr7jD1579RjNTh+65rGD8wreklUtQfgEJKcdGxWGTSjW9YZKnrdECTGvSFRZjsGV7GyBDvJ
yu9oeayypVxRDu09zHEkEO55KHs6O1iRHRKwBJZLXT/IljLyvLg/hQUXkq7P8cFFaJa4+GyMmbg4
5ooo7TvHRpT3PFL6jHuRwQs9G3s6qphWJjaI3XqVHvTZrk7mkgGXGNavx412dSTZDRgJul+kTKJ1
kcxRfPUG1zEYvWrXY7o7WPoi1bFYzah6WaergOj/G8VMa/CWa6yDlVj23RIlRBl5t1R0zHtr+go6
Kuq/bFMckIlMxf3pk4pMaq2ln2pPvzC5j2jQp9cVm1lo/l2vHrJ3ZMZk0zZwH5tKKh/AnZqd5qfn
V98BkZ121cqy0z56AS5Djts3rcABzpnmvVrfJZPQ8Fk11vKaK/s/909FcDET7pG6dkd4Cpm3Vfou
A192GXgP1u0eB23RTTmrkQRFYMuemP36YNS2Ij1u7Qvj5Lo8upr4+HtEPY87zZ2SnanUWXDnQOIx
Z7WIzSiHSIzZTTrqX1Tgi75e7ktmuIsm+TjVE05XuZ28lXyrfmVi3E0Yv377Yj65pA4PqKwMaGpg
RrzeEp3JWdkyVz2ceXu+KpPnl9xeEd40G0E2knEvCC+JgExGrRdy/UpNWyt2lx3GskCDewdzNs0r
I2xUZRtIXVohh4/1m+NHn4yVFuIho+R/CieH3iybQHTWad0Nv5zQWpk0xfN0L44EgR7KWDbuY9XC
i4X5puAa10K1KNyITjC0x92KbVH9axf2M5E/jQp/WaNR5usiFnoNKpe4uEHQqI8Ta7HKQEB0g34Z
KbXusecoux6Wghrq+4b+SMbJtCfX42f7gUETKhuSB/qgGEz/QSFSOaqypfuef9ghkEjg5E5D1cqy
+0qAbCy0TP8kD4o4m0AQl4vxi4CsxIaYhqp1EsRIiNu3U4fV1FgSdDZwvdG+Jh4cl0kTjOYLyNqg
l9v2XMnFiBGKiWwP+RXOyQ4kZacRCDo4Q0lgOqza4fB6NjewBBK1t1EUC7bVZdCfGpylTd/MIxWE
UlthvQD5JFAo0fE5/AG/Y5maWvwUCNHxdj4XjEzyMGdQkQeRnkNdHYCeihxWPMbjinHZDtPiC+Nn
+F01AVcDnva4gNoS3OupgfNAVdylz5LfB2D6Fox8mrJY4VPQufAX6Qoxy09W+rIwU27S1dyDlYAa
LKb+GMv+wU42J40dPx2UmQ7LoYW9i0aI+1P7dC2Jqw3ZdCmMRqB5HzYZxzjhYg0erlO+ib41PIPW
2NmuQAfRFC5tM4QpIC09/D8oLL0Ml866jyBup1nLB4/oTCPcZ6yS4pba9fdrE7fWz+m935Tymokj
HCENa5WOGDqq4x5WZHweqU9J8s10CksGGAZOEPQxcQ+zikPg2Obu1IQnP71RPCgu6RJwBhVCBBum
3/yDfb0hGKPtt3KxzsnVttVlQ2EMP+oUd0ooQyiDCd/v1W2XusIzijImgE+CvUrqjPxsgx9YsVrf
iMpB8ny6P7SZBHScNmyQ/liV9eYNLaeCTcvV6rGsctZLastNubLXbdx514vu14q7p/ZF+OjkgnLZ
sKsslHxCP+VZzcsaiZm1yFwy8/gRQdXkGqorOM4bDPx1l7uVtk5e72qCqQtl2RNamz3gBZItxYUI
BmAYa/47fQrA+wIdRW72jdODHgTP0mGT/FPD8726Rm1YjGqVi5BXanpPPYjdu8BT8eQKupHZ8aNM
Oj4dXNYYgXutAr2FFNlLZ2uW9r7gy8f/M73TPb5zVT04jaePTevFgtn7IA5NAGuXaq1k1zrjL4QS
8RFu8GtVR7VSe2Cw9J4PwFBOQAHAa9vsLueXWHsQgZ0fhoaXIdzpw6CcF6hBBHaftE5Pc044lDV+
z6lMFmtAOCwU+72Q6m/DhK5XenjmcEEwi45OKUuYW63ybK56e4OkWMPWV3cl+CfJU53lmkrtjD2M
pWEa0EnMTFPr2L6aKG7K/29wyNU1CNuV8v7eMh+f4RcG92DJsjTADOj2CSQjQQ4tj7W8ulIVmcvy
3QC0ORQ0WIVtOJl3gYFUHzNA6uy67p003tKgsVCF8du1tWlnHgtxXCwW69zz3Ms+ZQC0vDZt5Bn8
JmmR4xfyT1dM8iWEdhFa3p7HC0aUKwCm+z00s8d6E2NtsBJ9M6pWXymAYSDT5zmYuDrZhf1t2bFw
OgTzsilLvep60q0miDgDoIsu/S4S1FL+I8/ijCbvp0dKQJAklzLwun6X5kZaQ/CGECBr9g9Cd2lr
1kZ9VrIpDAxuZCzc8o4WHR1EYV1AvdXq1Pgn1ou8q0rRVt4LP8yY1wB/BJTGJyntIkPvKE/f8AxQ
/NVd5zckr/ZjL02Kpfk2GZLrP1lxBsOmzegDmdUzxR5kau/XXLEjiLbVF7TUPXNarxmahAHUl2kB
k5H+rKAj19VsS6Vdywi6RDOcQQy3PKEFsuZ8h6WwSuMmvof/dP49S1OaOFzKBli38Rwh1noSV7gN
ezNB/4wQoVNNYx09+eCTrHzXIUewVr+OaIZmi3UANfvbQdw81BRAPJcdwr0A+IEgrsxEAu81KKSe
4g59flAAbjZ4f6LSnIICy+LY5jnPmzDlJQxVxszSPvIA3Eb+kLJgiRUspPRvrWhvQq3D/w/5+L1/
vn2c8a9oFHh7k20Pb+wBzLIsR20FaL7m7b03i3LhfzhSipKfT5VBl8sv/Ji7tgNmX9GG2UsEsJs4
N9Wj1O620CMUHI5/AYM71MPn0BxhkuzcRp9m4jcYnDPk1Ay8ifxKzQuklZOM3d75gPx6EyvNGzDM
1VDKXsHppX/UWpQpWYoUfACPsr26tzerON6YuOAVdpbm/IBiYUfQeAcQ+n9SYXq9Xd4/ruqqF/8W
huN4W1WPbuuTcZPWUlMfqkdhmowJjR6A292vzd2QEj8aBWcZIbPSAmJqE0nqSomWKwLY1Sxbm7aa
anfCshxceNTDlILDF79AtSW2GvTIeQSHuli63halQH5OiWefptn8h5gPYRZWTZDbGCLZYZUE7nkC
Rf02XWoE5W+i3tCvHSQ3ao1f37NnkJHntbG9ZFbnBJJRfZxroodNkgmvwfM+tqLmIkGTXcXRXI4s
C/oagTogaiIGlXiPY+51TikkBTvqMJkS3C6Ywsq5tepYEm9cmup+o7IhPEcikTX+r+TsCosBP5A1
z6TSslbIKI33jUWyIFj37e2/sfpwSQU3YaC5p4dzCgwqEwVDH9qf4ZJb+WWcVhC1qjpT9/O7HFYa
xyxbXsB1PW3l1/CLDp7qjMlceKCUHpv61Lbv4XpnudBPu67PFVieF43qkjskPUIaE7PaP24c5fWU
Ideh+rQ3lVDU116k13Jgrz2b3sl7Gh0vMdgn7s336ypfxjuKzN/+f75+P/fdwmKUZkzwSYeOuK7X
YNQQSyfKJUrEIHzloVwa0hkaWhUfBGueLIPFROx1OIlLqJ2vIiV7/9xF/TVUNs22Np/tBvteqgiZ
53ZGou+BGMM5djXlg6mPsImJjt+VgIwMbGJV63tDafOHXJDKx+dqEDArRf5Rn2Uwr+139FM1MijW
KMAPmajmdAh+SC9Fi1zoKRrkbj7yzZTQeyu8IgSDTDFujVA427AvQsN9Va+sEdRmOj55T8Y1GXj6
Bj8NkBV3Tg2Cse75SASovPMJyBdFbyLQrsym70QT+2V2jjWjoDzD/l5KlYJp4kQAnpy6+q5zxFhj
/Oa49UNg+Y0mtleLrKfe6MmaMEhU4xxrQ3UQd7U/WQrpG0EgVTbo0tYaLseuyuryLlhGc5g8E3qc
nOWzjHVI79XfmDeOY8G15nPwLur6TPOQWGtzjf7EI6WEBb2F6Zn/TGWfFmW++JENaO9CRXGneSKi
npaG3et9jqlwjRykk9HlnBT9Rb6u1+nSLIGbKFRL2c/W9AX7zUyDE/BT/nz7zNthPgRkciktPMss
00pIJCMGcqJhFO+YFPLISM5KoBKndvYuqLL/NJWkdhx4J/brrzMBKOyW/lbeUeq0XrsjP1+gR6tg
FBlmADrhYKujKk5kcPaqBKPtU1pnYLbSsf8T9bDzGvh44+JAp2RCsvg/XQWN0HST+zrWvZCV/vQf
h1+sn5VXGR7hKAbtK0LLA2KTyjXL80C0BPUQkbXI9ipxf4xqR4RwM8QTsG1U0NS2bXBz16W61v31
SoFJJjx1qgBQwTP3g7Brin+E0gFrWbwH+tDk9wdALoenIafIr2LUZMsVnnVO6ZhJdecWGBS6j1pu
+rAtISqb5TfJDZ2Oj1rHM/5U1mc9pFjqmcBuD2pLVGmlOzU7yFAxbpBCx0U+TsRiszfCCs6Pj34I
Cp6WRcY4a8KnQQHp3+Nt39Pe8aNgSBfzfFRNDcpfr7o8XDjIc2fabuiGKmQ5VNpDZIWjO9psfWfs
LebsXdaeY+2ASqGCbwVwpQOA18x1/DA7wEsed7J6tGJdzeGYhTPUONXHjxBHV3rmgMZqrin86Vzp
EPoeqLYNb/K6meh4haV7B0rdXxolDkgcqY9mpt0+0cByLJQT3BLk53NHcf66+hVGMsN/T1WyYJZw
QKMA1Ref9od/Pp1tu2Da9B290/6eVPygGaj57OyAeZzZAJGtdooRU5ke/9UEfykhlpxfkI65kK+B
9nzq9NZ2EvxzG6NhfpitwRc15pB6e2nme8pzl1T2LE+H7P2YL+5ovWx+N2053zOVZBNys1I1SEp2
NsvSwTzAlp+b9MlW7I2pUh7UFCVc+QZqLQAXuxGpOuQXjAMZfqw7lcr+SgMcnToKpQqwN3kDFI7q
WOY6u2oni6UcI2srfKYNMCWvEiIiZU9AN5RoKaWOopnmCUeY4c2CI5bnvj/Bx0J5xlVlNzlIT2mh
lTZO0YcFXpQN3LSNeLgpVkSq5sSNgEy7ACMRdJOcLRtN81Se3U55Dnkstu5Wbl9bcnB3czb2qbEv
a9ufvV3+FkZY2452jWHGxaTtuQkqJWb5FmkzJy31rUmUHCeAqj2mn8egWAMU5CE7iWiNP9MOTS3v
kcpYrrCzTIh4qGAutAomGSrFaVB49yHzqXtlpeBC26uAwn1xgZjXXQ+DdLh56NNSq3g8mPS8rKqa
CtbtAuHMRJDLEbe80JEVAsJS9QIefRCjbqQgk7TVLTOcton4QI8DrTiJmg18mTnQ9TrQTEunYBKB
bSkf3SyYpg8eHPMV0Fp8qKYtYzc4A8LkbqyOu8Rtt83Xsr6nWSjI/M9tpIahtgTemS2rL2H9ZZ8u
IsH/mbx5hu2nXnueCQC4AoG9QzB4MiJuDX/VVT5uv2tphT4kFgidzGJMKOsOllt/JpLmfEoVyYKg
7Nu3ZZGIyAJu49QrzbexMKpXqVkhoLg0KeQYSANCyUtRdS6geoevVlSYicCFKzxwR+BKFujtVRqh
0qgbFt969zhZsB98C9Q9CeJx1aiAfhQOL1QTv38YyErfG10vV3TOxJqXyuQ6+3dPLxuMv86mDP6N
VNzJZAL2Dz29ikl5/9dzUuAV+1xBaSaDHHH7s3xtWoJuczKVC8P0trx12t9hvXT0/lLzgkHSpa2I
vTW41WOou4KK+Yz3/LNflcZwi+vxxnn6y3sUquO38G2FgFL15l4wlaPiU0aCixDTBgpbHeuFp5HM
S25J14zLD4CtU3uVu9gPc/gP4HQA4M1N+CULumyn6mnyLoAxj3C1/DwhIAmwXJC97rcVQgl1LWTK
JB0tDz/x44uYrO5IgLjrLU277MfQELnO4DJFlJ/T6Lv+TudLkbwqoDd9rVr+H42hA/tlEOlmBQo6
E58J8R53lxny7sey4OSD3vPVyiDQyhDU/fBVs9cv73+wMNl1ZXzeGr4eI/vFTzxkDuzcGdSdxYS+
jP+8XWkOSwSXx/nuh4IN6GCerT0FQY+kau1XjJvrCnsz+Jk4fy/UU2AfMzldSNC5l806mJp30Ps0
6sUkexn8J7XQoCh+ghxY2te/VQLBhmVAREPkkcnHqy1sJYsPwA/1Jv1tu2S0WclRF1r9opiMN9fq
IaJoLeE/nlaWU5/1bAkMgT5PObPl68/uClXqaPtOH1nyoappqWxD6u+5pnOEdhym98Fse1MBq2m/
UqPKf56IWfQXLo3KP899BBco4rOwi2gwCNp12lnfh3Tojp0XKTP3rNxJ8U+1zOFYzO6qXeeuylQq
UibT/5itJD2smiBqlU7pWPVpv9pK0J+Vatqy68IlIvfgvS2zry9FKXQZaDGPpnHjZC2B4u0k5VXy
AvfD1JqJa6iFAywbH4zMiGulIXKeJ1F2W6mzhKrHKDd/O0+pc2puq9JSP80b8N+Qwv0y4wOLBZ+P
EygHPK7xzu0kS4CbzEsUrTx6Zs/8/BEVLSkQKvConVMj6yfJnwofK950Umhl1OpO2EpE9/0uMjm6
y3QG80+5jmqfMel2+AYX0YpAWyLOBX95RzRC+T6tskgmLZSMpLPvu0l5tcWh3HVTzq8U+4AhCBhI
TTlAfXF5StzWYqerqVVl33DKvDkWQPMaaztutpZpsdHwu3TQgaiULk2Y6BkKdjIiXPzjDgXVdEvi
uW47wHjyOqKrrEPDmOZTI0L6XyhRylBQbqa7tiO2x/5UO23he97/7gMCWzbi+V8GxHV8CgHbCqL9
3cCwkJoELUzJXUjeYyIXiUH7GEdUnxN2f1AbwW1oyONmdAgxJKwyWaSfvge9xAbdue3c8NFql3ur
JE22x3tLd5cpz2dNOcPRol6uVxNfwiVEZLJpTHBF/2wW5gSgC/LlnPd5RiAQFUEED8/c5CRckIlJ
nkAjyY3hrXYNlars9lBWFQEHmggQGgiCIbJk/HwgunPIytkgM8cr3DRab9890LuBAssbXb+/t9Rv
ygp3uNZaXHEe5GwgpyWwTtRKx6aTfrbAN+Dr7h2q0VwWReYw1G9mjrYE0nkWqlozUYLVqzl6Cmox
PIRYOajbg3u6hxyXwlXgM289VqCNYvzPAc2R11cUNKmhfwwaz6TeCLUfwbVt0y/bxganl/Xlnhck
srRvC00bg7X8NQN7QD4rckwW/EpeAF2ez5GqSGlMgD7yOM99yypxJ4KJzjqFyUzYRsjMP16WTv+W
JcLj/2iIWZSxPTbLDnrVmHd+pynODdN4mSJZGityptsXRNhernWPdz365c6+/WkEpldBzE9dvDfV
anaRBPhz6NENr75Cd6Euqf4WRzucsT7S4lcQzfRLcHmNWPboQ9o+CLrhWUWkPF+/m4ODadyIUBem
uP9ckAro0L74/4IulN+0XEh6v10EF3a0nj8In6rqbABP5dslTW7L/07BCrMpmGHtV7Nr+pRGD6n2
jg==
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
