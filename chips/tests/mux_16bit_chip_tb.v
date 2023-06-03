module mux_16bit_chip_tb();
	
	reg [15:0]a;
	reg [15:0]b;
	reg [15:0]s;
	wire [15:0]out;

	mux_16bit_chip mux16bit(out, a, b, s);

	initial begin
		$dumpfile("./test_results/MUX16BIT.vcd");
		$dumpvars(0, mux_16bit_chip_tb);

		a = 16'b0000000000000000; b = 16'b1111111111111111; s = 16'b0000000000000000; #15
		$monitor("a: %b, b: %b, s: %b, output: %b", a, b, s, out);
		// TEST case 1
		a = 16'b0000000000000000; b = 16'b1111111111111111; s = 16'b0000000000000000; #15
		// TEST case 2
		a = 16'b0000000000000000; b = 16'b1111111111111111; s = 16'b1111111111111111; #15

		$finish;
	
	end

	
endmodule
