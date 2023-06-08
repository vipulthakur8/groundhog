module adder_16(out, a, b);
	input [15:0] a;
	input [15:0] b;
	output [15:0] out;
	
	reg car = 0;
		
	wire c[15:0];

	assign out = a + b;
	/*
	full_adder full_adder15(out[15], c[15], a[15], b[15], car);
	full_adder full_adder14(out[14], c[14], a[14], b[14], c[15);
	full_adder full_adder13(out[13], c[13], a[13], b[13], c[14]);
	full_adder full_adder12(out[12], c[12], a[12], b[12], c[13]);
	full_adder full_adder11(out[11], c[11], a[11], b[11], c[12]);
	full_adder full_adder10(out[10], c[10], a[10], b[10], c[11]);
	full_adder full_adder9(out[9], c[9], a[9], b[9], c[10]);
	full_adder full_adder8(out[8], c[8], a[8], b[8], c[9]);
	full_adder full_adder7(out[7], c[7], a[7], b[7], c[8]);
	full_adder full_adder6(out[6], c[6], a[6], b[6], c[7]);
	full_adder full_adder5(out[5], c[5], a[5], b[5], c[6]);
	full_adder full_adder4(out[4], c[4], a[4], b[4], c[5]);
	full_adder full_adder3(out[3], c[3], a[3], b[3], c[4]);
	full_adder full_adder2(out[2], c[2], a[2], b[2], c[3]);
	full_adder full_adder1(out[1], c[1], a[1], b[1], c[2]);
	full_adder full_adder0(out[0], c[0], a[0], b[0], c[1]);
	*/

endmodule
