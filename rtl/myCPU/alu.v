`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 14:52:16
// Design Name: 
// Module Name: alu
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
`include "utils/defines2.vh"

module alu(
	input wire[31:0] a,b,
	input wire[4:0] sa,  //立即数
	input wire[7:0] op,    //alucontrol
	

	output reg[31:0] y,
	output reg[63:0] mulres,	//乘法结果
	output wire overflow,
	output wire zero
    );

	// wire[31:0] s,bout;
	// assign bout = op[2] ? ~b : b;
	// assign s = a + bout + op[2];
	
	reg carry;	//加减法的溢位
	assign overflow = ((op==`EXE_ADD_OP)|(op== `EXE_SUB_OP)|(op== `EXE_ADDI_OP))&(carry^y[31]);
	always @(*) begin
		carry <= 0;		//初始化carry
		// if(rst) begin
		// 	div_start <= 0;	//除法是否开始
		// 	signed_div <= 0;	//是否是有符号除法
		// 	div_data1 <= 32'b0;
		// 	div_data2 <= 32'b0;
		// 	stall_div <= 0;	//除法导致流水线暂停
		// end else begin
		// 	div_start <= 0;	//除法是否开始
		// 	signed_div <= 0;	//是否是有符号除法
		// 	div_data1 <= 32'b0;
		// 	div_data2 <= 32'b0;
		// 	stall_div <= 0;	//除法导致流水线暂停
		// end
		case (op)
			//逻辑指令
		    `EXE_LUI_OP: y <= {b[15:0], 16'b0};
		    `EXE_ORI_OP : y <= a | b;
		    `EXE_OR_OP  : y <= a | b;
		    `EXE_ANDI_OP  : y <= a & b;
		    `EXE_AND_OP  : y <= a & b;
		    `EXE_XORI_OP : y <= a ^ b;
		    `EXE_XOR_OP : y <= a ^ b;
		    `EXE_NOR_OP : y <= ~ (a | b);
		    //访存指令
			`EXE_LB_OP    : y <= a + b;	
            `EXE_LBU_OP    : y <= a + b;	
            `EXE_LH_OP     : y <= a + b;	
            `EXE_LHU_OP    : y <= a + b;	
            `EXE_LW_OP     : y <= a + b;	
            `EXE_SB_OP     : y <= a + b;	
            `EXE_SH_OP     : y <= a + b;	
            `EXE_SW_OP     : y <= a + b;
			//移位指令
			`EXE_SLL_OP: y <= b << sa;
			`EXE_SRL_OP: y <= b >> sa;
			`EXE_SRA_OP: y <= ({32{b[31]}} <<(6'd32-{1'b0,sa})) | b >> sa;
			`EXE_SLLV_OP: y <= b << a[4:0];
			`EXE_SRLV_OP: y <= b >> a[4:0];
			`EXE_SRAV_OP: y <= ({32{b[31]}} << (6'd32-{1'b0,a[4:0]})) | b >> a[4:0];
			//数据移动指令
			`EXE_MFHI_OP: y <= a + b;
			`EXE_MFLO_OP: y <= a + b;
			`EXE_MTHI_OP: y <= b;
			`EXE_MTLO_OP: y <= b;
			//算数指令
			`EXE_ADD_OP : 	{carry , y} <= {a[31],a} + {b[31],b};	//溢出不保�?
			`EXE_ADDU_OP :	y <= a + b;		//不检查溢出，直接存reg
			`EXE_SUB_OP :	{carry , y } <= {a[31],a} - {b[31],b};	//溢出不保�?
			`EXE_SUBU_OP : 	y <= a-b;
			//`EXE_SLT_OP :	y <= ((a[31] && b[31])|(!a[31] && !b[31] && s[31])|(a[31] && b[31] && s[31])) ; 
			`EXE_SLT_OP :	y <= $signed(a) < $signed(b); //有符号
			`EXE_SLTU_OP :	y <= a < b;		//无符号
			`EXE_ADDI_OP :	 {carry , y} <= {a[31],a} + {b[31],b};		//立即数加法，溢出不保�?
			`EXE_ADDIU_OP :	y <= a + b;		//不检查溢出
			`EXE_SLTI_OP :	y <= $signed(a) < $signed(b);
			`EXE_SLTIU_OP : y <= a < b;
			`EXE_MULT_OP:	begin
				mulres <= $signed(a) * $signed(b);
			end
			`EXE_MULTU_OP:	begin
				mulres <= {32'b0, a} * {32'b0, b};
			end
			// `EXE_DIV_OP: begin
			// 	if(div_ready==0) begin		//除法未完成
			// 		div_data1 <= a;	//被除数
			// 		div_data2 <= b;	//除数
			// 		div_start <= 1 ;	//开始除法运算
			// 		signed_div <= 1 ;	//有符号除法
			// 		stall_div <= 1; 	//流水线全部暂停信号
			// 	end else if (div_ready == 1) begin
			// 		div_data1 <= a;
			// 		div_data2 <= b;
			// 		div_start <= 0;	 //停止除法运算
			// 		signed_div <= 1; 
			// 		stall_div <= 0;
			// 	end else begin
			// 		div_data1 <= 32'b0;
			// 		div_data2 <= 32'b0;
			// 		div_start <= 0;	 //停止除法运算
			// 		signed_div <= 0; 
			// 		stall_div <= 0;
			// 	end
			// end
			// `EXE_DIVU_OP:begin
			// 	if(div_ready==0) begin		//除法未完成
			// 		div_data1 <= a;	//被除数
			// 		div_data2 <= b;	//除数
			// 		div_start <= 1 ;	//开始除法运算
			// 		signed_div <= 0 ;	//无符号除算
			// 		stall_div <= 1; 	//流水线全部暂停信号
			// 	end else if (div_ready == 1) begin
			// 		div_data1 <= a;
			// 		div_data2 <= b;
			// 		div_start <= 0;	 //停止除法运算
			// 		signed_div <= 0; 
			// 		stall_div <= 0;
			// 	end else begin
			// 		div_data1 <= 32'b0;
			// 		div_data2 <= 32'b0;
			// 		div_start <= 0;	 //停止除法运算
			// 		signed_div <= 0; 
			// 		stall_div <= 0;
			// 	end
			// end
			
			default : y <= 32'b0;
		endcase
	end
	assign zero = (y == 32'b1);

	// always @(*) begin
	// 	case (op[2:1])
	// 		2'b01:overflow <= a[31] & b[31] & ~s[31] |
	// 						~a[31] & ~b[31] & s[31];
	// 		2'b11:overflow <= ~a[31] & b[31] & s[31] |
	// 						a[31] & ~b[31] & ~s[31];
	// 		default : overflow <= 1'b0;
	// 	endcase	
	// end

endmodule
