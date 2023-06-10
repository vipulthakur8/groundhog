module alu_tb;
	reg [15:0] x;
	reg [15:0] y;

	reg zx, nx, zy, ny, f, no;
	wire [15:0]out;
	wire zr, ng;

	alu alu(out, zr, ng, x, y, zx, nx, zy, ny, f, no); 

	initial begin
		$monitor("x = %b, y = %b, zx = %b, nx = %b, zy = %b, ny = %b, f = %b, out = %b, no = %b", x, y, zx, nx, zy, ny, f, out, no);	
		x = 16'b0011111110000000; y = 16'b0000000000111111; zx = 0; nx = 0; zy = 0; ny = 0; f = 0; no = 1; #10
		x = 16'b0011111110000000; y = 16'b0000000000111111; zx = 1; nx = 1; zy = 0; ny = 1; f = 1; no = 0; #10
		x = 16'b0011111110000000; y = 16'b0000000000111111; zx = 0; nx = 1; zy = 0; ny = 0; f = 0; no = 0; #10
		x = 16'b0011111110000000; y = 16'b0000000000111111; zx = 0; nx = 1; zy = 0; ny = 1; f = 1; no = 1; #10
		$finish;

	end
endmodule
