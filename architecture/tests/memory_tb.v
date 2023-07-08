module memory_tb;
	reg [15:0]in;
	reg [14:0]address;
	reg load;
	wire clk;
	wire [15:0]out; 

	// initializing clock	
	common_clock clock(clk);

	memory memory(out, in, address, load, clk);	

	initial begin
		$dumpfile("./MEMORY.vcd");
		$dumpvars(0, memory_tb);
		$monitor("clk: %b, in: %b, load: %b, address: %b, out: %b", clk, in, load, address, out);	
		in = 16'b0000000001111111; load = 1; address = 16383; #10
		in = 16'b0000000001111111; load = 0; address = 16383; #10
		in = 16'b0000000001110000; load = 1; address = 16384; #10
		in = 16'b0000000001110000; load = 0; address = 16384; #10
		//in = 16'b1111110000000000; load = 1; address = 15383; #10
		//in = 16'b0000111101111111; load = 0; address = 15383; #10
		in = 16'b0000000001111111; load = 1; address = 24576; #10
		in = 16'b0000000001111111; load = 0; address = 24576; #10
		$finish;
	end
	
endmodule
