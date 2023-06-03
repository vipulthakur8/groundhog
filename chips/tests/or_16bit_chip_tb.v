module or_16bit_chip_tb();
	reg [15:0] a;
	reg [15:0] b;
	
	wire [15:0] out;

	or_16bit_chip or16bit(out, a, b);
	
	initial begin
		$dumpfile("./test_results/OR16BIT");
		$dumpvars(0, or_16bit_chip_tb);
		$monitor("a: %b, b: %b, OUPUT: %b", a, b, out);
		
		a = 16'b0000000000000000; b = 16'b1111111111111111;	#10
			

	// TEST case 1 - a is all 0, and b is all 1
		a = 16'b0000000000000000; b = 16'b1111111111111111;	#10

	// TEST case 2 - a is all 1, and b is all 0	
		a = 16'b1111111111111111; b = 16'b0000000000000000;	#10

	// TEST case 3 - a is random bits and b is also random bits
		a = 16'b1010001110001100; b = 16'b1100011100000111;	#10
		$finish;	
	end		

endmodule
