module or_8way1bit_chip_tb();
	reg a, b, c, d, e, f, g, h;
	wire out;
	or_8way1bit_chip or8way1bit(out, a, b, c, d, e, f, g, h);
	
	initial begin
		$dumpfile("./test_results/OR8WAY1BIT.vcd");
		$dumpvars(0, or_8way1bit_chip_tb);
		a = 0; b = 1; c = 0; d = 0; e = 0; f = 0; g = 0; h = 0; #10
		$monitor("a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b, h = %b, out = %b", a, b, c, d, e, f, g, h, out);
		// TEST case 1
		a = 0; b = 1; c = 1; d = 0; e = 1; f = 1; g = 0; h = 0; #10
		// TEST case 2
		a = 1; b = 1; c = 1; d = 1; e = 1; f = 1; g = 1; h = 1; #10
		// TEST case 3
		a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; h = 0; #10
		$finish;
	end
endmodule;
