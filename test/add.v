module add(input clk,input a,input b,output reg c);
  
  
  always@*
  begin
    c=a+b;
  end
  
  always@(posedge clk)
  begin 
  end
  
endmodule
