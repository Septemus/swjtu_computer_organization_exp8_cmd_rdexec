module exp5(
	input clk,
	input [1:0]RA,
	input wr,
	input rd,
	input [1:0]M,
	input clr,
	input manual_plus,
	input [7:0] key_out,
	input [7:0] res_alu,
	input [1:0] res_dest,
	input enact,
	output [7:0] R0,
	output [7:0] R1,
	output [7:0] R2,
	output [7:0] R3,
	output [7:0] PC
);
	wire [7:0] DATA_INPUT;
	assign DATA_INPUT=key_out;
	wire [7:0] X,Y;
	pc_function pf  (clr,manual_plus,PC);
	reg_function rf (clk,wr,rd,RA,DATA_INPUT,R0,R1,R2,R3,X,res_alu,res_dest,enact);
endmodule
