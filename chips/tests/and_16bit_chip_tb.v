module and_16bit_chip_tb();
	parameter WIDTH = 16;
	
	reg [15:0] a;
	reg [15:0] b;
	wire [15:0] out;

	and_16bit_chip and16bit(out, a, b);
	
	initial begin
		$dumpfile("./test_results/AND16BIT.vcd");
		$dumpvars(0, and_16bit_chip_tb);
		a = 16'b0000000000000000; b = 16'b0000000000000000; #10
		$monitor("a = %b, b = %b, out = %b", a, b, out);

		// TEST CASE 1 - all bits of a and b are 0 
		a = 16'b0000000000000000; b = 16'b0000000000000000; #10
		
		// TEST CASE 2 - all bits  of a are 0 and b are 1
		a = 16'b0000000000000000; b = 16'b1111111111111111; #10

		// TEST CASE 3 - all bits  of a and b are random 
		a = 16'b0010010111101110; b = 16'b1101000111010110; #10

		$finish;

	end	
endmodule
