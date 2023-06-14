module common_clock(clk);
	output reg clk;
	initial begin
		clk <= 1;
	end	
	always begin	
		#5;
		clk <= ~clk;
	end
endmodule
