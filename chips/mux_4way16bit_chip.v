module mux_4way16bit_chip(out, a, b, c, d, s);
	input [15:0] a;
	input [15:0] b;
	input [15:0] c;
	input [15:0] d;
	input [1:0] s;

	output reg [15:0] out;

	always @*
		case (s)
			2'b00: out = a;
			2'b01: out = b;
			2'b10: out = c;
			2'b11: out = d;
		endcase	
			
endmodule
