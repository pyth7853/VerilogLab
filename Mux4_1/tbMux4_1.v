module tbMux4_1();
reg A,B,C,D,S1,S0;
wire Out;

  always@(A or B or C or D or S1 or S0)
  begin
    #500
    A=1'b1;
    B=1'b1;
    C=1'b0;
    D=1'b1;
  end

endmodule