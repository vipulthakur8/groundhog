module pc_tb;
	reg [15:0] in;
	reg load, reset, inc;
	wire clk;
	wire [15:0]out;

	common_clock clock(clk);
	
	program_counter pc(out,in,load,inc,reset,clk);	

	initial begin
		$dumpfile("./test_results/pc.vcd");
		$dumpvars(0, pc_tb);

		$monitor("clk:%b, load: %b, inc:%b, reset:%b, in:%b, out:%b", clk,load,inc,reset,in,out);
		in=16'b0; load=1; inc=0; reset=0; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		in=16'b0; load=0; inc=1; reset=0; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		in=16'b0; load=0; inc=1; reset=0; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		in=16'b0; load=0; inc=1; reset=0; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		in=16'b0; load=0; inc=1; reset=0; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		in=16'b0; load=0; inc=1; reset=0; #10
		in=16'b0; load=0; inc=1; reset=0; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		in=16'b0; load=0; inc=0; reset=1; #10
		in=16'b0; load=0; inc=0; reset=0; #10
		$finish;	
	end
endmodule
