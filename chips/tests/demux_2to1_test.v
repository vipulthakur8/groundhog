
module dmux_tb;
	reg in, sel;
	wire out1, out2;
	demux_chip_2to1 demux_chip(out1, out2, in, sel);
	initial begin
		$dumpfile("./test_results/demux.vcd");
		$dumpvars(0, dmux_tb);
		in = 0; sel = 0; #10
		$display("%b %b %b %b", in, sel, out1, out2);
		in = 1; sel = 0; #10
		$display("%b %b %b %b", in, sel, out1, out2);
		in = 0; sel = 1; #10
		$display("%b %b %b %b", in, sel, out1, out2);
		in = 1; sel = 1; #10
		$display("%b %b %b %b", in, sel, out1, out2);
		$finish;
	end
	
endmodule
