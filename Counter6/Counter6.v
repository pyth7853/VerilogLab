module Counter6(Clock,Reset,Load,Enable,Up_Down,Data_In,Out);
input Clock,Reset,Load,Enable,Up_Down;
input [7:0]Data_In;
output [7:0]Out;
reg [7:0]Out;

	always @(posedge Clock)
	begin
		if(Reset)
			Out=0;
		else
			if(Load)
				Out=Data_In;
			else
				if(Enable)
				begin
					if(Up_Down)
						Out=Out+1;
					else
						Out=Out-1;
				end
	end
endmodule