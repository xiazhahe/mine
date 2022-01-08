`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 14:29:33
// Design Name: 
// Module Name: signext
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


module signext(
	input wire [15:0] a,	//原立即数
	input wire [1:0] type,	//立即数是否为符号扩展
	output wire [31:0] y
    );

	assign y = (type == 2'b11) ? {{16{1'b0}}, a} :	//0扩展
							   {{16{a[15]}}, a};	//符号扩展
endmodule
