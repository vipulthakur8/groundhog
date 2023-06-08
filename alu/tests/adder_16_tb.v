module adder_16_tb;
	reg [15:0]a;
	reg [15:0]b;
	reg c = 0;
	wire [15:0]out;

	adder_16 adder_16(out, a, b);

	initial begin
		$monitor("a: %b, b: %b, sum: %b", a, b, out);
		a = 16'b1100101100000000; b = 16'b0001100110010101; #10
		//test case 1
		a = 16'b0000000000000000; b = 16'b0001100110010101; #10
		//test case 2
		a = 16'b1100101111110000; b = 16'b0000000000000001; #10
		//test case 3
		a = 16'b1100101100000000; b = 16'b0001100110010101; #10
		//test case 4
		a = 16'b1100101100011111; b = 16'b0001111110010101; #10
		$finish;
	end	
endmodule

