module pc_function(
input pc_clr,
input manual_plus,
output reg[7:0]PC
);
initial
begin
	PC<=8'hff;
end
//wire [31:0] second_counter;
//count_second cs (clk,second_counter);
//always@(negedge clk or negedge pc_clr)
//	begin
//		if(!pc_clr)
//		begin
//			PC<=8'h00;
//		end
////		else if(!manual_plus)
////		begin
////			PC<=PC+1;
////		end
//		else if(!clk)
//		begin
//			case(M)
//				2'b00:
//				begin 
//					if(!second_counter) PC<=PC+1;
//				end 
//				2'b01:
//				begin 
//					if(!second_counter) PC<=PC-1;
//				end
//				2'b10:
//					begin
//						PC<=PC;
//					end
//				2'b11:
//					begin 
//						PC<=DATA_INPUT;
//					end
//			endcase		
//		end
//	end
	always@(negedge pc_clr or negedge manual_plus)
	begin
		if(!pc_clr) PC<=8'h00;
		else if(!manual_plus) 
		begin
			if(PC<8'h02) PC<=PC+1;
			else PC<=8'h00;
		end
	end
endmodule
