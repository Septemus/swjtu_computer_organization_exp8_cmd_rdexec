module pc_function(input clk,input pc_clr,input manual_plus,output reg[7:0]PC
);
parameter   S1 = 2'b00,		//松开稳定时
            S2 = 2'b01,		//按下毛刺时
            S3 = 2'b10,		//按下稳定时
            S4 = 2'b11;		//松开毛刺时
				
 
 
/*===============================================================20ms计数器=============================================================*/
reg en_counter;	//计数使能
reg [19:0] cnt;	//计数
reg cnt_full;
 
//只有当计数使能为高电平的时候，计数器才会计数
always@(posedge clk or negedge pc_clr)
	begin
		if(!pc_clr)
			cnt <= 0;
		else if(en_counter)
			cnt <= cnt + 1'b1;
		else 
			cnt <= 0;
	end
	
//计数满信号（数数到1000000计数满时间到。1000000是1M，当基于clk信号频率进行计数时，cnt_full走过(1/50M)s*1M的时间，即20ms）
always@(posedge clk or negedge pc_clr)	//当clk接50MHz的信号时，相当于clk在1s内进行了50M次计数，相邻上升沿相间(1/50M)s
begin
	if(!pc_clr)
		cnt_full <= 1'b0;
	else if(cnt == 20'd10000)	
		cnt_full <= 1'b1;
	else 
		cnt_full <= 1'b0;
end
 
 
 
/*==============================================================判断边沿模块=============================================================*/
reg key_tmp0,key_tmp1;
 
always@(posedge clk or negedge pc_clr)
	begin
		if(!pc_clr)
			begin
				key_tmp0 <= 1'b1;
				key_tmp1 <= 1'b1;
			end
			
		else
			begin
				key_tmp0 <= manual_plus;		//manual_plus按键输入
				key_tmp1 <= key_tmp0;	
			end
			
	end
 
wire pedge,nedge;
assign nedge = (!key_tmp0) & key_tmp1;        //下降沿（下一clk时为0，上一clk时为1）
assign pedge = key_tmp0 & (!key_tmp1);        //上升沿（下一clk时为1，上一clk时为0）
 
 
 
/*=============================================================状态机模块================================================================*/
reg [1:0] state;
reg key_flag;		//经消抖后可确认的按下动作
reg key_state;		//按键状态，高电平为未按下，低电平为按下状态
 
always@(posedge clk or negedge pc_clr)
	begin
		
		if(!pc_clr)
			begin
				state      <= S1; 
				en_counter <= 1'b0;	//计数器归零
				key_state  <= 1'b1;	//按键未按下
				key_flag   <= 1'b0;
			end
		
		else 
			begin
				case(state)
					
					S1:	//高电平（松开稳定）
						begin
							key_flag   <= 1'b0;	//按键未按下，不计
							key_state  <= 1'b1;	//按键松开状态
							en_counter <= 1'b0;	//计数器归零
							
							if(nedge)	//检测到下降沿，进入下一个状态同时打开计数器
								begin
									state      <= S2;
									en_counter <= 1'b1;	//计数器使能
								end
							
							else 
								state <= state;	//保持目前状态    
						end
					
					S2:	//下降沿抖动（按下毛刺）
						if(cnt_full)	//计数满，说明达到稳定状态，关闭计数器，进入下一个状态
							begin
								state      <= S3;
								en_counter <= 1'b0;	//计数器归零
								key_flag   <= 1'b1;	//按键可确认已按下
								key_state  <= 1'b0;	//按键按下状态
							end
						
						else if(pedge)	//检测到上升沿（毛刺），跳回S1状态同时关闭计数器
							begin
								en_counter <= 1'b0;	//计数器归零
								state      <= S1;
							end
						
						else 
							state <= state;	//保持目前状态
							
					S3:	//低电平（按下稳定）
						begin
							key_flag <= 1'b0;	//一个按键周期测到一次就行，现在可清零了（后面代码编写只在意其posedge）
							
							if(pedge)	//检测到上升沿，进入下一个状态同时打开计数器
								begin
									state      <= S4;
									en_counter <= 1'b1;	//计数器使能
								end
							
							else 
								state <= state;	//保持目前状态
						end
					
					S4:	//上升沿抖动（松开毛刺）
						if(cnt_full)
							begin
								state     <= S1;
								key_state <= 1'b1;
							end
						
						else 
							if(nedge)
								begin
									en_counter <= 1'b0;	//计数器归零
									state      <= S3;					 		
								end 
							else 
								state <= state;	//保持目前状态
					
					default:
						state <= S1;
						
					endcase
	
			end
	
	end
always@(posedge key_flag,negedge pc_clr)
	//key_flag：经消抖后可确认的按下动作
	begin
	if(!pc_clr)
		PC <= 0;
	else
		PC<=PC+1;
	end

endmodule
