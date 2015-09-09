module tbRS_NRNC();
//Reset,Clock,Reg_In,Reg_Out4
reg Reset,Clock;
reg [3:0]Reg_In;
wire [3:0]Reg_Out4;

initial
	begin
	Clock = 1'b0;
	Reset = 1'b0;
	Reg_In = 4'b0;
	forever
	  #50 Clock = ~Clock;
	end
initial
	begin
	#500
	  Reg_In[0] = 1'b1;
	  Reg_In[1] = 1'b0;
	  Reg_In[2] = 1'b1;
	  Reg_In[3] = 1'b1;
	  Reset = 1'b1;
	#500
	
	  Reg_In[0] = 1'b1;
	  Reg_In[1] = 1'b0;
	  Reg_In[2] = 1'b0;
	  Reg_In[3] = 1'b1;
	  Reset = 1'b0;		
	#500
	
	  Reg_In[0] = 1'b0;
	  Reg_In[1] = 1'b0;
	  Reg_In[2] = 1'b1;
	  Reg_In[3] = 1'b1;
	  Reset = 1'b1;	
	end	
  RS_NRNC myRS_NRNC(Reset,Clock,Reg_In,Reg_Out4);
endmodule