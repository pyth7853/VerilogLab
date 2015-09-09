module FullAdd(a,b,CarryIn,Sum,CarryOut);
  input a,b,CarryIn;
  output Sum,CarryOut;
  wire Sum,CarryOut;
  
  assign {CarryOut,Sum}=a+b+CarryIn;
  
endmodule
  