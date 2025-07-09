`timescale 1ns/1ps

module decoder_tb;

reg A;
reg B;
reg C;
reg D;

wire a;
wire b;
wire c;
wire d;
wire e;
wire f;
wire g;

decoder dut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
);

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, decoder_tb);

    $display(" A B C D | a b c d e f g");
    $monitor(" %b %b %b %b | %b %b %b %b %b %b %b", A, B, C, D, a, b, c, d, e, f, g);

    A = 0; B = 0; C = 0; D = 0; #20;
    A = 0; B = 0; C = 0; D = 1; #20;
    A = 0; B = 0; C = 1; D = 0; #20;
    A = 0; B = 0; C = 1; D = 1; #20;
    A = 0; B = 1; C = 0; D = 0; #20;
    A = 0; B = 1; C = 0; D = 1; #20;
    A = 0; B = 1; C = 1; D = 0; #20;
    A = 0; B = 1; C = 1; D = 1; #20;
    A = 1; B = 0; C = 0; D = 0; #20;
    A = 1; B = 0; C = 0; D = 1; #20;

    $finish;
end

endmodule

