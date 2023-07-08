module rom32k(out, address);
	input [14:0]address;
	output reg [15:0] out;

	reg [15:0] rom_memory [0:32767];

	always @* begin
		out <= rom_memory[address];
	end
endmodule
