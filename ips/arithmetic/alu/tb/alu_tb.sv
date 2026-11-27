class Random_Sel;
  rand bit [2:0] num;
  constraint c {num inside {[0 : 4]};}

  function new();
    this.num = 3'd4;
  endfunction
endclass

class Random_Num #(
    WIDTH = 8
);
  rand bit signed [WIDTH-1:0] num;
endclass  //Random_Num


module alu_tb;


  localparam WIDTH = 8;
  logic [2:0] sel;
  logic signed [WIDTH-1:0] bus_a, bus_b, alu_out;
  logic Z, negative;

  alu #(
      .WIDTH(WIDTH)
  ) dut (
      .bus_a   (bus_a),
      .bus_b   (bus_b),
      .alu_sel (sel),
      .alu_out (alu_out),
      .zero    (Z),
      .negative(negative)
  );
  timeunit 1ns / 1ps;
  Random_Num #(.WIDTH(WIDTH)) A_r = new(), B_r = new();
  Random_Sel sel_r = new();

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, dut);

    repeat (5) begin
      #10 bus_a <= A_r.num;
      bus_b <= B_r.num;
      sel   <= sel_r.num;
      A_r.randomize();
      B_r.randomize();
      sel_r.randomize();

    end

    #30 bus_a <= 8'd5;
    bus_b <= 8'd10;
    sel   <= 3'b0000;

    #10 bus_a <= 8'd30;
    bus_b <= -8'd10;
    sel   <= 3'b0001;

    #10 bus_a <= 8'd5;
    bus_b <= 8'd10;
    sel   <= 3'b0010;
  end
endmodule
