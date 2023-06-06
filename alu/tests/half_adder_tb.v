module half_adder_tb;
	reg a, b;
	wire sum, carry;

	half_adder half_adder_dut(sum, carry, a, b);
	
	initial begin
		$monitor("a: %b, b: %b, sum: %b, carry:%b ", a, b, sum, carry);	
		a = 0; b = 0; #10
		// TEST case 1
		a = 0; b = 0; #10
		// TEST case 2
		a = 0; b = 1; #10
		// TEST case 3
		a = 1; b = 0; #10
		// TEST case 4
		a = 1; b = 1; #10
		$finish;
	end
	
endmodule
