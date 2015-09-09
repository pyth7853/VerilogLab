module FullAdd(a,b,Carry_In,Sum,Carry_Out);
  input a,b,Carry_In;
  output Sum,Carry_Out;
  wire Sum,Carry_Out;
  
  assign Sum=a+b+Carry_In;
  
endmodule
  