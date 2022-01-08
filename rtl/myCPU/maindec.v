`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/23 15:21:30
// Design Name: 
// Module Name: maindec
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

module maindec(
	input wire stallD,
	// input wire[5:0] op,funct,
	// input wire[4:0] rs,   //用来判断branch的某四条指令
	input wire[31:0] instr,
	input wire overflowE,
	//memtoreg:回写的数据来自于ALU计算的结果/存储器读取的数据，在WB阶段写回
	//memwrite：是否需要写数据存储器，在MEM阶段写入
	
	//ID
	//output wire is_multD,is_divD;    //是否是乘除法指令
	output wire is_mfhiD,is_mfloD,	//读hi,lo信号
	output wire is_mthiD,is_mtloD,	//写hi,lo信号
	output wire is_mulD, 	//是否是乘法信号
	output wire memtoreg,memwrite,memen,     //添加了memen，访存指令才会为1
	//alusrc：aluB端操作数为寄存器值（0）or立即数（1）
	
	output wire branch,alusrc,  
	//regdst: 写寄存器堆地址是rt（0） or rd（1）
	//regwrite：是否需要写寄存器堆
	output wire regdst,regwrite,
	output wire[3:0] aluop,
	output wire jump,jal,jr,jalr,bal    
	//jalr不指定rd则写入31号，指定rd则写入rd
	//Jal指令无条件跳转后 延迟槽后的指令写入31号寄存器
	//bal:branch类型带al的指令，跳转后延迟槽后的指令写入31号寄存器
    );

//信号说明
	wire[5:0] op,funct;
	wire[4:0] rs,rt,rd;
	assign op=instr[31:26];
	assign funct=instr[5:0];
	assign rs=instr[25:21];
	assign rt=instr[20:16];
	assign rd=instr[15:11];

	reg[15:0] controls;    //16位！
	assign {regwrite,regdst,alusrc,branch,memen,memtoreg,jump,jal,jr,jalr,bal,memwrite,aluop} = controls;
	//?hilo??
	assign is_mfhiD = (op == `R_TYPE) & (funct == `EXE_MFHI);
	assign is_mfloD = (op == `R_TYPE) & (funct == `EXE_MFLO);
	//?hilo??
	assign is_mthiD = (op==`R_TYPE) & ((funct == `EXE_MTHI)||(funct==`EXE_MULT));//||(funct==`EXE_MULTU)||(funct==`EXE_DIV)||(funct==`EXE_DIVU));
	assign is_mtloD = (op==`R_TYPE) & ((funct == `EXE_MTLO)||(funct==`EXE_MULT));//||(funct==`EXE_MULTU)||(funct==`EXE_DIV)||(funct==`EXE_DIVU));
	//?????????
	assign is_mulD=(funct==`EXE_MULT)||(funct==`EXE_MULTU);
	//assign is_divD=(funct==`EXE_DIV)||(funct==`EXE_DIVU);
	
	
	always @(*) begin 
		controls <= {12'b0_0_0_0_0_0_0_0_0_0_0_0,4'b0000};//illegal op
