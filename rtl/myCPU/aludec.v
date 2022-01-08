`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 15:27:24
// Design Name: 
// Module Name: aludec
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
module aludec(
    input wire stallD,
	//input wire[5:0] funct,
	input wire[31:0] instr,
    input wire[3:0] aluop,
	//input wire[4:0] rs,
	output reg[7:0] alucontrol
    );
    
    wire[5:0] op,funct;
	wire[4:0] rs,rt,rd;
	assign op=instr[31:26];
	assign funct=instr[5:0];
	assign rs=instr[25:21];
	assign rt=instr[20:16];
	assign rd=instr[15:11];

	always @(*) begin
//        if(~stallD) begin
            case(aluop)   //来源于maindec
                `R_TYPE_OP:begin
                    case (funct)
                        //逻辑运算指令
                        `EXE_AND    :alucontrol<=`EXE_AND_OP;
                        `EXE_OR     :alucontrol<=`EXE_OR_OP;
                        `EXE_XOR    :alucontrol<=`EXE_XOR_OP;
                        `EXE_NOR    :alucontrol<=`EXE_NOR_OP;
                        // 算术运算指令
                        `EXE_ADD    : alucontrol <= `EXE_ADD_OP  ;
                        `EXE_ADDU   : alucontrol <= `EXE_ADDU_OP ;
                        `EXE_SUB    : alucontrol <= `EXE_SUB_OP  ;
                        `EXE_SUBU   : alucontrol <= `EXE_SUBU_OP ;
                        `EXE_MULT   : alucontrol <= `EXE_MULT_OP ;
                        `EXE_MULTU  : alucontrol <= `EXE_MULTU_OP;
                        `EXE_DIV    : alucontrol <= `EXE_DIV_OP  ;
                        `EXE_DIVU   : alucontrol <= `EXE_DIVU_OP ;
                        `EXE_SLT    : alucontrol <= `EXE_SLT_OP  ;
                        `EXE_SLTU   : alucontrol <= `EXE_SLTU_OP ;
                               // 移位指令
                         `EXE_SLL	: alucontrol <= `EXE_SLL_OP ;
                         `EXE_SLLV	: alucontrol <= `EXE_SLLV_OP;
                         `EXE_SRL 	: alucontrol <= `EXE_SRL_OP ;
                         `EXE_SRLV 	: alucontrol <= `EXE_SRLV_OP;
                         `EXE_SRA 	: alucontrol <= `EXE_SRA_OP ;
                         `EXE_SRAV 	: alucontrol <= `EXE_SRAV_OP;
                             // 数据移动指令
                        `EXE_MFHI  	: alucontrol <= `EXE_MFHI_OP;
                        `EXE_MTHI  	: alucontrol <= `EXE_MTHI_OP;
                        `EXE_MFLO  	: alucontrol <= `EXE_MFLO_OP;
                        `EXE_MTLO  	: alucontrol <= `EXE_MTLO_OP;
                        `EXE_SYSCALL: alucontrol <= `EXE_SYSCALL_OP;
                    endcase
                end
                 // 逻辑运算指令
                `ORI_OP: alucontrol <= `EXE_ORI_OP ;
                `ANDI_OP	: alucontrol <= `EXE_ANDI_OP;
                `XORI_OP: alucontrol <= `EXE_XORI_OP;
                `LUI_OP: alucontrol <= `EXE_LUI_OP ;
                `ADDI_OP: alucontrol <= `EXE_ADDI_OP ;
                `ADDIU_OP : alucontrol <= `EXE_ADDIU_OP;
                `SLTI_OP : alucontrol <= `EXE_SLT_OP  ;
                `SLTIU_OP   : alucontrol <= `EXE_SLTU_OP ;
                `USELESS_OP:begin// 分支跳转指令
                    case(op)
                        `EXE_SPECIAL_INST:case (funct)
				            `EXE_JALR   : alucontrol <= `EXE_JALR_OP ;
                            `EXE_JR     : alucontrol <= `EXE_JR_OP   ;
			            endcase
			            `EXE_J      : alucontrol <= `EXE_J_OP     ;
                        `EXE_JAL    : alucontrol <= `EXE_JAL_OP   ;
                        `EXE_BEQ    : alucontrol <= `EXE_BEQ_OP   ;
                        `EXE_BGTZ   : alucontrol <= `EXE_BGTZ_OP  ;
                        `EXE_BLEZ   : alucontrol <= `EXE_BLEZ_OP  ;
                        `EXE_BNE    : alucontrol <= `EXE_BNE_OP   ;
                        `EXE_REGIMM_INST: case (rt)
                            `EXE_BGEZ   : alucontrol <= `EXE_BGEZ_OP  ; 
                            `EXE_BGEZAL : alucontrol <= `EXE_BGEZAL_OP;
                            `EXE_BLTZ   : alucontrol <= `EXE_BLTZ_OP  ;
                            `EXE_BLTZAL : alucontrol <= `EXE_BLTZAL_OP;
                        endcase
                    endcase
                end
                // 访存指令,根据op就能分辨
                `MEM_OP:begin
                    case(op)
                        `EXE_LB     : alucontrol <= `EXE_LB_OP ;
                        `EXE_LBU    : alucontrol <= `EXE_LBU_OP;
                        `EXE_LH     : alucontrol <= `EXE_LH_OP ;
                        `EXE_LHU    : alucontrol <= `EXE_LHU_OP;
                        `EXE_LW     : alucontrol <= `EXE_LW_OP ;
                        `EXE_SB     : alucontrol <= `EXE_SB_OP ;
                        `EXE_SH     : alucontrol <= `EXE_SH_OP ;
                        `EXE_SW     : alucontrol <= `EXE_SW_OP ;
                    endcase
                end

                // 特权指令


                `EXE_NOP: begin      //000000，什么都对不上，才会到这里来（针对比如li的指令)
                    case (funct)
                    // 逻辑运算指令
                        `EXE_AND 	: alucontrol <= `EXE_AND_OP ;
                        `EXE_OR 	: alucontrol <= `EXE_OR_OP  ;
                        `EXE_XOR 	: alucontrol <= `EXE_XOR_OP ;
                        `EXE_NOR	: alucontrol <= `EXE_NOR_OP ;
                    // 移位指令
                        `EXE_SLL	: alucontrol <= `EXE_SLL_OP ;
                        `EXE_SLLV	: alucontrol <= `EXE_SLLV_OP;
                        `EXE_SRL 	: alucontrol <= `EXE_SRL_OP ;
                        `EXE_SRLV 	: alucontrol <= `EXE_SRLV_OP;
                        `EXE_SRA 	: alucontrol <= `EXE_SRA_OP ;
                        `EXE_SRAV 	: alucontrol <= `EXE_SRAV_OP;
                    // 数据移动指令
                        `EXE_MFHI  	: alucontrol <= `EXE_MFHI_OP;
                        `EXE_MTHI  	: alucontrol <= `EXE_MTHI_OP;
                        `EXE_MFLO  	: alucontrol <= `EXE_MFLO_OP;
                        `EXE_MTLO  	: alucontrol <= `EXE_MTLO_OP;
                    // 算术运算指令
                        `EXE_ADD    : alucontrol <= `EXE_ADD_OP  ;
                        `EXE_ADDU   : alucontrol <= `EXE_ADDU_OP ;
                        `EXE_SUB    : alucontrol <= `EXE_SUB_OP  ;
                        `EXE_SUBU   : alucontrol <= `EXE_SUBU_OP ;
                        `EXE_MULT   : alucontrol <= `EXE_MULT_OP ;
                        `EXE_MULTU  : alucontrol <= `EXE_MULTU_OP;
                        `EXE_DIV    : alucontrol <= `EXE_DIV_OP  ;
                        `EXE_DIVU   : alucontrol <= `EXE_DIVU_OP ;
                        `EXE_SLT    : alucontrol <= `EXE_SLT_OP  ;
                        `EXE_SLTU   : alucontrol <= `EXE_SLTU_OP ;
                    // 分支跳转指令
                        `EXE_J      : alucontrol <= `EXE_J_OP     ;
                        `EXE_JAL    : alucontrol <= `EXE_JAL_OP   ;
                        `EXE_BEQ    : alucontrol <= `EXE_BEQ_OP   ;
                        `EXE_BGEZ   : alucontrol <= `EXE_BGEZ_OP  ; 
                        `EXE_BGEZAL : alucontrol <= `EXE_BGEZAL_OP;
                        `EXE_BGTZ   : alucontrol <= `EXE_BGTZ_OP  ;
                        `EXE_BLEZ   : alucontrol <= `EXE_BLEZ_OP  ;
                        `EXE_BLTZ   : alucontrol <= `EXE_BLTZ_OP  ;
                        `EXE_BLTZAL : alucontrol <= `EXE_BLTZAL_OP;
                        `EXE_BNE    : alucontrol <= `EXE_BNE_OP   ;
                    // // 分支跳转指令
                        `EXE_JALR   : alucontrol <= `EXE_JALR_OP ;
                        `EXE_JR     : alucontrol <= `EXE_JR_OP   ;
                    // 内陷指令
                        `EXE_SYSCALL: alucontrol <= `EXE_SYSCALL_OP;
                        `EXE_BREAK  : alucontrol <= `EXE_BREAK_OP  ;
                        default: alucontrol <= 8'bx;
                    endcase
                end
                default: begin
                    alucontrol <= `EXE_NOP_OP;
                end
            endcase
        end
//	end
endmodule