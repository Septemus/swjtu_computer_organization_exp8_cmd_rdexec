module pc_function(input clk,input pc_clr,input [7:0]DATA_INPUT,input [1:0]M,output reg[7:0]PC
);
wire [31:0] second_counter;
count_second cs (clk,second_counter);
always@(negedge clk or negedge pc_clr)
	begin
		if(!pc_clr)
		begin
			PC<=8'h00;
		end
		else if(!clk)
		begin
			case(M)
				2'b00:
				begin 
					if(!second_counter) PC<=PC+1;
				end
				2'b01:
				begin 
					if(!second_counter) PC<=PC-1;
				end
				2'b10:
					begin
						PC<=PC;
					end
				2'b11:
					begin 
						PC<=DATA_INPUT;
					end
			endcase		
		end
	end
endmodule
