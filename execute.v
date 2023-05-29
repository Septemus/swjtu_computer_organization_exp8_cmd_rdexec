module execute(
	input clk,
	input [15:0] order,
	input manual_plus,
	output reg[3:0] choose_reg,
	output reg[2:0] S,
	output reg[1:0] res_dest
);
	always@(posedge clk)
	begin
		case(order[15:12])
			4'b0111:
			begin
				S<=3'b011;
				choose_reg<=order[11:8];
				res_dest<=order[7:6];
			end
			4'b1000:
			begin
				S<=3'b110;
				choose_reg<={order[11:10],2'b00};
				res_dest<=order[9:8];
			end
			default:
			begin
				S<=S;
				choose_reg<=choose_reg;
				res_dest<=res_dest;
			end
		endcase
		
	end
endmodule
