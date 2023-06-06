module half_adder(sum, carry, a, b);
	input a, b;
	output sum, carry;

	and_chip and_chip(carry, a, b);
	xor_chip xor_chip(sum, a, b);	
	
endmodule
