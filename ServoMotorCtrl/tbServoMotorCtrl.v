module tbServoMotorCtrl();

reg Reset,Clk,BtnState;
wire OutputPwm;
wire [31:0]NowCount_d,NowCount_q;

	initial	
	begin
	Reset=1'b0;
	BtnState=1'b0;
	Clk=1'b0;
	forever #10 Clk = ~Clk;
	end
	
  	initial
	begin
	#0
		Reset=1;
	#1000
		BtnState=1;
		Reset=0;
	#19999000	
		BtnState=0;
		Reset=0;		
	end

	ServoMotorCtrl myServoMotorCtrl(Reset,Clk,OutputPwm,NowCount_d,NowCount_q,BtnState);
endmodule