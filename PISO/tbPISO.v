module tbPISO();

reg Clock,Clear,Load;
reg [3:0]Data_In;
wire SO;

	initial 
	begin
		Clock=1'b0;
		Clear=1'b0;
		Load=1'b0;
		Data_In=4'b0000;
		forever
			#50 Clock=~Clock;
	end
	
	initial
	begin
	    #500
	    	Clear=1;
	    	Load=1;
	    	Data_In=4'b0001;
	    #500
	    	Clear=0;
	    	Load=1;
	    	Data_In=4'b1001;
	    #500
	    	Clear=0;
	    	Load=0;
//	    	Data_In=4'b110; 	
	    #500
	    	Clear=0;
	    	Load=0;
	    	Data_In=4'b0110;	    		    	    	
	end
	PISO myPISO(Clock,Clear,Load,Data_In,SO);
endmodule