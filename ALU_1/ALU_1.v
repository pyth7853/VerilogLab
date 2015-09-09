'define Plus 3'd0
'define Minus 3'd1
'define Bin_And 3'd2
'define Bin_Or 3'd3
'define Unegate 3'd4

module ALU_1(opcode,in1,in2,out);
input [2:0]opcode;
input [7:0]in1,in2;
output [7:0]out;
reg [7:0]out;

  always @(opcode or in1 or in2)
  begin 
    case(opcode)
      'Plus:
      	out = in1+in2;
      'Minus:
        out = in1-in2;
      'Bin_And:
        out = in1&in2;
      'Bin_Or:
        out = in1|in2;
      'Unegate:
        out = ~in1;
      'default:
        out = 8'hx;
    endcase
  end
endmodule

      