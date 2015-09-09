# 試試看把 ROL顛倒過來
 
 alu = out << 1;
 alu[0] = alu[2*Bits];
 
 
 alu[0] = alu[2*Bits];
 alu = out << 1;
 
 
 看看有什麼差別
 
 照理來講 是因為是組合電路，所以是同時執行的

# 和 CHPI96.v 比
c carry 的部分有沒有差別
c 在CHU96.v 會不會改變 (carry有沒有作用)