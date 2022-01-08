`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/26 21:25:26
// Design Name: 
// Module Name: pc
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

//D触发器结构，输入为下一条指令地址，输出为当前指令地址
module pc(
	input wire clk,rst,en,clear,
	input wire[31:0] d,   //下一条指令地址
	output reg[31:0] q    //当前指令地址
    );
	always @(posedge clk,posedge rst) begin
		if(rst | clear) begin
			 q <= 32'h00000000;   //lab4中
//			q <= 32'hbfc00000;   //soc中
		end else if(en) begin
			/* code */
			q <= d;    //更新
		end
	end
endmodule