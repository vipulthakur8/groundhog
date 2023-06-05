module demux_4way1bit_chip_tb;
	reg in;
	reg [1:0]sel;
	wire out1, out2, out3, out4;	

	demux_4way1bit_chip demux4way(out1, out2, out3, out4, in, sel);
			
	initial begin
		$monitor("o1: %b, o2: %b, o3: %b, o4: %b, in: %b, sel: %b", out1, out2, out3, out4, in, sel);	
		in = 1; sel = 2'b00; #10
		// TEST case 1
		in = 1; sel = 2'b00; #10
		// TEST case 2
		in = 1; sel = 2'b01; #10
		// TEST case 2
		in = 1; sel = 2'b10; #10
		// TEST case 2
		in = 1; sel = 2'b11; #10
		$finish;	
	end
	
endmodule
