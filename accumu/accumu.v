module Accmu(Clock,Reset,Data_In,Out);
input Clock, Reset;
input [15:0]Data_In;
input [15:0]Out;
reg [15:0]Out;

	always @(posedge Clock)
	begin
	  if(Reset)
	    Out = 0;
	  else
	    Out = Out + Data_In;
	end

endmodule