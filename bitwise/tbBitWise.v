//�_�ǡG�nsim withiut opt �~�|��signal�i�H���
module tbBitWise();
reg [7:0]inputBus;
wire even,odd,allOne;
initial 
begin 
inputBus = 8'b00000000;
end

initial
begin
#500
inputBus[0] = 1;
inputBus[1] = 1;
inputBus[2] = 1;
inputBus[3] = 1;
inputBus[4] = 1;
inputBus[5] = 1;
inputBus[6] = 1;
inputBus[7] = 1;

#1000
//��1500�~�X�{ �ܩ_��
inputBus[0] = 0;
inputBus[1] = 1;
inputBus[2] = 0;
inputBus[3] = 0;
inputBus[4] = 1;
inputBus[5] = 0;
inputBus[6] = 0;
inputBus[7] = 1;
#1500
//��3000�~�X�{ �ܩ_��
inputBus[0] = 0;
inputBus[1] = 1;
inputBus[2] = 1;
inputBus[3] = 0;
inputBus[4] = 1;
inputBus[5] = 0;
inputBus[6] = 0;
inputBus[7] = 1;

end
BitWise myBitWise(inputBus,even,odd,allOne);
endmodule