module mycpu_top(
    input clk,
    input resetn,  //low active

    //cpu inst sram
    output        inst_sram_en   ,
    output [3 :0] inst_sram_wen  ,
    output [31:0] inst_sram_addr ,
    output [31:0] inst_sram_wdata,
    input  [31:0] inst_sram_rdata,
    //cpu data sram
    output        data_sram_en   ,
    output [3 :0] data_sram_wen  ,
    output [31:0] data_sram_addr ,
    output [31:0] data_sram_wdata,
    input  [31:0] data_sram_rdata
);

//
	wire [31:0] pc;
	wire [31:0] instr;
	wire memwrite,memwe;
    wire [3:0] memsel;
	wire [31:0] aluout, writedata, readdata;
    mips mips(
        .clk(clk),
        .rst(~resetn),
        //instr
        // .inst_en(inst_en),
        .pcF(pc),                    //pcF
        .instrF(instr),              //instrF
        //data
        // .data_en(data_en),
        .memwriteM(memwrite),
        // .mem_we(memwe),
        .mem_ce(memce),
        .mem_sel(memsel),     //改！
        .aluoutM(aluout),
        .writedataM(writedata),
        .readdataM(readdata)
    );

    assign inst_sram_en = 1'b1;     //如果有inst_en，就用inst_en
    assign inst_sram_wen = 4'b0;
    assign inst_sram_addr = pc;
    assign inst_sram_wdata = 32'b0;
    assign instr = inst_sram_rdata;

    assign data_sram_en =1'b1;// memce;     //数据存储器使能信号
    assign data_sram_wen = memsel;   //字节选择信号
    assign data_sram_addr = aluout;
    assign data_sram_wdata = writedata;
    assign readdata = data_sram_rdata;

    
    //exchange to ascii
    wire [44:0] ascii;
    instdec instdec(
        .instr(instr),
        .ascii(ascii)
    );

endmodule