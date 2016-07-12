// This example is from Verilog Digital System Design, 2nd ed, Navabi
// 2.3.2.2 Sequence detector

`timescale 1ns/100ps

module Detector110 (input a, clk, reset, output w);
  parameter [1:0] s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
  reg [1:0] current;
  
  always @ (posedge clk) begin
    if (reset) current = s0;
	 else
	   case (current)
		  s0: if(a) current <= s1; else current <= s0;
		  s1: if(a) current <= s2; else current <= s0;
		  s2: if(a) current <= s2; else current <= s3;
		  s3: if(a) current <= s1; else current <= s0;
      endcase
	 end
	 
	 assign w = current == s3 ? 1'b1 : 1'b0;
endmodule
