module Comparator(a,b,larger,equal,less);
parameter size=4;
input [size-1:0]a,b;
output larger,equal,less;
wire larger,equal,less;
	assign larger=(a>b);
	assign equal=(a==b);
	assign less=(a<b);
endmodule