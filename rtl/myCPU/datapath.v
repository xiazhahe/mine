`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/02 15:12:22
// Design Name: 
// Module Name: datapath
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


module datapath(
	input wire clk,rst,
	//fetch stage
	output wire[31:0] pcF,
	input wire[31:0] instrF,
	//decode stage
	input wire pcsrcD,branchD,
	input wire jumpD,balD,jalD,jrD,jalrD,
	output wire equalD,
	output wire[31:0] instrD,
	//execute stage
	input wire memtoregE,
	input wire alusrcE,regdstE,
	input wire regwriteE,
	input wire is_mfhi,is_mflo,	//从hi,lo寄存器中读信号
	input wire is_mul, //是否乘除信号
	input wire[7:0] alucontrolE,
	output wire stallE,flushE,
	output wire overflowE,
	//mem stage
	input wire memtoregM,memwriteM,
	input wire regwriteM,
	output wire[31:0] aluoutM,writedata2M,
	input wire[31:0] readdataM,
	input wire memenM,
	input wire is_mthi,is_mtlo,
	output wire mem_ce,
	output wire[3:0] memsel,
	//writeback stage
	input wire memtoregW,
	input wire regwriteW
    );
	
	//fetch stage
	wire stallF,flushF;  //来源于hd
	wire is_delayslotF,is_delayslotD,is_delayslotE,is_delayslotM;
	wire [1:0] sign_extD; //判断立即数扩展是否为符号扩展的指令位,datapath里产生
	//FD
	wire [31:0] pcnextFD,pcnextbrFD,pcplus4F,pcbranchD,pcjrFD,newpcM;
	//decode stage
	wire[5:0] opD,functD;
	wire [31:0] pcplus4D;
	wire forwardaD,forwardbD;
	wire [4:0] rsD,rtD,rdD,saD; //saD立即数
	wire flushD,stallD,stallM,stallW,flushM,flushW;    //flushE在datapath中定义了
	wire [31:0] signimmD,signimmshD;
	wire [31:0] srcaD,srca2D,srcbD,srcb2D;
	wire [31:0] regtohiD,regtoloD;	//reg值写入hilo寄存器
	//execute stage
	wire [1:0] forwardaE,forwardbE;
	wire [4:0] rsE,rtE,rdE,saE;  //saE
	wire [4:0] writeregE,writereg2E;
	wire [31:0] pcplus4E,pcplus8E;
	wire [31:0] signimmE;
	wire [31:0] srcaE,srca2E,srcbE,srcb2E,srcb3E,srcb4E;
	wire [31:0] aluoutE,aluout2E;
	wire [31:0] hitoregE,lotoregE;	//从hilo中读取到寄存器的数据
	wire [31:0] regtohi1E,regtolo1E,regtohi2E,regtolo2E;
	wire [63:0] multohiloE;
	wire div_startE,div_readyE,stall_divE;
	wire [31:0] div_data1,div_data2;	//除法被除数和除数
	wire [63:0] divtohiloE;	//除法传出来给hilo寄存器的结果
	wire [31:0] instrE;
	wire balE,jalE,jalrE;
	wire div_clear;
	assign div_clear = 0;
	wire is_divE;
	//mem stage
	wire [4:0] writeregM;
	wire [7:0] alucontrolM;
	wire [31:0] regtohiM,regtoloM;
	wire [31:0] instrM,writedataM,readdata2M;
	wire is_divM;
	//writeback stage
	wire [4:0] writeregW;
	wire [31:0] instrW;
	wire [31:0] aluoutW,readdataW,resultW;

	


	//hazard detection
	hazard h(
		//fetch stage
		stallF,flushF,    //输出
		//decode stage
		rsD,rtD,    //输入两个源寄存器地址
		branchD,jumpD,jalD,jrD,jalrD,balD,  //输入控制信号
		forwardaD,forwardbD,   //输出
		stallD,flushD,stallE,flushE,stallM,flushM,flushW,      //输出
		//execute stage
		rsE,rtE,      //输入
		writereg2E,    //来源dp
		regwriteE,    //来源con
		memtoregE,    //来源con
		stall_divE,
		forwardaE,forwardbE,    //输出
		
		//mem stage
		writeregM,
		regwriteM,
		memtoregM,
		// opM,  
		// rdM,
		// newpcM,
		//write back stage
		writeregW,
		regwriteW,
		stallW
		);

	//next PC logic (operates in fetch an decode)
	//后面有计算pcbranchD
	//pcplus4F:0,pcbranchD:1
	//pcsrcD即为branchD
	assign sign_extD = instrD[29:28];  //指令29-28位判断立即数扩展类型
	mux2 #(32) pcbrmux(pcplus4F,pcbranchD,pcsrcD,pcnextbrFD);         //根据pcsrcD在pc+4和分支指令之间选择下一条指令
	mux2 #(32) pcjrmux(pcnextbrFD,srca2D,jrD|jalrD,pcjrFD);         //jr、jalr跳转到源寄存器rs里的值
	mux2 #(32) pcmux(pcjrFD,                                 
		{pcplus4D[31:28],instrD[25:0],2'b00},    //j指令，pcplus4D是经过锁存器F/D的pcplus4F
		jumpD|jalD,pcnextFD);                        //根据jumpD或jalD(都是无条件跳转）在跳转指令和pcnextbrFD中选择

	//` (operates in decode and writeback)
	regfile rf(clk,regwriteW,rsD,rtD,writeregW,resultW,srcaD,srcbD);
	//regwriteW，写使能信号
	//rsD、rtD是译码阶段的源寄存器
	//writeregW，写回阶段的地址
	//resultW，写回的数据
	//srcaD，srcbD，从源寄存器中读出的数据

	//fetch stage logic   IF阶段
	
	pc #(32) pcreg(clk,rst,~stallF,flushF,pcnextFD,pcF);      //更新pc   差newpcM（异常指令需要）
	//如果F阶段过来没有stall，则可以写使能（~stallF是en，使能信号）
	adder pcadd1(pcF,32'b100,pcplus4F);   //PC+4

	assign is_delayslotF=(jumpD|jrD|jalD|jalrD|branchD);   //判断是否是延迟槽（异常指令需要）

	//decode stage
	//不在ID阶段stall则pcplus4F变为pcplus4D
	flopenrc #(32) r1D(clk,rst,~stallD,flushD,pcplus4F,pcplus4D);    
	//~stallD是使能信号，flushD是clear信号（清空指令），instrF是输入，instrD是输出
	flopenrc #(32) r2D(clk,rst,~stallD,flushD,instrF,instrD);
	flopenrc #(1) r3D(clk,rst,~stallD,flushD,is_delayslotF,is_delayslotD);     

	// D阶段reg传值给hilo的寄存器
	// assign regtohiD = srcaD;	
	// assign regtoloD = srcaD;
	//signext se(instrD[15:0],signimmD); 
	//改符号扩展为数据扩展模块
	//立即数扩展部分，sign_extD是扩展的type
	signext se(instrD[15:0],sign_extD,signimmD);
	sl2 immsh(signimmD,signimmshD);   //移位模块
	adder pcadd2(pcplus4D,signimmshD,pcbranchD);   //加法模块
	//ASII display
	// instdec instdecoder(instrD,asciiD);
	//多选器，根据译码阶段前推信号（前推跳转指令地址）
	//aluoutM是从EX阶段ALU计算完的数在MEM段の值（这里要用aluoutM而不是aluout2E！有时需要stall个周期再传
	//防止RAW，判断是用计算完的（但还未更新到寄存器的）还是从寄存器中取的
	mux2 #(32) forwardamux(srcaD,aluoutM,forwardaD,srca2D);    //异常的时候要改成四位多选器
	mux2 #(32) forwardbmux(srcbD,aluoutM,forwardbD,srcb2D);
	// mux2 #(32) forwardamux(srcaD,aluoutM,forwardaD,srca2D);    //异常的时候要改成四位多选器
	// mux2 #(32) forwardbmux(srcbD,aluoutM,forwardbD,srcb2D);
	//比较两数，相等取1，否则取0；后面会与branchD相与
	//第三个参数是opD，第四个rtD
	eqcmp comp(srca2D,srcb2D,instrD[31:26],instrD[20:16],equalD);   

	assign opD = instrD[31:26];
	assign rsD = instrD[25:21];
	assign rtD = instrD[20:16];
	assign rdD = instrD[15:11];
	assign saD = instrD[10:6];  //移位指令中的立即数位
	assign functD = instrD[5:0];    //用于分辨Jr和Jalr指令

	//execute stage
	//flushE是clear
	flopenrc #(32) r1E(clk,rst,~stallE,flushE,srcaD,srcaE);
	flopenrc #(32) r2E(clk,rst,~stallE,flushE,srcbD,srcbE);
	flopenrc #(32) r3E(clk,rst,~stallE,flushE,signimmD,signimmE);
	flopenrc #(5) r4E(clk,rst,~stallE,flushE,rsD,rsE);
	flopenrc #(5) r5E(clk,rst,~stallE,flushE,rtD,rtE);
	flopenrc #(5) r6E(clk,rst,~stallE,flushE,rdD,rdE);
	flopenrc #(5) r7E(clk,rst,~stallE,flushE,saD,saE);  //sa信号
	flopenrc #(6) r8E(clk,rst,~stallE,flushE,{balD,jalD,jalrD,is_delayslotD},{balE,jalE,jalrE,is_delayslotE});
	flopenrc #(32) r9E(clk,rst,~stallE,flushE,pcplus4D,pcplus4E);
	flopenrc #(32) r10E(clk,rst,~stallE,flushE,instrD,instrE);
	flopenrc #(32) r11E(clk,rst,~stallE,flushE,srcaD,regtohi1E);  //reg传�?�到hi数据
	flopenrc #(32) r12E(clk,rst,~stallE,flushE,srcaD,regtolo1E);  //reg传�?�到lo数据

   //多选器，数据前推
   //srcaE是源寄存器数和aluoutM前推中选择一个
   //resultW是aluoutM和ReadDataW中选择一个
	mux3 #(32) forwardaemux(srcaE,resultW,aluoutM,forwardaE,srca2E);
	mux3 #(32) forwardbemux(srcbE,resultW,aluoutM,forwardbE,srcb2E);
	//alusrc控制送入ALU B端口的值是立即数的32位扩展/寄存器堆读取的值
	mux2 #(32) srcbmux(srcb2E,signimmE,alusrcE,srcb3E);
	mux3 #(32) srcbmux2(srcb3E,lotoregE,hitoregE,{is_mfhi,is_mflo},srcb4E);	//三路选择器，输入alu的b端口为scrb or hitoreg or lotoreg
	//alu alu(rst,srca2E,srcb4E,saE,alucontrolE,div_readyE,div_startE,signed_divE,div_data1,div_data2,stall_divE,aluoutE,multohiloE,overflowE);
	//mul mul(srca2E,srcb4E,alucontrolE,multohiloE);	//乘法计算
	//div div(clk,rst,signed_divE,div_data1,div_data2,div_startE,1'b0,divtohiloE,div_readyE);		//除法计算
	alu alu(srca2E,srcb4E,saE,alucontrolE,aluoutE,multohiloE,overflowE);
	do_div do_div(clk,rst,div_clear,srca2E,srcb4E,alucontrolE,divtohiloE,stall_divE,is_divE);
	mux3 #(32) srchiE(regtohi1E,divtohiloE[63:32],multohiloE[63:32],{is_mul,is_divE},regtohi2E);	//选择传向hilo寄存器的是寄存器值�?�乘法结果�?�还是除法结�?
	mux3 #(32) srcloE(regtolo1E,divtohiloE[31:0],multohiloE[31:0],{is_mul,is_divE},regtolo2E);
	//srca2E和srcb3E进行计算，alucontrolE是op 
	
	//regdstE控制写入寄存器堆的地址是rt还是rd（0为rt,1为rd）
	//输出写寄存器的地址writeregE
	mux2 #(5) wrmux(rtE,rdE,regdstE,writeregE);
	//Jr、jal、bal控制写入数据是否是PC+8
	mux2 #(5) wrmux2(writeregE,5'b11111,jalE|balE,writereg2E);      //如果是jal和bal信号，就会写入31号寄存器（jalr如果特定了rd，就写入rd）
	adder pcadder3(pcplus4E,32'b100,pcplus8E);
	mux2 #(32) wrmux3(aluoutE,pcplus8E,jalE|jalrE|balE,aluout2E);     //aluoutE可以是算出来的地值，这里的jr用于控制jalr
	//选择是否把pc+8存到寄存器中


	//mem stage
	//srcb2E变为writeDataM，写入存储器的数据（store）
	flopenrc #(32) r1M(clk,rst,~stallM,flushM,srcb2E,writedataM);
	flopenrc #(32) r2M(clk,rst,~stallM,flushM,aluout2E,aluoutM);      //改aluoutE为aluout2E
	flopenrc #(5) r3M(clk,rst,~stallM,flushM,writereg2E,writeregM);    //改写寄存器的地址为writereg2E
	flopenrc #(1) r4M(clk,rst,~stallM,flushM,is_delayslotE,is_delayslotM);
	flopenrc #(32) r5M(clk,rst,~stallM,flushM,instrE,instrM);
	flopenrc #(32) r6M(clk,rst,~stallM,flushM,regtohi2E,regtohiM);
	flopenrc #(32) r7M(clk,rst,~stallM,flushM,regtolo2E,regtoloM);
	flopenrc #(8) r8M(clk,rst,~stallM,flushM,alucontrolE,alucontrolM);
	flopenrc #(1) r9M(clk,rst,~stallM,flushM,is_divE,is_divM);

	mydatamem mem1M(memenM,memwriteM,alucontrolM,writedataM,aluoutM,readdataM,writedata2M,readdata2M,memsel,mem_ce);    
	//writedataM是以4B输入数据存储器的数据，aluoutM是要读数据存储器的地址，readdataM是数据存储器输出的数据
	//writedata2M是处理后的输入数据,readdata2M是处理后的输出数据,memsel里表示字节选择信号
	hilo_reg hilo(clk,rst,is_mthi|is_divM,is_mtlo|is_divM,regtohiM,regtoloM,hitoregE,lotoregE);   //MTXX类型将�?�用寄存器中的�?�写入到HI、LO寄存器中
	//writeback stage
	flopenrc #(32) r1W(clk,rst,~stallW,flushW,aluoutM,aluoutW);
	//load指令读出的数据
	flopenrc #(32) r2W(clk,rst,~stallW,flushW,readdata2M,readdataW);   
	flopenrc #(5) r3W(clk,rst,~stallW,flushW,writeregM,writeregW);
	flopenrc #(32) r4W(clk,rst,~stallW,flushW,instrM,instrW);
	// hilo_reg hilo(clk,rst,hilo_writeW,hilo_iW[63:32],hilo_iW[31:0],hilo_oW[63:32],hilo_oW[31:0]);   //MTXX类型将�?�用寄存器中的�?�写入到HI、LO寄存器中
	mux2 #(32) resmux(aluoutW,readdataW,memtoregW,resultW);
endmodule
