module fast_ram16k(out,in,address,load,clk);
	input [15:0] in;
	input load, clk;
	input [13:0]address;
	output reg [15:0]out;
	
	reg [15:0] memory [0:16383];	

	always @(negedge clk) begin
		if (load) begin
			memory[address] <= in;
		end else begin
			out <= memory[address];
		end
	end
	
endmodule
