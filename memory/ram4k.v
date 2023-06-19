module ram4k(out, in, address, load, clk);
	input [15:0]in;
	output [15:0]out;
	input load, clk;
	input [11:0]address;

	wire l0,l1,l2,l3,l4,l5,l6,l7;
	wire [15:0]o0;
	wire [15:0]o1;
	wire [15:0]o2;
	wire [15:0]o3;
	wire [15:0]o4;
	wire [15:0]o5;
	wire [15:0]o6;
	wire [15:0]o7;

	
	demux_8way1bit_chip demux8way(l0,l1,l2,l3,l4,l5,l6,l7,load,address[11:9]);
	
	ram512 ram0(o0,in,address[8:0],load,clk);
	ram512 ram1(o1,in,address[8:0],load,clk);
	ram512 ram2(o2,in,address[8:0],load,clk);
	ram512 ram3(o3,in,address[8:0],load,clk);
	ram512 ram4(o4,in,address[8:0],load,clk);
	ram512 ram5(o5,in,address[8:0],load,clk);
	ram512 ram6(o6,in,address[8:0],load,clk);
	ram512 ram7(o7,in,address[8:0],load,clk);

	mux_8way16bit_chip mux8way(out,o0,o1,o2,o3,o4,o5,o6,o7,address[11:9]);
	
endmodule
