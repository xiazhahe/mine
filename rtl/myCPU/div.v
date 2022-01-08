// //////////////////////////////////////////////////////////////////////
// ////                                                              ////
// //// Copyright (C) 2014 leishangwen@163.com                       ////
// ////                                                              ////
// //// This source file may be used and distributed without         ////
// //// restriction provided that this copyright statement is not    ////
// //// removed from the file and that any derivative work contains  ////
// //// the original copyright notice and the associated disclaimer. ////
// ////                                                              ////
// //// This source file is free software; you can redistribute it   ////
// //// and/or modify it under the terms of the GNU Lesser General   ////
// //// Public License as published by the Free Software Foundation; ////
// //// either version 2.1 of the License, or (at your option) any   ////
// //// later version.                                               ////
// ////                                                              ////
// //// This source is distributed in the hope that it will be       ////
// //// useful, but WITHOUT ANY WARRANTY; without even the implied   ////
// //// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      ////
// //// PURPOSE.  See the GNU Lesser General Public License for more ////
// //// details.                                                     ////
// ////                                                              ////
// //////////////////////////////////////////////////////////////////////
// //////////////////////////////////////////////////////////////////////
// //////////////////////////////////////////////////////////////////////
// // Module:  div
// // File:    div.v
// // Author:  Lei Silei
// // E-mail:  leishangwen@163.com
// // Description: ³ý·¨Ä£¿é
// // Revision: 1.0
// //////////////////////////////////////////////////////////////////////

// `include "utils/defines2.vh"

// module div(

// 	input	wire										clk,
// 	input wire										rst,
	
// 	input wire                    signed_div_i,
// 	input wire[31:0]              opdata1_i,
// 	input wire[31:0]		   				opdata2_i,
// 	input wire                    start_i,
// 	input wire                    annul_i,
	
// 	output reg[63:0]             result_o,
// 	output reg			             ready_o
// );

// 	wire[32:0] div_temp;
// 	reg[5:0] cnt;
// 	reg[64:0] dividend;
// 	reg[1:0] state;
// 	reg[31:0] divisor;	 
// 	reg[31:0] temp_op1;
// 	reg[31:0] temp_op2;
	
// 	assign div_temp = {1'b0,dividend[63:32]} - {1'b0,divisor};

// 	always @ (posedge clk) begin
// 		if (rst == `RstEnable) begin
// 			state <= `DivFree;
// 			ready_o <= `DivResultNotReady;
// 			result_o <= {`ZeroWord,`ZeroWord};
// 		end else begin
// 		  case (state)
// 		  	`DivFree:			begin               //DivFree×´Ì¬
// 		  		if(start_i == `DivStart && annul_i == 1'b0) begin
// 		  			if(opdata2_i == `ZeroWord) begin
// 		  				state <= `DivByZero;
// 		  			end else begin
// 		  				state <= `DivOn;
// 		  				cnt <= 6'b000000;
// 		  				if(signed_div_i == 1'b1 && opdata1_i[31] == 1'b1 ) begin
// 		  					temp_op1 = ~opdata1_i + 1;
// 		  				end else begin
// 		  					temp_op1 = opdata1_i;
// 		  				end
// 		  				if(signed_div_i == 1'b1 && opdata2_i[31] == 1'b1 ) begin
// 		  					temp_op2 = ~opdata2_i + 1;
// 		  				end else begin
// 		  					temp_op2 = opdata2_i;
// 		  				end
// 		  				dividend <= {`ZeroWord,`ZeroWord};
//               dividend[32:1] <= temp_op1;
//               divisor <= temp_op2;
//              end
//           end else begin
// 						ready_o <= `DivResultNotReady;
// 						result_o <= {`ZeroWord,`ZeroWord};
// 				  end          	
// 		  	end
// 		  	`DivByZero:		begin               //DivByZero×´Ì¬
//          	dividend <= {`ZeroWord,`ZeroWord};
//           state <= `DivEnd;		 		
// 		  	end
// 		  	`DivOn:				begin               //DivOn×´Ì¬
// 		  		if(annul_i == 1'b0) begin
// 		  			if(cnt != 6'b100000) begin
//                if(div_temp[32] == 1'b1) begin
//                   dividend <= {dividend[63:0] , 1'b0};
//                end else begin
//                   dividend <= {div_temp[31:0] , dividend[31:0] , 1'b1};
//                end
//                cnt <= cnt + 1;
//              end else begin
//                if((signed_div_i == 1'b1) && ((opdata1_i[31] ^ opdata2_i[31]) == 1'b1)) begin
//                   dividend[31:0] <= (~dividend[31:0] + 1);
//                end
//                if((signed_div_i == 1'b1) && ((opdata1_i[31] ^ dividend[64]) == 1'b1)) begin              
//                   dividend[64:33] <= (~dividend[64:33] + 1);
//                end
//                state <= `DivEnd;
//                cnt <= 6'b000000;            	
//              end
// 		  		end else begin
// 		  			state <= `DivFree;
// 		  		end	
// 		  	end
// 		  	`DivEnd:			begin               //DivEnd×´Ì¬
//         	result_o <= {dividend[64:33], dividend[31:0]};  
//           ready_o <= `DivResultReady;
//           if(start_i == `DivStop) begin
//           	state <= `DivFree;
// 						ready_o <= `DivResultNotReady;
// 						result_o <= {`ZeroWord,`ZeroWord};       	
//           end		  	
// 		  	end
// 		  endcase
// 		end
// 	end

