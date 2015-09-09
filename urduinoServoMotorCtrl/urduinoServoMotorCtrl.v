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
			if(BtnState)	//�p�Gbtn=high	0��
				ReadInCount=32'd500000;
			else	//�p�Gbtn=low	180��
				ReadInCount=32'd2500000;
			IsCount=1;
			LoadModN=0;
		end
		else
		begin
			if(isCount) 
			begin
				if(NowCount==ReadInCount)	//�p�Gduty cycle �����F
				begin
					ClockModNOut=0;		//��X low
				end
				else if(NowCount==Cycle)	//�p�Gcycle��F
				begin
					NowCount=0;		//�ثe�p�ƭȱo�q0�}�l
				end
				else
				begin
					ClockModNOut=1;		//��X high
					NowCount=NowCount+32'd100000;		//0.1 0.2 0.3 ...
				end
			end
		end
	end
endmodule
