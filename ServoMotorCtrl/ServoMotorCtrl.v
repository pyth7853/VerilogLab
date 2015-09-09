module ServoMotorCtrl(Reset,Clk,OutputPwm,BtnState);
input Reset,Clk,BtnState;
reg [31:0]NowCount_q,NowCount_d;
output reg OutputPwm;
parameter Duty1=50000,Duty2=125000;	//duty1=1ms  duty2=2.5ms
parameter Period=1000000;  // period=20ms
	always@(*)
	begin
		NowCount_d=NowCount_q+1;	
		OutputPwm=0;	
		if(BtnState)
		begin
			if(NowCount_q<=Duty1)	//�u�@�P�������� ��Xhigh
			begin
				OutputPwm=1;
			end
			else if(NowCount_q<Period)	//�u�@�P������,�P������ ��Xlow
				OutputPwm=0;
			else
				NowCount_d=32'b0;	//�P������ ���s�p��			
		end	
		else
		begin
			if(NowCount_q<=Duty2)
			begin
				OutputPwm=1;
			end
			else if(NowCount_q<Period)
				OutputPwm=0;
			else
				NowCount_d=32'b0;			
					
		end
	end

	always@(posedge Clk or posedge Reset)
	begin
		if(Reset)
		begin
			NowCount_q<=32'b0;
		end
		else
		begin
			NowCount_q<=NowCount_d;
		end
	end 
endmodule