module FreqMod2(Reset,Clock_In,Clock_Mod2_Out);

input Reset,Clock_In;
output Clock_Mod2_Out;
reg Clock_Mod2_Out;
wire Not_Clock_Mod2_Out;

	assign Not_Clock_Mod2_Out = !Clock_Mod2_Out;
	// 不懂為什麼Reset要加posedge 
	always @(posedge Reset or posedge Clock_In)
	begin
		if(Reset)
			Clock_Mod2_Out=0;
		else
			Clock_Mod2_Out=Not_Clock_Mod2_Out;
	end
endmodule