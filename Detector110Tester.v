`timescale 1ns/100ps

module Detector110Tester;
	reg aa, clock, rst;
	wire ww;
	
	Detector110 UUT (aa, clock, rst, ww);
	
	initial begin
		$dumpfile("Detector110Tester.vcd");
		$dumpvars(0, Detector110Tester);
		aa = 0; clock = 0; rst = 1;
	end
	initial repeat (44) #7 clock = ~clock;
	initial repeat (15) #23 aa = ~aa;
	initial begin
		#31 rst = 1;
		#23 rst = 0;
	end
	
	always @ (ww) if (ww == 1)
		$display ("A 1 was detected on w at time = %t", $time);
		
	// Show value of aa signal at every rising clock (after reset)
	always @ (clock) if (clock == 1 && rst == 0)
		$display ("%t: aa = %d", $time, aa);
endmodule
