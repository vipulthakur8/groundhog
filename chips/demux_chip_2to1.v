
module demux_chip_2to1(out1, out2, in, sel);
	input in, sel;
	output out1, out2;
	wire not_in, not_sel;	

	not_chip not_chip1(not_in, in);	
	not_chip not_chip2(not_sel, sel);
	
	and_chip and_chip1(out1, in, not_sel);
	and_chip and_chip2(out2, not_in, sel);	
	
endmodule
