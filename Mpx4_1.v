// Problem 2.1 from Verilog Digital System Design, 2nd ed, Navabi
// Solution Copyright (C) 2016 Toby Thain, toby@telegraphics.com.au

module Mpx4_1 (input s0, s1, input [3:0] d, output w);
  assign w = d[{s1,s0}];
endmodule
