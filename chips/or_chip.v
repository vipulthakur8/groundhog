
module or_chip(out, a, b);
	input a, b;
	output out;

	wire w1, w2;
	
	nand(w1, a, a);
	nand(w2, b, b);
	nand(out, w1, w2);
endmodule
