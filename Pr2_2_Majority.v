// Problem 2.2 from Verilog Digital System Design, 2nd ed, Navabi
// Solution Copyright (C) 2016 Toby Thain, toby@telegraphics.com.au

module Pr2_2_Majority (input a, b, c, output w);
  assign w = (a & b) | (a & c) | (b & c);
endmodule
