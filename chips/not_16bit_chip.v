
module not_16bit_chip(out, in);
	input [15:0] in;
	output [15:0] out;
	
	not_chip not_chip0(out[0], in[0]);	
	not_chip not_chip1(out[1], in[1]);	
	not_chip not_chip2(out[2], in[2]);	
	not_chip not_chip3(out[3], in[3]);	
	not_chip not_chip4(out[4], in[4]);	
	not_chip not_chip5(out[5], in[5]);	
	not_chip not_chip6(out[6], in[6]);	
	not_chip not_chip7(out[7], in[7]);	
	not_chip not_chip8(out[8], in[8]);	
	not_chip not_chip9(out[9], in[9]);	
	not_chip not_chip10(out[10], in[10]);	
	not_chip not_chip11(out[11], in[11]);	
	not_chip not_chip12(out[12], in[12]);	
	not_chip not_chip13(out[13], in[13]);	
	not_chip not_chip14(out[14], in[14]);	
	not_chip not_chip15(out[15], in[15]);	
	
endmodule
