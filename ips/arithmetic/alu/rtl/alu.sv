module alu #(
    parameter WIDTH = 8,
    W_ALU_SEL = 3
) (
    input logic signed [WIDTH -1:0] bus_a,
    input logic signed [WIDTH -1:0] bus_b,
    output logic signed [WIDTH -1:0] alu_out,
    input logic [W_ALU_SEL -1:0] alu_sel,
    output logic zero,
    negative
);

  always_comb
    unique case (alu_sel)
      'b001: alu_out = bus_a + bus_b;
      'b010: alu_out = bus_a - bus_b;
      'b011: alu_out = bus_a * bus_b;
      'b100: alu_out = bus_a / bus_b;
      default alu_out = bus_a;
    endcase

  assign zero = (alu_out == 0);
  assign negative = (alu_out < 0);


endmodule
