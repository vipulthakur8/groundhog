module reg16bit_tb;
	reg [15:0]in;
	wire [15:0]out;
	wire clk;
	reg load;

	common_clock clock(clk);
	
	reg16bit reg16(out, in, load, clk);
	
	initial begin
		$dumpfile("./test_results/REG16BIT.vcd");
		$dumpvars(0, reg16bit_tb);
		$monitor("clk: %b, in: %b, load: %b, out: %b ", clk, in, load, out);
	
		in = 16'b0000000011111111; load = 1; #10	
		in = 16'b0000000011111100; load = 0; #10	
		in = 16'b0000000011110000; load = 0; #10	
		in = 16'b0000000011000000; load = 0; #10	
		in = 16'b0000000010000000; load = 1; #10	
		$finish;	
	end
	
endmodule
