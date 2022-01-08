`timescale 1ns / 1ps
`include "utils/defines2.vh"
//相当于在data_sram外加了一个外壳处理输入和输出
//参考文献：自己动手写CPU
module mydatamem(      //数据存储器
    input wire memenM,memwriteM,    //memwriteM：是否写存储器
    input wire[7:0] alucon,  //alucontrol来识别指令
    input wire[31:0] writedata,    //需要写到数据存储器中的数据
    input wire[31:0] aluoutM,    //写存储器的地址
    input wire[31:0] readdata,   //从存储器中读出的数据
    output reg[31:0] writedata2M,     //处理后会写到数据存储器中的数据
    output reg[31:0] readdata2M,    //处理后读出的数据（会用到datapath中）
    output reg[3:0] memsel,    //字节选择信号
    output reg mem_we,mem_ce //we:表示是否写 ce:表示数据存储器是否使能
);
   
always @(memenM) begin  //访存信号（memenM才为1）
    case(alucon)
        `EXE_LW_OP:begin
            // case(aluoutM[1:0])    //LW的最后两位只能为0（地址对齐）
            //     2'b00:begin
                readdata2M<=readdata;  //修改输出数据
                mem_we<=`WriteDisable;
                mem_ce<=`ChipEnable;
                memsel<=4'b1111;
                // endcase
            end
        `EXE_LBU_OP:begin    //一字节等于8bit，0扩展，无例外
            mem_we<=`WriteDisable;
            mem_ce<=`ChipEnable;
            case(aluoutM[1:0])    //最低两位地址
                2'b00:begin
                    readdata2M<={{24{1'b0}},readdata[31:24]};   //小端
                    memsel<=4'b1000;  
                end
                2'b01:begin
                    readdata2M<={{24{1'b0}},readdata[23:16]};
                    memsel<=4'b0100;
                end
                2'b10:begin
                    readdata2M<={{24{1'b0}},readdata[15:8]};
                    memsel<=4'b0010;
                end
                2'b11:begin
                    readdata2M<={{24{1'b0}},readdata[7:0]};
                    memsel<=4'b0001;
                end
                default:begin
                    readdata2M<=`ZeroWord;
                end
            endcase
        end
        `EXE_LB_OP:begin     //符号扩展
            mem_we<=`WriteDisable;
            mem_ce<=`ChipEnable;
            case(aluoutM[1:0])   
                2'b00:begin
                    readdata2M<={{24{readdata[31]}},readdata[31:24]};   //小端
                    memsel<=4'b1000;
                end
                2'b01:begin
                    readdata2M<={{24{readdata[23]}},readdata[23:16]};
                    memsel<=4'b0100;
                end
                2'b10:begin
                    readdata2M<={{24{readdata[15]}},readdata[15:8]};
                    memsel<=4'b0010;
                end
                2'b11:begin
                    readdata2M<={{24{readdata[7]}},readdata[7:0]};
                    memsel<=4'b0001;
                end
                default:begin
                    readdata2M<=`ZeroWord;
                end
            endcase
        end
        `EXE_LHU_OP:begin     //16位（半个字节），0扩展，最后一位应为0（地址对齐）
            mem_we<=`WriteDisable;
            mem_ce<=`ChipEnable;
            case(aluoutM[1:0])
                2'b00:begin
                    readdata2M<={{16{1'b0}},readdata[31:16]};
                    memsel<=4'b1100;
                end
                2'b10:begin
                    readdata2M<={{16{1'b0}},readdata[15:0]};
                    memsel<=4'b0011;
                end
                default:begin
                    readdata2M<=`ZeroWord;
                end
            endcase
        end
        `EXE_LH_OP:begin      //符号扩展
            mem_we<=`WriteDisable;
            mem_ce<=`ChipEnable;
            case(aluoutM[1:0])
                2'b00:begin
                    readdata2M<={{16{readdata[31]}},readdata[31:16]};
                    memsel<=4'b1100;
                end
                2'b10:begin
                    readdata2M<={{16{readdata[15]}},readdata[15:0]};
                    memsel<=4'b0011;
                end
                default:begin
                    readdata2M<=`ZeroWord;
                end
            endcase
        end
        `EXE_SB_OP:begin    //写8bit
            mem_we<=`WriteEnable;
            mem_ce<=`ChipEnable;
            //这里注意扩展方式！！之前是符号扩展错了
            writedata2M<={writedata[7:0],writedata[7:0],writedata[7:0],writedata[7:0]};
            case(aluoutM[1:0])
                2'b00:memsel<=4'b1000;
                2'b01:memsel<=4'b0100;
                2'b10:memsel<=4'b0010;
                2'b11:memsel<=4'b0001;
                default:begin
                    memsel<=4'b0000;
                end
            endcase
        end
        `EXE_SH_OP:begin   //写16bit
            mem_we<=`WriteEnable;
            mem_ce<=`ChipEnable;
            writedata2M<={writedata[15:0],writedata[15:0]};
            case(aluoutM[1:0])
                2'b00:memsel<=4'b1000;
                2'b10:memsel<=4'b0010;
                default:begin
                    memsel<=4'b0000;
                end
            endcase
        end
        `EXE_SW_OP:begin
            mem_we<=`WriteEnable;
            mem_ce<=`ChipEnable;
            memsel<=4'b1111;
            writedata2M<=writedata;
            // case(aluoutM[1:0])
            //     2'b00:writedata2M<=writedata;
            // endcase
        end
    endcase
end
endmodule