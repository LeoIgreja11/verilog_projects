module alu(
    input  [3:0] a,
    input  [3:0] b,
    input  [2:0] op,
    output [3:0] result,
    output       zero
);

reg[3:0] result_reg;

assign result = result_reg;
assign zero = (result_reg == 0);


always @(*) begin
    case(op)
	3'b000: result_reg = a + b;
	3'b001: result_reg = a - b;
	3'b010: result_reg = a & b;
	3'b011: result_reg = a | b;
	3'b100: result_reg = (a<b)? 4'b0001: 4'b0000;
	default: result_reg = 4'b0000;
    endcase
end

endmodule
