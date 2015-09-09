module tbAddOrSub();
reg [7:0]a;
reg [7:0]b;
reg op;
wire [7:0]s;
initial
begin
a=8'b00000000;
b=8'b00000000;
op=1'b0;
end
initial
begin
#500
a[0] = 1;
a[1] = 1;
a[2] = 1;
a[3] = 1;
a[4] = 1;
a[5] = 1;
a[6] = 1;
a[7] = 1;

b[0] = 1;
b[1] = 1;
b[2] = 1;
b[3] = 1;
b[4] = 1;
b[5] = 1;
b[6] = 1;
b[7] = 1;
op=0;
#1000
a[0] = 0;
a[1] = 1;
a[2] = 1;
a[3] = 1;
a[4] = 1;
a[5] = 1;
a[6] = 1;
a[7] = 1;

b[0] = 0;
b[1] = 0;
b[2] = 0;
b[3] = 0;
b[4] = 1;
b[5] = 0;
b[6] = 0;
b[7] = 0;
op=1;
end
AddOrSub myAddOrSub(a,b,op,s);
endmodule