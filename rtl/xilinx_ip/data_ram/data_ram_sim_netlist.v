// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec 30 14:45:02 2021
// Host        : DELL-G7-KNO3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dell/Desktop/lab4/rtl/xilinx_ip/data_ram/data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module data_ram
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
  (* C_INIT_FILE = "data_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
  data_ram_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33040)
`pragma protect data_block
9Z57AyZHBTb5zAvuECUWROlZJ74NL0F5aq5RDY7EVx3WhHkH1vZ/ENoPkaltUZPKML0pWDIAl4dJ
o7PJ8o4jPIKul5vh9GfL3Wt/qIg+WMRjc6buQfIdWD4dVkCqEEiFfD1xlqQ7yo+dRjcEwbGK0uJq
hoSYTWAiJ7BGtRyz6OfbAwM08f/xJIBhRyS9UNSl57v2oZLSmGUqz/P3eTVsSBiry2g1Qg8d9nJa
AdHzzJw086aIPT30UOfkw+/9lrkEfvqZKTA0PKMDemRQAvAf5rzxhC1usz1a2yFgcJEUZbxHHFRY
zIwA8WDGGisnJcctgNDiubfA3xwpmNB7VEirR+nLCrMJKQ9wVkiQUB7TIHtnWFdYewaG5niQ4ntu
Wsp2MnGNvcccxHfrYPyKTWfE5liYGTDso/I+3b//fn/54mfnmY1c0iWQ6x/U3h0N8T4jThxaHMWM
yo8kGqyNDlBcKtHABj5fLwsKjrydP7X7NV4jHikHg9bOr9c/8mQoEI0I0it/3XjemgV+AwhXGrlT
Y1QKIFGkWlUGGaeiiKjS8tdIKUE9BBnBRRwh6OZxD+unGmeviq444tMrI+KwPgvIszU+4ZRP1aDr
AgnoQBdHmpNrWNe0Nh4nT7TNbGpjckjewVQAmTSlQ/FHBW6uWWQ6F9MBE9Rp5lbN9d13CPOPufh8
spIdH76Y18vMjP0yAw3XfOmr2SAswVM2FhspUcWPDPKWliNd0W5SEhRSipOE4jJl2yf/gS1zxfyl
KqzuECNmThUAa2ajkekU21Cndv+EgVLty7Q06QY7ec7XpaQvGy/3TW97lhxBmwz8kIoLEMDnohTf
rHZek6cvkKmXz6lMcT4/KPLs/SqT96SdI3NdyrIdl/0S6jiKBfQ+f+ubzywlyC83WOUN5JwCXyHN
9bpEq6AUwGiyU5ACxvcSq/4vTFNUw6bc6XDnnumnvSm0paUZ/RimZkTbStx2TGRHYGNApCM2druN
i5ZV0f389bEtLJC+/xx8IQCVUPYpIbheNWaZbVz97/4ecavgb/4Ez6m1w1dcbOuH8lVsNUJviXp8
sD3Car2q7gd/lw7SD+U3enkkWLBF/PTu+5BAMlsyGSRHwHZ14ijEsXb9Kv2U7m1MrVJMem0zUhp7
GxOadxr2KBQzPDFxfCvcQgNl09YC+gzrSUBdLs7/T2bF+Fy3C4L6EkowYC0HNnArCA3Sk0XZDwlk
5mZhopHHmT6qg8Fdw2d6kSPIrZgzYJg4j/KBXhth7dVKzf0x67zjdy1W13z8hBjTB/VlSZXhyqc5
PzatafexwhQBH61mBg9cJIvi6zh9Snc2YvvKO69p6/HKI1dan7UoWRsOEIrxFlrP96w91vYRB+z+
VF60oDUTXNQX/+KJXK5hNaeUuPTxUQYqdS57upOAPKKBcONbFpaYpQdObKmlM5iixHgytSp0Jm4t
0gUuG+an+lmW1Mg4DYLuw+Vq37O3SWImEOVLng1rJ6lHQl0Kz10b/gW77Sbx4rEGC9y5H2nUX70U
3pfeFu8vptoH61TAJJwNDjvTPjJ9++HPmZyd3w+lorqBMdUqpbzxj8LljsX1yxu8gwkUEW5CdWu9
nKcI23qMhMdR0Rk73V6dNapsKGaxyaLV3G3YBvlv+KJ2DWbsEi7EvirXwGfF4H+K1hTfYD/1yRgN
qvG9s/ewye4/p7KqSzCYUkAmH7YrLg4m1TcbOExGUp3ELADAofczIGYBfVkPqaRSYVLbHfYKBEtG
PLRJohATJuqKr9NayKvCD9XvI7oRe+T/qU4dnphSGhLfszIxxUgWzcjOfBwAN0L9TcEBtK1qk942
z48WKAEZyyDvhb5qo8UVXHFpeQXm7ELB5bko6xe+dEPOvq5xRtukgrNcoFCkjNsHGBliYguU4zJw
0mnImj+GcWYhvfSsPAZl7s4A0Vo271r77wrL2R2OpjZJbsjVWAoc8J+H/TrGEwyQLnV/yUWC1tO0
qe83TopxdWHTczRCKmQdmUgRawIi5qFf6RklRFKdKPntZQRdTlWo50ayqlpSOQNlAmQRYgyt/I27
oEzgd+SPU5BSiM71CownsSsddP3O1YNE8+C3mtV2lVipRE5DLDMsZmVzKdr7BpAs8V+Zgtd5UF7o
+WTEvkgOvTvM2xnvOvJICuVbl0GaVKqw9iCpRHDk4vstfPlucYtV3KIDJG98fYz5VLuZjshyEMf6
lrLbAmaUKrU1+sVDCJ5SoOlaeNPcl0GtWxVL8wIOMNZFd+S6G62vEIo8p88IyUokuWxU0kcQHxtB
wYgIjkMqRH1Pz34/d+Bi6cEv7aYqpqUuwYls3wf+qbhuEe3haABhBp2osB/x9OvIqb6N5om1uEuz
sMGsVORaU9n/DoIdQuI6xeQzZTzlgfm5aNaueMenSOf5WzFZykQX+l8M79mRE6ak516jsvQUHdZj
PFjgUiVIEaPYXSP95pJz6F433xx9ZRL2bjKLJXub1pR457TADwOWDen9cHnv3hv9/cqLypzJ87qH
NmlzxfNeL+KT0b+W8G4TEufFZk7gm4lGQXoS+ks8VGrADKukDq03bTEyokWuv3s2jVDSzJzBnLUK
EzuRAEQVzgMpZP4j8n8eqLK3TsCh86Tg+/DnG86A23Y9lCi/TfSX1eEpK6x4Z/v/TUI1oksTKuSX
pNWLfPgREMJceAyJky/VHQsnDRbsVP2xp+5Z22/CRB5T9L7GHA1M+9DZ3kZh4ACVb6L6MnKDwao5
RQSOt1gpEO8qEx4YrgXe0IvEnsMMQxFp6vLS6mF2UHcQQOg9OXFcDqQJuN/zKG2MU8v9aWyn6GvN
9/8o0vcZQljYAZ6BAa+WA/wvxbohdIMmDyNqsMvyn0SFMUymZe+Ps3k0JQaPfBthIhmkPwOGuoNY
g7CJziVyNlv7O7vXeipxwk+1DzHZjj3pT6vNzvOlDGXGa2oxgEH1PU2bo3im2EDKnMzYMIiM2ejC
yaBjCgUUb1IFodyiqwT2ydIhj1yhkaQZdrRGmr858ySxFLDztGWm6h//vgo8zO//erG0dTGbzrrV
iwgB1vJ+SWie8PP2M2xklJ5Bv2uo4BECz1CEXpyeDWMD8cZLjtWAON+DMTosAwSAilD2vN534Bag
fFA2WCIQsw9oDL6B84aMXlQCwjtRt4Q3Nn22x/ZzNMBf5I/vpm3+73qp86H0DSrp87eiMYMKLefK
Xv3Z68b8fDya/w5X/aOQJd+nc9wRFpxBojs1oPvjfIB+oXjxQl7redbZkd2+KLD34yMU5XYXt3yN
3nwfse+TxEkXEWAHmIihcsk9a9TBF20ABi/UZYiCShNruyyZ5zm/ipiRnO+5fe6c+pGh0N0faU4z
YENbwdZHNx9/SKT+iZ4vZPyIgRyT/dx+hQVBgs1xUj/ejM+BFlOyNoiYKbKztbo1aHidp6s7WJ8Y
aEm/us4hOE7L3ruleuSgQfXZPrRtU81YNe0MYTQ419pCwOauaUUNQW3zpXapTS/wey2qSkqwMksJ
5eF13CvqAw3SDvkD6px+xZ9LekILOXi5RWM7zOn3h7vj1obNMLUPEkZcHfYt41RI4fqoh52qlEHI
TJAKBB+Yp10mFcPsivgjvwjM7MIph5VPnjexwVxOIKYa0aP0ZmweDp1Z1eqK8I9zu3SHlUFDO+c1
r0eLrZuYd3TAMZzVT5RDiDOz5C0AxaKTYzH/MHk4Zf80nUJL/N5+xcrKwXjhvlp72jPLYUR/0++U
I0U23+vCVrun39Iimev61I9wG9AY7jRcAeUyKW/8vUktqtJsIbMc6WCBf41X4Npj94GTN8wMw2j7
aNWTulSEl6A2f2JqpvTkf2zKAnv/IAabmP0sbbAmrIrxfga7yR+0vUWLI1ZJyRzyYSY0Nl91YHmb
0qS0Xps0TaCi9nmDl0BPPeYY0gPMMVfMOj5krucQpJ4pq4MXWhb+1SDq9a28sbxlxZvuGCWaLfTl
NCPWqrD+SbJOjMugW71CnZOIYQ/1DIMCM7Lx1scuast6eTvzJyPsGRxqCPe7PDkuVQMa3CrbwKk5
z3q9j1OwOAxQESBAujJIP4fBhlF2lkKvqrOaUKVBe/KRtQXz3NLbpygQLJgRBJYvyTjjkvxAxGBT
QBxF2ZNXv1QRIpRFFtlnq/c3mGCAU3cIMNzpg3CULJo6GoQTgSZZtIpxhBK6rtmnvIycg6Vnj2SE
Xl7zw8dPzVsqNMgIY6K+LNp/hgo7mRdrnryzcR0XLKBmQmhhWcU6U1RHlwpccIuRo4WQu7JmmLxM
iCLo+vjeY7h5KGtCAAyk3o5et59bsDODFxpdSqJJd4KwskAMYPrvP3EDceABIGDTHdgzzgz8knks
tX6i9SAaUXk8DaJpex9k57cVtsDs+okj0IEi34cAV2Hqk3w+XAV0UA/Lrao9cl9cCY1te0k2pFB0
ycHp5+yyrtke15t0jpHsF4pnm/hvSIIbxnmgVOYdOWo1oQx1tSuUHcsGD4T0LMbk+WjS7/nvgHpe
Wo0+9kUQFF8q6fUHnHSzRNzWCBCcWWrXMe4KoZ/YgCHg9uR/glDX28glgRIOaLZ1Vqqrise/z/eO
Rt7YwfsflX3ly8dzdQ7FjD02DPE5L3a0xsScZ+NHLSJF0R7Qhl2eJs+3CQYK2VtdOhOipbTJbz2B
7Z54YkP/cUZfpQ93oOKs4k7VfawqlzbmAOMPBR5qyPrxRIclnHqty/ynMnlW2pIMALMlcDcPsswP
3GAcOX/k3hBa5C67/CKN8bxnCjbqyuVFGDTa/n8KvzGH85MWDAkRVcaJw5R4ZgQyfL6G2wFwcl/H
Q1Pk1MjxyjMkdB//cnZ7idZODm+R2iJasWAJlF6FXVu4YZVxBRFQF5Z8n3JIKk0XNH5XEiBNJB8T
xV10T5UfPlwoA5YaEDdRtx+W7ER0pqDYIHLSCj1bvp64Aeh61ZLy6YMl99qhGGus/tJQxd8D8CyU
Rb0Oe1+sRYSuQT585tbs99hDuuggT5+Tu7iUyJa6weKOeEdfJ4FCPAeg0HiqCfirqHs2ndH8++Pp
VL92pors2ZY8HFE3mXoCiN0jD9w89bacLEeQHxuBrzZsvubsaQTQuQ5HQUC6SJXMbPSQhv166wfI
jzHc2+Zkp9rQqr6sncUnll9S7ysmfOh6xpFz7bSvOH2o+dUml4dK9UHal/TSKrItvpr3RehG1ZAL
CRSA3jFcXKJ3QZ9ho2qwJeUijd4vNViQi/dNf9dMjvLq/TC74KFQL2n+a4d68bYNUJQxQuK6AYhB
sYILcuae+Q9QPZlHPBKUht8w/nh4yZP4HfTygatHg/U8Pk+STrrTCtcqPVut17C+C2yAebWxqTxT
li5CfyM3OmxX0hI9eV9aOHYNZsU5MGve3AhRB3NVHsIb4SIfNQia5UpJiJ6NoYS9hw7p+dvRoLRP
NAP2JdmURQzOVh4waiDgq9lXexDG+97mgvKdn+4Mvk3xJTrPZym+PlpKULgfaHpUMv4SIEvJx4mo
gl9Z4wzgz8zEmApoMzZ8nc2DKRTOkAuOIwmX0mwrNUMQ1BB8ZtoQQkRkVsDUtewRwst8uXQnNIvE
ZgdQY36Rbu8tun2/8CzaBjG6Sl4cBWtKzBKLFHyF/0JNS6M4GounMI5LkxkvvxM9Vv1Ca2kRY+WA
7+/JTqjg5bY89DQxf816EwhG3JH6ICR7/Wz5Z52dQqTWBR+jHkTk0Fp2rCR93E1IfkKaEG5+qSa+
q0jkyLsbUJh1NoCbAdE38KYPo6e5oF/o15j/cz0kjcujFXKpkUnoN0DdXeVfMK1Qbhs08/bul8De
uWPZmFq5QtUgpt24Cqthj00z65dnrSXu8xOZWUM8jY8LiO50rMGSyYp1o3MDwBMhY+S35Pogrjfu
YH1KJCtaMgEU7W6b5Jo0dC4UT+ehtkJk2JtA8/GXiqceRv4iNKvbTq7QEEsytg6jQ67fymHaTmxX
1v8SNfN6XAEjCtCJS/Wxv323BWjvxlqMDR1t1Wde5Tu78VHelo4/3vG4wO8QH3vnY9bLTgAAhSrM
kjOcORc8dRm+U+BVxs8JO9/3NPwXtdh/61gwtTOWRsr2QyWJNn64MemxMTlbOA9s9hH307mWLtwJ
eIT6MnjzGnCA49NS0vunmhi/L0QshYlVEEeu6kkviYxgbOkaoNb8kV9jGpV+VpELxgLrue3Yyc3u
oPM3yW7RhMZ2xV6Qy6E2lsooeAJH8kmiEsx9CH3IwS74mYy4oF6IBKWaMS7uFE2o62zTDruC60IV
LanqSkrMYv41eudBaTHaduqB4Ts74b5slBACic86LxMHHjkH1i5Tut7GnEs3/WwLVebGH7y5Gkge
kyOx0n7Mb1XVSC32x42NwJZz+wXHMbzbM5/hghSoHXlY9n9qOQR/GdIrwqF5pUqpHFK0V7P5+d6S
J6/jXyT4uU9IEuzKltOFyKUxAdsxbYJgnxaC6rvs7mQmfJgtqJfz9CVDlCNr3a5bID0NRTXHjhh8
h5QWtNd4H9N2qIm+9aK2fC7/71aezzmw4IHz5/9ehciKdRrE8t8UR59mCSEUqDQeouXcv6oVZo7t
AQQwwyC44ncFcInlAvuS3ZTJrVm71KGexuokjMdlddKFiz7h4w4IsnTFqoRTUIvpUNDZk51Z3iC9
YP5d4U6kpFV8euRy5zmCsRLrMUa+BLNMWO5t2fvKa55zsirSRrmd6rXHGhujc3qx9cilbJcsdVAs
bRdnLKUqEJYcJBF3QBU4rQP75jCQ2VTF1jDxXnndXOVosTs4+jtV1hfPc5Sj3xcK/zpc6i0xJyDH
cSMLm6OjEh2V1ahPEuzjhliGhdllcSj/ko3ljQl5PhonA13D54hhJFcfRI1HKfmF5/UCkMoEVxt8
Cvy+jH1P3zPCZVjK/tA7DgDa21cX4loKeTwBEsCPTap0nrnhVWrRqi8m1OwcKoBcPFHWqO9l5O1G
WoNn+9Zx4sHdpNAk43X30KMfkJmt8I58FPGBHrwxd2QPl2rZQgb4j5p4j2H4vt7oX/JK4TZV52tk
dyeBOuCH46TQVeaZXAxoBYXps2HfVf6j3MEfC1bPD2nSo0BbB3HK93J8spoctT2gX+8F6407Cg+R
8YEkDTrc9SREU6yBXikfyai7PupBiCbvpIr428N2a2+xX6ISdZO280bJqsInN9Y0/Dld1cWgOWts
SRXqdpgpWy5enccwPJcdMOUtHFUfZOpRvmFZkWNx8nyQJPicTBQxgi7jZRxTMmm7VqHTzCA6kwGc
TcEZU+XeSyYnH95WKsA0gWqgyZJjwaJklN/rzMHWrtVFC59mLkOEunNtFiTQ/pJH+BuGMPDVcCl3
4GdegVT9KUacre30l7OqQF6N3MzA0I7xRGcpnKKF0WKgKL+SHqSKncnMbMqzH/PM39S4jVZfoz9l
+rvBAgGmWAg2zc07a2ZG7ay4umXqkBoL8IZpoTtj35d8IdizdctcFaEhA492Wcg9KRxrEgHU1FDv
wRSPZsrvelh0EIZvCQXI1wmkIxl4UVWuuXzxpyUwXeVMOVhKznCJttnXIfIKBs4ReknI6jUzW04G
dQu78ilKOITVSTzz33F03vefiu9XRZJjQLo54MARPPjjPfmIvwFlhTIWQfGVVj9oHO7VnsfDDye9
6vSjY7OBb+ZXrS9WSzHzVeGtfCh57t4wIafBTT4uAaFaDRGMPDaZ+EPzNkgWwRJasyrucAzCFth0
e4C+IamEoXCswbVVL5ZwXCeNjKtVfAlbhaqeCjDYY7TQEoOpraaCXT1zYgxGNb5X+VjSCwz4p/9+
fIRnUxMPrH6fpu/Q6QoLvKarQoXM/3HkK6Vatum5UAkFSQTbRNVQBpt7yltDpqKWDfZOPw7uWL55
zpMOIGJtGpdvxSgKSVdkBq9JGvPHCrz1F0WdhTwIrtB+fpPh4b4xA2hMG3Soz1jeMVD4sJJLCdWn
WhkPMbIthZEvqDe7+T/gVT72E7IrjJkUckGJxiKOZJdFK3i+gtSP/OUBTt2ZxwmH1GlExM8lG9uv
o6fgsrO4iSSml2sHixHwXCuI47DGX1RKYx8gyy3AnF5IkQfZ7Mp47qgMKEFAp9pFma+9smvkZIbX
l1Ug6pMfvjIrd4AOJWvj2FQFEeccEHcW1vuw7JoljCC+knVgv/YeMRfjXR8YU1/R0/Cwxsn+W4Jb
OmLr6OD/uG9CiCgdDwqlv7WeHPtJtxs4wzpBwKWgcV4cQO/0NXROKvyWaT1QUk04dNzc6swKw5UW
96aRn3yYDH/VA2+FGAcIISRn5gBQm62Toj7BzWgu2/XrXrZXPkjjiLHdUnfClIt5E4E0hHAUHNRW
hhJa39b3J6bQv3wHWAPhMTn0c9F98MSRL5EHcqCxycUI3VivhHmgdT9HyLJ7r2BKfFi2GO+JBHaR
OO5qzxf7ja1BDEGfySGnt23pam2fU9Lov4jfmNcnnyKa4PqTn5pJMIC0uOZttQdjJcBLHxyu6pWz
dvOZOI9RVkUD/E0ajEOrfkF7QW/G7UQpdOLs9aI0dF2QyRCcZP59GeQLJhGV2MoOeoeeInUZWWtK
EtNrJVZ+u9kTkN+n/ZWnlps55yWfblPJRs+F5ybGKKlOnemiHPpSCpxLC0su60qjWLTb4/K8K39n
jFb3d2igkFTKX1nmYBvJfbH8HV4wQqOnxsoNtL+tp9Pp2u2hklSbt9EkWSW+f9hhp0/pNdRG0osV
lHhMHMyIu3Oh4ooFRav7V55Vq6PCK10EEYbd65ebdw/03zWuhIII+Kt/VDPcyp0YVEAUGzZc4tKM
wApIrOKWZMJtIH0irVEsSrpEWTZfCva4i8CbaDm4KLjSr5hggcnWad6YPv91cWbLIxf+J8PXukeY
cSmbJGa+Ac3NjsVvFqRRzbgMm5Aa6VWPLzTF+OVTZArIfkmZrGo1Y0mpQCIlIkyQaVDLvFLjW3qk
JecAyZBawSBHGMwbgFW8YoUWuwylxWcHyIwQZzC/n/r+M9/qjA0yaxbFVg4o0lKSJ8xrvRXBsbYU
2YXO4OQtb/ERY3Y570c/S6QR+Byrg9pobMuoYqeuhjGT2zn+mDl3IbNDpCm9L/rAifJSTQWC9ydo
YYk7dHxLJjepxRmmMNgiy6k+a/PoC2/2U3ztroR/sw8eRoUmUypkd+F8O9ZSHdxi6fwt3FWrLbfx
4bZ76cia5JZevLDp7bQTDOp5u7sBzxSNvSEJvdEo7njyF1LjisDPpOQN9Cd5bDTor/FvLtZTR7BR
uhi/nFwAoY+i6sdBmsb63QRXk9XMlJvt4cHOdBA16ZCBUS1JjfgXvYB8qjJ1gtutp0Wr2LZB4Mzw
vbasD7gfERNcNjqy8oYbVoUCu7sSkxJkfC9mQVImc0etECSUBT0+VpFFM4uBE+RCS9uMFpU4K6DO
cU7OpT2O3Vd95WtzP8BZ9rOths/TwCTTYZgA56xuejht9u0xn2N+BjuGt1rSBzxpZIpUvjetwasU
0wOkzLEdTKZdt7oRHpuS0hdRunqrOKbzXjn4BSuabB607YTZj+f6hZ4WNlvAZBJqe7cSP2RWd8XL
dBFfMZVOu71vEcAik931yGNXTt334cR80XWWajlNXC9+Fb0QA+neIzeKE+KSolWBxa+tmWRl3k4k
sYm1YQiFECY0G5FYD2CNOWULlPXoqtjXCalvI828EDzR5a40TV0IJ0nbdByZhebo3+Zgw7oIwO6c
r+krbAODmH2rGaJZqLHg17/N14+e4VpxK+ILhG7OtJLGSvBGsfnaPXoRaivrSBdxg/vJl+reTvFG
qcl+6QZwDhYqXvtIzLPvTl1rq5Ju+QIWBoh8+l24R8uMybTBdHlw0yS4AF+C1tHAg9O0RlI0bWmQ
n9CwBfzmJtHjhO+iYTt5XekY1VoON3FZFzDA//DgzW6MRfZeO4XEA96efQLfTacgF0iSWK1FUW4C
pxZUDV/yRM+SU8Z/aXX2/R9JC9M6LDQKfKlv+nQrGDpqFOU+03uEfcOlurK96UGDCFtwVSgO21qF
S2egpxEmR0H4/5WFFLob9qYffIeWzE0Rcgg6XCAM2XGffpQK8VQrdZPugHhk1LWnTGQtcSiD6poi
HbyfFC7x8+RT58Rcd+N/XISZSg52ll+abm+88QVdCYkSZeYmC5AtoNJqzZPXVvj6194mqh8bri5x
R5klbtTRnBEa26E7dUotz5caeZyfzmX9hUHQ8eCipG96TiBRrDI2j7v+m8rSZewRk/i0XCaq08QW
LgG1NqAMMhVrWQCHWHCeXAyOXLUq77s+9BSo4nCr5ymCFGlB6QvUp4K2qwdkdfmGhzt/C8mipi1s
FLR8o7qVkjAzwxZe7F8nCxdrkSiB0qfXuDEVt4QFiK4BRXLFioSn16RH9W4flZNRS0tUp9HQGhkO
MTEC5bcVrky883j6rGaBG0bmKAZYC/VUvEESbOj7qdYOxofNjc4F8qxF/c894JYtrNCZrOF+tCZ5
mUTyGlMQbSp66oq5HwO6KIm7+J1aWJPgWCkhAQFvXcQTdgbmVezMsxq+/VEc2VYkcsIXF74kdNRe
grz7zU3jhQGAcmetvOrcnKUy+52TerGHZ7zs/q92Qk2wZC49mkXV3wbf4FgLqlmeAeKIWVPGEtFE
ypwhxspkExGFYPM8Da6eHV8OJibSGgSRcOO7Dq4fJT4n5RYCqyZbhoyeekc3XpFjdxJ9L9r5KHcg
mXv8YXeuPJNAq5NU2PGRQxAs+81DkcpreYgh7n0E0WUCx2AKN4fzOJPntXw1K6/TYRsCMl9pUB2u
uNsOGufKJ9fLYYz3FDNIvbj24Ndikj8vSnVIB61Zmfz+BdBw0EGpwDEz9pdzNsa5S7uFAmHvZ1h3
sIzDLW6A5V98VVjTWuzyX1P3ThPZ6cOZMnWMUw6p9DC90jnNkh8RoQCm6qJdxRxsFgtaiXsWuEqO
wmGexOK3OcC8hwrz90Lkf4uuCXGP704sPbn9orPhsJW/Y5YnXBG1FIN3sjIyXk13Y/Ircwgmx8Iz
TwG2XH0okQtVyNv8c2wZdfHrURSqwDvcE9D2b+BiPgOzfQ9sGx2IuaRR6Wh/ULCFn/fEl6IIe7Zr
GdL+ktMD6Y381vUCffETZzOUm9qqkbXTpUPjhnvKtNK16YkwJopWTbJka3Im+82TAD0yGhbN8jc4
32CaWqUeQCM7IJOJrBOEjnuoOcx4tGBWAE9BMipegpbVfvr/TUCSEPd1Pu0aE8SwaoqzSFdouVkd
krTXS4jYWWd8UucEX0wx7f8VBfBEKNkeATp66+o7rvRKeRwIuMDtN9O5WDMEnUYNJWoZ1pdDMPML
Qwg0KzD+0GW2cXIdvp9WYS9fHIBp571+29vtnBFQChpRraEXoVSiFGIfV8A9TfG1wSnAuTZvdJeI
1uv5TUDHuILl+H+ZSnqEMPjykik2AzmrtBAMge0UwW/fGnbFA6WqU5wgV9BCKDA5KuQiV2LBHaB/
I4+9DyrfXVZcQwOfKFNrnGdJMG/4aKnYOrKQBkd3n61Tu/DJ2C288as1tcCCPcrZ7L4vWwdVjWrH
9EfJN1IAZzjDP8baQOjQTm1cb123pwXIELCtrRqoGw6yBI2SUykmsFDwzga09kqZz6lOWB1yYyW2
5KWg8pXsMQQdZgoCcMvulindcxpaF+gdzNEg5r2fGWc9BYdE1sesuIeKNlnZojcQ9jIJ6AKeKAGU
HrgMryF2MFk4MeNnSVmuDSxGkcY3fySQFAQKfXZaJpFyMo6+Otdyt+HBCG06wkgo0Qc7mh4unVvC
4akt0JYA/jheAjc3pdhp+kv42gSUfzmtb4eFOdPLSlmdnwbZzfnA+MRwbI3JdGrT0alm1hBHh47g
P8rOXKg9VO+zyQlztYuhxZbPjIPufNT7Klv54imybbYuIQ0E9Q7yeEr7NvJrvgMa+lWvZ+6bzvNk
wFgUjS93fp2K1IyJDPTSOmUYhoQ7DRf2dCo532dcTdvXftZFG8IQvf8Z3hFRoFQcLI6g3l9MfFTo
03ThwG/s/jSgCBymjvcZGqqDYYNP+CXEfbtl+lmtcoTS43Ni914Rhl8D2xOJOJy+z6s24ZWw1Qft
kkVnY/bMpGSLZ4UnRn2klCA6wzWsaVJZthc/YPHUnW8PcEfCRy+SFbTyqFdpRiUkqFqtVHtLwgiX
6LoMGcxWJN+5JBAg5xHKmc6YKBL0MmAZ4FHCCKAGbkbePNszjZLYoOmtQVC4q+xB1kieDTCQkxZQ
/A05Cd7NOo69K3X4yc1BqWzKw8yHSuQZegHhTUHnCFFCp0QWWUqUe7c8yjQyaYQBQOocLupRx81Z
KIiWrFxRy2Cok49uT/GGsJBYhWtVXSY6IXGjPMswn2OWJQtQULIktPB+mz0W7Lr0PNwsBjKwaQBZ
VyFs4MgkSx3dX3RtWXvu6Cm8+PuOlMNEfOVefaJOxE6D0gJ/e3HRNGHLa/ZSwlaEUPduPNHNV/WR
McdlxXl6hcSKId8fWK+zSzW2Qs5/dGqHlLVI49rHmC2qQzeLB+dd77NCvnlbVSW09uMHHoPZWoXH
/5FNoYqpL9mEBdI4qZCYpSKgRUd54QOX9wQ65tILvn3ltIB/fU6Xu/MUtzhGtmGT+ZYI4KefMklv
gCa2h4zfvAoO42IsYNcF5915r7k+TOyRbSGBG5vRo9DJt/o5VnnMTVVfz89vl1TMVHLKVuOKYP8k
EklFqHY6+ECoJKQlmjVz/tVxLQGWYpzQGkJY4gbJT8vDbtLEwo8gD830xMHZqriQ+0RJY7fw37z+
m3Jrq8eCul0lv0BumDyZj4bRtJRgsTCxzjoGxfxiXIPBI2U0PMlTxXU2o245Vuj2rrD9mXFFGHnJ
oDsu3MA7eCdWXHseXkNBlHEZG6Bt0wBHGKtNGNN8CycrrnnRxC0IJrP7ZARF39owqKfT45wPsDGX
eRY5vypNlJjU1iwZCQ9zs/5helM+YW9dpzy8Eoc/f7WsCOOsscL5IC11BvxzZGZ8SUqa6cpbu3cK
Q7Jj5i6WAhfAG1zJ/zKJ++VJ0QLLFc6yFv/sbBHsdf20jtrt57IQDBo03KUNPNa+pmcB8/GWgukJ
Ydg/Af2CfP2E9dFyAzsJLQ3X2mCw/gLtzNasL9M5+LeyCozNiQFodbN7yNuQ4FkAO+R/a9U+ANrt
j+VPaD+EoYGjAuSg5AME8HJR7nQFpEO+fYOtrxCGsqmJ5UqrvFeysiTNnfBv5o1fm3m7pzgzrEOq
53KYCe/uNP2qj92dnTHmiuo91vFCqVpA0jdS4eXxa9lxpAaz+8xIDtVa7b+2KBAw2QDyDZXjxd7U
0Xj9ffgCM4dmrttUxg/ZSVMqTlT96GJb4/LRos8ZXg4OX8csSqCCqmd/jeYTouPFrXcffYiv3eMl
9j0q0roZhy79AqC24+IEpcRNNjTfcqEUSzvi0ZG/SW0Fnyxm9WRSLvyt9R507jjQeAvEeKicMH1j
T3rnvz/C3Iv0xsRNp752emv+Mu52wOmd7SW4XxpQi90mKOxSXp4x5j6dZVWxWM2wWtC6ZqPxJKc/
pCluasOfxateYCXsJyJZs6NHVqr/JT78PWJpR7P2KLPghPbfBdcKMO5ipqQFkvbGxILe1gEIhn/G
bJ+kfQFinHX5w6SQXPYz+L3tL7eBGWgCG0A0sguzLulIqVq1CRh8fO40FrcuECDaS2jTPJxTpo1r
zHTKKCiphLQY/djzyIpRDNgDuat9MW1W7Gs29SIy9ARJSjnvruEFVJ/rdE5EtdfKXZG2D9mRKWv9
lQLfRFdHUxgBNUMvmj15bXx6uLk3E2LabZcKfHOzshgbmt3f62K5/nq2K8ctfTIDqYxi4KNjwU7Q
ksQa/lHzjot9YMxOJKAQOzU43I9fEU/yOAnoBFHeFzXUVZ9Chz7K1taFKrsW33YTdt8sM/FgvUXY
hyPp2lQg91BigL+dpgZ5Jt26+NqbuZZSZ/2pQlUPBqHmjevdg9heIbulWQXmA2Qcb88hvsDR5mzg
X1RYiE5B6otKjhfs+HOnGm6eMzAiZeJI6XMgdGVgsAL9xclVAHFP3HG5SXyxZwUX1JTxQ+YsrX1m
QV44JqcIxZAXRlZHhBjmeaIQkkBiE+8SjJ1fZnHS6P/HPE63MLVox1LTMjgbyuQTQKphzl+uBkIn
YYv326zn4pgzj/bvYTxxOwfrbgUY7cL/o0aPFKuL4QMnxPSU5ZF/jTLSoNSxvrGo4DKx3/cgtCyt
0+cC3Tnpg4heb/mASLklG/s/xDrUDP9wjOa5lp/XhV3W+zVK6Qj6YJwoLh/CMuwBr7reNE3xv4kc
XcF3ucrPBEFsiCQwtJ/VP24BjIZZANr/cpfEa8mSukTQbJpAi4Ip/92j33rxq8T0K7Qj2sb0Nxo3
A4spd4A62NCvm6xATbs3HOmxcqNG1Kc7Q9jb+s0Vhny4MRzxvotyyrJvU3seFzRrKtIqIAcM2Gyb
NIWsK/sd/ebnmr1fZMWO0Kc23E0JMYP4LLgzMh0HMmdlfxvmIqBno1HTGa9yqjsZPjjJ/fLObu4m
kolZxUHF/U/vQQUxVbbNNxmcQovkhxNBshwfzMSYgCinEN2zIftqEu4KASMHd+NWGqfw1AifGzjo
Jr00EhpDn/yhgMunrqurISEQOTYuJ2JfHftYdMw0B4X6l/mSatFdwjobl2mluC3q8aL0452q/v5V
YdyjN2wTyZQ8I9tmawefNvYCL9g9tbU/uBVHNRBIXynn7+Y6c1JPNelXRPCW6lLtCcE8UAwsshy5
3tZnChkkinztAvfTxN2V7qamBFnlq9EVmSWTE4OM1wvOyxraFD51kr5DJPpK0FTCyVbDpyQpSfHP
gcYdPKJe1UKzMM8sf0Tnet4StDOXCS8KUP+D50vXBc9wgIqQzv+j1Ce89XpH4aQMFemnelfOTQaG
uaghJDQEc7hEidF2qc5GwaVcImfNN6eJQwd7Dn0yZO891vRFPrZa7/K8r2LvGSse/YpcjacHcEbh
DSHZUS4ElFW5T1FOE2pcuBgue4EQzDNY1dahTItyaS03HP6sUBQi0dfRgp+JhXhfzAhXd24jT0ns
tpP8DWL52YKOLPzGSzQ6oWd+LW7SPrlwuh6rCgd+D73fnpkyuyCadWa7CdqX0RBqDK8b8hFKSNB7
u071u1MIvM+sQmTNcDp1D8fLepzOODZlX3Y+T0wFVqUNBm9fIZ3NiH4ec851y30T+shkZpVBU6Q5
5le+k/GlqOnG8GNxNZPULRAkWS9K+hz4iFjWX59DOGcuq45gNcukPPdENHJjV/peSn9U0r8eoA3J
RiPqcIWb+6R8kxSXJqA/kbNEbyN3FRgbUtGrGUwLMohoCLZJqU5tevmmzDGmxaRuDBV4HRH3u18e
gjPaFfs8kx3hOocI4vMabzT4iQyA3K2nA/32DCvTwK/JaCShvu9tdMI1zZkE4uioNJ7ErCJVEuIC
djvLqSgwGrNgPhRdSrDKe7+x9i6m7/HIhX3JZTRCV4bWLDOdol31Q76oagQveTQX3XguSN/eqMOc
ybCeHBVxiEckZNb+ymQJHcJzO+SBjgapvy2txmwO6kqG+8LPzH1ge3dzuBL7nehD9gc5+XZWjbM8
mqzvDSqcEot3Q0g0eaK41/d8Z6842PTWRG+wQHGiysegQGoLgcUbtAEj+cUoslNKjlB75+3i5xbV
jIjOzKvz9/fXlNYrRBrXEEuww09fMlTqVSbGvhbrLvTBFYecoQ0F22+XmSghqNnBIc0gsn2LsxWb
VIXVTHgfzTyjT/1f8fhAOPTQ843awnvQlhLAGK3BrsDSTeCu++Qo547Crd7hHHbF5aQ830YE3qmr
dEQnj1hf5yjeqtAXKqdocCDlOewRWRmagubctDrwsVCYvg+CbrR/D0h7RLhl6QqocoVPX6cnYDRa
yFVLNYO9uUl65iDRzxfRe/V9kjM18Batn4PJcZ3+AgvArjRzvcYe7wGmlj94y1GTvCEVkhqOTRgK
C1+lm1Fie/bayadmXrt3kQ0eJaFYUuGNkm4FIT8pq47Aakr3npFdG3s3un0ghBI0Ew9HxX9TE/Ix
6ZJ3gh2j35jZwMToz5AdxTEsgouRihVDWUcrobPt4JPrWg2H47grz/ZJpxVQvAzfiSSy9twMwFPj
gzp/cagzQVozYxSBp+5aZuP71UC/wqysHNAWrSUSdJ/M5HSEE8KEwzSRBhuxMXe6sINpdWdWptJx
phLpiBU4a9ujcH659cZITxH2gjFEKM+1ihUeOl1mXZgpi6zirQo5vDvBl9OI30CSv8N4iFO00Pg7
jlh24FtO17UZGqt36MWOY6Tma95COTH0mzv69DRcgV7T5xMeLUO3fNrVHMVyo7I27i5NQNICPs+Z
N0wB1dVwIkIbYubLnq1iGY4VqHRw3GarCJh60BpeJ8hxmK0uqzatuFxeZx1ox1jYe2LAoFpQk+5o
CPuKUbcrsKX2TFgHCa/GWaR6KwYyZWaNtRFircNLWFi0gsSw9cjEKh+5GVodiob98EWmFRGUx0Ns
yZivhBuA0Dki7q6Aoh3DIAGtG3ZRnYXel+hXpDXkL/Yjzq1bnkt2DDElR2TL6fRbT7IrJr/Ve+26
vdSbNl9Zxx1OwwHYcJ9TCu4rXL+jDQkXepuVi1wmvrZ5ge25mS5oAbo18tXr+jM6JMyVfo2fKBte
ti7DmnsDaY61XYnTQr291KcxOuBTH+yVCHXpIz9IuH1dZR3qAeGVlZ7JJRVc2hk336+33GM09ZgL
ldPv/ogQ8oSKR9TyygBYFTJGCN+ny15uujYlhvcfDXVZ6LTOX+PV5Hk7T7JjeR8XX4xYa35aOKCG
JjPS3n6FtUzIltufJpO8lViWMs+0xWzFHVac8AZNz37PJilB3ZbctERBztscu4/9cQoEf8lbiCCH
4nSThCUJ5quZmqXd8J0JIX5ZCld6stHYsDuT5XN+UtzbzhGNs2Xyd7o3+AZC52LZKudnOv6Udv6x
ESrFK7hpezg1JwubI5G+SGeYxSjdxG5t2UOKWJfEe1XyGejy2Hu0joj1IzVCIBWfmuWQBbSNDimT
6/mnoIHRfb7Jv+Xo5Bl31qwWAftw1mBKR5KHjmlBiO+SRpLVlkbaoWK+w45qe9mFrRDh+iM1VeE5
YGhNfEkNzVIr4hELB1gl2pSrP/xX1/flo1NSq7hNssH2MCFb2fbLEa9HoCuBnm+3D3EW9uCzpl6m
ZX7AFhjuQPdJSiVT/kMqyi46nf4heP7wMo880QJWu7iEwYHASpWpBVGWOq5Z17MFYTpdgz341p9d
+xKtQELJlG5r08G41+Y33+6AybLDUdZOOs5pH7JSGI1UKI1yykB/fD2ly9HyqdSHzbZTJWdacDGq
InF4IQQxllcViRVf3qkgqYci9H0p6bLIOC3qpfkk5N92DbeebPeoQnAlPlj/8KjW9L9iZlUL5Y3A
eWvWuwanwRPr2MKuTpEGM8tlt8bd2hI4aaLnVR4xuC05KR4171Ed1xO8fPM183JVg6R0qZPSLDJu
ocgaz87atpbJUIM9GJvJzAvo7zCadcdgdp80wjM+KeOd1YbYeR1MbNEMRX/U+FKFWPg41RlHm5a+
hn80l/9vBv9qKV/+ByTyGK2U3eeNGwOfbrlzUjwp3Kn5UcwXLNbVfjf2ayfY06j8dVGX97eh1x7V
fJ2D+894oD+AjVgeugnJM2HkXLQH9/caFdcTw9UEIfljRJBIe/jGIU9IwpnNCUDMpd7DPWaALlQD
W1FeNaHZaXgDc7faPFxfzZYMlJ4o85bWygOibRancA/RPLU7l2N3G4ch/A9g/o1weaqekJdRir/g
X0H6/HTxzx4ppkLi1TS8ztKAca9y7XK8Fg0KjloNN20ufGC7RrGLqiYyQPqXq0pajeIpcvn/zAPv
vBqO2dOv13H70h2ck2dP2dM/fKszrrSMRvb3fvfhsp59gG5Vcgi4grbUWwRxdEuL9kS9chsf/yqB
ZzdVzbVFSr8YID6q/xeWZlR4HGKJNwR8KdqRNlwwl8NPPUhl9vYVDe7aLrb6LY7CGu0HZkOsGPDF
mFoB7wpLXOzpxUwFYbbXb1GMO1OBNzJLEIMtYGh/zFeCVW9jH67IHI/fvfDlTuIIXqPx8f/o3C5a
eUxPiChqxmSc+r6ELaMovnr5JPD9qwRrCXRBWCZj2opVQUrKtAHzBsoVCLxltMv3ZtBf1p+UUmHG
CcJh8VmI9+od7KwudmzRdsbcpb0oZuLIHdP3O5FF98itr7gJZuAIre54abjVcIWx8qabDN+5sYM4
pvfiHBc9Gfga+8EXLDAd0JaMWvGMsbmiCHnVywb3z7Nnbug1C+twN+Y14w/hZAYLIS0hDLTmfSwd
vHiA/arzVaL2zFBixV1t3d4VOa4NANAo2B1J75NDmvrTaerUBQaiI7K16q2gnZ4dB5ctIrwsVlzG
cbNPiyrGxLjpk2suYUF26LzfET3K2PtG4G5pur9c5ibs1lDy2QKzGh9J9HVU9lqeBqubRaJCMPoM
mNFIs5xCLQBCAs/3yr3S8KLL8/gPB/uOjUg+7htWKT88wVRiSyRrfLsDyC58KjQLY/7bMz35Zf4v
pizH/+0/x8aUrgLj2nuc4hyfiebFBNHI4eiTz86qyoE/WTWvMgcg8mF6lUJR3w5h7zn5cR8Vg2dB
/pn8vg4oCMf4vgH/+ie5etgA/fjXv4lMW6AEcGZUoDxnabE8/8UrqvM/N2i6sqDslAyeZe4zWzlB
6vgjemLAar0553afm5j62/7IetjxXHrqaSef901pt/rJLbtZn6FgJIBDL0xy3mg7w1xVw8C6qOLm
B/ImUtUBhDpAwknyaT2qnqjOl1M8cISHkKcHSlGt42WCLc8/q23NSGpHeGpGoSH6x+KPwCz2TCR+
AaBgFBsJb/kHsQ3QoFHYVtBqS11EVo0ZBwa6AYeHuYDWktRWPhVakzE4SvVUNmYAMzujkhioaDL9
/7NhPxzzd6RCdOnkiWXFREowJZg6qGNid5Ea0wD+uz1S2TA2g2wZTTQ6+0XNeWsjqzvvgthp8yU+
QHwi1BVYdcfq1dphwlb2l9cs46lNgXrPX7TY3ALFm+Hnn+tHVtNA0xIzOFvQvS/dK4SK5pMErnym
zrjd3CgjHWtmKFQ29wYIAE0NLWzTpjmYyNidkHSeYZCuD7/9oxXWQ8FkfMaswagz1IHP7LIo7ZWx
agB7s5rd3YebSFEhYkPZnkDZpurqIxUtV0NbT+R5m5ih4s+MyN9eIa3U1w0TpdoVFyCkLubgSVs0
rpxsClv3X2T/AJl+pvbQ1Nq9obSC1YbFk0vu4I4nkmvw/XMuhLwa0DwAmbpuwI0382iTspceBmbs
/u4er1zcQQlpX/BVSv/fT7sLmzG7OzWIBQ6DjcQWm52BxXyJPHQjasx3D6opl63GaXzkAVR5sCdf
VEbvwgoAJNxqFmj22Wq/sdDf4Foc2UUaND18Lbdq5a/SwXwWbzdqZro6oFVClj/pScwQ2Q7Es+Rr
wxXfpFsUaE3imHb49gW2OrwepKIHm4A85FeCbC0gXTncr7rTgXDf0AE6QZKVWjxQLdWLizGWMTNi
hOa6CJE4CY2rvIq2FO1rqlZ5ftXF0Vhv64tFX9AY2LUaFZe1SUIWx5+QCzD0ehly8r571HMFWn/9
ZNvJiYqv4hGghd6JVsK/c3NELIPaiDT3/YdL48zKnr3Qm8GKZ3WCbpnkn80ZIV2THHz5JiL0y+kX
/vvXUKhL/626egsXPk02w4Qn9v5njaSG/5CgTs20Yvwyljb7vkflsGm2kq1S2Ai8xi70nxotn+3L
GLRl2fdIB54c+ETLfdWTZ+7mlc9rNSKpf1YE5phlml+2YwG3ZINzFaEflEi9EpyZQhNNgmPpyX8t
Ui+7y35GmA6duOcoTna3fO9vEFg7n6M/XQeGVHsqmU9rgg9Oy/1ZQXv4AVrI5zq4Atpyriyq1OOO
6EXPCdgF8awM4UXBcDmxpkGOgnnonyL6tUQdSpD8vntAEQfQrPsS9kzPsdInoHdbkiaOn6/RruZ4
PtPIde6kGioKSllZ9Ff42IiyWuMrX7sBeJP8gylOiRSn6t8tuF1S+NKIost8zwhf8AIUoEjrufra
A/F26nwvJYoCrkYGc/ZVKpcF0v6Ce3AMbEvMANuIX04i6hFcMC3sM+rTAly+wkK/8vk9fr4s4y/e
EhyKLKq7/gzUzdymLMwgUVGjxUKq6/Asd7S2jOmg5/ib4eb3QJXatNpvXTIt5TOqynvjzrBBd2I7
rD3Tn+9nU3MUzwey+e3kSBXNbfL00qgFQYldziDvT5dUysy8O2t3oE2rCmA6XEneK7fqXJhRm3sf
GALrUG8te7XgNEmmtNubAMkYvO49FMgw2mBX8oXw0BdLnyBnTKt9vmh+gXCLQOOhAJXtavksJhtj
oEWgBES9m/FHAaO2cwmz37gAjO2Z7a+09m1qIwTv6e8WJ+XPBGee4eO1WGAr3rs3RCG/ViIefxKC
216uJpjrWZYQcCvBzS/g2Xql/h1DTve8x97zKp690oXB50AohO72lBdklmd5vhwZy1qHN2PZWPw4
vC9EK+lWplJJobaxa6pzUHWjYI3WDCBdRReB/yxe1Tho7dx4gynfGQqkEI3WT13U5Z03l+BGIQXy
XK4vwzchKnJXhaPPYqvGrb2o5DuuLxbdsJ1/KD7t/HZP/2jFAGY/osZ/HtuaXHJn6ZVkANQgouCX
fHuSeogYzh9cI0XtNdvNgneEPRqvgGdj6+JHaki2afcy6BMvuwV4wrDN6dG+EQqtAXKUsg3soh/Z
Xhr8Mm+MiXnGW0THbJqMIImbYM2eDD+m4qi9W0rMvV+rI1TtAMr8VkTuYv/zBom6Xzaqcxm8DIin
zVxm+HtRugb5PkKfUyR5slyqLyq55eQfo9TSYjwgby3uGARiBUIbaCDqPYeFCZzaXaMD4DgwgrND
cAskBsnG6fTZNMDE3WzStofZxBPSuNgDFt8IbyTKyDC+sMpRErclsebNRwyL63fkX3z9qreJx9Ap
urv3EstoQoSH6TzsHbfYMC4D9fdl5PYqrGujNg3idK8bHdpijC4s7ALi0pJYDpAlo8kR7pbpL6Zx
Qar10jk+ylswHCXrjgkltFeIvRHSVVFofa420ZygwujQuAo6yzh4d+8ky8PDghzIt7ImOpTuLgUU
luOEe7mIDJyEzdHR8BOo/p0kSrvccfK6XMiGo9hko5XObGMYXbzaLfs4KuYEXUyjzhmuW/BeodrH
t/IpsmyphntopTkL6wU+0HP0Bxu3eSXDVHAxhyYmPql9HJ/qgQIE6Utt7wOZ3xJvBSPIuwlALKVX
7Eu0bkkmopgzR+9VMo7CC98TKM3+E95Eqmg2Ex9Rn9GdDJDWyeGtOnUgXcLy9cCg6YPE+8uu4WyG
UOMTcVnH8fpSOHTAMxzK9Cz/hqacfKwHM64LM8Xo+Phjw68TnMneR4GP0WXeAMhpKIZcLPiz1YMw
YQE++/Njq3XrP2YoD3xGPlpCWmxRRH00MyUA7HYVIjEIEtxAhNNkBFPQhKcIO4dikWFxn5rPq5wS
FgSBWOkVELQ6IED3dtmxbUaARODsDqtB/q683RZDaj6ZibfL8hlLldCb29WoYRvUNk8fVTImRYHN
3TqDmP6p2oAtRyfT4wGPHeyYA6/TiiRZhovMcSrP/eDenZkzzUXBH/+rwtQpnI+e/Sx4oNtC3oqX
H1WcShJZqdjPn2cMV7Godrx0TUwRuNTvsgDvqQ2Q972HInqz7/j/fbhKxnjkyVAKrk6xmh9fTg6+
6Tj6T9KqQYGUTZBf6uzH86q6KVCFRJ2nM6gE6dQ67eXhTvITP+aEndd3xcFAznBAr+CLDJ+hVpy/
dkAnuEo3V7cDwwJ6sYR39GCkaom+sW+aPHXcKTqxyY9Zb5T5SpHB7cRWxoet9QBICkM8SDpIS0ZB
EtW1vCCFXbIUgPvRqY4Z29uNl9lMQ3PWN7pvOP+b4lfFHboNuuNrFloYbKr5NgvWaaKE/l74Kumo
jeiu8oAt96cAch09JT56gZn2K/mjXO9gkY4+eTyoYJhv88WLgyWcKsnUy0F//9B4Dunv/QinyNkQ
hfKQ08/cAG9iYUj2k716+BcTI8O9Eyku7K9naePjxBJmdEzBinjFKAJ68hJzkoW6pmIJb1II3J0c
To4Hw6WRhFEvt6PlsbM6pTcIQj/CfKL9Ozt/F+XRweYScFbKpP9qklPXjU8LdZBk7ZJkZX41Nzbj
eB2uYTKcNekgEvRsA72jlp5EzhOIZWefa4uBiDe5vhE8CaIm56O+hkuvvqzt4KHdkamBX8P9Qxyl
id/sOtQT0RwGUHUNRQGoTvk7SRwf1jHyTTg5jQSBjwoW2tWlPXyws5eRB6RVSl7auAXLvKxOnpkB
2kkF1iHcirM09QZXogL2iIskZVEEcOcGAnnSuWBJdVtYkQH72WH2lG8EVz1OctozTR1sAq0hK8Hp
US4mWgQBWYk13TiAJl7C9+EejtTnMatlZGryHAff6ie/m9gkEb8QQi5clNAD67VxcUq2FAFHmvqo
P5b+rcZn0RCYDJ6ASZwdrsdCOLRivdTeZWuVIn+6E8bEllnR+ce126wJOD1eUXaA9CEp9Oq1Y+o4
2zUKMRh+fmnojrqSFh9N5Q9szxLbwekJlMTCGVLJ/N3EIY6jCqXMJugVCD7uow/69r6on7cjRdDJ
xrzfMmSe9VVblPZWHyP7Ekbax90Rr5pF/3UZkTxO2uYI9L5480VWkjzxyN65hKFrgb8kUAwVSf6r
xKUF8h8nGJB9GlQrmCXq8ilSxoXnNwKj2rycjiUAvAzbLeb/rldSKS5xIQdepq/6gTm/CXTFW2DX
4UnvV3SyU8WHijrIbxkKROBuIa0nTlLiunvigonAzt99uwETMudxnVmj4fGny2GA74MXATMkkhuU
vLc8MEVnQUJW9DvdlSHcdhNJQGJNniOQas/XXTyos/Q83AmrIv5ZYuG6yX/SjsmKLH4XD6QNHb5i
+iedn5XkpvJduzAdboYDMoZoRc0WS8Ok0RikdTKbI040uCoEC9H5u+8c4KdGQeoKhZUMmdCZoM3l
mQL6xSE6FC7jWx4oeANi+5r6d7Q14dUVflW7KiW5XiWKT5RYNpLflibiEl/YM9bVzOKig1rim3s8
W7C0mw3n9/FXh0whf+NntEsMt6Kq67JPFvbQhBzSZZcFqeEJc1KTp3klMpUz6rBeQwi+KFFLHZ/h
y2KvdgZFn6+3IN4B9oFu7fGNVEPVMQRv/Fnkb2VBHcxtL8HT0G9oiJSMPsJ88sRpm31Szp19oVYW
93hhN9G3WaEU/HsNAEuEbH5fYQEg4i22pgseSeb2gbi+6EKEH24QhAnoEXwcyw/GGUR/bC1JskK+
vEsv2v7oSDTvcmpEhl/YPLT2OEGpw1VQm/K050m7ZY82YBnSZteoLmLRPGEHVAwywhGp8cikwZ/M
2uqPvSMVwH0rv3bK6Wt3gQNR0MMLfT32EgCyvALHnQcCc7YIsb07yiG55ts0X1AYRX6cGcac1uOf
dGboJFPZYhtsHJEEeaGUpNIN6rZYbIKyV7/ITQ0e27jy+tV3fZkaxA/NqZNpdIZ9WrQBRPeEPPM6
hmvu+AFEoNLqAXtJlXdeu29LzCwqPw5hmMe3aJdRSWiVRYm6gMglnzuizbPOFP1XJrrugKznY4lk
I6OSnkCfKjQh14IN8CDILVanvAU/9lu/IG/NzhaXxcJBAMy4rE16lbH6BGINNFUqzkj+zDnSc80w
rtJPJeVUznapR+2sDjTvsIMpZkt2vSg8GNapEd+wQkW6oIh0yyhpcDBpU2u8M2pNPSM2mXoJz54x
Kek1s47MWzWAX9d55mYjBVqAMLEM1WdHa5xFkA7BFv3y6vysUeyRARFmX9zK1J4Rft9p1GnzAF7f
+0EGMYMLibZi+tBBxMAnjjRthPAF8oObwqk9+gMN1+GYtDzK5JxYPyyb42fyAcxdzxTQlOYmwDbX
CboT1dXxbi1KKRyAEl1RegmNUaupZJ8fJWSWWfMyEAZpJrFdIz5Kw3d1FGjM6JtiCe69lS6NLIIQ
Ws0jmx72rd+o5ZZGMElxQUgDVCJ298fwX4zIjbzsQdGD65GTWdf/E8gXEVvgadKT4tuF4sPZ/G7T
rWO7HKVbKizHUVOGKyouJdE/rKoHZfkqM44vnEDDVYBnOheEPoezDSWr2oOZVf+F7MIwmlT/ZjZV
LpgvDB9cqeX0nnGb66OLouQ1MZVRrmeRlIBT9NzNRHKgMYeL1Cmqe7UiYf9UqXWXDVVn+O7YI/hZ
kosFudiQWRZA3vJMVX/tWaKn+BpsUwZAsyqv/e4skjzI5ASonYOQsrJbEGLPLZr5yneVJq5AqkCN
s0GmI+UFv6lwBy5AttOzBVLp1JeW3MXnW7YacfkJUgrBqS5nNypRCgnP69BQ3As2ZM241ThFeTsx
HzTMgg+L19edkOPe5Zjyn9Ee/d2XfLRg+pbL27Wb7gGHvHN8hXZ/hVqGIKRWEHZw5vlsyFWZVD9V
7QE1Ypz+gEvbdiFpVzRLgVT8IDR7Bhg+JcMs5NlZ10xB288FtqQS5ZvSM+wbuXhsSrAjNUjVpwyn
mxyx7qXJNDkBbtBtEM/oWxcJsbflSg43OGpp5WcpMV7CxqGiml4Vck3d6PVZSxSDDpadXWBs72pV
4AVs+PB5fu9wevDbaUf8TPvpV+KTk9QHXqzEjdmbGXntuMcoN18VZoZHoUBCSPe/yFgemOlYP65e
Yl8pPWUmgD7ViJFzBzaZeAy9OKwFEBrNizeSFfZlxqFsb1mhu1t+8ayNTGE3ab4/1NOukdVrSpdV
kbPWwgh/u2CocgM/OKumKyGTHlpgc7AQ8NPW8q4gzT1YpwCGn/lT8+LJ3x21lE9eW7D2OGpxG5oa
9a56NlT8OMhanMuYDpEBL+jlmOvoyvAOxbn6FypO5xv43TJguIj5hsN3RPuRxl1eBv69HVUPPC5F
6ve2fqWZywQ6dQC7kBIG1xEgA4oNiiakKOzMHzIsSNrj6rWrcsbqAlBJaM2+vfokqe7WIGjz7jSR
TryOP1KDbwqZDubzAIwej60dovx6a/G+IbytXzFnPpjeV/KCXNbzRFk7Hw8UMlHkpgHh2dnRZ6DB
7F98JcMLc3Ac8dwmePL2DvwyjoyoMksqkdGKygk0StSt58JDBLCIa8tuAXNkfALKUW3rBJ37s3Ku
t/zniD4xrsWqoc1EQAsJQw7RiBwGErEkqgYIURStzeiNJYbddg/y76zT0+1vEbIADzww0Qj0G6AT
E9n0Z3ln4W8InhJpwrNcg3nAvvj2ULuDJbeYf5E9q5uRqet5I5UtgZzvTJJcZcWGU/QIZqmOyYVh
somXiLCTIzR+0KgIcKqbAzx9E39r99ZJ6kXIXtJNxAdLJ4sf15f6DG6TFWQCaVFVfzgjllwx9Km+
v8QVjaK4zgQTf6uPsb4JAAqZaeDaAqTOywJ8zja+AeLYgIeyjjVekQhpItQWoLOoKsTqnbQbC68a
AQOCyu9e9vYCt3WjXDpZPOsYQloranNj2AlA8uj3ZUSdms4yuTpMj7XX4N9g0dbNxciq+3tYmPTM
QClCiADTKeajlELaomtIbPEsbCzskWura2iAxwFQ5UNqulSkLuKUvZh0LfTVwndtgOXTohTd3pEZ
emYBasJY1uP9c8Ho5Atm/hmvfjRgKzmUOrNVhBc2Y/3fkfPKLq8S6o85Kb91CIbglWlThKtzCMAt
gIyCjD9WjSz5uuk1TdgTo6zWp3BGJGb0uyE+wqK1LXYQTNQiHeiq1r1xpnrYykja/C92HJG3BxsX
WfNcRUk1RgXuJvQb4eIqTXjXgdYipOD7U5yTmVFR/76oJvFYXH/TZuOs3pQCz/zVp0jUhaRr8BGK
+7xjOwxlYckH41b/4EFp7rHKOWAvfpVRNY/c6ijgo0xOKbHudnanSF/wDv4Fopq++IBksF+QRP7M
v9InUeCTEYdKuHzwSSy2lCXMe714thCnMO3L+DopA/TfKbtMFIzmNF85wgWIuoybDNxR/UK7vLSn
Pef7X3mc+cix7+AeEjClrGEkSmvuqFb92jzvtIn7NPd/KxjFjex2564hBNGRbk0M7+TyLGcIqtVW
Mxwbufd2d8GpdvDNz/WzCHtMTurbDmBO/Xy3JpUqIdjxoSE5wBqkKXrmaJbfZWkjo6Eu4VYDM5I4
XKXgCWwdpasrdtyHigH6A3ilnHKN8yzCTtghKp1DavzQ0hmF5G6ijiv+ldZKy8aApoC/1Y+jwtF6
XHxHBlXvTv+7yzkUofZu0bU1yqbKP7HCw1TTQ9jODFrCBBOE8c3P39FP8ho8Bi+4o0OQgOgZKaEe
TSo9cXCU1p2pExvUhBAwlqQnRqplyUKgO+R1JHUHxXYUZwqQnWbUXTtvH9ZY06WfmgSkAC9/M7ji
2Eo9QhCv8zsVMZbF93GkBKXlGyBM17DptxEwZlKUgXTSq+y5YRFjqa1aJzS3/4wnZ+MzLf73++bA
cAUjjdPekKcYpMlIRzCy/EMfyI6MCXxuYWp5YWrT5W3bL0Q52uvcsnisXDCBu1pu80pVJoAO5j7L
PTTmEUhMo0db81P4uZcXXifcPVcrrWXlXzdjyGvqqnVuQio+lBBeh87IR1E8HS15HGE1SaKLKvpV
aOLb/teuHfTlstQz4z/vGEYmFtN8utqHniUlC9tNSHRJQ5aH/Ksupunigp3VlaQUK3xoVFipKiHH
Y+H65SAUN1TNA+6SCJRwcy5zr7ogtfS5v3aCKOSXhmvLWtsSkceWbjW2qgYcWeezvndVx2k9NM8Z
UR27QufcA3gjHtIBbkuXJQsCh+pw9JZP0f8zlfXHv/7zgyYZWYHcn808fPbOaIs/1I1TW38G25P/
Cz8+gzaDnrpQe25sHiKjvxt3xZCl1mkJoH0xRC9/O4VCdTszzaoVUgchdBWh44hCRSLdLGmFbsRb
x25p5a8Bi1zp6+Rb+JvFm9o17gzce+1yDlxKq3SjeYoTsG8+vzDepf6EFcxpNNvzoVOXMGSQa45W
gEKiSHWHMAUXY4AiIIVOxLQ6Kcx6oB4HAoavkGTcueEfocMCrxQqZ6wFJ1jKwMO4MdNVwfNxKiNy
eKxthBK5KkUVnsSoDTNtg9SA3S74Gm2CWQGxD0fmZGgR7xhde1Ix1o8B4bc8CTcKdOXEfg4P9XGs
FGUjie3Jt+FSf2cguHiRXsfBiTVOMKL8nlcBcpZ6ghK8/YQwiRZ6P2FD3XsX91OuUrOfbSvLXXgh
VRQ0cLvL2mabTj11TeENXrOqE56/4RZoRgI+1HMMxTXCeg83xwlhelY2vigIxEKBKHT+X6s4VuLh
tnosOd08f+biRcxb7T6aOsr4dPSOS1326wtj9GXfCcFYtxtYctTN28hUpEi8RsgmQr95SYDEm30c
k0n23lyRwy+9t+D4/VefDYj5bm4cpUylEAPdLqHCME0Qq6YB7vkoISQ3acbrbQ/3AKB6Kw2Vp74J
7Eg4l8o7hC/Kdtp45wICQNhwjMXgujHjjsnIZypdXpFXBA0YRQ/Y6xyoMJOtYij+G8uH67mMnJ+N
AuNQm855OoGn8tWYMcFvdL2CBKUoZeG3QWnWdvgi4vzoZHM18KEnHTzFRaDHCi4n1V+6/UOYmRWf
CiZhKE5NPpw94NIcnNUDTFFO8KVWULmWBEmMLKehphtXQ0PmPCp2zr1m5d32ocn5fWywWGr7HeOC
rMn/kURMENPiUfjY69SWpK0T/gesbgb06D91Vu+RSVeryigA4y8i5LtQTC4zwmEBPFFRpAGMWbyQ
MgoyYawChCtl+F0xcWIK4GCF8riV8DuIOJ6ExNAp1kH/FRD4IsO4uyWiXzMLhECzQwXlSgViF9vQ
1ixN2Oz9fdJDVfsqOcSGN3IGpqJhnGp7nQFZ54h0D3ugC7zPgZ82N4KoCigu0GCJSvcz3R/2cZb0
D2INnij0ioVrl5BxeN47OBcUc8T1efHm08hp8Nd/bWIfCnRGMaf2T9hQkxdLaFy8VGX4HBx5Occm
hwGo9fksGM1f3djfE/IXut0l/+gLh8efqok+jw7FAiDRfP80OpzjCFHjI4ygkhWqaTBgxpVk3IVH
7er4HOrkgJZzlvSDHb4pitrB4crSRv8vkC3bbwA7ndqNBoPrlsrhGAKsTJy8rWwMP4vxksQ2F/kF
i6PUOAwdP5/XQpjynYJblLPBKvfYZpbCMGsH+BZumDyvJlFC+u2PVzkUJHPmBVWUKb/FILHf2q0x
tJzcs9CBfPn51mNtysjT90GTZBUGW8JkRO+3+vQrNI51iJ8cMEpSEPRoan0/5BwBpcp0H93FwD65
0OAd05IrWgJowamgnL6vGs/w2X/kUno3bIUSn5bKeNk3jfs+fy/0SIQBjVfk7vaPaNHl/rSM/fHH
GgEIticUyDd7RIhPqrvYhpVEr9Zyy0d4V7Je7UFtbxTo8iO7AHcfV0o3uCrY128bA51qKxH6s0RG
pGvw+6txDDeQDtu1hMPH3hfVdrMVtzUK5rY/9oEDUFHUJU7SZN0ku0TU+mZBksJgK30vnARHhZ38
kGZzO2Sl58oeEOWyjwDUvLX68A3mnakATfObOQ3cbG3ZJZkLmrVEe2yNrOgwy36UJn5PANgloxza
v4/4bCpgbPVxw0eYRq/SGz4QdUPgJ1DNvANGligRHCxNHRbAhtjbldsQO8iPviHkez0Lw1n814T4
6DnFLD5NL5pFDra4yzKv9TXCEmPbqu8Yp8LqZAelccsHf+FR4cZj6nhmUWc8u1sjHbkHbvouW+n0
CnbdWQ1qNK0cx677XSFNi2bfFuCrEmXm5rYUWZgmvpYlh3Uq+Q/K3C8c1/D/O73F8YzviamqIGJb
1y9Aw9vki1Nvij8RW2qO+Oit7NnZJxhWomBxJU6L4TNz9/9rLBJDBSN5fIj27pWTp3OqNIKwa6jp
bsUqcr3lBUmMh51AXKSREyxonBEzJqTRKinfi0Bx5jLAMG39NIP9hM6/MiQQpKSmkehIyHL8oyWG
8k3ilp/qJSD281Na+g5i7Y+i0mfS2l90IYmbuUXshe2sgyL+bfIhf4XIt3Zl0m6vcw4jKhfEcMn1
LrApJdkGhxy3xBzukx9eapo7DtssRhlkp9Yb6iS60xA1NRztmsF90HcTAf6D3m11IMTc49tI0BL5
7hLM9HM2vpDSgqRX+BpGXQ+FVlu/nV9Ioc2fop/qQ2SmkLudxHW5xADg1459mEU+cYgPOgZioqC3
jx4lDK00qKUiS9X1+fr7kOwqUeJEwocZjdcz5zQDMtMRSXqHZT9j+LkuwlDYE7NSdnm7ydecXcF9
2Xtp1dUJEASDZ9eCNDlXT8Ecl6vsZqkGeD60udL7tIOV3tQz/QSBstow0faRuVJbAwVWGflHkZj/
uLHOpnRRuCBt7PJw2+Y+VlwZk3Cu90m0WpHSWlrXzvadkpS7wgV85bzY3wjEe/mrTxah0SZAc/k2
1qtQfJXgLFh+lZxeKpH+aJkI/ZMoyn07Ba/JgQiix8b6K71YXHBRxx1VFNZn1oPJs2OvHLSEPBOL
UQcsGNvFUPrzoXKuC80Cz4E1nSiMbdRS7/lL5eIVJW9oPdZqyaOHerkRI8IIZxPeGcU6GbGn3VHd
hlHe2Db0MDJdfBwpMNhjRAgnes1M7/U+UFteW8veVm4YGjpR7+W2VAOEkNn1xOz6lpSXj2Ci+55d
OCAnojpDktrNZjzoCcdMvhLH67+mpmnwbIYuh/YteyTI7H5tK8VOxKrjM4ufwknaTgDc7MnRRu9a
dKUurPRiOctdSirk6xC/EP8hblYPakxyE/vPZa4P++ruKlFc4GdSRfo02dFScB+eZWgEzGBYvFf2
N+dx9I9vGYbvSVCepeqX/LFKCukkcinVNKSLdzzSW8AqjUZZF8HOemerr/EwjOIWFS/sHj5SsYeG
Dm0dy9KcBKBVoh9v22GrC81KW+SVscuZqUIaacaCvMGmQScCAFN5kA8YP8L/QaqtxuTiVNoTHWf2
cs9ycO8eTuk3oJ71cM16R+7kMzlkJeTDN4AqKv8/DTvWTXhwXCuRwLtHAUSTrI2ZpMXJTMa5w5aq
Stf2EDw4LXYmLxz7TXRndtbEer7JQcbaFgnaDrxmvzD93sr0nWFrLG55veixdf1i/8VBoRG9xkV9
bBGCUSir2eCmnfQi45xkXWf8wcDiDMKILMAhVdLOXuWD9mDOIMyZYYKEDppUstsN5GgibatJmBYK
7qghKM9LOTRydp1jVCPIGlITwwVtZuttPnYm+KKvTss3SgVOfirwyMmYpAOnjtEs4o7RsJOgFdLT
TrYFkyzKGb3qRBRHJCbI/G1/4rHO1WKJOtZm5b+xNu3rvtzFxFkOMKdP62GDmiPxCT7LD7BZ9Zpo
aYPpBg7jzPPSdOImlg35VtP4Nd8/vcSB+HqDTJeUgEpsALuUEyg5Ar/UQ0E61G81d3kGIlZO7EVO
TFTnMw8aOb7hqrbSLwsKS4YEdKDs5JFhUfOTWYmNmB+OkupGDPXDmII23Y4hKv5CW7kmZ22PQbjT
3eEeZbxCcr77wpz8mhiI/O8UaQfxHOv42mvVxpqvNixUNGMi9GXGZYPLFwiYiH9lnWymWzz/z2FJ
3EcwkeifodYkveJAlydoEi9iOwgt+1I0sRJGLy5jFV+ZtYGDv8oyaOGOouAa2Mi5qQvVf64KHEie
xe38buM22RrJJCxSlHLAi1/scq+ThJYM9bcxoo8U9ax+4fcQtjyruz31ANOcI45fKXEA5h51zy51
CL5lj0MlLxYlbq5F1TzrO2oqP0JJW9s3AKIPCfgIAbLCXo+kHfNsax44lkSAsqDICTV10xWAzBl5
GE113LnznqZPa8RbMOOpE18FI4xjPHlxLeXn9S7Jyyt3eW1WW8BPQAwXMmxLeTTNCNTSndMP1kei
dHzTq7Y+Qtq3lzMtHrVvgAsMLX7w8W1ZsCHE8WVknkWF9iqsPbdMJngB9IQITPCIS+SV0gNntciB
njUvjf4Hd5lnLxMlvRDB4xY1Eze/yJ9+xrLaVsMrAkApMTkhXt/7ICtQNoZHWxdEHPRdy0crSZv8
l+0zKD0WaMOZeNAUzTjD5vrm6NpXy0GkaCud5cQkOLbc5PfiCPzFlYrDtS/ZVcHK0tBxvz6Z5052
n7dIa5uLZZKCuibHyj+DWHCEv6H1Jj6c9j111uvmlIYBSycgBE9GYIPbjaEUucof+fwpBaaqHdk4
4PEqzE9Yj5a3G3s+MZFpzq9SnFIwSq/CnQVR8SERpEgdu9pDo1HN2+Q+6RDkMhh12guis2Pc+mVn
x/CEH9/3KLtvw3jmsMESq4E0xSuEwLf86u+WM5fLa+9EyInI2EYDNrGR9h7t/HlBYopMVB69m3aj
0EpOqzHLGWpcNG+6mCorOV7ymlrnFW7Oq1dmjoCMm300dX/YGF7EuSHmMm+JNlClPegnEoL76nBm
uNiGsT8HNaUppJEFAgOtFluaMjJdIo6bwU9oPeziMQpxB6pahWycQt4/aEJuC+0rKWzV3IoJeqQP
tjPHoh6T7CfxA4YZQyIG0FABe6mPdHzItY8kMMKJkNJ2Crlv0F4Pa4WXG7GLlAFqGzogVTqQPl4p
6ZQXJDoBVx1q9+AZXv85qS/ct5I+BCcxRQSpgz5P2SSNaaCx7fnkDt/ecjXL4h5a7qDhyx0V6aSn
PfG9oGsIAF4sT+pHtIQxDhYdA2sDg2ivswn2bZyfOr87ocHFlSo0xlqvGrRV7cH56e0IhxIUIuTX
+WcUojwuXM+eQmjjnIeMUJGOxjL0IqI5WFRRxiQgRvFVZjUEk3q5K6Wx0bvgbHJYetU2Bu8FP61h
unSUh1ygvcmD+gzs4N9sgttIazCwP6gb4UQd+Uqk5xSyyS30Snqs1s0wK1xeHL7YMh714DpZl6Iq
iDxzYKtg5R/nUNUxO8p4pItXkR1/ULfqDiTjBVsQ4KDWw1Y8NFNONpKnKTNg1xRpodF3ZfmZM9my
cWjYMvUJSTsScpPEInBaCThx9ltyxjhBZnaHyoHsr/M0jdXZfBNn+06vmW9G/BjtpES+H43woUZy
fvpOZ8CryYQI4WECTBrPlqZ39wBDrO7ij4yDfxdsV6XIyBLR98wPHOu1M0jji81MrlvZFIvKbJAx
yUDLE5Z0xBqpTrEgc2gDz6pJ+FjglVmmlkAxn9L2ZAEMCCoK8DjdGjsLgXO35uW639DkJ2mZc/3r
KUMtxTlwxZqpBY+wJnWYFP9YKtFpUsOIZcvBCRznrtsqqI0+LbFcpdyHhVdhyUj9thAhGryBKfzc
Op/mUuppXhRIK+8IQqnWPrElZenvEOLuhR7O/LJ+h6QGVG5R0KnvKUS0A/rX/oqnMigh/gtiA5tS
pfSyeKFYzHnHs/AWC7McIgIvR/9nOyNydm77fhFTBvM2Vk0b9xhh0Eqv7AKrRJEuN/m20vWyUah9
yZefUZZzmwKJgl2R5UUZsCU5WUCCFnR2nFDw50MKHoMuK/F0bryYLSk/Wl+Fe2HjwP5Esx9yJ2Om
HJdrF+l6QCyPJjr+VRE6eJ4L357f3e3wFZ6mELl8oPmAUVb7i6PAjJUDa9jYBdHnwC8L/msJtVuf
VPDN4QjXfCTVMsnRmyFGsKP0tr0iCybcv5HK1oUrotZ3ms43IKbi7pqrY92dD3nYVPipF5hxrWXh
ZW4SZl6idXYQxnXcU5HOYDW/nZEjpb+W+EHAC6RdQIbW/dFWFu6HEq4m4zCp71R6clS4V6/noMU/
aX8WQbckdqxBSHfaKcs9YVLVDC7LBP6TV21zzPqL7jV4/qP0zewjCtNDEt8EqGZX82QPoOZ5tGvS
NgL04fOLe3KntoD7wTm8etDypfZH3RPNQqp4xKCCRWdtTJehc8agDpOuoF8yRS0WbYTvSiJ9quiG
oTNq/AbqC9b0YsThsOPL+KDD7vcGNBLwXdm06KnXLtIvMS/J5IGgwuXnPtH6AeTgwIF9vN5hhnh5
m4VGtAa8lJUJMdeo+KG2miyAmaBshvIEQcv/UfkjvKAb/AlhmfyTXsFt/REqIa9yBZUe6UstNQ9h
pzOnAPBwI+o6fM6oR08MnzbfMu7wf0ItJwGFr8mSWwKT/Xnpq4d2XFVxY46F7u128qRae13xOr88
HRGcV5XKi3herTJ4hRHaVnB+ihxYnCWo+jDDgavD6uBCd1L1BBZgKTK4WT0Bn/nUQVrgiqm5zGYB
V/jI67OZBCWaRpguvyso9b3yHFm1Y7NJCEEkeznSz6oXWtSYmV8iUfxm3SF+S2EZq5RDwQ/7/sEy
UXUaaP0B7Mx6qqmHHkky6oy3o50CILs3ItrpN/v1XjHnWXSCsJslnbrU8yhDmAHJzwmIG675QXKb
remcv5+xjK7LfCSDdV/QhkvoEE4dk3+K1sHjsG5AfCoFMlqR8+SHLiCr6VhOOSwj73WXLuBSAynF
qHo78+upq/dAEA4cLcV+AvQoE0tq7QwI/6C+dZGIgu2gKxupyZONsXHYX7ttKRc/mR9V0SjirKNY
EAtE3Aixhb4D6ra2CbX9Vx2YRAlJiYMP4CB5/hdvaoPrwbZxJtZjVELceyTzGfSkJ705/ruEo185
1GQOcZtb2zO3XLFX8nwJWnotzrV7+HCMz3GzpPtNQcQSUAFHbWsEDD7QFqhhm6jG58jBaDkuDrwr
A5tfhQfnrxiR6bsojMvWESLZljx8ttH5c1/ptIP02i+YlFk3dqzWvZtls2d0LNeSnE67So2xsEAp
t3bilElVEj4j4vlVgQmwa0GDxhGSPb9PCRlZ48EqgTQf058t1OvcxxGYOsAgV2pPKKQQkZz27yqI
P6Tv2i02/i1rCzLaYMlQsPtoZg7oy7qGY+GE/37HTpcoA64rcDD9rzr76zPIr1KZPVXTynRf3B76
imULdmTlSzFC8AIo8la+W2Pudxv6w94+fRM5bAv873YVx2fAArV+I9oLTkd3IutyIZrPMdaLQ8HV
Zn4HZj+TBlz+V4iArsiPFMdO8IPr1CCHOAyOEkdDD7qf1iGO3iEnCqCxHp/PoJkI+bYjCGOW0KOY
Bhc9XriQ6CWarT5DuN0q0Z9crAWeqAIWYXsEE+6Pj9/qVcK5E3fSQhfW6g0Dw9z6871uXmhqx34E
ozceZnKjasYj4YyDjLk+IMUoE6JQiGRGVH8mmagBZ1OD1BdR+eBy5s04lLe9v5/Qmc2LNxu5IBAB
DRnVqQqHwcGakLVDDwWBpJVk3O36J7z588p5jNPF9d6bZPaHeZzR145QDAJQClvPsch1KN9MzUyH
aYe5GOFYP5Fr/1HKFPkbiv1Q1k/LDimuYiUtELAT5X9OtZGqJ0qnopynkuJz1G9qRjTRKrpWWzw/
eVDYyAivHaIiFkIC0imT6H59xjv3/G8muyxyhFu1s6qrMIAjHQuyMcIVI8GNH6H64VmeQ18DAay/
5aw88EfwqAARKtcGBktNYTMkTG/UZrhYbTC4snNc86IRkunQV7tPr3d9HNVZfDB2OlKJUzJRQO63
Uy4TLTJNWEmjWDECYcZabDbcFN9jZOFlqVwR5ASadpHFMafetaqPSHplTtWzttuEIuX9EBhMA0/4
OKJZtQyG4uAlKrbQ9On6x/kheQOTqCWt+cOQT6XM63Mz7Dua5nxeaVp4mIFv0Hi9njpeTpGQmM84
8x0fNR6AvIzemKos4j+oVptBLOPkDrF8QO4DUvchcbq0PaFttTmJeydwmiUa+6GGdUYZRSMukAbx
FOyT5yZwIau/luOwS4tNnTIav4pgAd7Yo9ACqPkGb5F6wHckI7jPW4z2yQdMt+yCE85hNeYpyoSJ
LWCrfm3/jBizhkHp/TgFXDtc0G05JBbD53fx194PbR+Str/bq2ul+c6a/LhQH/PzBUbXsaov8h4p
3zpCo3FbLyxjtV9Gc1J57PTQ/eLEyMkGuXRmmnBk7gwaujzWJ4QsJ+QtBElCaHjzn+7bexFAAnE/
jHH08WO6hfwp815d1AuSc6S4y4BcsBrDg7tZC8dandGrIB+cLSBQiADD2nXYJDxIEKoeEwOePlUh
LHqgSdwJPh4riKsUJjbCIcCW4w0/mB/rMZZljwMAaHyU30jYBLelz3od/izcnnhQTNDKYM0Fstej
QxMGu+3EgkeEsir5s3kVSyby8JhbUQvvjDYMy62lW88DLkJsscaWeUGgbmpcyuTkzOd7YXw6Y+b8
Xc9w7WOij5DNv0pTCg7LE176s2ky5z1Qk9i6K57u2IjYy8COKIW4wVgknOQDtLTPY5PSLFlYVP2X
2WCl1IPURfnu6Tqvk4LQwsm6YVWZzwxBpy6MlomMG23rAktqEvI34QxH01HiOwp7bPWbIQC3+/Sd
+jjv03i/D2/CBMph2NvVtp1D8JnCfhb4sRObawz9hBQUbIAAJGnmsvnuyMCKctcts3FDdzSiNP7n
SC/X6tUPcHSbXHQbvjXELb8+n5qzNRruPw5uHYoEbBeOhj1x76EtbLW/vKN+LfAqWkmqpzL4uvyC
JfSFDHCdCMOrNUQvgLFjcSTakiUqqfF4tJL9RHDVGlz8ioNC/9iv2GCNnRpv8qBRGwAVtxCg0x8x
UBVq+41sYPXEWxF8Kd60hVTxYDyPRRm/o+dD2tkmMYY0Acy6bT2IlmhZ8Q7DoIRxC5+fShdRPKQl
x0OUuoloLLqYIpeeU6RlWrkKwYV9Z+oJkp5pqPd3p39UrsEiGMN44gVyNTeF8AJrXBwv87KyM3v8
MhDO94qi1dquLUoH9uhOfXSIH0/jZrQ5gVqyR4QolkCRh1AHcJAMXNtIjHV27fNyN4EZa6Qq3UO0
QFWeILpQ7DtNXoMmZ4ZqMYf77RzyUEjJWFmGPzFwe3bQMudZaT/H9UPiRneGvVV1WDCeEkKPmCmq
/+1ZaflP/7u4Pf2t9ClERMxaiJ2ftgNoHGTvKW/+Kf4MvxWCfO0SPmKiA6KZvuUjg4bAfhmh/qPm
0Gt2AH+QPx88VwEBLqoQEWQL3yhCdEegHFCL3dj6p9k/2M1vTZpe7hrkYcIbF4k1ItqhukIBN7Zu
5BSwoOHCX3WQYABb98HgKuLOJCp/F6ZvRHAyzA0L6DUztnw24FZEVSRSWe0N2EzMBpIxIvS089eh
6+auAXl7U0HwIE+EJUpASq/+sQNUd2AZwMlwQ+LWvY+3ED86zldIafC6h8wF3BKyJpw5Db5UmkkC
LHW6Lhyvfmbgmck7bjPpYLNWki0qFxYJb4M+FQZKRXZOi8zO+aGpcp4/z9smU/r4zqsfPKshkcwz
QK/VH8/ykPKg9c0Wb8khnv3tUXvQ5+e2+6IWRqRNPDFE/Ybpmmq4SzAHsvdbZNrQz4Ztx6AW8Nol
SQ3fqrCRH4aJTUZ9EyFWZD5IhG2+y2cEv4BRhgcywAVmy6OMm30qIXw5Bl0w7E2/G399Ivx1C3ty
quX6Oiba614lWRtxGhfNmT1luGlIPCXg9JkFvgvna9Bs9yq/h2CMgN6a1H+M9Nw39gf9AVr1r5nj
9lDCyWH3fKGtOkyKAUvQremLBp9N3q33rtk0sPf00q6dNG4QC3DaAvQqX2iIKpIosIliEa+kS5EF
laRvcVOF3enyASP2zyPH/r/HQ+cgyrtrXbQ3RZxw52MPPyjwFvJMgkY1AveLCBCDYumFCRwsn15c
Dui6s9HrOzlMS+dJsW1Cu4x5BCL4VrtPzr1Ff2r5ZvF2NG2tslLGzZBNLknmk8TfyWkkwpj/3qnb
K1pBcZydoWBAgMt9gqzZ7FpI1R3Any1iEJ/YvMnWTL4a0HKi4NpAGNE/3AQmToLQyuIfNPqQdXx4
xydkSiOAhHRq96K7iR602oNI/P3HwSXZ7tXtvTSceNJV7KvJjgQiaS5S/vVhD21EBjb237rBh5pL
198CgQYWV9TNivV0f++GsDRqWyPc8RVE/23N/aZHoLvgKTz1u8Sx8SKroq9ZmnWXCZx1oNnpfgVX
4HwmLTAk6kcsBwo4awZi7/R5LIi2XUpkxleFprUWOFi1QFs2UDb1UMzD4D2x0woZUiIuTt12exL3
xn8jJHJrVPW9W/+hAsAjwAabvKt3O5V0FkgcU7whlu5+T1jdOev6OT8TMPyIbOiQvMf1qLgYmwGc
yUkJdfUsSPqUTYXuTQRWK0iHG2BwhXqWh7+30CQsEgjEw0zWULIu1TXp3+xBcAmw1xA0T2dlfTim
QK0iI1I4Ucu1pDQjNaxaSMBppuf1D8nuDzsk5i8XKzafWWXsuuz5ShPBYw9TCsAiRQgiPA/oFnpr
skfrNyoBmLDtf0V8p0/gaGya+lrAqGVYxumE2iRMif4EKuZbWUgVv9D6brRoIkXZ6SbIJnTtIxRx
Z18E6DqCzLsfU/oTqAbdjo8i0jCyDSsTq+0CmkZUTEmU9ofxrefqKSixIoTPzGLdst6N82Kf0ZUV
YdBmsn2xwiy/Dnwri7X/jZm+rBZdao0EfvYHac1aNt2kOp0YSnlhOYiXz+9ChIvYoLR8FMjuwYx1
FcEY53JcgmTQ+EMb8h/2fe1pJd5WKd4iZch9q6JEGIPvnXL9QWm+jzzaCBGVSSnIIGguEhJNCjBh
wg+leS+hyoQhsNS2bfc1Xwcxr1sXrL+QQU15adWv9HMl3m2icffnUBBUPI9x3geB8ujQa1kWmg+2
k3PsXsm8tZk3MCiHUUNWIIypRGa6ysKJ95Ii7OIJTY/uSoPYJd2qIp5210Kmj2Bl7F6OxzjTgSLE
Ns3L1LZiKRS+vfDRiFt54Zn65+ztOjAw0SUHx2BKy9sxaiSizUVVWM8F6QcjLictLJVZ4qJVhFCi
CYLntWffJe9e/BjxUT0zXAnXJc1Hh/HFGp6UrtTSeYUvG8kejbT06h/K1L5XN0+9ZDMnTHWKyjuF
/ZisvOGmhjb7du2lshLEtuCJE6gis5agFGbEPVaqiKPe8UPIbeX3KRZP36tgFHH79mx2Pd9WVjFM
1h+Dacn5DKCxVR+7+vrW9AANHxDjpZVa9Yr0zmlPt+kSFCsgPXL13ctvXT3doxHWtIrivfVWJqM2
EoaiKWXF0zwmsAHbXrH7hZjdj903s287r9yRwaOptaakZT2O+KsG42mFFD+l74D6BFRklqHPoVey
6jF4dIMrezRWL023PzAEQiZOeP0GHX6KuWbW84pjRFFrQXV+zd4i4A9WxbnH0HHJ8kZMyd8+uGFQ
karL0bPWpumOIWFcfSiiO/mE1cBw47lIyeYd16YTcHsyzWXqa+a1V69QO+zIdOndeUF+576DIalj
cMhjP1eIRFGKBC0DGt4ORIedtEE6z2HT8qExjzg4TdLSrmI5/s4vzKbJ/C34cehIK3eGZTgRjRmG
t7+k0qvqOjj7lQal1qo/je6J8bT3Ry3Ww9vdw6WbGl/WcCSqKWGwMFcuB/hmbrJvLLexDd3No3us
6n6EHclIZUEBkI7T/UFdr+lcw/HdCYopgcNLNc4xn2g7Pytsk/ku/bIKBzgN/tHZZSKBT4JBaCiO
zDre1P9RV93ntsbD+UWGFIofKk9tj33JhTctBrL17T51iMY+WXU8Lnd/xuo+Q/ozg5AKY2kAWzvu
s4siNfZzhH1vBVA7+7VRH/jQVmhhTm/kLF5uMIsfYAI7/oLPatVe17JCAezAYHZ+zUMpmo/fZ4aG
u4XFIkhZYBPdUFp2uNu7F1bnjb58yMWzMWGwHJUR1GntBK80cJOSHs7oijxl+MEzDTAO7sZMbOMN
kSaCJm9I6QbhFHojNbuC/Avry+belA8edIzK8yF5vRX58lCFj7so69KO6IHz16kOPho2TumtxDfn
e77XlP6kqFOBIgoGgPCNxWfZYWmMozf+LyHMI62x83V7rnpqWAgcJWINr1M4pix+hrg4JFY0G4mH
BE7tXAVwkfLL5d+rfZlNcpvZLwtNB4+7PP6wn4mLcj1YRUrYAKBw4x+PbirosmlgNrX/lzU/9NJ2
Cfr7I9k1Y8/cWGV8xxWrjzxZvZpdt6I0+QXITblYHaP73E+32BdnmK2JJm9OFlOTDjyM+73m3fFa
73jBoEnac9vYjKFirdeqZXNWnqu0n8zG7ImTaOKPYTjBvXMWHj1+bGddVMRZ1BFwvoyJWH78vZQL
A+2ViyGwqwvZKPG7YL8ZmL7Z+dpR8hFjU1T1dxxg7qc8LycoSwxqiwfO6FAFw0YFCVy7K0PDsx5d
1a1rJ2zbdeVtewfmockUk+yYOH4PCaMPzCQHsYdzOgzyK2AlwbAZ2ATF4ZOryNxg2Il8+PhnZ33D
y0F/u5cXICXnJz+i08S4aZff5QqmdovnP9hEn6fU4vETYKI+pB9RnYP93UzCJ9kcetYC5qhc63Tc
QeyzCFGvpIV59wLM3MgCREl7yybeHmqrRdyR3bwwy2R/uf+m3a5xPLPMDvaBvrsOQdGuj2X5HY2P
PLpj1PH9Wjqqe0nV5kXTL/qvO3DecYJuD151P5ZQAZHHCBzgzuFwoZuF898JpgG92J7RgYYM1i3Q
lT7RuqvaJfqY69/ub7E8tEWBfzaTtPWXACwmGBNihT7A8lRuD7s+gfV4+5ceBbvEvHPNQbzY6YuJ
bIo1XqWkjaf59IOSNXd05abcnTfCsDYW0v+ftc0juyfuTUO487pcW9nofCtx4ukc+krtclQwKc/9
Tg+zM5S76QGvhTYOEFT3lze92U3itgg/4fwY+i8seDi1XuVlv80avxAcZCvL79BBucki7KVoJSPZ
5qSL0ifsN93M45owQba3XUaWYopHeRTzV3PQHcPBCjqiNQLNDL/kUlBdll4F84PuXvdre3PZL8bA
8Xv0Mk6ZqGsop7iW81ArxAqClabOcSMvVa2e1VQlpOkA6Mi2L2b8GIpnlPtyFecFTohWp0Fq+ZIM
7p9aRPsp3H3GxkHg8ycJWrAxQcgmWSlAueBT8CMRXN8FEHQvfRywoIckL036yJCZhmTv7mbCWNM9
bEfqTFWrzD2fN9p6pp51/7P4CiskSiEDLCKa0dBydcgWqOHLXOZnyg7gCski+J71b3GNasoPupWm
xQAgqb+9swH203lO7KhuUjOImfWzvAetajTvekrI7GgJlPjmUKDq67760uY4QrskDzodD0izuL8q
OCTIAUhFh4LJ1MNQWNZZDMwexqk8Qd3mvNsQajlsTjfTapmMvNSwsKKx1pBSTYtpcDnADOZDiCXm
1h4OLmiARGC3jIkJu49tTdunTQL5aOvTyJMLgfq9mUeDjytLcI81wozwB+Ji7z9nuXSw0aFi0lEy
wrKu9P85ko3iOnRPkkME+DUCZSTAn+PKzxPl03MSaahxjkmovkjNswlpyADMry31sjVrJ/GLPVZ7
OpKZ5XuXEyJ8X5gYSOnae4LeFJc4VjcipEG29e6upMDqrErUodlIcLoNBT9c4AaMn0qyNNBob/rR
sdN4H5OEI8rDyYIqwZUqoZhxJs18cPiEUW16y3gTQZS8Lo2KWoOxPSVGIm+eDwmOpDhTxdSLVQNi
4hEuvEiexel4JmwmLmXd78ahSaP4cy5zPC4kPN4v1iNm9hAZZ4e/UDecHQDipxA3rUiUsGyvTGVn
Ut1d+GIbUDzTKhOuS0KWhFnR+P+uxKSkQC5iFgfffQAJo1ZHu3do5BQ0tSmQLkrtFCDX1Ls0vp4F
e829nuUbgzIdL7AKNFo08jMckf6dXgOUdyL1U4O3EjA3eeKVYvu9dGpzOZWB81SBElpEirVwaXvX
gEQL6It/vY2++k2Lmm6Jde5xaoqwGQb5lUzobAPpNwYeJRrVicDb5emsZcLhQqA5tEzvnFiC6OQp
iJ3RD3vNg72sLnR7LYjmeOMK4kzRwfHw1oS0qFftUBXXI+5uvlCMWVHP1G1dhvaqBbST6972X8s9
d8E64rOVjSMBepHF39EYtsTBSRnW1111Z7FxqrYrm5OH5XQCAun68YJk/0T6pa8njy+p7CSSqDyb
t6+ZqR12eQq+238p7x+Zdn/z/Vv/c1cphHbDKwJA2vjK94ogRyOEEYv9bR3dAtHCwBvpSXHR6QQZ
swlMQTnvoLkPDId7ICGnZBDxLA2Bn88Q78YdKWJmfja+b1+8aOvA5M5dcaYdESAtI+m1k4zUqBi5
0Bb4nBzyJVDdclvo162U13no7MBTlMlB1tSBlNCt8sDyjJezVewPG2feCUcnuuT6l/qyhzyltuGJ
mN3Ubp05+RkZs+nT9cfpaLci6+jqZdIu5r0FS5/K6WMiuX7Z6xYu7fH9bezIQCrdMIYGzcOMpJPK
1SMJY01Q2LxAfv4ZufK+Tpe/THQsHZUJOv9S0HR3T7IztLrVbYIOHBBUnFtkkOulBm+cpgUi3wYi
Lr0gp1ytHXro2BaTs1K54X3EoYQs+bahKW8NGNTahuuSVV91hydHohgyGSuRRBNanJ8KCB6lvjTF
wemvUlqkUebFP/1Vt6xj3hcAtvg+HEb1GY8wzPGderOg0QKAufyrvS7MLOchFiZTWSc1sy2ZpO57
A08z6AgpIoSWvN/SCnTYsh0sBs9qGJM6JCfk9OBzxWXk/aVNf3iqPrC1PQ6gkrlQ24bRqDZQgTFv
+WA5+CF9KdfsSA5PhEKFX8o1G1FLUFvVN4RXB0Frvm94eRCGdmO9BUK8NXR/6+Cn4hyyhcyAzZBg
CiRVGGwcfNyxfnnfnGcoXM6VPvue2ez3NsxfFJe/X946P8BuRR4e9ZYvoRrMKueIz+u4KKisWHot
2MfJvoZ3wGvm8/yO3oz6iocpFixCaUg3u4+ykzE38O3gx0nR8Pz4cEnfJqwVImmiChsx4wPBmlHe
r64Ii0AoHRkA/718+oyiGSOcOg3co4qIuwpEdI0mfUOhBfAH/q5O8ug+bMpg61Ch0n9j6DhCwioX
/cLSyqrQbz+DJpOMZLUkpYA7McmZnE+mNoybwf3MvXNUkYfu6WE82aN0yeLBGwHen8zO+jyrz4Oi
2plBhMVkMwhkvCGfdOwTCPQ2ZIJeMRooZE96X8DWjHCLlurcSM71QWwlRSEoz7tMlWZhYvGH765y
MLPg2mGSjUyqRPApyz8uuPHj0p3Dc3ZOA9fJx7VW9KEWSNSDwPHgGUEMyDa1cgXRGB3hL74huhzy
ZA1eBSXbhzXkC1GB3A4goV/U7osNOpBWQIhMXgLhjnsOinmNJt5W/WJIfHQpx5RHE4zO+wY/GZoM
SGeurvW+nFM0BsEUP4xG6eOsysdYviCTZq8i9bETLDQTTr4mv4CR/lWXO+ULxbnNP3R8a1Yh6ke+
5BuD5AH6BTRLghHd+Nvw9eP2t0ve+eb/NBCfEfJbfwfXgiBnKwQkv8a52WgVNvkdSv7KA+UDvmOR
PZ3mmBfHph/794VXyCyz+OEvYdSUKi4yhl7ANOyrkxjjvhON8D7G8gSHUAFM/1Gwf7hUfElAS1TD
oFAJYxZTJL8L6Kyjq44jEvbq7ZxJLttMDT8mGpzQ6qLPzBtj5jtvr2GEsj3tjpkwggyl0GNbhBMg
1SWawEmWElBSvKRpJZuA7ciFc0SXK5l9MSif63Jmscy+yt/wTCQPCjT+mlOjkybmQBZ8Vp+zOdny
I+by3juL1ca0khBtmU8xwJPquDWiJcSLCB6XBjRsknS8wKs50JcjcXclZSRP3A5Den0oz26ZoXyF
8h6C5HSyh9CiSgC3SUqKRFAGGUnHUmhGh5dLtyzYNoqxBcQ/XMk5lP7jwj/2FFli1R/JEu+UCjN8
M2h/ABimMfyluRu1TUGwseAZbIMRcr88jnwlRwTtgfNs0V0iZ2e6WL1lWIDV1BBPcQFY5juUUSGn
M24Yhafqz+HI23mgc0tPVhzv+RyFJRdArSRXlHJ62WY/GNCv0h7qd9RHIe+EE6l39vDfDhv/k7Yc
1TygQ4LuVseGFewB9EZJ/IMjJ+xFei5+PoaaswhE99QX6HTElNHTkCYRtKWr5K49/VmPKI+PNvQ7
r4BKTNsHvA+13stes3fGXs7e28mRokFxnEWNeAEAmwcNsofmHN5mck0oQkMecHGIS/IF9ZU+VpnJ
i/TwS8jZPyxVjTwTOsf9k17afq57HPIlbs2nDkwFgge6iG1CW7Aq2NdMTgNOL/xOWPDRSPt5Q+Oz
nLDXeZTy1kdCZGhLu60We3WHoMgcpj/Qyztt8Fg5cqWq8ad4Gllaipg7JsqtWv+k7bhtkjZf2na1
HW5zyozxLaBI38M0iNUCGHq4c0JihBQ6QW+eqCkhwR99+VG6Eh3prZvMz62Us2Y6vuL5WTajuPbL
TWYhxaqU1zbtfTSmPi07zeafYGW6gQaMuztQr6G/cvMGt4agymzFRDOb69rgZiJU0FWA2ehUZ2n7
1rlXsG3E8Q7I+a3xjAZXTaPjI+yFdxqoZL45KnA4p4/b4mG586Ynf0EEXvPSk3CP+JBgPYai/mE4
voWHdM1pxQSAA+pw8yLldIpZ+PnyoxjIDlHgtnvo9ZnLpQG2LKasMpQt1dXLYj5Fp303azvPycpF
xykP4+Y3xGLAyiTQc0ooRAXHgh+SM+FxARFCf6dmYyWx3PQmpYPvsFYnUX44M4Wu3dSGIZlre1pq
4DK/BkFMtIh6F38B5I0K/Z7kiIwcYiJSaifQgB8K2tGtnq7dCOw7IsFpbljo1S5cyWpNH8NoBJeF
Mr4PuJQerxVPLFDZgGO93hdc9wa44UtSYsMgdzqhYJMXivUs7gqn2+0yQ6qNIN8SUdGqMJtyc0IT
HQJ5Oy0Ur/NvVjiYFGx2XmVNpTRkVy1DyFp1FRzUJ0TWtaPZaA4i0v/U6fUmHW5wxlu0Ug1QOcCb
GX9ooRvZ8vk0Bl88jsjmAT/uVOqM6tNZbxHq7BxuvWw9h0RzArIZA2u7wUNBxtr8ht9YiU91dbao
6RAcrcB7x5aA11edCD8kAOb1bXCoSSlP6ZqhUJabAPrHAKpl1A9a/S5e7ooTH/hIJk8LDwgMg6BE
UsqT3XqhBotRrkiWJcAs3ia8nJ2dYHl3cqyYKvgfg3ToxiAgG/ov12lq117g1H+bGZwZQ/CqgclZ
W8WB1DTN08VmslPQJ7M57BAUTHN9Jv0jXgpN5YfWD3VfASIKqCq9gLHrdEVvXckbpc38fwLy2a//
z58k7gIQasvwvjlTBKDtwOJdZPSo45G1rdSwq/8ul4J1rbY+pba2HMOTFbVh+qw+xEmMhuTFKRhM
rBhvEstYmUtglG5bfa08XV0WA3jFbU3Wx1+f1JTUt6+ViNK/JjtUPUiwT3ayBiz0cN5xgflAFToD
qImtPQS6StRDRtcSvyaHmvoKoevtktRejXaqLK+frNWTFyVS9w==
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
