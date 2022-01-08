`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/12 11:26:03
// Design Name: 
// Module Name: hilo_reg
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


module hilo_reg(
	input wire clk,rst,
	input wire we_hi,we_lo,	//使能信号
	input wire[31:0] hi,lo,  	//写端口
	output reg[31:0] hi_o,lo_o		//读端口
    );
	
	always @(negedge clk) begin
		if(rst) begin
			hi_o <= 0; 
			lo_o <= 0;
		end else begin
			if(we_hi)	begin
				hi_o <= hi;
			end
			if(we_lo)	begin
				lo_o <= lo;
			end
		end
	end
endmodule
