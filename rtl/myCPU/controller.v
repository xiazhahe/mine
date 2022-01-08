`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 15:21:30
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controller(
	input wire clk,rst,
	//decode stage
	// input wire[5:0] opD,functD,
	// input wire[4:0] rsD,rtD,
	input wire[31:0] instrD,  //直接传指令比传上面这些简单
	output wire pcsrcD,branchD,balD,jalD,jrD,jalrD,  //balD：bltzal，bgezal；branchD：代表branch但不是以al结尾的指令
	//pcsrc：下一个PC是PC+4/跳转的新地址
	input wire equalD,stallD,    //equalD：用来判断是否branch
	output wire jumpD,     //jumpD：j指令；

	//execute stage
	input wire flushE,stallE,      
	output wire memtoregE,alusrcE,
	output wire regdstE,regwriteE,	
	output wire[7:0] alucontrolE,
	output wire is_mfhiE,is_mfloE,	//E阶段读hilo寄存器信号
	output wire is_mulE,	//是否是乘法信号
	input wire overflowE, //E阶段加减法是否溢出

	//mem stage
	input wire stallM,flushM,
	output wire memtoregM,memwriteM,memenM,
				regwriteM,
	output wire is_mthiM,is_mtloM,	//M阶段写hilo寄存器信号
	//write back stage
	input wire flushW,
	output wire memtoregW,regwriteW

    );
	wire[3:0] aluopD;   //用于判断R-type，方便识别funct（在宏定义中105行）
	wire[5:0] opD,functD;
	wire[4:0] rsD,rtD;
	//decode stage,都是输出
	wire memtoregD,memwriteD,memenD,alusrcD,
		regdstD,regwriteD;
	wire[7:0] alucontrolD;
	wire is_mthiD,is_mtloD,is_mfhiD,is_mfloD;	//D阶段读写hilo寄存器信号
	wire is_mulD; //是否是乘法信号

	//execute stage
	wire memwriteE,memenE;
	wire is_mthiE,is_mtloE;	//E阶段写hilo寄存器信号

	assign opD=instrD[31:26];
	assign functD=instrD[5:0];
	assign rsD=instrD[25:21];
	maindec md(
		stallD,
		// opD,functD,rsD,
		instrD,
		overflowE,
		//ID
		is_mfhiD,is_mfloD,	//读hi,lo信号
		is_mthiD,is_mtloD,	//写hi,lo信号
		is_mulD, //???????
		memtoregD,memwriteD,memenD,     //输出
		branchD,alusrcD, 
		regdstD,regwriteD,aluopD,
		jumpD,jalD,jrD,jalrD,balD
		);
	aludec ad(stallD,instrD,aluopD,alucontrolD);   //alucontrol在D阶段就判断出来

	assign pcsrcD = branchD & equalD;    
	assign regwrite1D=regwriteD|(balD&&equalD)|jalD;
	//pipeline registers
	flopenrc #(20) regE(
		clk,
		rst,
		~stallE,flushE,      //需要添加stallE和flushE！一定得stall住，不然信号还会往下传开始运行
		{memtoregD,memwriteD,memenD,alusrcD,regdstD,regwriteD,alucontrolD,memenD,is_mfhiD,is_mfloD,is_mthiD,is_mtloD,is_mulD},
		{memtoregE,memwriteE,memenE,alusrcE,regdstE,regwriteE,alucontrolE,memenE,is_mfhiE,is_mfloE,is_mthiE,is_mtloE,is_mulE}
		);
	flopr #(6) regM(
		clk,rst,
		{memtoregE,memwriteE,regwriteE,memenE,is_mthiE,is_mtloE},
		{memtoregM,memwriteM,regwriteM,memenM,is_mthiM,is_mtloM}
		);
	flopr #(2) regW(
		clk,rst,
		{memtoregM,regwriteM},
		{memtoregW,regwriteW}
		);
endmodule
