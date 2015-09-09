module tb();
  
  reg clk;
  reg a;
  reg b;
  wire c;
  initial
  begin
    clk=1'b0;
    a=1'b0;
    b=1'b0;
    forever
    #50 clk=~clk;
  end
  initial
  begin
    #500
    a=1;
    b=0;
    
    #500
    a=0;
    b=1;  
    
    #500
    a=1;
    b=1;    
  end
  add my_ad(clk,a,b,c);
endmodule