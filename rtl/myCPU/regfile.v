`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 14:20:09
// Design Name: 
// Module Name: regfile
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


module regfile(
	input wire clk,
	input wire we3,         //写寄存器使能
	input wire[4:0] ra1,ra2, //分别为rs,rt对应的寄存器号
	input wire[4:0] wa3,      //写寄存器堆的地址信号，需要延迟到writeback阶段和回写数据result一起写回
	input wire[31:0] wd3,      //写回的数据
	output wire[31:0] rd1,rd2
    );

	reg [31:0] rf[31:0];

	always @(negedge clk) begin
		if(we3) begin
			 rf[wa3] <= wd3;    //wa3是写寄存器地址
		end
	end

	assign rd1 = (ra1 != 0) ? rf[ra1] : 0;   //如果源寄存器为0，则读0
	assign rd2 = (ra2 != 0) ? rf[ra2] : 0;
endmodule
