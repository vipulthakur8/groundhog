module or_8way1bit_chip(out, a, b, c, d, e, f, g, h);
	input a, b, c, d, e, f, g, h;
	output out;
	wire w1, w2, w3, w4, w5, w6;

	or_chip or_chip1(w1, a, b);
	or_chip or_chip2(w2, c, w1);
	or_chip or_chip3(w3, d, w2);
	or_chip or_chip4(w4, e, w3);
	or_chip or_chip5(w5, f, w4);
	or_chip or_chip6(w6, g, w5);
	or_chip or_chip7(out, h, w6);
	
	
endmodule;
