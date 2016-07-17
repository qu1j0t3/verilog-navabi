// Copyright (C) 2016 Toby Thain, toby@telegraphics.com.au

`timescale 1ns/100ps

module Pr2_2_MajorityTester;
	reg [3:0] d;
	wire w;
	
	Pr2_2_Majority UUT (d[0], d[1], d[2], w);
	
	initial begin
		$dumpfile("Pr2_2_MajorityTester.vcd");
		$dumpvars(0, Pr2_2_MajorityTester);
		d = 0;
	end
	initial repeat (10) #7   d = d+1;
endmodule
