module tbComparator();

reg [3:0]a;
reg [3:0]b;
wire larger,equal,less;

initial
begin
a=4'b0000;
b=4'b0000;

end

initial
begin

#500
a[0]=1;
a[1]=1;
a[2]=0;
a[3]=0;

b[0]=1;
b[1]=0;
b[2]=0;
b[3]=1;

#1000
a[0]=1;
a[1]=0;
a[2]=0;
a[3]=0;

b[0]=1;
b[1]=0;
b[2]=0;
b[3]=1;

#1500
a[0]=1;
a[1]=0;
a[2]=0;
a[3]=1;

b[0]=1;
b[1]=0;
b[2]=0;
b[3]=1;
end
Comparator myComparator(a,b,larger,equal,less);
endmodule