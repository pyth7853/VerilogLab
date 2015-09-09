module tbadd();
  
  reg a;
  reg b;
  reg CarryIn;
  wire CarryOut;
  wire Sum;  
  initial
  begin
    a=1'b0;
    b=1'b0;
    CarryIn=1'b0;
  end
  initial
  begin
    #500
    a=1;
    b=0;
    CarryIn=0;
    
    #500
    a=0;
    b=1;  
    CarryIn=1;    
    
    #500
    a=1;
    b=1;    
    CarryIn=1;
            
  end
  add my_ad(a,b,CarryIn,Sum,CarryOut);
endmodule