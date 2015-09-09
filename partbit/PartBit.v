module isJumpInstruction(instruction,jump);

parameter JMP=2'h3;
input [7:0]instruction;
output jump;
wire jump;

	assign jump=(instruction[7:6]==JMP);
	
endmodule