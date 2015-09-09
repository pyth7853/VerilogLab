module tbUrduinoServoMotorCtrl();
reg	LoadModN,ClockIn,BtnState;
wire ClockModNOut;
wire [31:0]NowCount;

	initial
	begin
    ClockIn=1'b0;
    LoadModN=1'b0;
    BtnState=1'b0;
    forever
    #1 ClockIn=~ClockIn;

	end

	initial
	begin
	#500
	LoadModN=1;
	BtnState=1;
	
	end
urduinoServoMotorCtrl myUrduinoServoMotorCtrl(LoadModN,ClockIn,BtnState,ClockModNOut,NowCount);
endmodule