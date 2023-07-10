module cpu(outM, addressM, writeM, pc, instruction, inM, reset, clk);
	input [15:0] instruction; /* Instruction bits */
	input [15:0] inM;	/* M address content of data memory  */ 
	input reset; /* reset the cpu */ 

	output [15:0]outM;
	output [15:0]addressM;
	output writeM;
	output [15:0]pc; /* program counter output indicating next instruction in a fetch-execute cycle */

	/* Internal wires */
	wire [15:0]m1_out; /* mux output selecting between alu output and instruction */
	wire [15:0]m2_out; /* mux output selecting between M address content and A address content */
	wire [15:0]alu_out; /* ALU output */
	wire zr, ng; /* zero and negative bit output given by alu */
	wire [15:0]a_out; /* A register output */
	wire [15:0]d_out; /* D register output */
	wire [15:0]pc_out; /* Program counter output */

	/* control bits */
	wire c1, c2; /* control bits to direct the operations of the cpu components */
	
	/* Mux to select from instruction and alu output */
	mux_16bit_chip mux161(m1_out, alu_out, instruction, c1);	
	
	/* A register */
	reg16bit A(a_out, m1_out, 1, clk);	
	
	/*
	 Mux to select from A register (which could be both A and C instruction)  and data
	 from M address denoted by A registers content 
	*/
	mux_16bit_chip mux162(m2_out, a_out, inM, c2);	

	/* D register */	
	reg16bit D(d_out, alu_out, 1, clk);	

	/* ALU */
	alu alu(alu_out, zr, ng, d_out, m2_out, 0, 0, 0, 0, 0, 0);  	

	/* Program counter */	
	program_counter p_c(pc_out, a_out, 1, 0, reset, clk);		
	

	/* outputs given by the CPU */
	assign outM = alu_out;
	assign addressM = a_out;
	assign writeM = 1;
	assign pc = pc_out;
	
	
endmodule
