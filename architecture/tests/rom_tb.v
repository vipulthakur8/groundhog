module rom_tb;
	reg [14:0]address;
	wire [15:0]out;

	rom32k rom(out, address);
	
	initial begin
		$monitor("address: %b, out: %b", address, out);
		address = 12343; #10
		address = 12346; #10
		$finish;
	end	
		
endmodule
