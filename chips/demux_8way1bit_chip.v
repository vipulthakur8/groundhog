module demux_8way1bit_chip(o1,o2,o3,o4, o5, o6, o7, o8, in, sel);
	output reg o1, o2, o3, o4, o5, o6, o7, o8;
	input in;
	input [2:0]sel;

	always @*
		case (sel)
			3'b000: begin
				o1 = in; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = 0; o8 = 0;
			end
			3'b001: begin 
				o1 = 0; o2 = in; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = 0; o8 = 0;
			end
			3'b010: begin 
				o1 = 0; o2 = 0; o3 = in; o4 = 0; o5 = 0; o6 = 0; o7 = 0; o8 = 0;
			end
			3'b011: begin 
				o1 = 0; o2 = 0; o3 = 0; o4 = in; o5 = 0; o6 = 0; o7 = 0; o8 = 0;
			end
			3'b100: begin 
				o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = in; o6 = 0; o7 = 0; o8 = 0;
			end
			3'b101: begin 
				o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = in; o7 = 0; o8 = 0;
			end
			3'b110: begin 
				o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = in; o8 = 0;
			end
			3'b111: begin 
				o1 = 0; o2 = 0; o3 = 0; o4 = 0; o5 = 0; o6 = 0; o7 = 0; o8 = in;
			end
		endcase
endmodule
