module inc16(out, in);
	input [15:0] in;
	output [15:0] out;
	
	//reg one = 16'b0000000000000001 ;

	wire [15:0] one = 16'b0000000000000001;
	
	adder_16 adder_16(out, in, one);
	
endmodule
