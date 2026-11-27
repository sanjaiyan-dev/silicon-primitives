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
  timeunit 1ns / 1ps;

  localparam WIDTH = 8;
  logic [2:0] sel;
  logic signed [WIDTH-1:0] bus_a, bus_b, alu_out;
endmodule
