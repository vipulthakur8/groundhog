module xor_chip(out, a, b);
	input a, b;
	output out;

	wire not_a, not_b, w1, w2;

	not_chip not_chip1(not_a, a);
	not_chip not_chip2(not_b, b);

	and_chip and_chip1(w1, a, not_b);
	and_chip and_chip2(w2, b, not_a);
	or_chip or_chip(out, w1, w2);

endmodule
