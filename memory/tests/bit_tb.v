module bit_tb;
	reg in, load; 
	wire clk;	
	wire out;
	
	common_clock clock(clk);
	bit bit1(out, in, load, clk);
	
	initial begin
		$dumpfile("./test_results/BIT.vcd");
		$dumpvars(0, bit_tb);
		$monitor("clk: %b, in: %b, load: %b, out: %b", clk, in, load, out);

		in = 1; load = 1; #10
		in = 0; load = 0; #10
		in = 0; load = 0; #10
		in = 1; load = 0; #10
		in = 1; load = 0; #10
		$finish;
	end
endmodule
