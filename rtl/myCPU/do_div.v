`timescale 1ns / 1ps
`include "utils/defines2.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: do_div
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


module do_div(input clk, rst,
                input clear,
                input [31:0] a,
                input [31:0] b,
                input [7:0] op,
                output [63:0] div_result,//结果
                output reg divstall, //除法发出的stall信号
                output reg divE//控制hilo寄存器的信号
                );
    wire div_ready;
    reg  div_start;
    reg  div_sign;
    reg  div_refresh;
    div div(clk,rst,div_sign,a,b,div_start,div_refresh|clear,div_result,div_ready);
    
    always@(*) begin
        if (rst) begin
            div_start   <= 1'b0;
            div_sign    <= 1'b0;
            div_refresh <= 1'b0;
            divstall    <= 1'b0;
            divE <= 0;
        end else begin
            if (clear) begin
                div_sign    <= 0;
                div_start   <= 0;
                divstall    <= 0;
                div_refresh <= 0;
                divE <= 0;
            end else 
                case(op)
                    //有符号除法
                    `EXE_DIV_OP: begin
                        //状态机
                        if (!div_ready) begin
                            div_sign    <= 1;
                            div_start   <= 1;
                            divstall    <= 1;
                            div_refresh <= 0;
                            divE <= 0;
                        end else if (div_ready) begin
                            div_sign    <= 0;
                            div_start   <= 0;
                            divstall    <= 0;
                            div_refresh <= 1;
                            divE <= 1;
                        end
                    end

                    //无符号除法
                    `EXE_DIVU_OP:begin
                        //状态机
                        if (!div_ready) begin
                            div_sign    <= 0;
                            div_start   <= 1;
                            divstall    <= 1;
                            div_refresh <= 0;
                            divE <= 0;
                        end else if (div_ready) begin
                            div_sign    <= 0;
                            div_start   <= 0;
                            divstall    <= 0;
                            div_refresh <= 1;
                            divE <= 1;
                        end
                    end

                    default: begin
                        div_start   <= 1'b0;
                        div_sign    <= 1'b0;
                        div_refresh <= 1'b0;
                        divstall    <= 1'b0;
                        divE <= 0;
                    end 
                endcase
        end
    end
    
endmodule

