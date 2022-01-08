`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/23 22:57:01
// Design Name: 
// Module Name: eqcmp
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

//比较两数
`include "utils/defines2.vh"
module eqcmp(
	input wire [31:0] a,b,
	input wire [5:0] op,
	input wire [4:0] rt,
	output wire y
    );

	// assign y = (a == b) ? 1 : 0;  
	//判断跳转条件是否满足
	assign y = (op==`EXE_BEQ)?(a==b):
	(op==`EXE_BNE)?(a!=b):
	(op==`EXE_BGTZ)?((a[31]==1'b0)&&(a!=`ZeroWord)):
	(op==`EXE_BLEZ)?((a[31]==1'b1)&&(a==`ZeroWord)):
	((op==`EXE_REGIMM_INST)&&((rt==`EXE_BGEZ)||(rt==`EXE_BGEZAL)))?((a[31]==1'b0)||(a==`ZeroWord)):       //注意这里是大于等于0，所以是|，不是&！！
	((op==`EXE_REGIMM_INST)&&((rt==`EXE_BLTZ)||(rt==`EXE_BLTZAL)))?((a[31]==1'b1)||(a!=`ZeroWord)):0;      //其他op指令进来，都为0

endmodule
