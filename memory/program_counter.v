module program_counter(out,in,load,inc,reset,clk);
	input [15:0] in;
	input load, inc, reset, clk;	
	output reg [15:0]out;	

	reg [15:0]pc;	

	always @(negedge clk) begin
		if (reset) begin
			pc <= 16'b0;
		end else if (load) begin
			pc <= in;
		end else if (inc) begin
			pc <= pc + 16'b0000000000000001;
		end else begin 
			out <= pc;
		end
	end
endmodule;
