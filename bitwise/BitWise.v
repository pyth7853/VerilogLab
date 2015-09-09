module BitWise(inputBus,even,odd,allOne);
input [7:0]inputBus;
output even,odd,allOne;
wire even,odd,allOne;
  assign odd=^inputBus;
  assign even=~^inputBus;
  assign allOne=&inputBus;
endmodule
