`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 14:44:10
// Design Name: 
// Module Name: mux2
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


module mux2 #(parameter WIDTH = 8)(
	input wire[WIDTH-1:0] d0,d1,
	input wire s,
	output wire[WIDTH-1:0] y
    );
	//注意顺序！！（输入是d0和d1的顺序）
	assign y = s ? d1 : d0;
endmodule
