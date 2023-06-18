module ram8(out, in, address, load, clk);
	input [15:0] in;
	input [2:0] address;
	output [15:0] out;
	input clk, load;

	wire load0, load1, load2, load3, load4, load5, load6, load7;	
	wire [15:0]o0;
	wire [15:0]o1;
	wire [15:0]o2;
	wire [15:0]o3;
	wire [15:0]o4;
	wire [15:0]o5;
	wire [15:0]o6;
	wire [15:0]o7;

	integer i = 0;

	demux_8way1bit_chip demux8way(load0, load1, load2, load3, load4, load5, load6, load7, load, address);	

	reg16bit reg0(o0, in, load0, clk);
	reg16bit reg1(o1, in, load1, clk);
	reg16bit reg2(o2, in, load2, clk);
	reg16bit reg3(o3, in, load3, clk);
	reg16bit reg4(o4, in, load4, clk);
	reg16bit reg5(o5, in, load5, clk);
	reg16bit reg6(o6, in, load6, clk);
	reg16bit reg7(o7, in, load7, clk);

	mux_8way16bit_chip mux8way(out, o0, o1, o2, o3, o4, o5, o6, o7, address);	
	
endmodule
