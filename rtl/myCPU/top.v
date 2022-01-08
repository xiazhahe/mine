`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/07 13:50:53
// Design Name: 
// Module Name: top
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


module top(
	input wire clk,rst,
	output wire[31:0] writedata,dataadr,
	output wire memwrite
    );

	wire[31:0] pc,instr,readdata;
	wire mem_ce;
	wire [3:0] mem_sel;

	mips mips(clk,rst,pc,instr,memwrite,mem_ce,mem_sel,dataadr,writedata,readdata);
	inst_mem imem(~clk,pc[7:2],instr);
	data_mem dmem(~clk,memwrite,dataadr,writedata,readdata);
endmodule
