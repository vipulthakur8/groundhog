module dut;
	reg a, b, s;
	wire out;
	
	mux_chip_2to1 mux(out, a, b, s);
	//$display("a b c out");
	initial begin
		$dumpfile("mux.vcd");
		$dumpvars(0, dut);
		a = 0; b = 0; s = 0; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 1; b = 0; s = 0; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 0; b = 1; s = 0; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 1; b = 1; s = 0; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 0; b = 0; s = 1; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 1; b = 0; s = 1; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 0; b = 1; s = 1; #10
		$display("%b %b %b %b", a, b, s, out);
		a = 1; b = 1; s = 1; #10
		$display("%b %b %b %b", a, b, s, out);
		$finish;
	end
			
		
endmodule
