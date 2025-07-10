module decoder(
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire a,
    output wire b,
    output wire c,
    output wire d,
    output wire e,
    output wire f,
    output wire g

);

   //Structural Model

   //Inverted Signal Assignments
   wire A_ = ~A;
   wire B_ = ~B;
   wire C_ = ~C;
   wire D_ = ~D;

   //a Logic
   assign a = (A_ &((B & D) | C) | ((B_ & C_)&(A|D_)));

   //b Logic
   assign b = (B_ & C_) | (A_&(C ~^ D));

   //c Logic
   assign c = (A_&(B | C_ | D) | (B_ & C_));
  
   //d Logic
   assign d = (B_ & C_ & D_) | (A_&((B_ & C) | (C & D_) | (B & C_ & D)));

   //e Logic
   assign e = (D_&((A_ & C) | ~(B | C)));

   //f Logic
   assign f = (C_&((A & B_) | (A_ & B) | (B_ & D_)) | (A_ & B & D_));

   //g Logic
   assign g = (A & B_ & C_) | A_&((B & C_) | (B_ & C) | (C & D_));

endmodule
