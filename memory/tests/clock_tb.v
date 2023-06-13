module clock_tb;
	wire clk;
	common_clock dut(clk);
	initial begin
		$monitor("clk: %b", clk);
		#100;
		$finish;
	end
endmodule
