module memory(out, in, address, load, clk);
	input [15:0]in;
	input [14:0]address;
	input load, clk;
	

	output reg [15:0]out;

	reg [15:0] memory [0:24576];	

	/*
		address : 24576 is for keyboard MMIO
		address: 16384 to 24575 is for screen MMIO 
		address: 0 to 16383 is for data memory
	 */

	always @(negedge clk) begin
		if (load && address <= 16383) begin
			memory[address] <= in;
			//out <= memory[address];
		end
		if (address >= 16384 && address <= 24575) begin
			if (load) begin
				memory[address] <= in;
			end 
		end
		out <= memory[address];
	end
	
endmodule
