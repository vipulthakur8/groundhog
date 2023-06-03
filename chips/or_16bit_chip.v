module or_16bit_chip(out, a, b);
	input [15:0]a;
	input [15:0]b;
	output [15:0]out;
	
	or_chip or_chip0(out[0], a[0], b[0]);		
	or_chip or_chip1(out[1], a[1], b[1]);		
	or_chip or_chip2(out[2], a[2], b[2]);		
	or_chip or_chip3(out[3], a[3], b[3]);		
	or_chip or_chip4(out[4], a[4], b[4]);		
	or_chip or_chip5(out[5], a[5], b[5]);		
	or_chip or_chip6(out[6], a[6], b[6]);		
	or_chip or_chip7(out[7], a[7], b[7]);		
	or_chip or_chip8(out[8], a[8], b[8]);		
	or_chip or_chip9(out[9], a[9], b[9]);		
	or_chip or_chip10(out[10], a[10], b[10]);		
	or_chip or_chip11(out[11], a[11], b[11]);		
	or_chip or_chip12(out[12], a[12], b[12]);		
	or_chip or_chip13(out[13], a[13], b[13]);		
	or_chip or_chip14(out[14], a[14], b[14]);		
	or_chip or_chip15(out[15], a[15], b[15]);		
	
endmodule
