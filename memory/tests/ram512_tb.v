module ram512_tb;
	reg [15:0]in;
	reg load;
	wire clk;
	reg [8:0]address;
	wire [15:0]out;
	
	common_clock clock(clk);
	ram512 ram_dut(out, in, address, load, clk);

	initial begin
		$dumpfile("./test_results/RAM512.vcd");
		$dumpvars(0, ram512_tb);
		$monitor("clk:%b, in:%b, load:%b, address:%b, out:%b", clk, in, load, address, out);
		in = 16'b0000000000000001; load = 1; address = 9'b000000000; #10
		in = 16'b0000000000000011; load = 0; address = 9'b001110101; #10
		in = 16'b0000000000000111; load = 0; address = 9'b001100110; #10
		in = 16'b0000000000001111; load = 0; address = 9'b111000000; #10
		in = 16'b0000000000011111; load = 0; address = 9'b101000011; #10
		in = 16'b0000000001110111; load = 0; address = 9'b111110111; #10
		in = 16'b0001111100000001; load = 1; address = 9'b000000010; #10
		in = 16'b1111111111111111; load = 1; address = 9'b000100111; #10
		$finish;	
	end	
	
endmodule
