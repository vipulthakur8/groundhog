module mux_16bit_chip(out, a, b, s);
	input [15:0]a;
	input [15:0]b;
	input s;
	
	output reg [15:0]out;

	//wire [15:0]not_s;
	//wire [15:0]w1;
	//wire [15:0]w2;
	
	//not_16bit_chip not16bit(not_s, s);	
	//and_16bit_chip and16bit0(w1, a, s);
	//and_16bit_chip and16bit1(w2, b, not_s);
	//or_16bit_chip or16bit(out, w1, w2);
	always @*
		if (s)
			out = b;
		else
			out = a;

endmodule
