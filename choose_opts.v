module choose_opts(
input clk,
	input [7:0]R0,
	input [7:0]R1,
	input [7:0]R2,
	input [7:0]R3,
	input [3:0]choose_reg,
	output [15:0] res
);
	reg [7:0]opt1,opt2;
	initial
	begin
		opt1<=8'b0000_0000;
		opt2<=8'b0000_0000;
	end
	always@(posedge clk)
	begin
			case(choose_reg[3:2])
				2'b00:opt1<=R0;
				2'b01:opt1<=R1;
				2'b10:opt1<=R2;
				2'b11:opt1<=R3;
			endcase
			case(choose_reg[1:0])
				2'b00:opt2<=R0;
				2'b01:opt2<=R1;
				2'b10:opt2<=R2;
				2'b11:opt2<=R3;
			endcase
	end
	assign res={opt1,opt2};
endmodule
