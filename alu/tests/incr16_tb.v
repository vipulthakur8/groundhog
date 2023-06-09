module incre16_tb;
	
	reg [15:0] in;
	wire [15:0] out;


	inc16 inc16(out, in);

	initial begin
		$monitor("in: %b, out: %b", in, out);
		in = 16'b0000000000000000; #10
		// test case 1
		in = 16'b0000000000000000; #10
		// test case 2
		in = 16'b1000011111000011; #10
		// test case 3
		in = 16'b1111111111111111; #10
		$finish;
	end
	
	
	
endmodule
