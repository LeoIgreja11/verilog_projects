`timescale 1ns/1ps

module alu_tb;

  reg [3:0] a, b;
  reg [2:0] op;
  wire [3:0] result;
  wire       zero;

  // Instanciação da ALU
  alu dut(
    .a(a), .b(b),
    .op(op),
    .result(result),
    .zero(zero)
  );

  task test_case;
    input [3:0] ta;
    input [3:0] tb;
    input [2:0] top;
    input [3:0] expected;

    begin
      a = ta;
      b = tb;
      op = top;
      #1;  // Espera para a lógica propagar

      if (result !== expected) begin
        $display("[ERRO] a=%d, b=%d, op=%b -> result=%d (esperado=%d)", a, b, op, result, expected);
      end else begin
        $display("[OK] a=%d, b=%d, op=%b -> result=%d", a, b, op, result);
      end
    end
  endtask

  initial begin
    $dumpfile("../out/alu_tb.vcd");
    $dumpvars(0, alu_tb);

    $display("Início do teste da ALU");

    test_case(4, 3, 3'b000, 7);   // Soma
    test_case(4, 3, 3'b001, 1);   // Subtração
    test_case(4, 3, 3'b010, 4 & 3); // AND
    test_case(2, 3, 3'b011, 2 | 3); // OR
    test_case(2, 3, 3'b100, 1);   // Menor que
    test_case(3, 2, 3'b100, 0);   // Não menor que
    test_case(0, 0, 3'b000, 0);   // Soma zero

    $display("Fim dos testes");
    $finish;
  end

endmodule
