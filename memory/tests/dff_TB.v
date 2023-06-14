module dff_TB;
	reg in;
	wire clk;
	wire out;
	
	common_clock clock(clk);
	dff dut(out, in, clk);

	initial begin
		$dumpfile("./test_results/DFF.vcd");
		$dumpvars(0, dff_TB);
		$monitor("clk: %b, in: %b, out: %b", clk, in, out);
		in = 0; #5
		in = 1; #10
		in = 1; #5
		in = 0; #15
		in = 0; #5
		in = 0; #5
		in = 1; #5
		in = 0; #15
		in = 0; #15
		in = 1; #5
		in = 0; #5
		in = 1; #5
		$finish;
	end
	
endmodule
