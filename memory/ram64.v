module ram64(out, in, address, load, clk);
	
	input [15:0]in;
	input load, clk;
	input [5:0]address;
	output [15:0]out;

	wire l0, l1, l2, l3, l4, l5, l6, l7;	
	wire [15:0]o0;
	wire [15:0]o1;
	wire [15:0]o2;
	wire [15:0]o3;
	wire [15:0]o4;
	wire [15:0]o5;
	wire [15:0]o6;
	wire [15:0]o7;

	demux_8way1bit_chip demux8way(l0,l1,l2,l3,l4,l5,l6,l7,load,address[5:3]);

	ram8 ram0(o0, in, address[2:0], l0, clk);	
	ram8 ram1(o1, in, address[2:0], l1, clk);	
	ram8 ram2(o2, in, address[2:0], l2, clk);	
	ram8 ram3(o3, in, address[2:0], l3, clk);	
	ram8 ram4(o4, in, address[2:0], l4, clk);	
	ram8 ram5(o5, in, address[2:0], l5, clk);	
	ram8 ram6(o6, in, address[2:0], l6, clk);	
	ram8 ram7(o7, in, address[2:0], l7, clk);	

	mux_8way16bit_chip mux(out, o0, o1, o2, o3, o4, o5, o6, o7, address[5:3]);

endmodule
