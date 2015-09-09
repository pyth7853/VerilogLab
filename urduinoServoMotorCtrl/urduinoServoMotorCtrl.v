module urduinoServoMotorCtrl(LoadModN,ClockIn,BtnState,ClockModNOut,NowCount);
parameter [31:0]Cycle=32'd20000000;
input  LoadModN,ClockIn,BtnState;
output ClockModNOut;
output reg [31:0]NowCount;
reg ClockModNOut;
reg [31:0]ReadInCount;
reg IsCount;

	always @(posedge ClockIn)
	begin
		if(LoadModN)
		begin
			ClockModNOut=0;
			NowCount=0;
			if(BtnState)	//如果btn=high	0度
				ReadInCount=32'd500000;
			else	//如果btn=low	180度
				ReadInCount=32'd2500000;
			IsCount=1;
			LoadModN=0;
		end
		else
		begin
			if(isCount) 
			begin
				if(NowCount==ReadInCount)	//如果duty cycle 結束了
				begin
					ClockModNOut=0;		//輸出 low
				end
				else if(NowCount==Cycle)	//如果cycle到了
				begin
					NowCount=0;		//目前計數值得從0開始
				end
				else
				begin
					ClockModNOut=1;		//輸出 high
					NowCount=NowCount+32'd100000;		//0.1 0.2 0.3 ...
				end
			end
		end
	end
endmodule
