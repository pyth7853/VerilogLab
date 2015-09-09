module FullAdd4();
reg [3:0]a,b;
reg Carry_In;
wire [3:0]Sum;
wire Carry_Out;

  initial
  begin
    a=4'b0000;
    b=4'b0000;
    Carry_In=1'b0;
  end
  initial
  begin
    #500
    a[0]=0;
    a[1]=0;
    a[2]=1;
    a[3]=0;
    b[0]=0;
    b[1]=0;
    b[2]=0;
    b[3]=1;
    Carry_In=0;
    // ?carry in ? ?????
    #500
    a[0]=0;
    a[1]=0;
    a[2]=0;
    a[3]=1;
    b[0]=1;
    b[1]=0;
    b[2]=1;
    b[3]=0;    
    Carry_In=0;    
  end
	FullAdd fa0(a[0],b[0],Carry_In,Sum[0],Carry_Out);
	FullAdd fa1(a[1],b[1],Carry_In,Sum[1],Carry_Out);
	FullAdd fa2(a[2],b[2],Carry_In,Sum[2],Carry_Out);
	FullAdd fa3(a[3],b[3],Carry_In,Sum[3],Carry_Out);
endmodule