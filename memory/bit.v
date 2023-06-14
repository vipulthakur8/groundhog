// One bit register
module bit(out, in, load, clk);
	input in, load, clk;
	output out;	

	wire out_wire1, dff_current_out;

	//dff dff1(dff_current_out
	mux_chip_2to1 mux21(out_wire1, dff_current_out, in, load);
	dff dff1(dff_current_out, out_wire1, clk);

	assign out = dff_current_out;
		
endmodule
