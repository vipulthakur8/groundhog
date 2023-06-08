
module full_adder_tb();
	reg a, b, c;
	wire sum, carry;

	full_adder full_adder(sum, carry, a, b, c);

	initial begin
		$monitor("a: %b, b: %b , c: %b, sum: %b, carry: %b", a, b, c, sum, carry);	
		a = 0; b = 0; c = 0; #10
		// TEST case 1
		a = 0; b = 0; c = 0; #10
		// TEST case 2
		a = 0; b = 0; c = 1; #10
		// TEST case 1
		a = 0; b = 1; c = 0; #10
		// TEST case 1
		a = 0; b = 1; c = 1; #10
		// TEST case 1
		a = 1; b = 0; c = 0; #10
		// TEST case 1
		a = 1; b = 0; c = 1; #10
		// TEST case 1
		a = 1; b = 1; c = 0; #10
		// TEST case 1
		a = 1; b = 1; c = 1; #10
		$finish;
	end
		
endmodule
