module full_adder (
    input  logic a,
    input  logic b,
    input  logic ci,
    output logic sum,
    output logic co
);

  logic wire_1;
  logic wire_2;
  logic wire_3;

  assign wire_1 = a ^ b;
  assign wire_2 = wire_1 & ci;
  assign wire_3 = a & b;

  assign sum = wire_1 ^ ci;
  assign co = wire_2 | wire_3;

endmodule
