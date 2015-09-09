module Moore_1(Clk,Reset,InData,OutData,State);

input [1:0]InData;
input [1:0]OutData;
input [1:0]State;
input Clk,Reset;
parameter A=2'b00,B=2'b01,2'b10,2'b11;

always @(posedge Clk)
begin
	if(Reset)
	begin
		Stata=A;
	end
	else
	begin
		case (State):
			A:
			begin
				if(InData==2'b11)
				begin
					outData=2'b01
					State=A;
				end

				if(InData==2'b00)
				begin
					outData=2'b01
					State=B;
				end		
			end
			B:
			begin
				if(InData==2'b00)
				begin
					outData=2'b00
					State=B;
				end

				if(InData==2'b01)
				begin
					outData=2'b00
					State=C;
				end		
			end		
			C:
			
			begin
				if(InData==2'b10)
				begin
					outData=2'b11
					State=C;
				end

				if(InData==2'b11)
				begin
					outData=2'b11
					State=D;
				end		
			end			
			D:
			begin
				if(InData==2'01)
				begin
					outData=2'b10
					State=C;
				end

				if(InData==2'b10)
				begin
					outData=2'b10
					State=B;
				end		
			end		
		endcase	
	end
end
endmodule 