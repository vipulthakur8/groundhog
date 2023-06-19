module ram16k(out,in,address,load,clk);
	input [15:0]in;
	input load, clk;
	input [13:0]address;	
	output [15:0]out;

	wire l0,l1,l2,l3,l4,l5,l6,l7;

	wire [15:0]o0;
	wire [15:0]o1;
	wire [15:0]o2;
	wire [15:0]o3;

	demux_8way1bit_chip demux8way(l0,l1,l2,l3,l4,l5,l6,l7,load,address[13:12])

	ram4k ram0(o0,in,address[11:0],load,clk);
	ram4k ram1(o1,in,address[11:0],load,clk);
	ram4k ram2(o2,in,address[11:0],load,clk);
	ram4k ram3(o3,in,address[11:0],load,clk);

	mux_4way16bit_chip mux4way(out,o0,o1,o2,o3,address[13:12]);
	
endmodule
