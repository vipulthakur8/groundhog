module reg16bit(out, in, load, clk);
	input [15:0] in;
	input load, clk;
	output wire [15:0]out;

	bit bit1(out[0], in[0], load, clk);
	bit bit2(out[1], in[1], load, clk);
	bit bit3(out[2], in[2], load, clk);
	bit bit4(out[3], in[3], load, clk);
	bit bit5(out[4], in[4], load, clk);
	bit bit6(out[5], in[5], load, clk);
	bit bit7(out[6], in[6], load, clk);
	bit bit8(out[7], in[7], load, clk);
	bit bit9(out[8], in[8], load, clk);
	bit bit10(out[9], in[9], load, clk);
	bit bit11(out[10], in[10], load, clk);
	bit bit12(out[11], in[11], load, clk);
	bit bit13(out[12], in[12], load, clk);
	bit bit14(out[13], in[13], load, clk);
	bit bit15(out[14], in[14], load, clk);
	bit bit16(out[15], in[15], load, clk);
	
endmodule
