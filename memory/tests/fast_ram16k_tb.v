module fast_ram16k_tb;
	reg [15:0]in;
	reg load;
	reg [13:0]address;
	
	wire clk;
	output [15:0]out;

	common_clock clock(clk);
	
	fast_ram16k ram_dut(out,in,address,load,clk);

	initial begin
		$dumpfile("./test_results/fast_ram16k.vcd");
		$dumpvars(0,fast_ram16k_tb);
		$monitor("clk:%b, load:%b, address:%b, in:%b, out:%b", clk, load, address, in, out);

		/* Load */
		in=16'b00000000000001; load=1; address=14'b00100000000000; #10
		in=16'b00000000000011; load=1; address=14'b01000000000000; #10
		in=16'b00000000000111; load=0; address=14'b01100000000000; #10
		in=16'b00000000001111; load=0; address=14'b00000000000001; #10
		in=16'b00000000011111; load=1; address=14'b00100000000001; #10
		in=16'b00000000111111; load=0; address=14'b01000000000001; #10
		in=16'b00000001111111; load=1; address=14'b01100000000001; #10
		in=16'b00000011111111; load=1; address=14'b10000000000001; #10

		/* Reading the loaded data */
		in=16'b00000000000001; load=0; address=14'b00100000000000; #10
		in=16'b00000000000011; load=0; address=14'b01000000000000; #10
		in=16'b00000000000111; load=0; address=14'b01100000000000; #10
		in=16'b00000000001111; load=0; address=14'b00000000000001; #10
		in=16'b00000000011111; load=0; address=14'b00100000000001; #10
		in=16'b00000000111111; load=0; address=14'b01000000000001; #10
		in=16'b00000001111111; load=0; address=14'b01100000000001; #10
		in=16'b00000011111111; load=0; address=14'b10000000000001; #10
		$finish;
	end
endmodule
