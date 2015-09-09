module Counter1(Reset,Enable,Clock,Out);
input Reset,Enable,Clock;
output [2:0]Out;
reg [2:0]Out;

always @(posedge Clock)

begin
	if(Reset)
	begin
		Out = 3'b0;
	end
	else
		if(Enable==1'b1)
		begin
			if(Out==3'd7)
			begin
				Out=3'b0;
			end
			else
			begin
				Out=Out + 1'b1;
			end
		end
	end
endmodule