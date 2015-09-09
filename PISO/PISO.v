module PISO(Clock,Clear,Load,Data_In,SO);
input Clock,Clear,Load;
input [3:0]Data_In;
output SO;
reg SO;
reg [3:0]Reg4;

	always @(posedge Clock)
	
	begin:for_Local
		integer i;
		if(Clear)
			Reg4=4'b0;
		else
		begin
			if(Load)
				Reg4=Data_In;
			else
			begin
				SO=Reg4[3];
				for(i=3;i>=1;i=i-1)
			    begin
			    	Reg4[i]=Reg4[i-1];
			    end
			    Reg4[0]=0;
			end
		end			
	end
endmodule