
module and_chip(out, a, b);
	input a, b;
	output out;
	
	wire w1;
	nand(w1, a, b);
	nand(out, w1, w1);
	
endmodule
