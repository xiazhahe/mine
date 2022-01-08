// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Dec 30 14:45:01 2021
// Host        : DELL-G7-KNO3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ data_ram_sim_netlist.v
// Design      : data_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 33120)
`pragma protect data_block
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
fmBH
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
