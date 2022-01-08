`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 10:58:03
// Design Name: 
// Module Name: mips
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


module mips(
	input wire clk,rst,
	output wire[31:0] pcF,
	input wire[31:0] instrF,
	output wire memwriteM,mem_ce,
	output wire[3:0] mem_sel,
	output wire[31:0] aluoutM,writedataM,
	input wire[31:0] readdataM 
    );
	
	wire [5:0] opD,functD;
	// wire [4:0] rsD;
	wire[31:0] instrD;
	wire regdstE,alusrcE,pcsrcD,memtoregE,memtoregM,memtoregW,
			regwriteE,regwriteM,regwriteW,overflowE,memenM;
	wire is_mtfiE,is_mtloE,is_mtfiM,is_mtloM; //写mf寄存器的信号
	wire is_mfhi,is_mflo;	//读mf寄存器的信号
	wire is_mul,is_div;   //标记乘除法计算
	wire [7:0] alucontrolE;
	wire is_mthiM;
	wire branchD,balD,jalD,jrD,jalrD,jumpD;
	wire stallD,stallE,flushE,stallM,flushM,flushW,equalD;
	// assign opD=instrF[31:26];
	// assign rsD=instrF[25:21];
	// assign functD=instrF[5:0];
	controller c(
		clk,rst,
		//decode stage
		instrD,    //输入,通路图里传的是ID阶段的op和funct，由于需要rs、rt，此处直接传指令
		pcsrcD,branchD,balD,jalD,jrD,jalrD,
		equalD,stallD,jumpD,    //equalD输入
		
		//execute stage
		flushE,stallE,
		memtoregE,alusrcE,
		regdstE,regwriteE,
		alucontrolE,
		is_mfhi,is_mflo,
		is_mul,
		overflowE,

		//mem stage
		stallM,flushM,
		memtoregM,memwriteM,memenM,
		regwriteM,
		is_mthiM,is_mtloM,
		//write back stage
		flushW,
		memtoregW,regwriteW
		);
	datapath dp(
		clk,rst,
		//fetch stage
		pcF,
		instrF,
		//decode stage
		pcsrcD,branchD,
		jumpD,balD,jalD,jrD,jalrD,
		equalD,   //输出
		instrD,  //输出
		//execute stage
		memtoregE,
		alusrcE,regdstE,
		regwriteE,
		is_mfhi,is_mflo,
		is_mul,
		alucontrolE,
		stallE,flushE,overflowE,
		//mem stage
		memtoregM,memwriteM,
		regwriteM,
		aluoutM,writedataM,
		readdataM,
		memenM,
		is_mthiM,is_mtloM,
		mem_ce,mem_sel,
		//writeback stage
		memtoregW,
		regwriteW
	    );
	
endmodule
