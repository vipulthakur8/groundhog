module demux_8way1bit_chip_tb;
	wire o1, o2, o3, o4, o5, o6, o7, o8;
	reg in;
	reg [2:0] sel;

	demux_8way1bit_chip demux8way(o1, o2, o3,o4,o5,o6, o7, o8, in, sel);
	
	initial begin
		$monitor("o1 = %b, o2 = %b, o3 = %b, o4 = %b, o5 = %b, o6 = %b, o7 = %b, o8 = %b, in = %b, sel = %b", o1, o2, o3,o4,o5, o6,o7,o8,in,sel);	
		in = 1; sel = 3'b000; #10
		// Test case 1
		in = 1; sel = 3'b000; #10
		// Test case 1
		in = 1; sel = 3'b001; #10
		// Test case 1
		in = 1; sel = 3'b010; #10
		// Test case 1
		in = 1; sel = 3'b011; #10
		// Test case 1
		in = 1; sel = 3'b100; #10
		// Test case 1
		in = 1; sel = 3'b101; #10
		// Test case 1
		in = 1; sel = 3'b110; #10
		// Test case 1
		in = 1; sel = 3'b111; #10
		$finish;
	
	end	
	
endmodule
