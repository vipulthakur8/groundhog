module not_16bit_chip_tb;
	parameter WIDTH = 16;
	reg [15:0] in;
	wire [15:0] out;
		
	//reg clk = 0;
	//always #5 clk = -clk;
	
	not_16bit_chip not16bit_dut(.out(out), .in(in));
	
	initial begin
		$dumpfile("./test_results/NOT16BIT");
		// apply inputs;
		in = 16'b0000000000000000; #10	
	
		// Monitor inputs
		$monitor("INPUT: %b, OUPUT: %b", in, out);

		//TEST case 1: All bits are 0
		in = 16'b0000000000000000; #10	

		//TEST case 2: All bits are 1
		in = 16'b1111111111111111; #10	

		//TEST case 3: All random bites
		in = 16'b1010101100011010; #10	

		$finish;
		
	end	

endmodule;


