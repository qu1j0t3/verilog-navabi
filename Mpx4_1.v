module Mpx4_1 (input s0, s1, input [3:0] d, output w);
  assign w = d[{s1,s0}];
endmodule
