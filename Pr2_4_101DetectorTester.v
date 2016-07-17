// Problem 2.4 from Verilog Digital System Design, 2nd ed, Navabi
// Solution Copyright (C) 2016 Toby Thain, toby@telegraphics.com.au

`timescale 1ns/100ps

module Pr2_4_101DetectorTester;
	reg aa, clock, rst;
	wire ww;
	
	Pr2_3_101Detector UUT (aa, clock, rst, ww);
	
	initial begin
		$dumpfile("Pr2_4_101DetectorTester.vcd");
		$dumpvars(0, Pr2_4_101DetectorTester);
		aa = 0; clock = 0; rst = 1;
	end
	initial repeat (44) #7    clock = ~clock;
	initial repeat (15) #23   aa = ~aa;
	initial begin
		#31 rst = 1;
		#23 rst = 0;
	end
	
	always @ (ww) if (ww)
		$display ("A 1 was detected on w at time = %t", $time);
		
	// Show value of aa signal at every rising clock (after reset)
	always @ (clock) if (clock && !rst)
		$display ("%t: aa = %d", $time, aa);
endmodule
