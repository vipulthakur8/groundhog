module demux_4way1bit_chip(out1, out2, out3, out4, in, sel);
	output reg out1, out2, out3, out4;
	input in;
	input [1:0]sel;

	always @*
		case (sel)
			2'b00 : begin
				 out1 = in ; out2 = 0; out3 = 0; out4 = 0;
			end
			2'b01 : begin
				 out1 = 0; out2 = in; out3 = 0; out4 = 0;
			end
			2'b10 : begin
				 out1 = 0; out2 = 0; out3 = in; out4 = 0;
			end
			2'b11 : begin
				 out1 = 0; out2 = 0; out3 = 0; out4 = in;
			end
		endcase
endmodule;
