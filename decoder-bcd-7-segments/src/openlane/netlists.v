/* Generated by Yosys 0.55+8 (git sha1 7566af4a4, g++ 13.3.0-6ubuntu2~24.04 -fPIC -O3) */

(* src = "decoder.v:1.1-45.10" *)
module decoder(A, B, C, D, a, b, c, d, e, f, g);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  (* src = "decoder.v:2.16-2.17" *)
  input A;
  wire A;
  (* src = "decoder.v:3.16-3.17" *)
  input B;
  wire B;
  (* src = "decoder.v:4.16-4.17" *)
  input C;
  wire C;
  (* src = "decoder.v:5.16-5.17" *)
  input D;
  wire D;
  (* src = "decoder.v:6.17-6.18" *)
  output a;
  wire a;
  (* src = "decoder.v:7.17-7.18" *)
  output b;
  wire b;
  (* src = "decoder.v:8.17-8.18" *)
  output c;
  wire c;
  (* src = "decoder.v:9.17-9.18" *)
  output d;
  wire d;
  (* src = "decoder.v:10.17-10.18" *)
  output e;
  wire e;
  (* src = "decoder.v:11.17-11.18" *)
  output f;
  wire f;
  (* src = "decoder.v:12.17-12.18" *)
  output g;
  wire g;
  assign _00_ = ~A;
  assign _01_ = ~C;
  assign _02_ = D & B;
  assign _03_ = _01_ & ~(_02_);
  assign _04_ = _00_ & ~(_03_);
  assign _05_ = ~(C | B);
  assign _06_ = D & ~(A);
  assign _07_ = _05_ & ~(_06_);
  assign a = _07_ | _04_;
  assign _08_ = D ^ C;
  assign _09_ = _00_ & ~(_08_);
  assign b = _09_ | _05_;
  assign _10_ = ~D;
  assign _11_ = B | ~(C);
  assign _12_ = _10_ & ~(_11_);
  assign _13_ = _00_ & ~(_12_);
  assign c = _13_ | _05_;
  assign _14_ = _05_ & ~(D);
  assign _15_ = D | ~(C);
  assign _16_ = _15_ & _11_;
  assign _17_ = C | ~(B);
  assign _18_ = D & ~(_17_);
  assign _19_ = _16_ & ~(_18_);
  assign _20_ = _00_ & ~(_19_);
  assign d = _20_ | _14_;
  assign _21_ = C ? A : B;
  assign e = _10_ & ~(_21_);
  assign _22_ = B | ~(A);
  assign _23_ = A | ~(B);
  assign _24_ = _23_ & _22_;
  assign _25_ = ~(D | B);
  assign _26_ = _24_ & ~(_25_);
  assign _27_ = _01_ & ~(_26_);
  assign _28_ = _10_ & ~(_23_);
  assign f = _28_ | _27_;
  assign _29_ = _01_ & ~(_22_);
  assign _30_ = ~(_17_ & _11_);
  assign _31_ = _15_ & ~(_30_);
  assign _32_ = _00_ & ~(_31_);
  assign g = _32_ | _29_;
endmodule
