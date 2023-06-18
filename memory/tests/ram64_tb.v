module ram64_tb;
	reg [15:0]in;
	reg [5:0]address;
	reg load;
	wire clk;
	wire [15:0]out;

	common_clock clock(clk);
	
	ram64 ram64_dut(out, in, address, load, clk);

	initial begin
	
		$dumpfile("./test_results/RAM64.vcd");
		$dumpvars(0, ram64_tb);
		$monitor("clk: %b, load: %b, in: %b, address: %b, out: %b", clk, load, in, address, out);
		in = 16'b0000000000000001; load = 1; address = 6'b100000; #10  
		in = 16'b0000000000000011; load = 0; address = 6'b001001; #10  
		in = 16'b0000000000000111; load = 1; address = 6'b110010; #10  
		in = 16'b0000000000001111; load = 1; address = 6'b011011; #10  
		in = 16'b0000000000011111; load = 1; address = 6'b111100; #10  
		in = 16'b0000000000111111; load = 0; address = 6'b101101; #10  
		in = 16'b0000000001111111; load = 0; address = 6'b000110; #10  
		in = 16'b0000000011111111; load = 1; address = 6'b111111; #10  
		$finish;

	end
	
endmodule
