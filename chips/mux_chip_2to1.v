module mux_chip_2to1(out, a, b, s);
	input a, b, s;
	output out;	

	wire w1, w2, w3;
	not_chip not_chip(w1, s);	
	and_chip and_chip1(w2, a, w1);
	and_chip and_chip2(w3, b, s);				
	or_chip or_chip(out, w2, w3);
	
endmodule
