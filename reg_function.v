module reg_function(
	input clk,
	input wr,
	input rd,
	input [1:0] RA,
	input [7:0] DATA_INPUT,
	output reg[7:0]R0,
	output reg[7:0]R1,
	output reg[7:0]R2,
	output reg[7:0]R3,
	output reg[7:0]X,
	input [7:0] res_alu,
	input [1:0] res_dest,
	input enact
);
always@(negedge clk)
	begin
		case(RA)
				2'b00:
				begin
					X<=R0;
					if(res_dest==2'b00&&!enact)
					begin
						R0<=res_alu;
					end
					else if(wr==0&&rd==1)
					begin
						R0<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R0<=res_alu;
					end
				end
				2'b01:
				begin
					X<=R1;
					if(res_dest==2'b01&&!enact)
					begin
						R1<=res_alu;
					end
					else if(wr==0&&rd==1)
					begin
						R1<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R1<=res_alu;
					end
				end
				2'b10:
				begin
					X<=R2;
					if(res_dest==2'b10&&!enact)
					begin
						R2<=res_alu;
					end
					else if(wr==0&&rd==1)
					begin
						R2<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R2<=res_alu;
					end
				end
				2'b11:
				begin
					X<=R3;
					if(res_dest==2'b11&&!enact)
					begin
						R3<=res_alu;
					end
					else if(wr==0&&rd==1)
					begin
						R3<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R3<=res_alu;
					end
				end
			endcase
	end
	endmodule
	 