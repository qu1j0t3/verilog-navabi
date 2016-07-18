// Problem 3.7 from Verilog Digital System Design, 2nd ed, Navabi
// Solution Copyright (C) 2016 Toby Thain, toby@telegraphics.com.au

module Pr3_7_Register (input [7:0] d, input s, r, clk, output [7:0] q);
  reg [7:0] state;
  always @ (posedge clk)  state = r ? 8'b0 : (s ? d : state);
  assign q = state;
endmodule
