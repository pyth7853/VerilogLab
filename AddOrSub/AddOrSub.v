module AddOrSub(a,b,op,s);
parameter SIZE=8;
parameter ADD=1'b1;
input op;

input [SIZE-1:0]a,b;
output [SIZE-1:0]s;

	assign s=(op==ADD)?a+b:a-b;
endmodule