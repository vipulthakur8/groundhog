module ram8_tb;
	reg [15:0]in;
	reg load;
	reg [2:0]address;
	wire clk;	
	wire [15:0]out;	

	common_clock clock(clk);
	ram8 ram8(out, in, address, load, clk);
	
	initial begin
		$dumpfile("./test_results/RAM8.vcd");
		$dumpvars(0, ram8_tb);
		$monitor("clk: %b,in: %b, address: %b, load: %b, out: %b", clk, in, address, load, out);
		in= 16'b0000000000000001; address = 3'b000; load = 1; #10
		in= 16'b0000000000000011; address = 3'b001; load = 1; #10
		in= 16'b0000000000000111; address = 3'b010; load = 0; #10
		in= 16'b0000000000001111; address = 3'b011; load = 0; #10
		in= 16'b0000000000011111; address = 3'b100; load = 1; #10
		$finish;
	end
	
endmodule;