// endmodule
`timescale 1ns / 1ps
`include "utils/defines2.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/04 23:09:25
// Design Name: 
// Module Name: div
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

module div(
	input clk,rst,
	input Signed_div_i,
	input [31:0] Opdata1_i, Opdata2_i,
	input start_i, annul_i,
	output wire [63:0] result_o,
	output reg ready_o
    );
	//除法需要运算周期(对于小型数字会优化运算次数)
	reg [4:0] div_max;
	//除法周期计数
	reg [4:0] div_count;
	//状态
	reg [1:0] main_state;
	//计算结果
	reg [63:0] result;
	//保留两个输入,避免在外界更新输入的时候导致异常
	reg [31:0] in_num1,in_num2;
	//被除数
	reg [31:0] div_num1;
	//除数
	reg [31:0] div_num2;

	assign result_o = result;

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			// reset
			div_max<=0;
			div_count<=0;
			main_state<=0;
			result<=0;
			ready_o<=0;
			div_num1<=0;
			div_num2<=0;
			in_num1<=0;
			in_num2<=0;
		end
		//除使能信号期间的处理
		else if(start_i)begin
			case(main_state)
			//一切就绪,等待除使能信号
			//初始化数据,进入计算状态
			2'b00:begin
				main_state<=2'b01;
				if(Signed_div_i)begin
					//div_max = 5'd30;
					div_num1=Opdata1_i[31] ? (~Opdata1_i)+1 : Opdata1_i;
					div_num2=Opdata2_i[31] ? (~Opdata2_i)+1 : Opdata2_i;
				end
				else begin 
					//div_max = 5'd31;
					div_num1=Opdata1_i;
					div_num2=Opdata2_i;		
				end
				//简化周期
				div_max=div_num1[31]?5'd31:
						div_num1[30]?5'd30:
						div_num1[29]?5'd29:
						div_num1[28]?5'd28:
						div_num1[27]?5'd27:
						div_num1[26]?5'd26:
						div_num1[25]?5'd25:
						div_num1[24]?5'd24:
						div_num1[23]?5'd23:
						div_num1[22]?5'd22:
						div_num1[21]?5'd21:
						div_num1[20]?5'd20:
						div_num1[19]?5'd19:
						div_num1[18]?5'd18:
						div_num1[17]?5'd17:
						div_num1[16]?5'd16:
						div_num1[15]?5'd15:
						div_num1[14]?5'd14:
						div_num1[13]?5'd13:
						div_num1[12]?5'd12:
						div_num1[11]?5'd11:
						div_num1[10]?5'd10:
						div_num1[9]?5'd9:
						div_num1[8]?5'd8:
						div_num1[7]?5'd7:
						div_num1[6]?5'd6:
						div_num1[5]?5'd5:
						div_num1[4]?5'd4:
						div_num1[3]?5'd3:
						div_num1[2]?5'd2:
						div_num1[1]?5'd1:5'd0;
				result={32'h00000000,(div_num1<<(5'd31-div_max))};
				in_num1=Opdata1_i;
				in_num2=Opdata2_i;
			end
			//计算中,一共32周期
			2'b01:begin
				//整体左移
				result = result << 1;
				//试减
				if(result[63:32]>=div_num2)begin 
					result[0]=1;
					result[63:32]=result[63:32]-div_num2; 
				end
				else begin result[0]=0; end
				//判断执行次数,达到指定次数后进入符号结算阶段
				if(div_count==div_max)begin
					main_state<=2'b10;
				end
				//执行次数增加
				div_count=div_count+1;	
			end
			//符号处理
			2'b10:begin
				if(Signed_div_i)begin
					result[31:0]=(in_num1[31]^in_num2[31]) ? (~result[31:0])+1 : result[31:0];
					result[63:32]=in_num1[31] ? (~result[63:32])+1 : result[63:32];
				end
				main_state<=2'b11;
				ready_o<=1;
			end
			//等待取值
			endcase
		end
		else if(annul_i)begin
			//重置所有值
			div_max<=0;
			div_count<=0;
			main_state<=0;
			result<=0;
			ready_o<=0;
			div_num1<=0;
			div_num2<=0;
			in_num1<=0;
			in_num2<=0;
		end
	end
endmodule
