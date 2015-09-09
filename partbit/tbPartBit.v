module tbPartBit();
reg [7:0]instruction;
wire jump;
initial 
begin
  instruction=8'b0;
end

initial
begin
#500
  instruction[0]=0;
  instruction[1]=0;
  instruction[2]=0;
  instruction[3]=0;
  instruction[4]=0;
  instruction[5]=0;
  instruction[6]=1;
  instruction[7]=1;        

#500
  instruction[0]=0;
  instruction[1]=0;
  instruction[2]=0;
  instruction[3]=0;
  instruction[4]=0;
  instruction[5]=0;
  instruction[6]=0;
  instruction[7]=1;        
#500
  instruction[0]=0;
  instruction[1]=0;
  instruction[2]=0;
  instruction[3]=0;
  instruction[4]=0;
  instruction[5]=0;
  instruction[6]=0;
  instruction[7]=0;        
#500
  instruction[0]=1;
  instruction[1]=0;
  instruction[2]=1;
  instruction[3]=0;
  instruction[4]=0;
  instruction[5]=0;
  instruction[6]=1;
  instruction[7]=1;        


end


isJumpInstruction myIsJumpInstruction(instruction,jump);


endmodule