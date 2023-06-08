module full_adder(sum, carry, a, b, c);
	input a, b, c;
	output sum,carry;		
	wire c1, s1, c2;

	half_adder half_adder1(s1, c1, a, b);
	half_adder half_adder2(sum, c2, s1, c);
	or_chip or_chip(carry, c1, c2);
	
endmodule
