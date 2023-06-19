module ram4k_tb;
	reg [15:0]in;
	reg load;
	reg [11:0]address;	
	
	wire clk;
	wire [15:0]out;

	common_clock clock(clk);
	
	fast_ram4k ram4k_dut(out,in,address,load,clk);

	initial begin
		$dumpfile("./test_results/RAM4K.vcd");
		$dumpvars(0,ram4k_tb);
		$monitor("clk=%b, in=%b, address=%b, load=%b, out=%b",clk,in,address,load,out);
		in=16'b0000000000000001; address=12'b000000000001; load=1; #10
		in=16'b0000000000000011; address=12'b001000000000; load=1; #10
		in=16'b0000000000000111; address=12'b010000000000; load=1; #10
		in=16'b0000000000001111; address=12'b011000000001; load=1; #10
		in=16'b0000000000011111; address=12'b100000000001; load=1; #10
		in=16'b0000000000111111; address=12'b101000000001; load=1; #10
		in=16'b0000000001111111; address=12'b110000000001; load=1; #10
		in=16'b0000000011111111; address=12'b111000000001; load=1; #10
		$finish;	
	end
	
endmodule