//		if(~stallD) begin
			case (op)
			//op=6'b000000
			`R_TYPE:
				case(funct)    //jr、jalr、R-type前缀都是000000
					`EXE_AND,`EXE_OR,`EXE_XOR,`EXE_NOR,//????????
					`EXE_MFHI ,`EXE_MTHI,`EXE_MFLO,`EXE_MTLO,	//??????
					`EXE_ADDU,`EXE_SUBU,`EXE_SLT,`EXE_SLTU,`EXE_DIV,`EXE_DIVU:		//??????????
						controls <={12'b1_1_0_0_0_0_0_0_0_0_0_0,`R_TYPE_OP};
					`EXE_SLL,`EXE_SRL,`EXE_SRA,`EXE_SLLV,`EXE_SRLV,`EXE_SRAV:	//????
						controls <={12'b1_1_0_0_0_0_0_0_0_0_0_0,`R_TYPE_OP};
					`EXE_ADD,`EXE_SUB:	begin	//?????????
						if (overflowE)
							controls <= {12'b0_1_0_0_0_0_0_0_0_0_0_0,`R_TYPE_OP};
						else controls <= {12'b1_1_0_0_0_0_0_0_0_0_0_0,`R_TYPE_OP};
					end
					`EXE_MULT,`EXE_MULTU:	//?????
							controls <= {12'b0_1_0_0_0_0_0_0_0_0_0_0,`R_TYPE_OP};
					`EXE_JR:	//????
						controls<= {12'b0_0_0_0_0_0_0_0_1_0_0_0,`USELESS_OP};  
					`EXE_JALR:
						controls<= {12'b1_1_0_0_0_0_0_0_0_1_0_0,`USELESS_OP}; 
				default:controls<={12'b0,4'b0000}; 
				endcase  

			//?????????
			`ANDI:controls <= {12'b1_0_1_0_0_0_0_0_0_0_0_0,`ANDI_OP};//ANDI
			`XORI:controls <=  {12'b1_0_1_0_0_0_0_0_0_0_0_0,`XORI_OP};//XORI
			`EXE_LUI:controls <=  {12'b1_0_1_0_0_0_0_0_0_0_0_0,`LUI_OP};//LUI
			`EXE_ORI:controls<={12'b1_0_1_0_0_0_0_0_0_0_0_0,`ORI_OP};//ORI
			
			`EXE_SUBU:controls <= {12'b1_0_1_0_0_0_1_0_0_0_0_0,`R_TYPE_OP};//LW
			`ADDI:controls <= {12'b1_0_1_0_0_0_0_0_0_0_0_0,`ADDI_OP};//ADDI
			`ADDIU:controls <= {12'b1_0_1_0_0_0_0_0_0_0_0_0,`ADDIU_OP};//ADDI
			`SLTI:controls <={12'b1_0_1_0_0_0_0_0_0_0_0_0,`SLTI_OP};//SLTI
			`SLTIU:controls <= {12'b1_0_1_0_0_0_0_0_0_0_0_0,`SLTIU_OP};//SLTIU	`SLTI_OP
				 
			//跳转指令
			`EXE_J:controls<= {12'b0_0_0_0_0_0_1_0_0_0_0_0,`USELESS_OP};   //J 
			`EXE_JAL:controls<= {12'b1_0_0_0_0_0_0_1_0_0_0_0,`USELESS_OP};  //JAL
			//这四条指令都不需要写寄存器或者存储器
			`EXE_BEQ:controls <= {12'b0_0_0_1_0_0_0_0_0_0_0_0,`USELESS_OP};   //BEQ
			`EXE_BGTZ:controls <= {12'b0_0_0_1_0_0_0_0_0_0_0_0,`USELESS_OP};   //BGTZ >0
			`EXE_BLEZ:controls <= {12'b0_0_0_1_0_0_0_0_0_0_0_0,`USELESS_OP};  //BLEZ  <=0
			`EXE_BNE:controls <= {12'b0_0_0_1_0_0_0_0_0_0_0_0,`USELESS_OP};     //BNE
			//BLTZ,BLTZAL,BGEZ,BGEZAL:这三条指令的op(在宏定义里的286)
			`EXE_REGIMM_INST: 
				case (rt)
					`EXE_BGEZ:controls <={12'b0_0_0_1_0_0_0_0_0_0_0_0,`USELESS_OP};    //BGEZ>=0
					`EXE_BGEZAL:controls <={12'b1_0_0_1_0_0_0_0_0_0_1_0,`USELESS_OP};  
					`EXE_BLTZ:controls <={12'b0_0_0_1_0_0_0_0_0_0_0_0,`USELESS_OP};    //BLTZ<0
					`EXE_BLTZAL: controls <={12'b1_0_0_1_0_0_0_0_0_0_1_0,`USELESS_OP};  
					default:controls<={12'b0,4'b0000};   //R-TYPE
				endcase
			`SPECIAL3_INST:
				case(rs)
				//regwrite,regdst,alusrc,branch,memen,memtoreg,jump,jal,jr,jalr,bal,memwrite,aluop
					//`MFC0:controls <= {12'b1_1_0_0_0_0_0_0_0_0_0_0,,`USELESS_OP};
					//`MTC0:controls <= {12'b0_0_0_0_0_0_0_0_0_0_0_0,`USELESS_OP};
					default:controls<={12'b0,4'b0000}; 
				endcase
			//访存指令
			`EXE_LB,`EXE_LBU,`EXE_LH,`EXE_LHU,`EXE_LW:controls<={12'b1_0_1_0_1_1_0_0_0_0_0_0,`MEM_OP};    //写寄存器到rt
			`EXE_SB,`EXE_SH,`EXE_SW:controls<={12'b001010000001,`MEM_OP};  

			//内陷指令
			
			default:controls <= {12'b00,4'b0000};//illegal op
			endcase
		end
//	end
	
endmodule
