/* Computer on a chip */
module computer(screen_out, kbd_out, reset);
	output screen_out;
	output kbd_out;
	input reset;	

	/* Master clock */
	wire clk;
	common_clock clock(clk); /* Instantiation of master clock */

	/* Internal wires will go into cpu */
	wire [15:0]outM;
	wire [15:0]addressM;
	wire [15:0]writeM;
	wire pc;
	wire [15:0]instruction;
	wire [15:0]inM;
	wire reset;

	/* Instantiation of cpu */	
	cpu c_p_u(outM, addressM, writeM, pc, instruction, inM, reset, clk);

	/* Instantiation of data memory */
	memory data_memory(inM, outM, addressM, writeM, clk);	

	/* Instantiation of instruction memory (ROM ) */
	rom32k rom(instruction, pc);

	/* Screen chip: chip that will handle screen output */
	// to be done

	/* Keyboard chip: chip that will read keyboard inputs  */
	// to be done

endmodule
