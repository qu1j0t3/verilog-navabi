// Copyright (C) 2016 Toby Thain, toby@telegraphics.com.au

`timescale 1ns/100ps

module Pr3_7_RegisterTester;
	reg [7:0] d;
	reg s, r, clk;
	wire [7:0] q;
	
	Pr3_7_Register UUT (d, s, r, clk, q);
	
	initial begin
		$dumpfile("Pr3_7_RegisterTester.vcd");
		$dumpvars(0, Pr3_7_RegisterTester);
		s = 0; r = 1; clk = 0; d = 0;
		#13  r = 0;
		#1   d = 8'h11;
		#13  s = 1;
		#13  s = 0;
		#1   d = 8'h33;
		#13  r = 1;
		#13  r = 0;
	end
	initial repeat (10) #7   clk = ~clk;
endmodule
