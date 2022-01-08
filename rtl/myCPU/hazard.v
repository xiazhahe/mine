`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/22 10:23:13
// Design Name: 
// Module Name: hazard
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


module hazard(
	//fetch stage
	output wire stallF,flushF,
	//decode stage
	input wire[4:0] rsD,rtD,    //输入两个源寄存器地址
	input wire branchD,jumpD,jalD,jrD,jalrD,balD,      //输入控制信号    
	output wire forwardaD,forwardbD,
	output wire stallD,flushD,stallE,flushE,stallM,flushM,flushW,
	//execute stage
	input wire[4:0] rsE,rtE,
	input wire[4:0] writereg2E,   //写寄存器的地址，要更新！
	input wire regwriteE,      //表示是否需要写寄存器堆
	input wire memtoregE,      //回写的数据来自于ALU计算的结果/存储器读取的数据
	input wire stall_divE,	//é¤ćłstall
	output reg[1:0] forwardaE,forwardbE,
	// output wire flushE,flushM,flushW,
	//mem stage
	input wire[4:0] writeregM,    //写寄存器的地址
	input wire regwriteM,
	input wire memtoregM,
	// input wire [5:0] opM,
	// input wire [4:0] rdM,
	// output wire[31:0] newpcM,

	//write back stage
	input wire[4:0] writeregW,
	input wire regwriteW,
	output wire stallW
	
    );

	wire lwstallD,branchstallD,branchFlushD,jrstallD;

	//forwarding sources to D stage (branch equality)
	// assign forwardaD = (rsD == 0)?2'b00:
	// (rsD==writereg2E & regwriteE)?2'b01:
	// (rsD==writeregM & regwriteM)?2'b10:
	// (rsD==writeregW & regwriteW)?2'b11:2'b00;
	// assign forwardbD =  (rtD == 0)?2'b00:
	// (rtD==writereg2E & regwriteE)?2'b01:
	// (rtD==writeregM & regwriteM)?2'b10:
	// (rtD==writeregW & regwriteW)?2'b11:2'b00;
	assign forwardaD=(rsD!=0 &rsD ==writeregM &regwriteM);
	assign forwardbD=(rtD!=0 &rtD ==writeregM &regwriteM);
	
	//forwarding sources to E stage (ALU)

	always @(*) begin
		forwardaE = 2'b00;
		forwardbE = 2'b00;
	    //ALU指令在EXE级结束后，结果就出现在流水线寄存器R（前推
		//load指令等到要MEM结束才能有结果
		//10表示采用ALUoutM；01表示采用ALUoutW和readdataW的二选一
		//执行阶段的源寄存器：rs、rt等于写寄存器地址writereg &&
		//regwrite表示是否要写寄存器堆（一位）
		if(rsE != 0) begin
			/* code */
			if(rsE == writeregM & regwriteM) begin
				/* code */
				forwardaE = 2'b10;     
			end else if(rsE == writeregW & regwriteW) begin
				/* code */   //针对于load
				forwardaE = 2'b01;    //在W阶段要写寄存器堆
			end
		end
		if(rtE != 0) begin
			/* code */
			if(rtE == writeregM & regwriteM) begin
				/* code */
				forwardbE = 2'b10;
			end else if(rtE == writeregW & regwriteW) begin
				/* code */
				forwardbE = 2'b01;
			end
		end
	end

	//stalls
	//load指令：暂停与内部前推相结合
	//memtoregE表示会从mem到reg
	assign lwstallD = memtoregE & (rtE == rsD | rtE == rtD);
    //assign #1 lwstallD=0;
    assign jrstallD=jrD &(regwriteE &(writereg2E==rsD));
	assign branchstallD = branchD &      //分支stall
				(regwriteE & 
				(writereg2E == rsD | writereg2E == rtD) |
				memtoregM &
				(writeregM == rsD | writeregM == rtD));
	assign stallD = lwstallD|branchstallD|stall_divE|jrstallD;
	assign stallF = stallD;
	assign stallE = stall_divE;
	assign stallM = 0;
	assign stallW =0;
	// assign #1 stallE=stall_divE;
		//stalling D stalls all previous stages
	assign branchFlushD =(branchD & !balD);
	assign flushF = 0;
	assign  flushD = 0;
	assign flushE = lwstallD|jumpD|branchFlushD|jrstallD;
	assign flushM=0;
	assign flushW=0;
// 注意此处 jump信号除了代表j指令外，还接入冒险模块
// 因为j、jr都是无条件跳转，EXE及其后续阶段并不需要，直接将其后续清空
// 要注意的是 jal jalr并不使用jump信号，原因在于 其需要写入regfile，不能清空后续阶段
// 同理 branch指令也不能直接作为flushE的信号，因为还有al的branch指令，同样需要回写regfile

		//stalling D flushes next stage
	// Note: not necessary to stall D stage on store
  	//       if source comes from load;
  	//       instead, another bypass network could
  	//       be added from W to M
endmodule
