module alu(out, zr, ng, x, y, zx, nx, zy, ny, f, no);
	input [15:0]x;
	input [15:0]y;

	input zx, nx, zy, ny, f, no;

	output [15:0]out;
	output reg zr, ng;

	wire [15:0]z = 16'b0000000000000000;

	// wire for x
	wire [15:0]n_x;
	wire [15:0]zxout;
	wire [15:0]xout;
	// wires for y
	wire [15:0]yout;
	wire [15:0]zyout;
	wire [15:0]n_y;

	// wire for output
	wire [15:0]out_temp;
	wire [15:0]out_add;
	wire [15:0]out_and;
	wire [15:0]n_o;

	mux_16bit_chip mux16_one(zxout, x, z, zx);
	not_16bit_chip not16_one(n_x, x);
	mux_16bit_chip mux16_two(xout, x, n_x, nx);

	mux_16bit_chip mux16_three(zyout, y, z, zy);
	not_16bit_chip not16_two(n_y, y);
	mux_16bit_chip mux16_four(yout, y, n_y, ny);
	//mux_16bit_chip mux15_two(

	adder_16 adder(out_add, xout, yout); 
	and_16bit_chip and_chip(out_and, xout, yout);
	mux_16bit_chip mux16_five(out_temp, out_and, out_add, f);
	not_16bit_chip not16_three(n_o, out_temp);
	mux_16bit_chip mux16_six(out, out_temp, n_o, no);

endmodule
