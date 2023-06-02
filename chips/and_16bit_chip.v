
module and_16bit_chip(out, a, b);
	input [15:0]a;
	input [15:0]b;
	output [15:0]out;
	
	and_chip and_chip0(out[0], a[0], b[0]);
	and_chip and_chip1(out[1], a[1], b[1]);
	and_chip and_chip2(out[2], a[2], b[2]);
	and_chip and_chip3(out[3], a[3], b[3]);
	and_chip and_chip4(out[4], a[4], b[4]);
	and_chip and_chip5(out[5], a[5], b[5]);
	and_chip and_chip6(out[6], a[6], b[6]);
	and_chip and_chip7(out[7], a[7], b[7]);
	and_chip and_chip8(out[8], a[8], b[8]);
	and_chip and_chip9(out[9], a[9], b[9]);
	and_chip and_chip10(out[10], a[10], b[10]);
	and_chip and_chip11(out[11], a[11], b[11]);
	and_chip and_chip12(out[12], a[12], b[12]);
	and_chip and_chip13(out[13], a[13], b[13]);
	and_chip and_chip14(out[14], a[14], b[14]);
	and_chip and_chip15(out[15], a[15], b[14]);
	
endmodule
