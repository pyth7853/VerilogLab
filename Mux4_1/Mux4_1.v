module Mux4to1_1(A,B,C,D,S1,S0,Out);
input A,B,C,D,S1,S0;
output Out;
reg Out;

  always @(A or B or C or S1 or S0)
  begin
    case ({S1,S0})
      2'b00:Out=A;
      2'b01:Out=B;
      2'b10:Out=C;
      2'b11:Out=D;
      
    endcase
  end
endmodule